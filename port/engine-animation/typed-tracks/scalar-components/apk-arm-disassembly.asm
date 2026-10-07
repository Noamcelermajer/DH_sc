; APK-backed ARM32 excerpts for position/scale scalar-component tracks.
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Tool: llvm-objdump 22.1.8. Every listed instruction word was decoded back to the exact ELF slice.
; See functions.json for PT_LOAD mapping, symbol names, sizes, and SHA-256 hashes.

; ISceneNode::setScale(vector3d<float> const&) target: glitch::scene::ISceneNode::setScale(glitch::core::vector3d<float> const&)
; ELF VA=0x005970c4, file offset=0x005970c4, size=40, SHA-256=84a37425a9d36f76be2192c3a77ce11a4e361909a52b594a4c984ee00a4d7f4b
005970c4 <glitch::scene::ISceneNode::setScale(glitch::core::vector3d<float> const&)>:
  5970c4: e5913000     	ldr	r3, [r1]
  5970c8: e590211c     	ldr	r2, [r0, #0x11c]
  5970cc: e58030c8     	str	r3, [r0, #0xc8]
  5970d0: e5913004     	ldr	r3, [r1, #0x4]
  5970d4: e3822002     	orr	r2, r2, #2
  5970d8: e58030cc     	str	r3, [r0, #0xcc]
  5970dc: e5913008     	ldr	r3, [r1, #0x8]
  5970e0: e580211c     	str	r2, [r0, #0x11c]
  5970e4: e58030d0     	str	r3, [r0, #0xd0]
  5970e8: e12fff1e     	bx	lr

; ISceneNode::setPosition(vector3d<float> const&) target: glitch::scene::ISceneNode::setPosition(glitch::core::vector3d<float> const&)
; ELF VA=0x0059712c, file offset=0x0059712c, size=40, SHA-256=b300b9db8ec709fa73872e371233a4eca0e3f642ac113ea86abf2093876acf05
0059712c <glitch::scene::ISceneNode::setPosition(glitch::core::vector3d<float> const&)>:
  59712c: e5913000     	ldr	r3, [r1]
  597130: e590211c     	ldr	r2, [r0, #0x11c]
  597134: e58030ac     	str	r3, [r0, #0xac]
  597138: e5913004     	ldr	r3, [r1, #0x4]
  59713c: e3822008     	orr	r2, r2, #8
  597140: e58030b0     	str	r3, [r0, #0xb0]
  597144: e5913008     	ldr	r3, [r1, #0x8]
  597148: e580211c     	str	r2, [r0, #0x11c]
  59714c: e58030b4     	str	r3, [r0, #0xb4]
  597150: e12fff1e     	bx	lr

; input_reader_short_to_float: glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)
; ELF VA=0x00613da8, file offset=0x00613da8, size=60, SHA-256=5b696be987aefe9589d09a7fad39363f6787872431e72e68265bd577102403ba
00613da8 <glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)>:
  613da8: e92d4070     	push	{r4, r5, r6, lr}
  613dac: e1a05001     	mov	r5, r1
  613db0: e1a04000     	mov	r4, r0
  613db4: e3a01000     	mov	r1, #0
  613db8: e1a00005     	mov	r0, r5
  613dbc: eb015818     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x56060
  613dc0: e5840000     	str	r0, [r4]
  613dc4: e1a00005     	mov	r0, r5
  613dc8: eb01583d     	bl	0x669ec4 <glitch::collada::SAnimationAccessor::getScales() const> @ imm = #0x560f4
  613dcc: e5840004     	str	r0, [r4, #0x4]
  613dd0: e1a00005     	mov	r0, r5
  613dd4: eb015836     	bl	0x669eb4 <glitch::collada::SAnimationAccessor::getOffsets() const> @ imm = #0x560d8
  613dd8: e5840008     	str	r0, [r4, #0x8]
  613ddc: e1a00004     	mov	r0, r4
  613de0: e8bd8070     	pop	{r4, r5, r6, pc}

; input_reader_char_to_float: glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)
; ELF VA=0x00613de4, file offset=0x00613de4, size=60, SHA-256=210ec5308721508f09e9d8da4fa95517e58dcdb142dae6e9ad4c32358d99dbe0
00613de4 <glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)>:
  613de4: e92d4070     	push	{r4, r5, r6, lr}
  613de8: e1a05001     	mov	r5, r1
  613dec: e1a04000     	mov	r4, r0
  613df0: e3a01000     	mov	r1, #0
  613df4: e1a00005     	mov	r0, r5
  613df8: eb015809     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x56024
  613dfc: e5840000     	str	r0, [r4]
  613e00: e1a00005     	mov	r0, r5
  613e04: eb01582e     	bl	0x669ec4 <glitch::collada::SAnimationAccessor::getScales() const> @ imm = #0x560b8
  613e08: e5840004     	str	r0, [r4, #0x4]
  613e0c: e1a00005     	mov	r0, r5
  613e10: eb015827     	bl	0x669eb4 <glitch::collada::SAnimationAccessor::getOffsets() const> @ imm = #0x5609c
  613e14: e5840008     	str	r0, [r4, #0x8]
  613e18: e1a00004     	mov	r0, r4
  613e1c: e8bd8070     	pop	{r4, r5, r6, pc}

; position_x_short_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x00614dec, file offset=0x00614dec, size=160, SHA-256=9104f41ce6640bab39ec08ad1b62c9a29e1614d4b02db4f9ba9ef2c248c83a6d
00614dec <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  614dec: e92d4070     	push	{r4, r5, r6, lr}
  614df0: e1a04000     	mov	r4, r0
  614df4: e24dd010     	sub	sp, sp, #16
  614df8: e1a05001     	mov	r5, r1
  614dfc: e28d0004     	add	r0, sp, #4
  614e00: e1a01004     	mov	r1, r4
  614e04: e1a06002     	mov	r6, r2
  614e08: ebfffbe6     	bl	0x613da8 <glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x1068
  614e0c: e59d3004     	ldr	r3, [sp, #0x4]
  614e10: e1a05085     	lsl	r5, r5, #1
  614e14: e5933004     	ldr	r3, [r3, #0x4]
  614e18: e19300f5     	ldrsh	r0, [r3, r5]
  614e1c: ebf3e6d0     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3064c0
  614e20: e59d3008     	ldr	r3, [sp, #0x8]
  614e24: e5931000     	ldr	r1, [r3]
  614e28: ebf3e7cf     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3060c4
  614e2c: e59d300c     	ldr	r3, [sp, #0xc]
  614e30: e5931000     	ldr	r1, [r3]
  614e34: ebf3e75a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x306298
  614e38: e1a05000     	mov	r5, r0
  614e3c: e1a00004     	mov	r0, r4
  614e40: eb015403     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x5500c
  614e44: e3500000     	cmp	r0, #0
  614e48: 1a000002     	bne	0x614e58 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x6c> @ imm = #0x8
  614e4c: e5865000     	str	r5, [r6]
  614e50: e28dd010     	add	sp, sp, #16
  614e54: e8bd8070     	pop	{r4, r5, r6, pc}
  614e58: e1a00004     	mov	r0, r4
  614e5c: eb015401     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x55004
  614e60: e3500000     	cmp	r0, #0
  614e64: 0afffff8     	beq	0x614e4c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x60> @ imm = #-0x20
  614e68: e1a00004     	mov	r0, r4
  614e6c: eb0153fd     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x54ff4
  614e70: e1a03006     	mov	r3, r6
  614e74: e4835004     	str	r5, [r3], #4
  614e78: e5902004     	ldr	r2, [r0, #0x4]
  614e7c: e5862004     	str	r2, [r6, #0x4]
  614e80: e5902008     	ldr	r2, [r0, #0x8]
  614e84: e5832004     	str	r2, [r3, #0x4]
  614e88: eafffff0     	b	0x614e50 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x64> @ imm = #-0x40

; position_x_short_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x00614e8c, file offset=0x00614e8c, size=16, SHA-256=4205935de40728e3af1cc2008476abdb0409d18217f2d7c9397a0a1b0c23e56a
00614e8c <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  614e8c: e1a00001     	mov	r0, r1
  614e90: e1a01002     	mov	r1, r2
  614e94: e1a02003     	mov	r2, r3
  614e98: eaffffd3     	b	0x614dec <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xb4

; position_x_short_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x00614e9c, file offset=0x00614e9c, size=272, SHA-256=abb7ccfa4eb9d79b2cfcf18bb40cc148edc0d22f0bc0026c5c086375dcd8e4b3
00614e9c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  614e9c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  614ea0: e1a04000     	mov	r4, r0
  614ea4: e24dd014     	sub	sp, sp, #20
  614ea8: e1a05001     	mov	r5, r1
  614eac: e28d0004     	add	r0, sp, #4
  614eb0: e1a01004     	mov	r1, r4
  614eb4: e1a06002     	mov	r6, r2
  614eb8: e1a09003     	mov	r9, r3
  614ebc: e59da038     	ldr	r10, [sp, #0x38]
  614ec0: ebfffbb8     	bl	0x613da8 <glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x1120
  614ec4: e59d3004     	ldr	r3, [sp, #0x4]
  614ec8: e1a05085     	lsl	r5, r5, #1
  614ecc: e1a06086     	lsl	r6, r6, #1
  614ed0: e5938004     	ldr	r8, [r3, #0x4]
  614ed4: e59d3008     	ldr	r3, [sp, #0x8]
  614ed8: e19800f5     	ldrsh	r0, [r8, r5]
  614edc: e593b000     	ldr	r11, [r3]
  614ee0: e59d300c     	ldr	r3, [sp, #0xc]
  614ee4: e5937000     	ldr	r7, [r3]
  614ee8: ebf3e69d     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x30658c
  614eec: e1a0100b     	mov	r1, r11
  614ef0: ebf3e79d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30618c
  614ef4: e1a01007     	mov	r1, r7
  614ef8: ebf3e729     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30635c
  614efc: e1a05000     	mov	r5, r0
  614f00: e19800f6     	ldrsh	r0, [r8, r6]
  614f04: ebf3e696     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3065a8
  614f08: e1a01000     	mov	r1, r0
  614f0c: e1a0000b     	mov	r0, r11
  614f10: ebf3e795     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3061ac
  614f14: e1a01000     	mov	r1, r0
  614f18: e1a00007     	mov	r0, r7
  614f1c: ebf3e720     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x306380
  614f20: e1a06000     	mov	r6, r0
  614f24: e1a00004     	mov	r0, r4
  614f28: eb0153c9     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x54f24
  614f2c: e3500000     	cmp	r0, #0
  614f30: 0a000013     	beq	0x614f84 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe8> @ imm = #0x4c
  614f34: e1a01005     	mov	r1, r5
  614f38: e1a00006     	mov	r0, r6
  614f3c: ebf3e51a     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x306b98
  614f40: e1a01000     	mov	r1, r0
  614f44: e1a00009     	mov	r0, r9
  614f48: ebf3e787     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3061e4
  614f4c: e1a01005     	mov	r1, r5
  614f50: ebf3e713     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3063b4
  614f54: e1a0500a     	mov	r5, r10
  614f58: e4850004     	str	r0, [r5], #4
  614f5c: e1a00004     	mov	r0, r4
  614f60: eb0153c0     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x54f00
  614f64: e5903004     	ldr	r3, [r0, #0x4]
  614f68: e1a00004     	mov	r0, r4
  614f6c: e58a3004     	str	r3, [r10, #0x4]
  614f70: eb0153bc     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x54ef0
  614f74: e5903008     	ldr	r3, [r0, #0x8]
  614f78: e5853004     	str	r3, [r5, #0x4]
  614f7c: e28dd014     	add	sp, sp, #20
  614f80: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  614f84: e1a01005     	mov	r1, r5
  614f88: e1a00006     	mov	r0, r6
  614f8c: ebf3e506     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x306be8
  614f90: e1a01000     	mov	r1, r0
  614f94: e1a00009     	mov	r0, r9
  614f98: ebf3e773     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x306234
  614f9c: e1a01005     	mov	r1, r5
  614fa0: ebf3e6ff     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x306404
  614fa4: e58a0000     	str	r0, [r10]
  614fa8: eafffff3     	b	0x614f7c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe0> @ imm = #-0x34

; position_x_short_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x00614fac, file offset=0x00614fac, size=28, SHA-256=75b051ce790a4c732497952e42a925d6b9a972bd63ac81fc0b0280447c9957b3
00614fac <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  614fac: e1a00001     	mov	r0, r1
  614fb0: e59dc004     	ldr	r12, [sp, #0x4]
  614fb4: e1a01002     	mov	r1, r2
  614fb8: e1a02003     	mov	r2, r3
  614fbc: e59d3000     	ldr	r3, [sp]
  614fc0: e58dc000     	str	r12, [sp]
  614fc4: eaffffb4     	b	0x614e9c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x130

; position_x_char_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x0061521c, file offset=0x0061521c, size=156, SHA-256=a47771a50a70731952796b3cb3c751f13b214efcb7bd736f60ad3681dc694659
0061521c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  61521c: e92d4070     	push	{r4, r5, r6, lr}
  615220: e1a04000     	mov	r4, r0
  615224: e24dd010     	sub	sp, sp, #16
  615228: e1a05001     	mov	r5, r1
  61522c: e28d0004     	add	r0, sp, #4
  615230: e1a01004     	mov	r1, r4
  615234: e1a06002     	mov	r6, r2
  615238: ebfffae9     	bl	0x613de4 <glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x145c
  61523c: e59d3004     	ldr	r3, [sp, #0x4]
  615240: e5933004     	ldr	r3, [r3, #0x4]
  615244: e19300d5     	ldrsb	r0, [r3, r5]
  615248: ebf3e5c5     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3068ec
  61524c: e59d3008     	ldr	r3, [sp, #0x8]
  615250: e5931000     	ldr	r1, [r3]
  615254: ebf3e6c4     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3064f0
  615258: e59d300c     	ldr	r3, [sp, #0xc]
  61525c: e5931000     	ldr	r1, [r3]
  615260: ebf3e64f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3066c4
  615264: e1a05000     	mov	r5, r0
  615268: e1a00004     	mov	r0, r4
  61526c: eb0152f8     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x54be0
  615270: e3500000     	cmp	r0, #0
  615274: 1a000002     	bne	0x615284 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x68> @ imm = #0x8
  615278: e5865000     	str	r5, [r6]
  61527c: e28dd010     	add	sp, sp, #16
  615280: e8bd8070     	pop	{r4, r5, r6, pc}
  615284: e1a00004     	mov	r0, r4
  615288: eb0152f6     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x54bd8
  61528c: e3500000     	cmp	r0, #0
  615290: 0afffff8     	beq	0x615278 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x5c> @ imm = #-0x20
  615294: e1a00004     	mov	r0, r4
  615298: eb0152f2     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x54bc8
  61529c: e1a03006     	mov	r3, r6
  6152a0: e4835004     	str	r5, [r3], #4
  6152a4: e5902004     	ldr	r2, [r0, #0x4]
  6152a8: e5862004     	str	r2, [r6, #0x4]
  6152ac: e5902008     	ldr	r2, [r0, #0x8]
  6152b0: e5832004     	str	r2, [r3, #0x4]
  6152b4: eafffff0     	b	0x61527c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x60> @ imm = #-0x40

; position_x_char_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x006152b8, file offset=0x006152b8, size=16, SHA-256=7449918ae468812689277014775c9c52d6a1d94a723277cf84138a1b89bf52d9
006152b8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  6152b8: e1a00001     	mov	r0, r1
  6152bc: e1a01002     	mov	r1, r2
  6152c0: e1a02003     	mov	r2, r3
  6152c4: eaffffd4     	b	0x61521c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xb0

; position_x_char_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x006152c8, file offset=0x006152c8, size=264, SHA-256=65b393f4d4a9efc35c5a2610e2a1dd1d166e968f514033d989757b94939324e9
006152c8 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  6152c8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6152cc: e1a04000     	mov	r4, r0
  6152d0: e24dd014     	sub	sp, sp, #20
  6152d4: e1a05001     	mov	r5, r1
  6152d8: e28d0004     	add	r0, sp, #4
  6152dc: e1a01004     	mov	r1, r4
  6152e0: e1a06002     	mov	r6, r2
  6152e4: e1a0b003     	mov	r11, r3
  6152e8: e59d9038     	ldr	r9, [sp, #0x38]
  6152ec: ebfffabc     	bl	0x613de4 <glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x1510
  6152f0: e59d3004     	ldr	r3, [sp, #0x4]
  6152f4: e593a004     	ldr	r10, [r3, #0x4]
  6152f8: e59d3008     	ldr	r3, [sp, #0x8]
  6152fc: e19a00d5     	ldrsb	r0, [r10, r5]
  615300: e5938000     	ldr	r8, [r3]
  615304: e59d300c     	ldr	r3, [sp, #0xc]
  615308: e5937000     	ldr	r7, [r3]
  61530c: ebf3e594     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3069b0
  615310: e1a01008     	mov	r1, r8
  615314: ebf3e694     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3065b0
  615318: e1a01007     	mov	r1, r7
  61531c: ebf3e620     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x306780
  615320: e1a05000     	mov	r5, r0
  615324: e19a00d6     	ldrsb	r0, [r10, r6]
  615328: ebf3e58d     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3069cc
  61532c: e1a01000     	mov	r1, r0
  615330: e1a00008     	mov	r0, r8
  615334: ebf3e68c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3065d0
  615338: e1a01000     	mov	r1, r0
  61533c: e1a00007     	mov	r0, r7
  615340: ebf3e617     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3067a4
  615344: e1a06000     	mov	r6, r0
  615348: e1a00004     	mov	r0, r4
  61534c: eb0152c0     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x54b00
  615350: e3500000     	cmp	r0, #0
  615354: 0a000013     	beq	0x6153a8 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe0> @ imm = #0x4c
  615358: e1a01005     	mov	r1, r5
  61535c: e1a00006     	mov	r0, r6
  615360: ebf3e411     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x306fbc
  615364: e1a01000     	mov	r1, r0
  615368: e1a0000b     	mov	r0, r11
  61536c: ebf3e67e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x306608
  615370: e1a01005     	mov	r1, r5
  615374: ebf3e60a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3067d8
  615378: e1a05009     	mov	r5, r9
  61537c: e4850004     	str	r0, [r5], #4
  615380: e1a00004     	mov	r0, r4
  615384: eb0152b7     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x54adc
  615388: e5903004     	ldr	r3, [r0, #0x4]
  61538c: e1a00004     	mov	r0, r4
  615390: e5893004     	str	r3, [r9, #0x4]
  615394: eb0152b3     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x54acc
  615398: e5903008     	ldr	r3, [r0, #0x8]
  61539c: e5853004     	str	r3, [r5, #0x4]
  6153a0: e28dd014     	add	sp, sp, #20
  6153a4: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6153a8: e1a01005     	mov	r1, r5
  6153ac: e1a00006     	mov	r0, r6
  6153b0: ebf3e3fd     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x30700c
  6153b4: e1a01000     	mov	r1, r0
  6153b8: e1a0000b     	mov	r0, r11
  6153bc: ebf3e66a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x306658
  6153c0: e1a01005     	mov	r1, r5
  6153c4: ebf3e5f6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x306828
  6153c8: e5890000     	str	r0, [r9]
  6153cc: eafffff3     	b	0x6153a0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xd8> @ imm = #-0x34

; position_x_char_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x006153d0, file offset=0x006153d0, size=28, SHA-256=e08cef135d867826e5128861e9abe3ac71833d826075245903df41e04e9a02d3
006153d0 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  6153d0: e1a00001     	mov	r0, r1
  6153d4: e59dc004     	ldr	r12, [sp, #0x4]
  6153d8: e1a01002     	mov	r1, r2
  6153dc: e1a02003     	mov	r2, r3
  6153e0: e59d3000     	ldr	r3, [sp]
  6153e4: e58dc000     	str	r12, [sp]
  6153e8: eaffffb6     	b	0x6152c8 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x128

; position_y_short_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x0061562c, file offset=0x0061562c, size=160, SHA-256=1ba3bc6cd1b9ffc2a7ce6ea84ad63eede744f396aba19f9a731a138a6cdd03d3
0061562c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  61562c: e92d4070     	push	{r4, r5, r6, lr}
  615630: e1a04000     	mov	r4, r0
  615634: e24dd010     	sub	sp, sp, #16
  615638: e1a05001     	mov	r5, r1
  61563c: e28d0004     	add	r0, sp, #4
  615640: e1a01004     	mov	r1, r4
  615644: e1a06002     	mov	r6, r2
  615648: ebfff9d6     	bl	0x613da8 <glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x18a8
  61564c: e59d3004     	ldr	r3, [sp, #0x4]
  615650: e1a05085     	lsl	r5, r5, #1
  615654: e5933004     	ldr	r3, [r3, #0x4]
  615658: e19300f5     	ldrsh	r0, [r3, r5]
  61565c: ebf3e4c0     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x306d00
  615660: e59d3008     	ldr	r3, [sp, #0x8]
  615664: e5931000     	ldr	r1, [r3]
  615668: ebf3e5bf     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x306904
  61566c: e59d300c     	ldr	r3, [sp, #0xc]
  615670: e5931000     	ldr	r1, [r3]
  615674: ebf3e54a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x306ad8
  615678: e1a05000     	mov	r5, r0
  61567c: e1a00004     	mov	r0, r4
  615680: eb0151f3     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x547cc
  615684: e3500000     	cmp	r0, #0
  615688: 1a000002     	bne	0x615698 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x6c> @ imm = #0x8
  61568c: e5865000     	str	r5, [r6]
  615690: e28dd010     	add	sp, sp, #16
  615694: e8bd8070     	pop	{r4, r5, r6, pc}
  615698: e1a00004     	mov	r0, r4
  61569c: eb0151f1     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x547c4
  6156a0: e3500000     	cmp	r0, #0
  6156a4: 0afffff8     	beq	0x61568c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x60> @ imm = #-0x20
  6156a8: e1a00004     	mov	r0, r4
  6156ac: eb0151ed     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x547b4
  6156b0: e5902000     	ldr	r2, [r0]
  6156b4: e1a03006     	mov	r3, r6
  6156b8: e4832004     	str	r2, [r3], #4
  6156bc: e5865004     	str	r5, [r6, #0x4]
  6156c0: e5902008     	ldr	r2, [r0, #0x8]
  6156c4: e5832004     	str	r2, [r3, #0x4]
  6156c8: eafffff0     	b	0x615690 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x64> @ imm = #-0x40

; position_y_short_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x006156cc, file offset=0x006156cc, size=16, SHA-256=4205935de40728e3af1cc2008476abdb0409d18217f2d7c9397a0a1b0c23e56a
006156cc <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  6156cc: e1a00001     	mov	r0, r1
  6156d0: e1a01002     	mov	r1, r2
  6156d4: e1a02003     	mov	r2, r3
  6156d8: eaffffd3     	b	0x61562c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xb4

; position_y_short_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x006156dc, file offset=0x006156dc, size=272, SHA-256=fa2ee7949a297b2785e9d0936c6c00abb19406b568a01ac9aa1eab01182057ab
006156dc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  6156dc: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6156e0: e1a04000     	mov	r4, r0
  6156e4: e24dd014     	sub	sp, sp, #20
  6156e8: e1a05001     	mov	r5, r1
  6156ec: e28d0004     	add	r0, sp, #4
  6156f0: e1a01004     	mov	r1, r4
  6156f4: e1a06002     	mov	r6, r2
  6156f8: e1a09003     	mov	r9, r3
  6156fc: e59da038     	ldr	r10, [sp, #0x38]
  615700: ebfff9a8     	bl	0x613da8 <glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x1960
  615704: e59d3004     	ldr	r3, [sp, #0x4]
  615708: e1a05085     	lsl	r5, r5, #1
  61570c: e1a06086     	lsl	r6, r6, #1
  615710: e5938004     	ldr	r8, [r3, #0x4]
  615714: e59d3008     	ldr	r3, [sp, #0x8]
  615718: e19800f5     	ldrsh	r0, [r8, r5]
  61571c: e593b000     	ldr	r11, [r3]
  615720: e59d300c     	ldr	r3, [sp, #0xc]
  615724: e5937000     	ldr	r7, [r3]
  615728: ebf3e48d     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x306dcc
  61572c: e1a0100b     	mov	r1, r11
  615730: ebf3e58d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3069cc
  615734: e1a01007     	mov	r1, r7
  615738: ebf3e519     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x306b9c
  61573c: e1a05000     	mov	r5, r0
  615740: e19800f6     	ldrsh	r0, [r8, r6]
  615744: ebf3e486     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x306de8
  615748: e1a01000     	mov	r1, r0
  61574c: e1a0000b     	mov	r0, r11
  615750: ebf3e585     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3069ec
  615754: e1a01000     	mov	r1, r0
  615758: e1a00007     	mov	r0, r7
  61575c: ebf3e510     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x306bc0
  615760: e1a07000     	mov	r7, r0
  615764: e1a00004     	mov	r0, r4
  615768: eb0151b9     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x546e4
  61576c: e3500000     	cmp	r0, #0
  615770: 0a000013     	beq	0x6157c4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe8> @ imm = #0x4c
  615774: e1a00004     	mov	r0, r4
  615778: eb0151ba     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x546e8
  61577c: e5903000     	ldr	r3, [r0]
  615780: e1a0600a     	mov	r6, r10
  615784: e1a01005     	mov	r1, r5
  615788: e4863004     	str	r3, [r6], #4
  61578c: e1a00007     	mov	r0, r7
  615790: ebf3e305     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x3073ec
  615794: e1a01000     	mov	r1, r0
  615798: e1a00009     	mov	r0, r9
  61579c: ebf3e572     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x306a38
  6157a0: e1a01005     	mov	r1, r5
  6157a4: ebf3e4fe     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x306c08
  6157a8: e58a0004     	str	r0, [r10, #0x4]
  6157ac: e1a00004     	mov	r0, r4
  6157b0: eb0151ac     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x546b0
  6157b4: e5903008     	ldr	r3, [r0, #0x8]
  6157b8: e5863004     	str	r3, [r6, #0x4]
  6157bc: e28dd014     	add	sp, sp, #20
  6157c0: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6157c4: e1a01005     	mov	r1, r5
  6157c8: e1a00007     	mov	r0, r7
  6157cc: ebf3e2f6     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x307428
  6157d0: e1a01000     	mov	r1, r0
  6157d4: e1a00009     	mov	r0, r9
  6157d8: ebf3e563     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x306a74
  6157dc: e1a01005     	mov	r1, r5
  6157e0: ebf3e4ef     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x306c44
  6157e4: e58a0000     	str	r0, [r10]
  6157e8: eafffff3     	b	0x6157bc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe0> @ imm = #-0x34

; position_y_short_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x006157ec, file offset=0x006157ec, size=28, SHA-256=75b051ce790a4c732497952e42a925d6b9a972bd63ac81fc0b0280447c9957b3
006157ec <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  6157ec: e1a00001     	mov	r0, r1
  6157f0: e59dc004     	ldr	r12, [sp, #0x4]
  6157f4: e1a01002     	mov	r1, r2
  6157f8: e1a02003     	mov	r2, r3
  6157fc: e59d3000     	ldr	r3, [sp]
  615800: e58dc000     	str	r12, [sp]
  615804: eaffffb4     	b	0x6156dc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x130

; position_y_char_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x00615a5c, file offset=0x00615a5c, size=156, SHA-256=725f7bc2db67a9dff04c4553dd5b9a0878e2f99d009d2bc27f6f84c5688d4626
00615a5c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  615a5c: e92d4070     	push	{r4, r5, r6, lr}
  615a60: e1a04000     	mov	r4, r0
  615a64: e24dd010     	sub	sp, sp, #16
  615a68: e1a05001     	mov	r5, r1
  615a6c: e28d0004     	add	r0, sp, #4
  615a70: e1a01004     	mov	r1, r4
  615a74: e1a06002     	mov	r6, r2
  615a78: ebfff8d9     	bl	0x613de4 <glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x1c9c
  615a7c: e59d3004     	ldr	r3, [sp, #0x4]
  615a80: e5933004     	ldr	r3, [r3, #0x4]
  615a84: e19300d5     	ldrsb	r0, [r3, r5]
  615a88: ebf3e3b5     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x30712c
  615a8c: e59d3008     	ldr	r3, [sp, #0x8]
  615a90: e5931000     	ldr	r1, [r3]
  615a94: ebf3e4b4     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x306d30
  615a98: e59d300c     	ldr	r3, [sp, #0xc]
  615a9c: e5931000     	ldr	r1, [r3]
  615aa0: ebf3e43f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x306f04
  615aa4: e1a05000     	mov	r5, r0
  615aa8: e1a00004     	mov	r0, r4
  615aac: eb0150e8     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x543a0
  615ab0: e3500000     	cmp	r0, #0
  615ab4: 1a000002     	bne	0x615ac4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x68> @ imm = #0x8
  615ab8: e5865000     	str	r5, [r6]
  615abc: e28dd010     	add	sp, sp, #16
  615ac0: e8bd8070     	pop	{r4, r5, r6, pc}
  615ac4: e1a00004     	mov	r0, r4
  615ac8: eb0150e6     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x54398
  615acc: e3500000     	cmp	r0, #0
  615ad0: 0afffff8     	beq	0x615ab8 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x5c> @ imm = #-0x20
  615ad4: e1a00004     	mov	r0, r4
  615ad8: eb0150e2     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x54388
  615adc: e5902000     	ldr	r2, [r0]
  615ae0: e1a03006     	mov	r3, r6
  615ae4: e4832004     	str	r2, [r3], #4
  615ae8: e5865004     	str	r5, [r6, #0x4]
  615aec: e5902008     	ldr	r2, [r0, #0x8]
  615af0: e5832004     	str	r2, [r3, #0x4]
  615af4: eafffff0     	b	0x615abc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x60> @ imm = #-0x40

; position_y_char_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x00615af8, file offset=0x00615af8, size=16, SHA-256=7449918ae468812689277014775c9c52d6a1d94a723277cf84138a1b89bf52d9
00615af8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  615af8: e1a00001     	mov	r0, r1
  615afc: e1a01002     	mov	r1, r2
  615b00: e1a02003     	mov	r2, r3
  615b04: eaffffd4     	b	0x615a5c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xb0

; position_y_char_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x00615b08, file offset=0x00615b08, size=264, SHA-256=d49d39bc20532008d8f41d8fe98cd10a1492b236d40270acff44784c79d43797
00615b08 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  615b08: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  615b0c: e1a04000     	mov	r4, r0
  615b10: e24dd014     	sub	sp, sp, #20
  615b14: e1a05001     	mov	r5, r1
  615b18: e28d0004     	add	r0, sp, #4
  615b1c: e1a01004     	mov	r1, r4
  615b20: e1a06002     	mov	r6, r2
  615b24: e1a0b003     	mov	r11, r3
  615b28: e59d9038     	ldr	r9, [sp, #0x38]
  615b2c: ebfff8ac     	bl	0x613de4 <glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x1d50
  615b30: e59d3004     	ldr	r3, [sp, #0x4]
  615b34: e593a004     	ldr	r10, [r3, #0x4]
  615b38: e59d3008     	ldr	r3, [sp, #0x8]
  615b3c: e19a00d5     	ldrsb	r0, [r10, r5]
  615b40: e5938000     	ldr	r8, [r3]
  615b44: e59d300c     	ldr	r3, [sp, #0xc]
  615b48: e5937000     	ldr	r7, [r3]
  615b4c: ebf3e384     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3071f0
  615b50: e1a01008     	mov	r1, r8
  615b54: ebf3e484     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x306df0
  615b58: e1a01007     	mov	r1, r7
  615b5c: ebf3e410     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x306fc0
  615b60: e1a05000     	mov	r5, r0
  615b64: e19a00d6     	ldrsb	r0, [r10, r6]
  615b68: ebf3e37d     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x30720c
  615b6c: e1a01000     	mov	r1, r0
  615b70: e1a00008     	mov	r0, r8
  615b74: ebf3e47c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x306e10
  615b78: e1a01000     	mov	r1, r0
  615b7c: e1a00007     	mov	r0, r7
  615b80: ebf3e407     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x306fe4
  615b84: e1a07000     	mov	r7, r0
  615b88: e1a00004     	mov	r0, r4
  615b8c: eb0150b0     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x542c0
  615b90: e3500000     	cmp	r0, #0
  615b94: 0a000013     	beq	0x615be8 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe0> @ imm = #0x4c
  615b98: e1a00004     	mov	r0, r4
  615b9c: eb0150b1     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x542c4
  615ba0: e5903000     	ldr	r3, [r0]
  615ba4: e1a06009     	mov	r6, r9
  615ba8: e1a01005     	mov	r1, r5
  615bac: e4863004     	str	r3, [r6], #4
  615bb0: e1a00007     	mov	r0, r7
  615bb4: ebf3e1fc     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x307810
  615bb8: e1a01000     	mov	r1, r0
  615bbc: e1a0000b     	mov	r0, r11
  615bc0: ebf3e469     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x306e5c
  615bc4: e1a01005     	mov	r1, r5
  615bc8: ebf3e3f5     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30702c
  615bcc: e5890004     	str	r0, [r9, #0x4]
  615bd0: e1a00004     	mov	r0, r4
  615bd4: eb0150a3     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x5428c
  615bd8: e5903008     	ldr	r3, [r0, #0x8]
  615bdc: e5863004     	str	r3, [r6, #0x4]
  615be0: e28dd014     	add	sp, sp, #20
  615be4: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  615be8: e1a01005     	mov	r1, r5
  615bec: e1a00007     	mov	r0, r7
  615bf0: ebf3e1ed     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x30784c
  615bf4: e1a01000     	mov	r1, r0
  615bf8: e1a0000b     	mov	r0, r11
  615bfc: ebf3e45a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x306e98
  615c00: e1a01005     	mov	r1, r5
  615c04: ebf3e3e6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x307068
  615c08: e5890000     	str	r0, [r9]
  615c0c: eafffff3     	b	0x615be0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xd8> @ imm = #-0x34

; position_y_char_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x00615c10, file offset=0x00615c10, size=28, SHA-256=e08cef135d867826e5128861e9abe3ac71833d826075245903df41e04e9a02d3
00615c10 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  615c10: e1a00001     	mov	r0, r1
  615c14: e59dc004     	ldr	r12, [sp, #0x4]
  615c18: e1a01002     	mov	r1, r2
  615c1c: e1a02003     	mov	r2, r3
  615c20: e59d3000     	ldr	r3, [sp]
  615c24: e58dc000     	str	r12, [sp]
  615c28: eaffffb6     	b	0x615b08 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x128

; position_z_short_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x00615eec, file offset=0x00615eec, size=160, SHA-256=bc139537f563f4503b1d3ec22801d980426f575a37fee750fc3fa6a02920f810
00615eec <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  615eec: e92d4070     	push	{r4, r5, r6, lr}
  615ef0: e1a04000     	mov	r4, r0
  615ef4: e24dd010     	sub	sp, sp, #16
  615ef8: e1a05001     	mov	r5, r1
  615efc: e28d0004     	add	r0, sp, #4
  615f00: e1a01004     	mov	r1, r4
  615f04: e1a06002     	mov	r6, r2
  615f08: ebfff7a6     	bl	0x613da8 <glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x2168
  615f0c: e59d3004     	ldr	r3, [sp, #0x4]
  615f10: e1a05085     	lsl	r5, r5, #1
  615f14: e5933004     	ldr	r3, [r3, #0x4]
  615f18: e19300f5     	ldrsh	r0, [r3, r5]
  615f1c: ebf3e290     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3075c0
  615f20: e59d3008     	ldr	r3, [sp, #0x8]
  615f24: e5931000     	ldr	r1, [r3]
  615f28: ebf3e38f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3071c4
  615f2c: e59d300c     	ldr	r3, [sp, #0xc]
  615f30: e5931000     	ldr	r1, [r3]
  615f34: ebf3e31a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x307398
  615f38: e1a05000     	mov	r5, r0
  615f3c: e1a00004     	mov	r0, r4
  615f40: eb014fc3     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x53f0c
  615f44: e3500000     	cmp	r0, #0
  615f48: 1a000002     	bne	0x615f58 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x6c> @ imm = #0x8
  615f4c: e5865000     	str	r5, [r6]
  615f50: e28dd010     	add	sp, sp, #16
  615f54: e8bd8070     	pop	{r4, r5, r6, pc}
  615f58: e1a00004     	mov	r0, r4
  615f5c: eb014fc1     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x53f04
  615f60: e3500000     	cmp	r0, #0
  615f64: 0afffff8     	beq	0x615f4c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x60> @ imm = #-0x20
  615f68: e1a00004     	mov	r0, r4
  615f6c: eb014fbd     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x53ef4
  615f70: e5902000     	ldr	r2, [r0]
  615f74: e1a03006     	mov	r3, r6
  615f78: e4832004     	str	r2, [r3], #4
  615f7c: e5902004     	ldr	r2, [r0, #0x4]
  615f80: e5862004     	str	r2, [r6, #0x4]
  615f84: e5835004     	str	r5, [r3, #0x4]
  615f88: eafffff0     	b	0x615f50 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x64> @ imm = #-0x40

; position_z_short_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x00615f8c, file offset=0x00615f8c, size=16, SHA-256=4205935de40728e3af1cc2008476abdb0409d18217f2d7c9397a0a1b0c23e56a
00615f8c <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  615f8c: e1a00001     	mov	r0, r1
  615f90: e1a01002     	mov	r1, r2
  615f94: e1a02003     	mov	r2, r3
  615f98: eaffffd3     	b	0x615eec <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xb4

; position_z_short_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x00615f9c, file offset=0x00615f9c, size=268, SHA-256=8e1328bdf8648dff468203189174d424c3a1745685fd66711762bf9304ab6215
00615f9c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  615f9c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  615fa0: e1a04000     	mov	r4, r0
  615fa4: e24dd014     	sub	sp, sp, #20
  615fa8: e1a05001     	mov	r5, r1
  615fac: e28d0004     	add	r0, sp, #4
  615fb0: e1a01004     	mov	r1, r4
  615fb4: e1a06002     	mov	r6, r2
  615fb8: e1a09003     	mov	r9, r3
  615fbc: e59d7038     	ldr	r7, [sp, #0x38]
  615fc0: ebfff778     	bl	0x613da8 <glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x2220
  615fc4: e59d3004     	ldr	r3, [sp, #0x4]
  615fc8: e1a05085     	lsl	r5, r5, #1
  615fcc: e1a06086     	lsl	r6, r6, #1
  615fd0: e593a004     	ldr	r10, [r3, #0x4]
  615fd4: e59d3008     	ldr	r3, [sp, #0x8]
  615fd8: e19a00f5     	ldrsh	r0, [r10, r5]
  615fdc: e593b000     	ldr	r11, [r3]
  615fe0: e59d300c     	ldr	r3, [sp, #0xc]
  615fe4: e5938000     	ldr	r8, [r3]
  615fe8: ebf3e25d     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x30768c
  615fec: e1a0100b     	mov	r1, r11
  615ff0: ebf3e35d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30728c
  615ff4: e1a01008     	mov	r1, r8
  615ff8: ebf3e2e9     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30745c
  615ffc: e1a05000     	mov	r5, r0
  616000: e19a00f6     	ldrsh	r0, [r10, r6]
  616004: ebf3e256     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3076a8
  616008: e1a01000     	mov	r1, r0
  61600c: e1a0000b     	mov	r0, r11
  616010: ebf3e355     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3072ac
  616014: e1a01000     	mov	r1, r0
  616018: e1a00008     	mov	r0, r8
  61601c: ebf3e2e0     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x307480
  616020: e1a06000     	mov	r6, r0
  616024: e1a00004     	mov	r0, r4
  616028: eb014f89     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x53e24
  61602c: e3500000     	cmp	r0, #0
  616030: 0a000012     	beq	0x616080 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe4> @ imm = #0x48
  616034: e1a00004     	mov	r0, r4
  616038: eb014f8a     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x53e28
  61603c: e5903000     	ldr	r3, [r0]
  616040: e1a00004     	mov	r0, r4
  616044: e5873000     	str	r3, [r7]
  616048: eb014f86     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x53e18
  61604c: e5903004     	ldr	r3, [r0, #0x4]
  616050: e1a01005     	mov	r1, r5
  616054: e1a00006     	mov	r0, r6
  616058: e5873004     	str	r3, [r7, #0x4]
  61605c: ebf3e0d2     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x307cb8
  616060: e1a01000     	mov	r1, r0
  616064: e1a00009     	mov	r0, r9
  616068: ebf3e33f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x307304
  61606c: e1a01005     	mov	r1, r5
  616070: ebf3e2cb     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3074d4
  616074: e5870008     	str	r0, [r7, #0x8]
  616078: e28dd014     	add	sp, sp, #20
  61607c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  616080: e1a01005     	mov	r1, r5
  616084: e1a00006     	mov	r0, r6
  616088: ebf3e0c7     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x307ce4
  61608c: e1a01000     	mov	r1, r0
  616090: e1a00009     	mov	r0, r9
  616094: ebf3e334     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x307330
  616098: e1a01005     	mov	r1, r5
  61609c: ebf3e2c0     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x307500
  6160a0: e5870000     	str	r0, [r7]
  6160a4: eafffff3     	b	0x616078 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xdc> @ imm = #-0x34

; position_z_short_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x006160a8, file offset=0x006160a8, size=28, SHA-256=08230d6cb460d48eb3a6320c7aedef9fa0e13c1f92830f6d0bdd5bb5824a26af
006160a8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  6160a8: e1a00001     	mov	r0, r1
  6160ac: e59dc004     	ldr	r12, [sp, #0x4]
  6160b0: e1a01002     	mov	r1, r2
  6160b4: e1a02003     	mov	r2, r3
  6160b8: e59d3000     	ldr	r3, [sp]
  6160bc: e58dc000     	str	r12, [sp]
  6160c0: eaffffb5     	b	0x615f9c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x12c

; position_z_char_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x00616318, file offset=0x00616318, size=156, SHA-256=9d2fa1227ca92fa63dd8bf8e925ccf29c9ae32dc52db6268c8cc0c24fc31db31
00616318 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  616318: e92d4070     	push	{r4, r5, r6, lr}
  61631c: e1a04000     	mov	r4, r0
  616320: e24dd010     	sub	sp, sp, #16
  616324: e1a05001     	mov	r5, r1
  616328: e28d0004     	add	r0, sp, #4
  61632c: e1a01004     	mov	r1, r4
  616330: e1a06002     	mov	r6, r2
  616334: ebfff6aa     	bl	0x613de4 <glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x2558
  616338: e59d3004     	ldr	r3, [sp, #0x4]
  61633c: e5933004     	ldr	r3, [r3, #0x4]
  616340: e19300d5     	ldrsb	r0, [r3, r5]
  616344: ebf3e186     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3079e8
  616348: e59d3008     	ldr	r3, [sp, #0x8]
  61634c: e5931000     	ldr	r1, [r3]
  616350: ebf3e285     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3075ec
  616354: e59d300c     	ldr	r3, [sp, #0xc]
  616358: e5931000     	ldr	r1, [r3]
  61635c: ebf3e210     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3077c0
  616360: e1a05000     	mov	r5, r0
  616364: e1a00004     	mov	r0, r4
  616368: eb014eb9     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x53ae4
  61636c: e3500000     	cmp	r0, #0
  616370: 1a000002     	bne	0x616380 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x68> @ imm = #0x8
  616374: e5865000     	str	r5, [r6]
  616378: e28dd010     	add	sp, sp, #16
  61637c: e8bd8070     	pop	{r4, r5, r6, pc}
  616380: e1a00004     	mov	r0, r4
  616384: eb014eb7     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x53adc
  616388: e3500000     	cmp	r0, #0
  61638c: 0afffff8     	beq	0x616374 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x5c> @ imm = #-0x20
  616390: e1a00004     	mov	r0, r4
  616394: eb014eb3     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x53acc
  616398: e5902000     	ldr	r2, [r0]
  61639c: e1a03006     	mov	r3, r6
  6163a0: e4832004     	str	r2, [r3], #4
  6163a4: e5902004     	ldr	r2, [r0, #0x4]
  6163a8: e5862004     	str	r2, [r6, #0x4]
  6163ac: e5835004     	str	r5, [r3, #0x4]
  6163b0: eafffff0     	b	0x616378 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x60> @ imm = #-0x40

; position_z_char_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x006163b4, file offset=0x006163b4, size=16, SHA-256=7449918ae468812689277014775c9c52d6a1d94a723277cf84138a1b89bf52d9
006163b4 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  6163b4: e1a00001     	mov	r0, r1
  6163b8: e1a01002     	mov	r1, r2
  6163bc: e1a02003     	mov	r2, r3
  6163c0: eaffffd4     	b	0x616318 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xb0

; position_z_char_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x006163c4, file offset=0x006163c4, size=260, SHA-256=f51e5e8c5b10e5ba063dda12563c9e8c817e56a6d356b9179fc9f5adc2018c0a
006163c4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  6163c4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6163c8: e1a04000     	mov	r4, r0
  6163cc: e24dd014     	sub	sp, sp, #20
  6163d0: e1a05001     	mov	r5, r1
  6163d4: e28d0004     	add	r0, sp, #4
  6163d8: e1a01004     	mov	r1, r4
  6163dc: e1a06002     	mov	r6, r2
  6163e0: e1a0b003     	mov	r11, r3
  6163e4: e59d7038     	ldr	r7, [sp, #0x38]
  6163e8: ebfff67d     	bl	0x613de4 <glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x260c
  6163ec: e59d3004     	ldr	r3, [sp, #0x4]
  6163f0: e5939004     	ldr	r9, [r3, #0x4]
  6163f4: e59d3008     	ldr	r3, [sp, #0x8]
  6163f8: e19900d5     	ldrsb	r0, [r9, r5]
  6163fc: e593a000     	ldr	r10, [r3]
  616400: e59d300c     	ldr	r3, [sp, #0xc]
  616404: e5938000     	ldr	r8, [r3]
  616408: ebf3e155     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x307aac
  61640c: e1a0100a     	mov	r1, r10
  616410: ebf3e255     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3076ac
  616414: e1a01008     	mov	r1, r8
  616418: ebf3e1e1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30787c
  61641c: e1a05000     	mov	r5, r0
  616420: e19900d6     	ldrsb	r0, [r9, r6]
  616424: ebf3e14e     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x307ac8
  616428: e1a01000     	mov	r1, r0
  61642c: e1a0000a     	mov	r0, r10
  616430: ebf3e24d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3076cc
  616434: e1a01000     	mov	r1, r0
  616438: e1a00008     	mov	r0, r8
  61643c: ebf3e1d8     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3078a0
  616440: e1a06000     	mov	r6, r0
  616444: e1a00004     	mov	r0, r4
  616448: eb014e81     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x53a04
  61644c: e3500000     	cmp	r0, #0
  616450: 0a000012     	beq	0x6164a0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xdc> @ imm = #0x48
  616454: e1a00004     	mov	r0, r4
  616458: eb014e82     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x53a08
  61645c: e5903000     	ldr	r3, [r0]
  616460: e1a00004     	mov	r0, r4
  616464: e5873000     	str	r3, [r7]
  616468: eb014e7e     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x539f8
  61646c: e5903004     	ldr	r3, [r0, #0x4]
  616470: e1a01005     	mov	r1, r5
  616474: e1a00006     	mov	r0, r6
  616478: e5873004     	str	r3, [r7, #0x4]
  61647c: ebf3dfca     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x3080d8
  616480: e1a01000     	mov	r1, r0
  616484: e1a0000b     	mov	r0, r11
  616488: ebf3e237     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x307724
  61648c: e1a01005     	mov	r1, r5
  616490: ebf3e1c3     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3078f4
  616494: e5870008     	str	r0, [r7, #0x8]
  616498: e28dd014     	add	sp, sp, #20
  61649c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6164a0: e1a01005     	mov	r1, r5
  6164a4: e1a00006     	mov	r0, r6
  6164a8: ebf3dfbf     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x308104
  6164ac: e1a01000     	mov	r1, r0
  6164b0: e1a0000b     	mov	r0, r11
  6164b4: ebf3e22c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x307750
  6164b8: e1a01005     	mov	r1, r5
  6164bc: ebf3e1b8     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x307920
  6164c0: e5870000     	str	r0, [r7]
  6164c4: eafffff3     	b	0x616498 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xd4> @ imm = #-0x34

; position_z_char_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x006164c8, file offset=0x006164c8, size=28, SHA-256=5c6bd4ded61faada040f71ea2d7e5e6f93db3996e4efeaa67d02de386025f76b
006164c8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  6164c8: e1a00001     	mov	r0, r1
  6164cc: e59dc004     	ldr	r12, [sp, #0x4]
  6164d0: e1a01002     	mov	r1, r2
  6164d4: e1a02003     	mov	r2, r3
  6164d8: e59d3000     	ldr	r3, [sp]
  6164dc: e58dc000     	str	r12, [sp]
  6164e0: eaffffb7     	b	0x6163c4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x124

; scale_x_short_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x00616724, file offset=0x00616724, size=160, SHA-256=5db92a76d1a1152143aa88af66f1080f02915c7d5bdf3f988abaa819ab43636f
00616724 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  616724: e92d4070     	push	{r4, r5, r6, lr}
  616728: e1a04000     	mov	r4, r0
  61672c: e24dd010     	sub	sp, sp, #16
  616730: e1a05001     	mov	r5, r1
  616734: e28d0004     	add	r0, sp, #4
  616738: e1a01004     	mov	r1, r4
  61673c: e1a06002     	mov	r6, r2
  616740: ebfff598     	bl	0x613da8 <glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x29a0
  616744: e59d3004     	ldr	r3, [sp, #0x4]
  616748: e1a05085     	lsl	r5, r5, #1
  61674c: e5933004     	ldr	r3, [r3, #0x4]
  616750: e19300f5     	ldrsh	r0, [r3, r5]
  616754: ebf3e082     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x307df8
  616758: e59d3008     	ldr	r3, [sp, #0x8]
  61675c: e5931000     	ldr	r1, [r3]
  616760: ebf3e181     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3079fc
  616764: e59d300c     	ldr	r3, [sp, #0xc]
  616768: e5931000     	ldr	r1, [r3]
  61676c: ebf3e10c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x307bd0
  616770: e1a05000     	mov	r5, r0
  616774: e1a00004     	mov	r0, r4
  616778: eb014db5     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x536d4
  61677c: e3500000     	cmp	r0, #0
  616780: 1a000002     	bne	0x616790 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x6c> @ imm = #0x8
  616784: e5865000     	str	r5, [r6]
  616788: e28dd010     	add	sp, sp, #16
  61678c: e8bd8070     	pop	{r4, r5, r6, pc}
  616790: e1a00004     	mov	r0, r4
  616794: eb014db3     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x536cc
  616798: e3500000     	cmp	r0, #0
  61679c: 0afffff8     	beq	0x616784 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x60> @ imm = #-0x20
  6167a0: e1a00004     	mov	r0, r4
  6167a4: eb014daf     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x536bc
  6167a8: e1a03006     	mov	r3, r6
  6167ac: e4835004     	str	r5, [r3], #4
  6167b0: e5902004     	ldr	r2, [r0, #0x4]
  6167b4: e5862004     	str	r2, [r6, #0x4]
  6167b8: e5902008     	ldr	r2, [r0, #0x8]
  6167bc: e5832004     	str	r2, [r3, #0x4]
  6167c0: eafffff0     	b	0x616788 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x64> @ imm = #-0x40

; scale_x_short_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x006167c4, file offset=0x006167c4, size=16, SHA-256=4205935de40728e3af1cc2008476abdb0409d18217f2d7c9397a0a1b0c23e56a
006167c4 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  6167c4: e1a00001     	mov	r0, r1
  6167c8: e1a01002     	mov	r1, r2
  6167cc: e1a02003     	mov	r2, r3
  6167d0: eaffffd3     	b	0x616724 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xb4

; scale_x_short_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x006167d4, file offset=0x006167d4, size=272, SHA-256=00f895c9e6457a858e62dc67695ee029e97a98defdfbea11126d2477eccc9abf
006167d4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  6167d4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6167d8: e1a04000     	mov	r4, r0
  6167dc: e24dd014     	sub	sp, sp, #20
  6167e0: e1a05001     	mov	r5, r1
  6167e4: e28d0004     	add	r0, sp, #4
  6167e8: e1a01004     	mov	r1, r4
  6167ec: e1a06002     	mov	r6, r2
  6167f0: e1a09003     	mov	r9, r3
  6167f4: e59da038     	ldr	r10, [sp, #0x38]
  6167f8: ebfff56a     	bl	0x613da8 <glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x2a58
  6167fc: e59d3004     	ldr	r3, [sp, #0x4]
  616800: e1a05085     	lsl	r5, r5, #1
  616804: e1a06086     	lsl	r6, r6, #1
  616808: e5938004     	ldr	r8, [r3, #0x4]
  61680c: e59d3008     	ldr	r3, [sp, #0x8]
  616810: e19800f5     	ldrsh	r0, [r8, r5]
  616814: e593b000     	ldr	r11, [r3]
  616818: e59d300c     	ldr	r3, [sp, #0xc]
  61681c: e5937000     	ldr	r7, [r3]
  616820: ebf3e04f     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x307ec4
  616824: e1a0100b     	mov	r1, r11
  616828: ebf3e14f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x307ac4
  61682c: e1a01007     	mov	r1, r7
  616830: ebf3e0db     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x307c94
  616834: e1a05000     	mov	r5, r0
  616838: e19800f6     	ldrsh	r0, [r8, r6]
  61683c: ebf3e048     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x307ee0
  616840: e1a01000     	mov	r1, r0
  616844: e1a0000b     	mov	r0, r11
  616848: ebf3e147     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x307ae4
  61684c: e1a01000     	mov	r1, r0
  616850: e1a00007     	mov	r0, r7
  616854: ebf3e0d2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x307cb8
  616858: e1a06000     	mov	r6, r0
  61685c: e1a00004     	mov	r0, r4
  616860: eb014d7b     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x535ec
  616864: e3500000     	cmp	r0, #0
  616868: 0a000013     	beq	0x6168bc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe8> @ imm = #0x4c
  61686c: e1a01005     	mov	r1, r5
  616870: e1a00006     	mov	r0, r6
  616874: ebf3decc     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x3084d0
  616878: e1a01000     	mov	r1, r0
  61687c: e1a00009     	mov	r0, r9
  616880: ebf3e139     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x307b1c
  616884: e1a01005     	mov	r1, r5
  616888: ebf3e0c5     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x307cec
  61688c: e1a0500a     	mov	r5, r10
  616890: e4850004     	str	r0, [r5], #4
  616894: e1a00004     	mov	r0, r4
  616898: eb014d72     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x535c8
  61689c: e5903004     	ldr	r3, [r0, #0x4]
  6168a0: e1a00004     	mov	r0, r4
  6168a4: e58a3004     	str	r3, [r10, #0x4]
  6168a8: eb014d6e     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x535b8
  6168ac: e5903008     	ldr	r3, [r0, #0x8]
  6168b0: e5853004     	str	r3, [r5, #0x4]
  6168b4: e28dd014     	add	sp, sp, #20
  6168b8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6168bc: e1a01005     	mov	r1, r5
  6168c0: e1a00006     	mov	r0, r6
  6168c4: ebf3deb8     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x308520
  6168c8: e1a01000     	mov	r1, r0
  6168cc: e1a00009     	mov	r0, r9
  6168d0: ebf3e125     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x307b6c
  6168d4: e1a01005     	mov	r1, r5
  6168d8: ebf3e0b1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x307d3c
  6168dc: e58a0000     	str	r0, [r10]
  6168e0: eafffff3     	b	0x6168b4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe0> @ imm = #-0x34

; scale_x_short_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x006168e4, file offset=0x006168e4, size=28, SHA-256=75b051ce790a4c732497952e42a925d6b9a972bd63ac81fc0b0280447c9957b3
006168e4 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  6168e4: e1a00001     	mov	r0, r1
  6168e8: e59dc004     	ldr	r12, [sp, #0x4]
  6168ec: e1a01002     	mov	r1, r2
  6168f0: e1a02003     	mov	r2, r3
  6168f4: e59d3000     	ldr	r3, [sp]
  6168f8: e58dc000     	str	r12, [sp]
  6168fc: eaffffb4     	b	0x6167d4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x130

; scale_x_char_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x00616b54, file offset=0x00616b54, size=156, SHA-256=2de323890b67f3dc5ef784fa4f69443cf54bdac259d6fe5d4ea73c0da392616e
00616b54 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  616b54: e92d4070     	push	{r4, r5, r6, lr}
  616b58: e1a04000     	mov	r4, r0
  616b5c: e24dd010     	sub	sp, sp, #16
  616b60: e1a05001     	mov	r5, r1
  616b64: e28d0004     	add	r0, sp, #4
  616b68: e1a01004     	mov	r1, r4
  616b6c: e1a06002     	mov	r6, r2
  616b70: ebfff49b     	bl	0x613de4 <glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x2d94
  616b74: e59d3004     	ldr	r3, [sp, #0x4]
  616b78: e5933004     	ldr	r3, [r3, #0x4]
  616b7c: e19300d5     	ldrsb	r0, [r3, r5]
  616b80: ebf3df77     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x308224
  616b84: e59d3008     	ldr	r3, [sp, #0x8]
  616b88: e5931000     	ldr	r1, [r3]
  616b8c: ebf3e076     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x307e28
  616b90: e59d300c     	ldr	r3, [sp, #0xc]
  616b94: e5931000     	ldr	r1, [r3]
  616b98: ebf3e001     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x307ffc
  616b9c: e1a05000     	mov	r5, r0
  616ba0: e1a00004     	mov	r0, r4
  616ba4: eb014caa     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x532a8
  616ba8: e3500000     	cmp	r0, #0
  616bac: 1a000002     	bne	0x616bbc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x68> @ imm = #0x8
  616bb0: e5865000     	str	r5, [r6]
  616bb4: e28dd010     	add	sp, sp, #16
  616bb8: e8bd8070     	pop	{r4, r5, r6, pc}
  616bbc: e1a00004     	mov	r0, r4
  616bc0: eb014ca8     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x532a0
  616bc4: e3500000     	cmp	r0, #0
  616bc8: 0afffff8     	beq	0x616bb0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x5c> @ imm = #-0x20
  616bcc: e1a00004     	mov	r0, r4
  616bd0: eb014ca4     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x53290
  616bd4: e1a03006     	mov	r3, r6
  616bd8: e4835004     	str	r5, [r3], #4
  616bdc: e5902004     	ldr	r2, [r0, #0x4]
  616be0: e5862004     	str	r2, [r6, #0x4]
  616be4: e5902008     	ldr	r2, [r0, #0x8]
  616be8: e5832004     	str	r2, [r3, #0x4]
  616bec: eafffff0     	b	0x616bb4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x60> @ imm = #-0x40

; scale_x_char_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x00616bf0, file offset=0x00616bf0, size=16, SHA-256=7449918ae468812689277014775c9c52d6a1d94a723277cf84138a1b89bf52d9
00616bf0 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  616bf0: e1a00001     	mov	r0, r1
  616bf4: e1a01002     	mov	r1, r2
  616bf8: e1a02003     	mov	r2, r3
  616bfc: eaffffd4     	b	0x616b54 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xb0

; scale_x_char_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x00616c00, file offset=0x00616c00, size=264, SHA-256=7ac201df0a812e5011e413ab452b5ff74b6c78577577fe6eaae2348969451bb3
00616c00 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  616c00: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  616c04: e1a04000     	mov	r4, r0
  616c08: e24dd014     	sub	sp, sp, #20
  616c0c: e1a05001     	mov	r5, r1
  616c10: e28d0004     	add	r0, sp, #4
  616c14: e1a01004     	mov	r1, r4
  616c18: e1a06002     	mov	r6, r2
  616c1c: e1a0b003     	mov	r11, r3
  616c20: e59d9038     	ldr	r9, [sp, #0x38]
  616c24: ebfff46e     	bl	0x613de4 <glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x2e48
  616c28: e59d3004     	ldr	r3, [sp, #0x4]
  616c2c: e593a004     	ldr	r10, [r3, #0x4]
  616c30: e59d3008     	ldr	r3, [sp, #0x8]
  616c34: e19a00d5     	ldrsb	r0, [r10, r5]
  616c38: e5938000     	ldr	r8, [r3]
  616c3c: e59d300c     	ldr	r3, [sp, #0xc]
  616c40: e5937000     	ldr	r7, [r3]
  616c44: ebf3df46     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3082e8
  616c48: e1a01008     	mov	r1, r8
  616c4c: ebf3e046     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x307ee8
  616c50: e1a01007     	mov	r1, r7
  616c54: ebf3dfd2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3080b8
  616c58: e1a05000     	mov	r5, r0
  616c5c: e19a00d6     	ldrsb	r0, [r10, r6]
  616c60: ebf3df3f     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x308304
  616c64: e1a01000     	mov	r1, r0
  616c68: e1a00008     	mov	r0, r8
  616c6c: ebf3e03e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x307f08
  616c70: e1a01000     	mov	r1, r0
  616c74: e1a00007     	mov	r0, r7
  616c78: ebf3dfc9     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3080dc
  616c7c: e1a06000     	mov	r6, r0
  616c80: e1a00004     	mov	r0, r4
  616c84: eb014c72     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x531c8
  616c88: e3500000     	cmp	r0, #0
  616c8c: 0a000013     	beq	0x616ce0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe0> @ imm = #0x4c
  616c90: e1a01005     	mov	r1, r5
  616c94: e1a00006     	mov	r0, r6
  616c98: ebf3ddc3     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x3088f4
  616c9c: e1a01000     	mov	r1, r0
  616ca0: e1a0000b     	mov	r0, r11
  616ca4: ebf3e030     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x307f40
  616ca8: e1a01005     	mov	r1, r5
  616cac: ebf3dfbc     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x308110
  616cb0: e1a05009     	mov	r5, r9
  616cb4: e4850004     	str	r0, [r5], #4
  616cb8: e1a00004     	mov	r0, r4
  616cbc: eb014c69     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x531a4
  616cc0: e5903004     	ldr	r3, [r0, #0x4]
  616cc4: e1a00004     	mov	r0, r4
  616cc8: e5893004     	str	r3, [r9, #0x4]
  616ccc: eb014c65     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x53194
  616cd0: e5903008     	ldr	r3, [r0, #0x8]
  616cd4: e5853004     	str	r3, [r5, #0x4]
  616cd8: e28dd014     	add	sp, sp, #20
  616cdc: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  616ce0: e1a01005     	mov	r1, r5
  616ce4: e1a00006     	mov	r0, r6
  616ce8: ebf3ddaf     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x308944
  616cec: e1a01000     	mov	r1, r0
  616cf0: e1a0000b     	mov	r0, r11
  616cf4: ebf3e01c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x307f90
  616cf8: e1a01005     	mov	r1, r5
  616cfc: ebf3dfa8     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x308160
  616d00: e5890000     	str	r0, [r9]
  616d04: eafffff3     	b	0x616cd8 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xd8> @ imm = #-0x34

; scale_x_char_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x00616d08, file offset=0x00616d08, size=28, SHA-256=e08cef135d867826e5128861e9abe3ac71833d826075245903df41e04e9a02d3
00616d08 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  616d08: e1a00001     	mov	r0, r1
  616d0c: e59dc004     	ldr	r12, [sp, #0x4]
  616d10: e1a01002     	mov	r1, r2
  616d14: e1a02003     	mov	r2, r3
  616d18: e59d3000     	ldr	r3, [sp]
  616d1c: e58dc000     	str	r12, [sp]
  616d20: eaffffb6     	b	0x616c00 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x128

; scale_y_short_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x00616f64, file offset=0x00616f64, size=160, SHA-256=319dc57e0d75a0b7b353a54ec2765e495423ae5fe962aba79299796145a1dd8a
00616f64 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  616f64: e92d4070     	push	{r4, r5, r6, lr}
  616f68: e1a04000     	mov	r4, r0
  616f6c: e24dd010     	sub	sp, sp, #16
  616f70: e1a05001     	mov	r5, r1
  616f74: e28d0004     	add	r0, sp, #4
  616f78: e1a01004     	mov	r1, r4
  616f7c: e1a06002     	mov	r6, r2
  616f80: ebfff388     	bl	0x613da8 <glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x31e0
  616f84: e59d3004     	ldr	r3, [sp, #0x4]
  616f88: e1a05085     	lsl	r5, r5, #1
  616f8c: e5933004     	ldr	r3, [r3, #0x4]
  616f90: e19300f5     	ldrsh	r0, [r3, r5]
  616f94: ebf3de72     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x308638
  616f98: e59d3008     	ldr	r3, [sp, #0x8]
  616f9c: e5931000     	ldr	r1, [r3]
  616fa0: ebf3df71     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30823c
  616fa4: e59d300c     	ldr	r3, [sp, #0xc]
  616fa8: e5931000     	ldr	r1, [r3]
  616fac: ebf3defc     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x308410
  616fb0: e1a05000     	mov	r5, r0
  616fb4: e1a00004     	mov	r0, r4
  616fb8: eb014ba5     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x52e94
  616fbc: e3500000     	cmp	r0, #0
  616fc0: 1a000002     	bne	0x616fd0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x6c> @ imm = #0x8
  616fc4: e5865000     	str	r5, [r6]
  616fc8: e28dd010     	add	sp, sp, #16
  616fcc: e8bd8070     	pop	{r4, r5, r6, pc}
  616fd0: e1a00004     	mov	r0, r4
  616fd4: eb014ba3     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x52e8c
  616fd8: e3500000     	cmp	r0, #0
  616fdc: 0afffff8     	beq	0x616fc4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x60> @ imm = #-0x20
  616fe0: e1a00004     	mov	r0, r4
  616fe4: eb014b9f     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x52e7c
  616fe8: e5902000     	ldr	r2, [r0]
  616fec: e1a03006     	mov	r3, r6
  616ff0: e4832004     	str	r2, [r3], #4
  616ff4: e5865004     	str	r5, [r6, #0x4]
  616ff8: e5902008     	ldr	r2, [r0, #0x8]
  616ffc: e5832004     	str	r2, [r3, #0x4]
  617000: eafffff0     	b	0x616fc8 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x64> @ imm = #-0x40

; scale_y_short_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x00617004, file offset=0x00617004, size=16, SHA-256=4205935de40728e3af1cc2008476abdb0409d18217f2d7c9397a0a1b0c23e56a
00617004 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  617004: e1a00001     	mov	r0, r1
  617008: e1a01002     	mov	r1, r2
  61700c: e1a02003     	mov	r2, r3
  617010: eaffffd3     	b	0x616f64 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xb4

; scale_y_short_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x00617014, file offset=0x00617014, size=272, SHA-256=c9346ddd1ecbf219a07ac9cadfecc274af440b3df7451e956e71b279e011a244
00617014 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  617014: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  617018: e1a04000     	mov	r4, r0
  61701c: e24dd014     	sub	sp, sp, #20
  617020: e1a05001     	mov	r5, r1
  617024: e28d0004     	add	r0, sp, #4
  617028: e1a01004     	mov	r1, r4
  61702c: e1a06002     	mov	r6, r2
  617030: e1a09003     	mov	r9, r3
  617034: e59da038     	ldr	r10, [sp, #0x38]
  617038: ebfff35a     	bl	0x613da8 <glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x3298
  61703c: e59d3004     	ldr	r3, [sp, #0x4]
  617040: e1a05085     	lsl	r5, r5, #1
  617044: e1a06086     	lsl	r6, r6, #1
  617048: e5938004     	ldr	r8, [r3, #0x4]
  61704c: e59d3008     	ldr	r3, [sp, #0x8]
  617050: e19800f5     	ldrsh	r0, [r8, r5]
  617054: e593b000     	ldr	r11, [r3]
  617058: e59d300c     	ldr	r3, [sp, #0xc]
  61705c: e5937000     	ldr	r7, [r3]
  617060: ebf3de3f     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x308704
  617064: e1a0100b     	mov	r1, r11
  617068: ebf3df3f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308304
  61706c: e1a01007     	mov	r1, r7
  617070: ebf3decb     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3084d4
  617074: e1a05000     	mov	r5, r0
  617078: e19800f6     	ldrsh	r0, [r8, r6]
  61707c: ebf3de38     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x308720
  617080: e1a01000     	mov	r1, r0
  617084: e1a0000b     	mov	r0, r11
  617088: ebf3df37     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308324
  61708c: e1a01000     	mov	r1, r0
  617090: e1a00007     	mov	r0, r7
  617094: ebf3dec2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3084f8
  617098: e1a07000     	mov	r7, r0
  61709c: e1a00004     	mov	r0, r4
  6170a0: eb014b6b     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x52dac
  6170a4: e3500000     	cmp	r0, #0
  6170a8: 0a000013     	beq	0x6170fc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe8> @ imm = #0x4c
  6170ac: e1a00004     	mov	r0, r4
  6170b0: eb014b6c     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x52db0
  6170b4: e5903000     	ldr	r3, [r0]
  6170b8: e1a0600a     	mov	r6, r10
  6170bc: e1a01005     	mov	r1, r5
  6170c0: e4863004     	str	r3, [r6], #4
  6170c4: e1a00007     	mov	r0, r7
  6170c8: ebf3dcb7     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x308d24
  6170cc: e1a01000     	mov	r1, r0
  6170d0: e1a00009     	mov	r0, r9
  6170d4: ebf3df24     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308370
  6170d8: e1a01005     	mov	r1, r5
  6170dc: ebf3deb0     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x308540
  6170e0: e58a0004     	str	r0, [r10, #0x4]
  6170e4: e1a00004     	mov	r0, r4
  6170e8: eb014b5e     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x52d78
  6170ec: e5903008     	ldr	r3, [r0, #0x8]
  6170f0: e5863004     	str	r3, [r6, #0x4]
  6170f4: e28dd014     	add	sp, sp, #20
  6170f8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6170fc: e1a01005     	mov	r1, r5
  617100: e1a00007     	mov	r0, r7
  617104: ebf3dca8     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x308d60
  617108: e1a01000     	mov	r1, r0
  61710c: e1a00009     	mov	r0, r9
  617110: ebf3df15     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3083ac
  617114: e1a01005     	mov	r1, r5
  617118: ebf3dea1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30857c
  61711c: e58a0000     	str	r0, [r10]
  617120: eafffff3     	b	0x6170f4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe0> @ imm = #-0x34

; scale_y_short_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x00617124, file offset=0x00617124, size=28, SHA-256=75b051ce790a4c732497952e42a925d6b9a972bd63ac81fc0b0280447c9957b3
00617124 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  617124: e1a00001     	mov	r0, r1
  617128: e59dc004     	ldr	r12, [sp, #0x4]
  61712c: e1a01002     	mov	r1, r2
  617130: e1a02003     	mov	r2, r3
  617134: e59d3000     	ldr	r3, [sp]
  617138: e58dc000     	str	r12, [sp]
  61713c: eaffffb4     	b	0x617014 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x130

; scale_y_char_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x00617394, file offset=0x00617394, size=156, SHA-256=99e4b3e34cb281809ddeb5f49717639ef91ca056e281d615ae7e76bcd6493523
00617394 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  617394: e92d4070     	push	{r4, r5, r6, lr}
  617398: e1a04000     	mov	r4, r0
  61739c: e24dd010     	sub	sp, sp, #16
  6173a0: e1a05001     	mov	r5, r1
  6173a4: e28d0004     	add	r0, sp, #4
  6173a8: e1a01004     	mov	r1, r4
  6173ac: e1a06002     	mov	r6, r2
  6173b0: ebfff28b     	bl	0x613de4 <glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x35d4
  6173b4: e59d3004     	ldr	r3, [sp, #0x4]
  6173b8: e5933004     	ldr	r3, [r3, #0x4]
  6173bc: e19300d5     	ldrsb	r0, [r3, r5]
  6173c0: ebf3dd67     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x308a64
  6173c4: e59d3008     	ldr	r3, [sp, #0x8]
  6173c8: e5931000     	ldr	r1, [r3]
  6173cc: ebf3de66     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308668
  6173d0: e59d300c     	ldr	r3, [sp, #0xc]
  6173d4: e5931000     	ldr	r1, [r3]
  6173d8: ebf3ddf1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30883c
  6173dc: e1a05000     	mov	r5, r0
  6173e0: e1a00004     	mov	r0, r4
  6173e4: eb014a9a     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x52a68
  6173e8: e3500000     	cmp	r0, #0
  6173ec: 1a000002     	bne	0x6173fc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x68> @ imm = #0x8
  6173f0: e5865000     	str	r5, [r6]
  6173f4: e28dd010     	add	sp, sp, #16
  6173f8: e8bd8070     	pop	{r4, r5, r6, pc}
  6173fc: e1a00004     	mov	r0, r4
  617400: eb014a98     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x52a60
  617404: e3500000     	cmp	r0, #0
  617408: 0afffff8     	beq	0x6173f0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x5c> @ imm = #-0x20
  61740c: e1a00004     	mov	r0, r4
  617410: eb014a94     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x52a50
  617414: e5902000     	ldr	r2, [r0]
  617418: e1a03006     	mov	r3, r6
  61741c: e4832004     	str	r2, [r3], #4
  617420: e5865004     	str	r5, [r6, #0x4]
  617424: e5902008     	ldr	r2, [r0, #0x8]
  617428: e5832004     	str	r2, [r3, #0x4]
  61742c: eafffff0     	b	0x6173f4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x60> @ imm = #-0x40

; scale_y_char_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x00617430, file offset=0x00617430, size=16, SHA-256=7449918ae468812689277014775c9c52d6a1d94a723277cf84138a1b89bf52d9
00617430 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  617430: e1a00001     	mov	r0, r1
  617434: e1a01002     	mov	r1, r2
  617438: e1a02003     	mov	r2, r3
  61743c: eaffffd4     	b	0x617394 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xb0

; scale_y_char_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x00617440, file offset=0x00617440, size=264, SHA-256=56455e5d474007eaf91b68f0e563000e502ecf7fc21d029346791c468a99a0fa
00617440 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  617440: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  617444: e1a04000     	mov	r4, r0
  617448: e24dd014     	sub	sp, sp, #20
  61744c: e1a05001     	mov	r5, r1
  617450: e28d0004     	add	r0, sp, #4
  617454: e1a01004     	mov	r1, r4
  617458: e1a06002     	mov	r6, r2
  61745c: e1a0b003     	mov	r11, r3
  617460: e59d9038     	ldr	r9, [sp, #0x38]
  617464: ebfff25e     	bl	0x613de4 <glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x3688
  617468: e59d3004     	ldr	r3, [sp, #0x4]
  61746c: e593a004     	ldr	r10, [r3, #0x4]
  617470: e59d3008     	ldr	r3, [sp, #0x8]
  617474: e19a00d5     	ldrsb	r0, [r10, r5]
  617478: e5938000     	ldr	r8, [r3]
  61747c: e59d300c     	ldr	r3, [sp, #0xc]
  617480: e5937000     	ldr	r7, [r3]
  617484: ebf3dd36     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x308b28
  617488: e1a01008     	mov	r1, r8
  61748c: ebf3de36     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308728
  617490: e1a01007     	mov	r1, r7
  617494: ebf3ddc2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3088f8
  617498: e1a05000     	mov	r5, r0
  61749c: e19a00d6     	ldrsb	r0, [r10, r6]
  6174a0: ebf3dd2f     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x308b44
  6174a4: e1a01000     	mov	r1, r0
  6174a8: e1a00008     	mov	r0, r8
  6174ac: ebf3de2e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308748
  6174b0: e1a01000     	mov	r1, r0
  6174b4: e1a00007     	mov	r0, r7
  6174b8: ebf3ddb9     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30891c
  6174bc: e1a07000     	mov	r7, r0
  6174c0: e1a00004     	mov	r0, r4
  6174c4: eb014a62     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x52988
  6174c8: e3500000     	cmp	r0, #0
  6174cc: 0a000013     	beq	0x617520 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe0> @ imm = #0x4c
  6174d0: e1a00004     	mov	r0, r4
  6174d4: eb014a63     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x5298c
  6174d8: e5903000     	ldr	r3, [r0]
  6174dc: e1a06009     	mov	r6, r9
  6174e0: e1a01005     	mov	r1, r5
  6174e4: e4863004     	str	r3, [r6], #4
  6174e8: e1a00007     	mov	r0, r7
  6174ec: ebf3dbae     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x309148
  6174f0: e1a01000     	mov	r1, r0
  6174f4: e1a0000b     	mov	r0, r11
  6174f8: ebf3de1b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308794
  6174fc: e1a01005     	mov	r1, r5
  617500: ebf3dda7     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x308964
  617504: e5890004     	str	r0, [r9, #0x4]
  617508: e1a00004     	mov	r0, r4
  61750c: eb014a55     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x52954
  617510: e5903008     	ldr	r3, [r0, #0x8]
  617514: e5863004     	str	r3, [r6, #0x4]
  617518: e28dd014     	add	sp, sp, #20
  61751c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  617520: e1a01005     	mov	r1, r5
  617524: e1a00007     	mov	r0, r7
  617528: ebf3db9f     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x309184
  61752c: e1a01000     	mov	r1, r0
  617530: e1a0000b     	mov	r0, r11
  617534: ebf3de0c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3087d0
  617538: e1a01005     	mov	r1, r5
  61753c: ebf3dd98     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3089a0
  617540: e5890000     	str	r0, [r9]
  617544: eafffff3     	b	0x617518 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xd8> @ imm = #-0x34

; scale_y_char_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x00617548, file offset=0x00617548, size=28, SHA-256=e08cef135d867826e5128861e9abe3ac71833d826075245903df41e04e9a02d3
00617548 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  617548: e1a00001     	mov	r0, r1
  61754c: e59dc004     	ldr	r12, [sp, #0x4]
  617550: e1a01002     	mov	r1, r2
  617554: e1a02003     	mov	r2, r3
  617558: e59d3000     	ldr	r3, [sp]
  61755c: e58dc000     	str	r12, [sp]
  617560: eaffffb6     	b	0x617440 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x128

; scale_z_short_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x006177a4, file offset=0x006177a4, size=160, SHA-256=6789b22ce1deefb280b431292f67995ed0a072afb28198487fb04127643bc6e0
006177a4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  6177a4: e92d4070     	push	{r4, r5, r6, lr}
  6177a8: e1a04000     	mov	r4, r0
  6177ac: e24dd010     	sub	sp, sp, #16
  6177b0: e1a05001     	mov	r5, r1
  6177b4: e28d0004     	add	r0, sp, #4
  6177b8: e1a01004     	mov	r1, r4
  6177bc: e1a06002     	mov	r6, r2
  6177c0: ebfff178     	bl	0x613da8 <glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x3a20
  6177c4: e59d3004     	ldr	r3, [sp, #0x4]
  6177c8: e1a05085     	lsl	r5, r5, #1
  6177cc: e5933004     	ldr	r3, [r3, #0x4]
  6177d0: e19300f5     	ldrsh	r0, [r3, r5]
  6177d4: ebf3dc62     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x308e78
  6177d8: e59d3008     	ldr	r3, [sp, #0x8]
  6177dc: e5931000     	ldr	r1, [r3]
  6177e0: ebf3dd61     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308a7c
  6177e4: e59d300c     	ldr	r3, [sp, #0xc]
  6177e8: e5931000     	ldr	r1, [r3]
  6177ec: ebf3dcec     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x308c50
  6177f0: e1a05000     	mov	r5, r0
  6177f4: e1a00004     	mov	r0, r4
  6177f8: eb014995     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x52654
  6177fc: e3500000     	cmp	r0, #0
  617800: 1a000002     	bne	0x617810 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x6c> @ imm = #0x8
  617804: e5865000     	str	r5, [r6]
  617808: e28dd010     	add	sp, sp, #16
  61780c: e8bd8070     	pop	{r4, r5, r6, pc}
  617810: e1a00004     	mov	r0, r4
  617814: eb014993     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x5264c
  617818: e3500000     	cmp	r0, #0
  61781c: 0afffff8     	beq	0x617804 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x60> @ imm = #-0x20
  617820: e1a00004     	mov	r0, r4
  617824: eb01498f     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x5263c
  617828: e5902000     	ldr	r2, [r0]
  61782c: e1a03006     	mov	r3, r6
  617830: e4832004     	str	r2, [r3], #4
  617834: e5902004     	ldr	r2, [r0, #0x4]
  617838: e5862004     	str	r2, [r6, #0x4]
  61783c: e5835004     	str	r5, [r3, #0x4]
  617840: eafffff0     	b	0x617808 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x64> @ imm = #-0x40

; scale_z_short_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x00617844, file offset=0x00617844, size=16, SHA-256=4205935de40728e3af1cc2008476abdb0409d18217f2d7c9397a0a1b0c23e56a
00617844 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  617844: e1a00001     	mov	r0, r1
  617848: e1a01002     	mov	r1, r2
  61784c: e1a02003     	mov	r2, r3
  617850: eaffffd3     	b	0x6177a4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xb4

; scale_z_short_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x00617854, file offset=0x00617854, size=268, SHA-256=f9dd79f52f6c39f76f439b30399bb690d85712aa3c84a8f8ef5bd0b24b3c28a0
00617854 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  617854: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  617858: e1a04000     	mov	r4, r0
  61785c: e24dd014     	sub	sp, sp, #20
  617860: e1a05001     	mov	r5, r1
  617864: e28d0004     	add	r0, sp, #4
  617868: e1a01004     	mov	r1, r4
  61786c: e1a06002     	mov	r6, r2
  617870: e1a09003     	mov	r9, r3
  617874: e59d7038     	ldr	r7, [sp, #0x38]
  617878: ebfff14a     	bl	0x613da8 <glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x3ad8
  61787c: e59d3004     	ldr	r3, [sp, #0x4]
  617880: e1a05085     	lsl	r5, r5, #1
  617884: e1a06086     	lsl	r6, r6, #1
  617888: e593a004     	ldr	r10, [r3, #0x4]
  61788c: e59d3008     	ldr	r3, [sp, #0x8]
  617890: e19a00f5     	ldrsh	r0, [r10, r5]
  617894: e593b000     	ldr	r11, [r3]
  617898: e59d300c     	ldr	r3, [sp, #0xc]
  61789c: e5938000     	ldr	r8, [r3]
  6178a0: ebf3dc2f     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x308f44
  6178a4: e1a0100b     	mov	r1, r11
  6178a8: ebf3dd2f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308b44
  6178ac: e1a01008     	mov	r1, r8
  6178b0: ebf3dcbb     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x308d14
  6178b4: e1a05000     	mov	r5, r0
  6178b8: e19a00f6     	ldrsh	r0, [r10, r6]
  6178bc: ebf3dc28     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x308f60
  6178c0: e1a01000     	mov	r1, r0
  6178c4: e1a0000b     	mov	r0, r11
  6178c8: ebf3dd27     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308b64
  6178cc: e1a01000     	mov	r1, r0
  6178d0: e1a00008     	mov	r0, r8
  6178d4: ebf3dcb2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x308d38
  6178d8: e1a06000     	mov	r6, r0
  6178dc: e1a00004     	mov	r0, r4
  6178e0: eb01495b     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x5256c
  6178e4: e3500000     	cmp	r0, #0
  6178e8: 0a000012     	beq	0x617938 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xe4> @ imm = #0x48
  6178ec: e1a00004     	mov	r0, r4
  6178f0: eb01495c     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x52570
  6178f4: e5903000     	ldr	r3, [r0]
  6178f8: e1a00004     	mov	r0, r4
  6178fc: e5873000     	str	r3, [r7]
  617900: eb014958     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x52560
  617904: e5903004     	ldr	r3, [r0, #0x4]
  617908: e1a01005     	mov	r1, r5
  61790c: e1a00006     	mov	r0, r6
  617910: e5873004     	str	r3, [r7, #0x4]
  617914: ebf3daa4     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x309570
  617918: e1a01000     	mov	r1, r0
  61791c: e1a00009     	mov	r0, r9
  617920: ebf3dd11     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308bbc
  617924: e1a01005     	mov	r1, r5
  617928: ebf3dc9d     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x308d8c
  61792c: e5870008     	str	r0, [r7, #0x8]
  617930: e28dd014     	add	sp, sp, #20
  617934: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  617938: e1a01005     	mov	r1, r5
  61793c: e1a00006     	mov	r0, r6
  617940: ebf3da99     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x30959c
  617944: e1a01000     	mov	r1, r0
  617948: e1a00009     	mov	r0, r9
  61794c: ebf3dd06     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308be8
  617950: e1a01005     	mov	r1, r5
  617954: ebf3dc92     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x308db8
  617958: e5870000     	str	r0, [r7]
  61795c: eafffff3     	b	0x617930 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xdc> @ imm = #-0x34

; scale_z_short_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x00617960, file offset=0x00617960, size=28, SHA-256=08230d6cb460d48eb3a6320c7aedef9fa0e13c1f92830f6d0bdd5bb5824a26af
00617960 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  617960: e1a00001     	mov	r0, r1
  617964: e59dc004     	ldr	r12, [sp, #0x4]
  617968: e1a01002     	mov	r1, r2
  61796c: e1a02003     	mov	r2, r3
  617970: e59d3000     	ldr	r3, [sp]
  617974: e58dc000     	str	r12, [sp]
  617978: eaffffb5     	b	0x617854 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x12c

; scale_z_char_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x00617bd0, file offset=0x00617bd0, size=156, SHA-256=2dadb0301032bf98bb385b9f4569c7f186475503682f47595479b8de38100e59
00617bd0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  617bd0: e92d4070     	push	{r4, r5, r6, lr}
  617bd4: e1a04000     	mov	r4, r0
  617bd8: e24dd010     	sub	sp, sp, #16
  617bdc: e1a05001     	mov	r5, r1
  617be0: e28d0004     	add	r0, sp, #4
  617be4: e1a01004     	mov	r1, r4
  617be8: e1a06002     	mov	r6, r2
  617bec: ebfff07c     	bl	0x613de4 <glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x3e10
  617bf0: e59d3004     	ldr	r3, [sp, #0x4]
  617bf4: e5933004     	ldr	r3, [r3, #0x4]
  617bf8: e19300d5     	ldrsb	r0, [r3, r5]
  617bfc: ebf3db58     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3092a0
  617c00: e59d3008     	ldr	r3, [sp, #0x8]
  617c04: e5931000     	ldr	r1, [r3]
  617c08: ebf3dc57     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308ea4
  617c0c: e59d300c     	ldr	r3, [sp, #0xc]
  617c10: e5931000     	ldr	r1, [r3]
  617c14: ebf3dbe2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x309078
  617c18: e1a05000     	mov	r5, r0
  617c1c: e1a00004     	mov	r0, r4
  617c20: eb01488b     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x5222c
  617c24: e3500000     	cmp	r0, #0
  617c28: 1a000002     	bne	0x617c38 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x68> @ imm = #0x8
  617c2c: e5865000     	str	r5, [r6]
  617c30: e28dd010     	add	sp, sp, #16
  617c34: e8bd8070     	pop	{r4, r5, r6, pc}
  617c38: e1a00004     	mov	r0, r4
  617c3c: eb014889     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x52224
  617c40: e3500000     	cmp	r0, #0
  617c44: 0afffff8     	beq	0x617c2c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x5c> @ imm = #-0x20
  617c48: e1a00004     	mov	r0, r4
  617c4c: eb014885     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x52214
  617c50: e5902000     	ldr	r2, [r0]
  617c54: e1a03006     	mov	r3, r6
  617c58: e4832004     	str	r2, [r3], #4
  617c5c: e5902004     	ldr	r2, [r0, #0x4]
  617c60: e5862004     	str	r2, [r6, #0x4]
  617c64: e5835004     	str	r5, [r3, #0x4]
  617c68: eafffff0     	b	0x617c30 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x60> @ imm = #-0x40

; scale_z_char_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x00617c6c, file offset=0x00617c6c, size=16, SHA-256=7449918ae468812689277014775c9c52d6a1d94a723277cf84138a1b89bf52d9
00617c6c <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  617c6c: e1a00001     	mov	r0, r1
  617c70: e1a01002     	mov	r1, r2
  617c74: e1a02003     	mov	r2, r3
  617c78: eaffffd4     	b	0x617bd0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xb0

; scale_z_char_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x00617c7c, file offset=0x00617c7c, size=260, SHA-256=365bfcfaeaec8782d2e4ce7ac9e1f2fb2c62a89371c5e11ea4c0c693d18e5dbc
00617c7c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  617c7c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  617c80: e1a04000     	mov	r4, r0
  617c84: e24dd014     	sub	sp, sp, #20
  617c88: e1a05001     	mov	r5, r1
  617c8c: e28d0004     	add	r0, sp, #4
  617c90: e1a01004     	mov	r1, r4
  617c94: e1a06002     	mov	r6, r2
  617c98: e1a0b003     	mov	r11, r3
  617c9c: e59d7038     	ldr	r7, [sp, #0x38]
  617ca0: ebfff04f     	bl	0x613de4 <glitch::collada::animation_track::CInputReader<char, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)> @ imm = #-0x3ec4
  617ca4: e59d3004     	ldr	r3, [sp, #0x4]
  617ca8: e5939004     	ldr	r9, [r3, #0x4]
  617cac: e59d3008     	ldr	r3, [sp, #0x8]
  617cb0: e19900d5     	ldrsb	r0, [r9, r5]
  617cb4: e593a000     	ldr	r10, [r3]
  617cb8: e59d300c     	ldr	r3, [sp, #0xc]
  617cbc: e5938000     	ldr	r8, [r3]
  617cc0: ebf3db27     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x309364
  617cc4: e1a0100a     	mov	r1, r10
  617cc8: ebf3dc27     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308f64
  617ccc: e1a01008     	mov	r1, r8
  617cd0: ebf3dbb3     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x309134
  617cd4: e1a05000     	mov	r5, r0
  617cd8: e19900d6     	ldrsb	r0, [r9, r6]
  617cdc: ebf3db20     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x309380
  617ce0: e1a01000     	mov	r1, r0
  617ce4: e1a0000a     	mov	r0, r10
  617ce8: ebf3dc1f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308f84
  617cec: e1a01000     	mov	r1, r0
  617cf0: e1a00008     	mov	r0, r8
  617cf4: ebf3dbaa     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x309158
  617cf8: e1a06000     	mov	r6, r0
  617cfc: e1a00004     	mov	r0, r4
  617d00: eb014853     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x5214c
  617d04: e3500000     	cmp	r0, #0
  617d08: 0a000012     	beq	0x617d58 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xdc> @ imm = #0x48
  617d0c: e1a00004     	mov	r0, r4
  617d10: eb014854     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x52150
  617d14: e5903000     	ldr	r3, [r0]
  617d18: e1a00004     	mov	r0, r4
  617d1c: e5873000     	str	r3, [r7]
  617d20: eb014850     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x52140
  617d24: e5903004     	ldr	r3, [r0, #0x4]
  617d28: e1a01005     	mov	r1, r5
  617d2c: e1a00006     	mov	r0, r6
  617d30: e5873004     	str	r3, [r7, #0x4]
  617d34: ebf3d99c     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x309990
  617d38: e1a01000     	mov	r1, r0
  617d3c: e1a0000b     	mov	r0, r11
  617d40: ebf3dc09     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x308fdc
  617d44: e1a01005     	mov	r1, r5
  617d48: ebf3db95     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3091ac
  617d4c: e5870008     	str	r0, [r7, #0x8]
  617d50: e28dd014     	add	sp, sp, #20
  617d54: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  617d58: e1a01005     	mov	r1, r5
  617d5c: e1a00006     	mov	r0, r6
  617d60: ebf3d991     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x3099bc
  617d64: e1a01000     	mov	r1, r0
  617d68: e1a0000b     	mov	r0, r11
  617d6c: ebf3dbfe     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x309008
  617d70: e1a01005     	mov	r1, r5
  617d74: ebf3db8a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3091d8
  617d78: e5870000     	str	r0, [r7]
  617d7c: eafffff3     	b	0x617d50 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0xd4> @ imm = #-0x34

; scale_z_char_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x00617d80, file offset=0x00617d80, size=28, SHA-256=5c6bd4ded61faada040f71ea2d7e5e6f93db3996e4efeaa67d02de386025f76b
00617d80 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  617d80: e1a00001     	mov	r0, r1
  617d84: e59dc004     	ldr	r12, [sp, #0x4]
  617d88: e1a01002     	mov	r1, r2
  617d8c: e1a02003     	mov	r2, r3
  617d90: e59d3000     	ldr	r3, [sp]
  617d94: e58dc000     	str	r12, [sp]
  617d98: eaffffb7     	b	0x617c7c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x124

; scale_x_float_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x0061dc4c, file offset=0x0061dc4c, size=112, SHA-256=c0c8201744d07c012386ecbb4582addb65b061da3436e01c2f17726732404ad5
0061dc4c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  61dc4c: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  61dc50: e1a04001     	mov	r4, r1
  61dc54: e3a01000     	mov	r1, #0
  61dc58: e1a06002     	mov	r6, r2
  61dc5c: e1a05000     	mov	r5, r0
  61dc60: eb01306f     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4c1bc
  61dc64: e5907004     	ldr	r7, [r0, #0x4]
  61dc68: e1a00005     	mov	r0, r5
  61dc6c: eb013078     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x4c1e0
  61dc70: e3500000     	cmp	r0, #0
  61dc74: 1a000002     	bne	0x61dc84 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x38> @ imm = #0x8
  61dc78: e7973104     	ldr	r3, [r7, r4, lsl #2]
  61dc7c: e5863000     	str	r3, [r6]
  61dc80: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  61dc84: e1a00005     	mov	r0, r5
  61dc88: eb013076     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4c1d8
  61dc8c: e3500000     	cmp	r0, #0
  61dc90: 0afffff8     	beq	0x61dc78 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x2c> @ imm = #-0x20
  61dc94: e1a00005     	mov	r0, r5
  61dc98: eb013072     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4c1c8
  61dc9c: e7972104     	ldr	r2, [r7, r4, lsl #2]
  61dca0: e1a03006     	mov	r3, r6
  61dca4: e4832004     	str	r2, [r3], #4
  61dca8: e5902004     	ldr	r2, [r0, #0x4]
  61dcac: e5862004     	str	r2, [r6, #0x4]
  61dcb0: e5902008     	ldr	r2, [r0, #0x8]
  61dcb4: e5832004     	str	r2, [r3, #0x4]
  61dcb8: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}

; scale_x_float_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x0061dcbc, file offset=0x0061dcbc, size=16, SHA-256=821ec9e9182ca4a6e233c0ec26f8668a9e78e0ef4f9dc738d208d3b502fb7ba2
0061dcbc <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  61dcbc: e1a00001     	mov	r0, r1
  61dcc0: e1a01002     	mov	r1, r2
  61dcc4: e1a02003     	mov	r2, r3
  61dcc8: eaffffdf     	b	0x61dc4c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0x84

; scale_x_float_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x0061dccc, file offset=0x0061dccc, size=184, SHA-256=a9439c167a1752b8336a3dac63014c5d9a2c7e04a49f0a30529ad07189cf78fe
0061dccc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  61dccc: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  61dcd0: e1a04001     	mov	r4, r1
  61dcd4: e3a01000     	mov	r1, #0
  61dcd8: e1a05002     	mov	r5, r2
  61dcdc: e1a08003     	mov	r8, r3
  61dce0: e1a06000     	mov	r6, r0
  61dce4: e59d7020     	ldr	r7, [sp, #0x20]
  61dce8: eb01304d     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4c134
  61dcec: e5909004     	ldr	r9, [r0, #0x4]
  61dcf0: e1a00006     	mov	r0, r6
  61dcf4: eb013056     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x4c158
  61dcf8: e3500000     	cmp	r0, #0
  61dcfc: 0a000014     	beq	0x61dd54 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0x88> @ imm = #0x50
  61dd00: e799a104     	ldr	r10, [r9, r4, lsl #2]
  61dd04: e7990105     	ldr	r0, [r9, r5, lsl #2]
  61dd08: e1a04007     	mov	r4, r7
  61dd0c: e1a0100a     	mov	r1, r10
  61dd10: ebf3c1a5     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x30f96c
  61dd14: e1a01000     	mov	r1, r0
  61dd18: e1a00008     	mov	r0, r8
  61dd1c: ebf3c412     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30efb8
  61dd20: e1a01000     	mov	r1, r0
  61dd24: e1a0000a     	mov	r0, r10
  61dd28: ebf3c39d     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30f18c
  61dd2c: e4840004     	str	r0, [r4], #4
  61dd30: e1a00006     	mov	r0, r6
  61dd34: eb01304b     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4c12c
  61dd38: e5903004     	ldr	r3, [r0, #0x4]
  61dd3c: e1a00006     	mov	r0, r6
  61dd40: e5873004     	str	r3, [r7, #0x4]
  61dd44: eb013047     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4c11c
  61dd48: e5903008     	ldr	r3, [r0, #0x8]
  61dd4c: e5843004     	str	r3, [r4, #0x4]
  61dd50: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  61dd54: e7994104     	ldr	r4, [r9, r4, lsl #2]
  61dd58: e7990105     	ldr	r0, [r9, r5, lsl #2]
  61dd5c: e1a01004     	mov	r1, r4
  61dd60: ebf3c191     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x30f9bc
  61dd64: e1a01000     	mov	r1, r0
  61dd68: e1a00008     	mov	r0, r8
  61dd6c: ebf3c3fe     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30f008
  61dd70: e1a01000     	mov	r1, r0
  61dd74: e1a00004     	mov	r0, r4
  61dd78: ebf3c389     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30f1dc
  61dd7c: e5870000     	str	r0, [r7]
  61dd80: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}

; scale_x_float_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x0061dd84, file offset=0x0061dd84, size=28, SHA-256=fd01b91fbce178d88be1395e86bb38db5942f5150f01e129d32d11eeeffbf495
0061dd84 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  61dd84: e1a00001     	mov	r0, r1
  61dd88: e59dc004     	ldr	r12, [sp, #0x4]
  61dd8c: e1a01002     	mov	r1, r2
  61dd90: e1a02003     	mov	r2, r3
  61dd94: e59d3000     	ldr	r3, [sp]
  61dd98: e58dc000     	str	r12, [sp]
  61dd9c: eaffffca     	b	0x61dccc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xd8

; scale_y_float_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x0061df18, file offset=0x0061df18, size=112, SHA-256=d6c25e1b85f18067e8ef8631ad8fedeaf204455599458eeb82ae5c8d1649ae84
0061df18 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  61df18: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  61df1c: e1a04001     	mov	r4, r1
  61df20: e3a01000     	mov	r1, #0
  61df24: e1a06002     	mov	r6, r2
  61df28: e1a05000     	mov	r5, r0
  61df2c: eb012fbc     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4bef0
  61df30: e5907004     	ldr	r7, [r0, #0x4]
  61df34: e1a00005     	mov	r0, r5
  61df38: eb012fc5     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x4bf14
  61df3c: e3500000     	cmp	r0, #0
  61df40: 1a000002     	bne	0x61df50 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x38> @ imm = #0x8
  61df44: e7973104     	ldr	r3, [r7, r4, lsl #2]
  61df48: e5863000     	str	r3, [r6]
  61df4c: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  61df50: e1a00005     	mov	r0, r5
  61df54: eb012fc3     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4bf0c
  61df58: e3500000     	cmp	r0, #0
  61df5c: 0afffff8     	beq	0x61df44 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x2c> @ imm = #-0x20
  61df60: e1a00005     	mov	r0, r5
  61df64: eb012fbf     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4befc
  61df68: e5902000     	ldr	r2, [r0]
  61df6c: e1a03006     	mov	r3, r6
  61df70: e4832004     	str	r2, [r3], #4
  61df74: e7972104     	ldr	r2, [r7, r4, lsl #2]
  61df78: e5862004     	str	r2, [r6, #0x4]
  61df7c: e5902008     	ldr	r2, [r0, #0x8]
  61df80: e5832004     	str	r2, [r3, #0x4]
  61df84: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}

; scale_y_float_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x0061df88, file offset=0x0061df88, size=16, SHA-256=821ec9e9182ca4a6e233c0ec26f8668a9e78e0ef4f9dc738d208d3b502fb7ba2
0061df88 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  61df88: e1a00001     	mov	r0, r1
  61df8c: e1a01002     	mov	r1, r2
  61df90: e1a02003     	mov	r2, r3
  61df94: eaffffdf     	b	0x61df18 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0x84

; scale_y_float_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x0061df98, file offset=0x0061df98, size=184, SHA-256=ae7b20e60f6d80dc3df22bc889eefda04951bb89350e78c9532a72a09ef111e3
0061df98 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  61df98: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  61df9c: e1a04001     	mov	r4, r1
  61dfa0: e3a01000     	mov	r1, #0
  61dfa4: e1a05002     	mov	r5, r2
  61dfa8: e1a08003     	mov	r8, r3
  61dfac: e1a06000     	mov	r6, r0
  61dfb0: e59d7020     	ldr	r7, [sp, #0x20]
  61dfb4: eb012f9a     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4be68
  61dfb8: e5909004     	ldr	r9, [r0, #0x4]
  61dfbc: e1a00006     	mov	r0, r6
  61dfc0: eb012fa3     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x4be8c
  61dfc4: e3500000     	cmp	r0, #0
  61dfc8: 0a000014     	beq	0x61e020 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0x88> @ imm = #0x50
  61dfcc: e1a00006     	mov	r0, r6
  61dfd0: eb012fa4     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4be90
  61dfd4: e5903000     	ldr	r3, [r0]
  61dfd8: e1a0a007     	mov	r10, r7
  61dfdc: e48a3004     	str	r3, [r10], #4
  61dfe0: e7994104     	ldr	r4, [r9, r4, lsl #2]
  61dfe4: e7990105     	ldr	r0, [r9, r5, lsl #2]
  61dfe8: e1a01004     	mov	r1, r4
  61dfec: ebf3c0ee     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x30fc48
  61dff0: e1a01000     	mov	r1, r0
  61dff4: e1a00008     	mov	r0, r8
  61dff8: ebf3c35b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30f294
  61dffc: e1a01000     	mov	r1, r0
  61e000: e1a00004     	mov	r0, r4
  61e004: ebf3c2e6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30f468
  61e008: e5870004     	str	r0, [r7, #0x4]
  61e00c: e1a00006     	mov	r0, r6
  61e010: eb012f94     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4be50
  61e014: e5903008     	ldr	r3, [r0, #0x8]
  61e018: e58a3004     	str	r3, [r10, #0x4]
  61e01c: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  61e020: e7994104     	ldr	r4, [r9, r4, lsl #2]
  61e024: e7990105     	ldr	r0, [r9, r5, lsl #2]
  61e028: e1a01004     	mov	r1, r4
  61e02c: ebf3c0de     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x30fc88
  61e030: e1a01000     	mov	r1, r0
  61e034: e1a00008     	mov	r0, r8
  61e038: ebf3c34b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30f2d4
  61e03c: e1a01000     	mov	r1, r0
  61e040: e1a00004     	mov	r0, r4
  61e044: ebf3c2d6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30f4a8
  61e048: e5870000     	str	r0, [r7]
  61e04c: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}

; scale_y_float_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x0061e050, file offset=0x0061e050, size=28, SHA-256=fd01b91fbce178d88be1395e86bb38db5942f5150f01e129d32d11eeeffbf495
0061e050 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  61e050: e1a00001     	mov	r0, r1
  61e054: e59dc004     	ldr	r12, [sp, #0x4]
  61e058: e1a01002     	mov	r1, r2
  61e05c: e1a02003     	mov	r2, r3
  61e060: e59d3000     	ldr	r3, [sp]
  61e064: e58dc000     	str	r12, [sp]
  61e068: eaffffca     	b	0x61df98 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xd8

; scale_z_float_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x0061e1e4, file offset=0x0061e1e4, size=112, SHA-256=2b581b8563f44a8ed06044edc6c01b06c8c8da8639e4ae9c742f3cd7e1186798
0061e1e4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  61e1e4: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  61e1e8: e1a04001     	mov	r4, r1
  61e1ec: e3a01000     	mov	r1, #0
  61e1f0: e1a06002     	mov	r6, r2
  61e1f4: e1a05000     	mov	r5, r0
  61e1f8: eb012f09     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4bc24
  61e1fc: e5907004     	ldr	r7, [r0, #0x4]
  61e200: e1a00005     	mov	r0, r5
  61e204: eb012f12     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x4bc48
  61e208: e3500000     	cmp	r0, #0
  61e20c: 1a000002     	bne	0x61e21c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x38> @ imm = #0x8
  61e210: e7973104     	ldr	r3, [r7, r4, lsl #2]
  61e214: e5863000     	str	r3, [r6]
  61e218: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  61e21c: e1a00005     	mov	r0, r5
  61e220: eb012f10     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4bc40
  61e224: e3500000     	cmp	r0, #0
  61e228: 0afffff8     	beq	0x61e210 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x2c> @ imm = #-0x20
  61e22c: e1a00005     	mov	r0, r5
  61e230: eb012f0c     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4bc30
  61e234: e5902000     	ldr	r2, [r0]
  61e238: e1a03006     	mov	r3, r6
  61e23c: e4832004     	str	r2, [r3], #4
  61e240: e5902004     	ldr	r2, [r0, #0x4]
  61e244: e5862004     	str	r2, [r6, #0x4]
  61e248: e7972104     	ldr	r2, [r7, r4, lsl #2]
  61e24c: e5832004     	str	r2, [r3, #0x4]
  61e250: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}

; scale_z_float_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x0061e254, file offset=0x0061e254, size=16, SHA-256=821ec9e9182ca4a6e233c0ec26f8668a9e78e0ef4f9dc738d208d3b502fb7ba2
0061e254 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  61e254: e1a00001     	mov	r0, r1
  61e258: e1a01002     	mov	r1, r2
  61e25c: e1a02003     	mov	r2, r3
  61e260: eaffffdf     	b	0x61e1e4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0x84

; scale_z_float_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x0061e264, file offset=0x0061e264, size=180, SHA-256=7611a14ebf23064bfd4c8da64deac2a7da65b6b731a968266dabf94717a0eff6
0061e264 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  61e264: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  61e268: e1a04001     	mov	r4, r1
  61e26c: e3a01000     	mov	r1, #0
  61e270: e1a05002     	mov	r5, r2
  61e274: e1a08003     	mov	r8, r3
  61e278: e1a07000     	mov	r7, r0
  61e27c: e59d6020     	ldr	r6, [sp, #0x20]
  61e280: eb012ee7     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4bb9c
  61e284: e590a004     	ldr	r10, [r0, #0x4]
  61e288: e1a00007     	mov	r0, r7
  61e28c: eb012ef0     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x4bbc0
  61e290: e3500000     	cmp	r0, #0
  61e294: 0a000013     	beq	0x61e2e8 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0x84> @ imm = #0x4c
  61e298: e1a00007     	mov	r0, r7
  61e29c: eb012ef1     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4bbc4
  61e2a0: e5903000     	ldr	r3, [r0]
  61e2a4: e1a00007     	mov	r0, r7
  61e2a8: e5863000     	str	r3, [r6]
  61e2ac: eb012eed     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4bbb4
  61e2b0: e5903004     	ldr	r3, [r0, #0x4]
  61e2b4: e5863004     	str	r3, [r6, #0x4]
  61e2b8: e79a4104     	ldr	r4, [r10, r4, lsl #2]
  61e2bc: e79a0105     	ldr	r0, [r10, r5, lsl #2]
  61e2c0: e1a01004     	mov	r1, r4
  61e2c4: ebf3c038     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x30ff20
  61e2c8: e1a01000     	mov	r1, r0
  61e2cc: e1a00008     	mov	r0, r8
  61e2d0: ebf3c2a5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30f56c
  61e2d4: e1a01000     	mov	r1, r0
  61e2d8: e1a00004     	mov	r0, r4
  61e2dc: ebf3c230     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30f740
  61e2e0: e5860008     	str	r0, [r6, #0x8]
  61e2e4: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  61e2e8: e79a4104     	ldr	r4, [r10, r4, lsl #2]
  61e2ec: e79a0105     	ldr	r0, [r10, r5, lsl #2]
  61e2f0: e1a01004     	mov	r1, r4
  61e2f4: ebf3c02c     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x30ff50
  61e2f8: e1a01000     	mov	r1, r0
  61e2fc: e1a00008     	mov	r0, r8
  61e300: ebf3c299     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30f59c
  61e304: e1a01000     	mov	r1, r0
  61e308: e1a00004     	mov	r0, r4
  61e30c: ebf3c224     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30f770
  61e310: e5860000     	str	r0, [r6]
  61e314: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}

; scale_z_float_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x0061e318, file offset=0x0061e318, size=28, SHA-256=c00f698db5af834fb7eba6f744f94b9c74e074d8b0787ccc432860fd7ef02243
0061e318 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  61e318: e1a00001     	mov	r0, r1
  61e31c: e59dc004     	ldr	r12, [sp, #0x4]
  61e320: e1a01002     	mov	r1, r2
  61e324: e1a02003     	mov	r2, r3
  61e328: e59d3000     	ldr	r3, [sp]
  61e32c: e58dc000     	str	r12, [sp]
  61e330: eaffffcb     	b	0x61e264 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xd4

; position_x_float_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x0061f9a4, file offset=0x0061f9a4, size=112, SHA-256=a7eff2739261ff7c74888a664f19d0e79e9506a10c2d50139850cbd075690faa
0061f9a4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  61f9a4: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  61f9a8: e1a04001     	mov	r4, r1
  61f9ac: e3a01000     	mov	r1, #0
  61f9b0: e1a06002     	mov	r6, r2
  61f9b4: e1a05000     	mov	r5, r0
  61f9b8: eb012919     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4a464
  61f9bc: e5907004     	ldr	r7, [r0, #0x4]
  61f9c0: e1a00005     	mov	r0, r5
  61f9c4: eb012922     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x4a488
  61f9c8: e3500000     	cmp	r0, #0
  61f9cc: 1a000002     	bne	0x61f9dc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x38> @ imm = #0x8
  61f9d0: e7973104     	ldr	r3, [r7, r4, lsl #2]
  61f9d4: e5863000     	str	r3, [r6]
  61f9d8: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  61f9dc: e1a00005     	mov	r0, r5
  61f9e0: eb012920     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4a480
  61f9e4: e3500000     	cmp	r0, #0
  61f9e8: 0afffff8     	beq	0x61f9d0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x2c> @ imm = #-0x20
  61f9ec: e1a00005     	mov	r0, r5
  61f9f0: eb01291c     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4a470
  61f9f4: e7972104     	ldr	r2, [r7, r4, lsl #2]
  61f9f8: e1a03006     	mov	r3, r6
  61f9fc: e4832004     	str	r2, [r3], #4
  61fa00: e5902004     	ldr	r2, [r0, #0x4]
  61fa04: e5862004     	str	r2, [r6, #0x4]
  61fa08: e5902008     	ldr	r2, [r0, #0x8]
  61fa0c: e5832004     	str	r2, [r3, #0x4]
  61fa10: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}

; position_x_float_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x0061fa14, file offset=0x0061fa14, size=16, SHA-256=821ec9e9182ca4a6e233c0ec26f8668a9e78e0ef4f9dc738d208d3b502fb7ba2
0061fa14 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  61fa14: e1a00001     	mov	r0, r1
  61fa18: e1a01002     	mov	r1, r2
  61fa1c: e1a02003     	mov	r2, r3
  61fa20: eaffffdf     	b	0x61f9a4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0x84

; position_x_float_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x0061fa24, file offset=0x0061fa24, size=184, SHA-256=c070c4f07aefca0b5999b2a0f78425dfc646d2c117fb874c955c610483392f44
0061fa24 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  61fa24: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  61fa28: e1a04001     	mov	r4, r1
  61fa2c: e3a01000     	mov	r1, #0
  61fa30: e1a05002     	mov	r5, r2
  61fa34: e1a08003     	mov	r8, r3
  61fa38: e1a06000     	mov	r6, r0
  61fa3c: e59d7020     	ldr	r7, [sp, #0x20]
  61fa40: eb0128f7     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4a3dc
  61fa44: e5909004     	ldr	r9, [r0, #0x4]
  61fa48: e1a00006     	mov	r0, r6
  61fa4c: eb012900     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x4a400
  61fa50: e3500000     	cmp	r0, #0
  61fa54: 0a000014     	beq	0x61faac <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0x88> @ imm = #0x50
  61fa58: e799a104     	ldr	r10, [r9, r4, lsl #2]
  61fa5c: e7990105     	ldr	r0, [r9, r5, lsl #2]
  61fa60: e1a04007     	mov	r4, r7
  61fa64: e1a0100a     	mov	r1, r10
  61fa68: ebf3ba4f     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x3116c4
  61fa6c: e1a01000     	mov	r1, r0
  61fa70: e1a00008     	mov	r0, r8
  61fa74: ebf3bcbc     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x310d10
  61fa78: e1a01000     	mov	r1, r0
  61fa7c: e1a0000a     	mov	r0, r10
  61fa80: ebf3bc47     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x310ee4
  61fa84: e4840004     	str	r0, [r4], #4
  61fa88: e1a00006     	mov	r0, r6
  61fa8c: eb0128f5     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4a3d4
  61fa90: e5903004     	ldr	r3, [r0, #0x4]
  61fa94: e1a00006     	mov	r0, r6
  61fa98: e5873004     	str	r3, [r7, #0x4]
  61fa9c: eb0128f1     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4a3c4
  61faa0: e5903008     	ldr	r3, [r0, #0x8]
  61faa4: e5843004     	str	r3, [r4, #0x4]
  61faa8: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  61faac: e7994104     	ldr	r4, [r9, r4, lsl #2]
  61fab0: e7990105     	ldr	r0, [r9, r5, lsl #2]
  61fab4: e1a01004     	mov	r1, r4
  61fab8: ebf3ba3b     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x311714
  61fabc: e1a01000     	mov	r1, r0
  61fac0: e1a00008     	mov	r0, r8
  61fac4: ebf3bca8     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x310d60
  61fac8: e1a01000     	mov	r1, r0
  61facc: e1a00004     	mov	r0, r4
  61fad0: ebf3bc33     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x310f34
  61fad4: e5870000     	str	r0, [r7]
  61fad8: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}

; position_x_float_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x0061fadc, file offset=0x0061fadc, size=28, SHA-256=fd01b91fbce178d88be1395e86bb38db5942f5150f01e129d32d11eeeffbf495
0061fadc <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  61fadc: e1a00001     	mov	r0, r1
  61fae0: e59dc004     	ldr	r12, [sp, #0x4]
  61fae4: e1a01002     	mov	r1, r2
  61fae8: e1a02003     	mov	r2, r3
  61faec: e59d3000     	ldr	r3, [sp]
  61faf0: e58dc000     	str	r12, [sp]
  61faf4: eaffffca     	b	0x61fa24 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xd8

; position_y_float_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x0061fc70, file offset=0x0061fc70, size=112, SHA-256=780905368e81d064ac8c62b5744a146558df300976228c387febfc801849ff35
0061fc70 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  61fc70: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  61fc74: e1a04001     	mov	r4, r1
  61fc78: e3a01000     	mov	r1, #0
  61fc7c: e1a06002     	mov	r6, r2
  61fc80: e1a05000     	mov	r5, r0
  61fc84: eb012866     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4a198
  61fc88: e5907004     	ldr	r7, [r0, #0x4]
  61fc8c: e1a00005     	mov	r0, r5
  61fc90: eb01286f     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x4a1bc
  61fc94: e3500000     	cmp	r0, #0
  61fc98: 1a000002     	bne	0x61fca8 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x38> @ imm = #0x8
  61fc9c: e7973104     	ldr	r3, [r7, r4, lsl #2]
  61fca0: e5863000     	str	r3, [r6]
  61fca4: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  61fca8: e1a00005     	mov	r0, r5
  61fcac: eb01286d     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4a1b4
  61fcb0: e3500000     	cmp	r0, #0
  61fcb4: 0afffff8     	beq	0x61fc9c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x2c> @ imm = #-0x20
  61fcb8: e1a00005     	mov	r0, r5
  61fcbc: eb012869     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4a1a4
  61fcc0: e5902000     	ldr	r2, [r0]
  61fcc4: e1a03006     	mov	r3, r6
  61fcc8: e4832004     	str	r2, [r3], #4
  61fccc: e7972104     	ldr	r2, [r7, r4, lsl #2]
  61fcd0: e5862004     	str	r2, [r6, #0x4]
  61fcd4: e5902008     	ldr	r2, [r0, #0x8]
  61fcd8: e5832004     	str	r2, [r3, #0x4]
  61fcdc: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}

; position_y_float_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x0061fce0, file offset=0x0061fce0, size=16, SHA-256=821ec9e9182ca4a6e233c0ec26f8668a9e78e0ef4f9dc738d208d3b502fb7ba2
0061fce0 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  61fce0: e1a00001     	mov	r0, r1
  61fce4: e1a01002     	mov	r1, r2
  61fce8: e1a02003     	mov	r2, r3
  61fcec: eaffffdf     	b	0x61fc70 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0x84

; position_y_float_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x0061fcf0, file offset=0x0061fcf0, size=184, SHA-256=fd32923f1457a6a9905809c5582475d6f3f2f255917a17a1ea7ba76081abc0ef
0061fcf0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  61fcf0: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  61fcf4: e1a04001     	mov	r4, r1
  61fcf8: e3a01000     	mov	r1, #0
  61fcfc: e1a05002     	mov	r5, r2
  61fd00: e1a08003     	mov	r8, r3
  61fd04: e1a06000     	mov	r6, r0
  61fd08: e59d7020     	ldr	r7, [sp, #0x20]
  61fd0c: eb012844     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4a110
  61fd10: e5909004     	ldr	r9, [r0, #0x4]
  61fd14: e1a00006     	mov	r0, r6
  61fd18: eb01284d     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x4a134
  61fd1c: e3500000     	cmp	r0, #0
  61fd20: 0a000014     	beq	0x61fd78 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0x88> @ imm = #0x50
  61fd24: e1a00006     	mov	r0, r6
  61fd28: eb01284e     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4a138
  61fd2c: e5903000     	ldr	r3, [r0]
  61fd30: e1a0a007     	mov	r10, r7
  61fd34: e48a3004     	str	r3, [r10], #4
  61fd38: e7994104     	ldr	r4, [r9, r4, lsl #2]
  61fd3c: e7990105     	ldr	r0, [r9, r5, lsl #2]
  61fd40: e1a01004     	mov	r1, r4
  61fd44: ebf3b998     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x3119a0
  61fd48: e1a01000     	mov	r1, r0
  61fd4c: e1a00008     	mov	r0, r8
  61fd50: ebf3bc05     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x310fec
  61fd54: e1a01000     	mov	r1, r0
  61fd58: e1a00004     	mov	r0, r4
  61fd5c: ebf3bb90     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3111c0
  61fd60: e5870004     	str	r0, [r7, #0x4]
  61fd64: e1a00006     	mov	r0, r6
  61fd68: eb01283e     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x4a0f8
  61fd6c: e5903008     	ldr	r3, [r0, #0x8]
  61fd70: e58a3004     	str	r3, [r10, #0x4]
  61fd74: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  61fd78: e7994104     	ldr	r4, [r9, r4, lsl #2]
  61fd7c: e7990105     	ldr	r0, [r9, r5, lsl #2]
  61fd80: e1a01004     	mov	r1, r4
  61fd84: ebf3b988     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x3119e0
  61fd88: e1a01000     	mov	r1, r0
  61fd8c: e1a00008     	mov	r0, r8
  61fd90: ebf3bbf5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31102c
  61fd94: e1a01000     	mov	r1, r0
  61fd98: e1a00004     	mov	r0, r4
  61fd9c: ebf3bb80     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x311200
  61fda0: e5870000     	str	r0, [r7]
  61fda4: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}

; position_y_float_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x0061fda8, file offset=0x0061fda8, size=28, SHA-256=fd01b91fbce178d88be1395e86bb38db5942f5150f01e129d32d11eeeffbf495
0061fda8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  61fda8: e1a00001     	mov	r0, r1
  61fdac: e59dc004     	ldr	r12, [sp, #0x4]
  61fdb0: e1a01002     	mov	r1, r2
  61fdb4: e1a02003     	mov	r2, r3
  61fdb8: e59d3000     	ldr	r3, [sp]
  61fdbc: e58dc000     	str	r12, [sp]
  61fdc0: eaffffca     	b	0x61fcf0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xd8

; position_z_float_interpreter_direct: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; ELF VA=0x0061ff3c, file offset=0x0061ff3c, size=112, SHA-256=7e480f7175df1ac8765fbbe89356f20e3521ea115660683801a7c2f6d386207c
0061ff3c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)>:
  61ff3c: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  61ff40: e1a04001     	mov	r4, r1
  61ff44: e3a01000     	mov	r1, #0
  61ff48: e1a06002     	mov	r6, r2
  61ff4c: e1a05000     	mov	r5, r0
  61ff50: eb0127b3     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x49ecc
  61ff54: e5907004     	ldr	r7, [r0, #0x4]
  61ff58: e1a00005     	mov	r0, r5
  61ff5c: eb0127bc     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x49ef0
  61ff60: e3500000     	cmp	r0, #0
  61ff64: 1a000002     	bne	0x61ff74 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x38> @ imm = #0x8
  61ff68: e7973104     	ldr	r3, [r7, r4, lsl #2]
  61ff6c: e5863000     	str	r3, [r6]
  61ff70: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  61ff74: e1a00005     	mov	r0, r5
  61ff78: eb0127ba     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x49ee8
  61ff7c: e3500000     	cmp	r0, #0
  61ff80: 0afffff8     	beq	0x61ff68 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)+0x2c> @ imm = #-0x20
  61ff84: e1a00005     	mov	r0, r5
  61ff88: eb0127b6     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x49ed8
  61ff8c: e5902000     	ldr	r2, [r0]
  61ff90: e1a03006     	mov	r3, r6
  61ff94: e4832004     	str	r2, [r3], #4
  61ff98: e5902004     	ldr	r2, [r0, #0x4]
  61ff9c: e5862004     	str	r2, [r6, #0x4]
  61ffa0: e7972104     	ldr	r2, [r7, r4, lsl #2]
  61ffa4: e5832004     	str	r2, [r3, #0x4]
  61ffa8: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}

; position_z_float_direct_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; ELF VA=0x0061ffac, file offset=0x0061ffac, size=16, SHA-256=821ec9e9182ca4a6e233c0ec26f8668a9e78e0ef4f9dc738d208d3b502fb7ba2
0061ffac <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  61ffac: e1a00001     	mov	r0, r1
  61ffb0: e1a01002     	mov	r1, r2
  61ffb4: e1a02003     	mov	r2, r3
  61ffb8: eaffffdf     	b	0x61ff3c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0x84

; position_z_float_interpreter_interpolated: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; ELF VA=0x0061ffbc, file offset=0x0061ffbc, size=180, SHA-256=e704dff70e727b5e8147e0b3f805a107d9bfdd2a0639740ce6040880be9adcfc
0061ffbc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  61ffbc: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  61ffc0: e1a04001     	mov	r4, r1
  61ffc4: e3a01000     	mov	r1, #0
  61ffc8: e1a05002     	mov	r5, r2
  61ffcc: e1a08003     	mov	r8, r3
  61ffd0: e1a07000     	mov	r7, r0
  61ffd4: e59d6020     	ldr	r6, [sp, #0x20]
  61ffd8: eb012791     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x49e44
  61ffdc: e590a004     	ldr	r10, [r0, #0x4]
  61ffe0: e1a00007     	mov	r0, r7
  61ffe4: eb01279a     	bl	0x669e54 <glitch::collada::SAnimationAccessor::hasDefaultValue() const> @ imm = #0x49e68
  61ffe8: e3500000     	cmp	r0, #0
  61ffec: 0a000013     	beq	0x620040 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)+0x84> @ imm = #0x4c
  61fff0: e1a00007     	mov	r0, r7
  61fff4: eb01279b     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x49e6c
  61fff8: e5903000     	ldr	r3, [r0]
  61fffc: e1a00007     	mov	r0, r7
  620000: e5863000     	str	r3, [r6]
  620004: eb012797     	bl	0x669e68 <glitch::collada::SAnimationAccessor::getDefaultValue() const> @ imm = #0x49e5c
  620008: e5903004     	ldr	r3, [r0, #0x4]
  62000c: e5863004     	str	r3, [r6, #0x4]
  620010: e79a4104     	ldr	r4, [r10, r4, lsl #2]
  620014: e79a0105     	ldr	r0, [r10, r5, lsl #2]
  620018: e1a01004     	mov	r1, r4
  62001c: ebf3b8e2     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x311c78
  620020: e1a01000     	mov	r1, r0
  620024: e1a00008     	mov	r0, r8
  620028: ebf3bb4f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3112c4
  62002c: e1a01000     	mov	r1, r0
  620030: e1a00004     	mov	r0, r4
  620034: ebf3bada     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x311498
  620038: e5860008     	str	r0, [r6, #0x8]
  62003c: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  620040: e79a4104     	ldr	r4, [r10, r4, lsl #2]
  620044: e79a0105     	ldr	r0, [r10, r5, lsl #2]
  620048: e1a01004     	mov	r1, r4
  62004c: ebf3b8d6     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x311ca8
  620050: e1a01000     	mov	r1, r0
  620054: e1a00008     	mov	r0, r8
  620058: ebf3bb43     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3112f4
  62005c: e1a01000     	mov	r1, r0
  620060: e1a00004     	mov	r0, r4
  620064: ebf3bace     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3114c8
  620068: e5860000     	str	r0, [r6]
  62006c: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}

; position_z_float_interpolated_get_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; ELF VA=0x00620070, file offset=0x00620070, size=28, SHA-256=c00f698db5af834fb7eba6f744f94b9c74e074d8b0787ccc432860fd7ef02243
00620070 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  620070: e1a00001     	mov	r0, r1
  620074: e59dc004     	ldr	r12, [sp, #0x4]
  620078: e1a01002     	mov	r1, r2
  62007c: e1a02003     	mov	r2, r3
  620080: e59d3000     	ldr	r3, [sp]
  620084: e58dc000     	str	r12, [sp]
  620088: eaffffcb     	b	0x61ffbc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xd4

; position_x_float_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00622e1c, file offset=0x00622e1c, size=68, SHA-256=95ffefbca88d020874919ca723d28a922a079572d14fe722b6701c621ddced21
00622e1c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  622e1c: e92d4030     	push	{r4, r5, lr}
  622e20: e24dd014     	sub	sp, sp, #20
  622e24: e28d5004     	add	r5, sp, #4
  622e28: e3a03000     	mov	r3, #0
  622e2c: e1a04002     	mov	r4, r2
  622e30: e1a02005     	mov	r2, r5
  622e34: e58d300c     	str	r3, [sp, #0xc]
  622e38: e58d3004     	str	r3, [sp, #0x4]
  622e3c: e58d3008     	str	r3, [sp, #0x8]
  622e40: ebfff2d7     	bl	0x61f9a4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0x34a4
  622e44: e1a00004     	mov	r0, r4
  622e48: e1a01005     	mov	r1, r5
  622e4c: e5943000     	ldr	r3, [r4]
  622e50: e1a0e00f     	mov	lr, pc
  622e54: e593f0a4     	ldr	pc, [r3, #0xa4]
  622e58: e28dd014     	add	sp, sp, #20
  622e5c: e8bd8030     	pop	{r4, r5, pc}

; position_x_float_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00622e60, file offset=0x00622e60, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
00622e60 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  622e60: e1a00001     	mov	r0, r1
  622e64: e1a01002     	mov	r1, r2
  622e68: e1a02003     	mov	r2, r3
  622e6c: e59d3000     	ldr	r3, [sp]
  622e70: eaffffe9     	b	0x622e1c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; position_x_float_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00622e74, file offset=0x00622e74, size=68, SHA-256=3b12b19ea90c12c5967964ab51c0f4a47ead4d2fe93572d9a1d85b3176b30c64
00622e74 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  622e74: e92d4030     	push	{r4, r5, lr}
  622e78: e24dd01c     	sub	sp, sp, #28
  622e7c: e59d4028     	ldr	r4, [sp, #0x28]
  622e80: e3a0c000     	mov	r12, #0
  622e84: e28d500c     	add	r5, sp, #12
  622e88: e58d5000     	str	r5, [sp]
  622e8c: e58dc014     	str	r12, [sp, #0x14]
  622e90: e58dc00c     	str	r12, [sp, #0xc]
  622e94: e58dc010     	str	r12, [sp, #0x10]
  622e98: ebfff2e1     	bl	0x61fa24 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x347c
  622e9c: e1a00004     	mov	r0, r4
  622ea0: e1a01005     	mov	r1, r5
  622ea4: e5943000     	ldr	r3, [r4]
  622ea8: e1a0e00f     	mov	lr, pc
  622eac: e593f0a4     	ldr	pc, [r3, #0xa4]
  622eb0: e28dd01c     	add	sp, sp, #28
  622eb4: e8bd8030     	pop	{r4, r5, pc}

; position_x_float_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00622eb8, file offset=0x00622eb8, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00622eb8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  622eb8: e59dc004     	ldr	r12, [sp, #0x4]
  622ebc: e1a00001     	mov	r0, r1
  622ec0: e1a01002     	mov	r1, r2
  622ec4: e1a02003     	mov	r2, r3
  622ec8: e59d3000     	ldr	r3, [sp]
  622ecc: e58dc000     	str	r12, [sp]
  622ed0: e59dc008     	ldr	r12, [sp, #0x8]
  622ed4: e58dc004     	str	r12, [sp, #0x4]
  622ed8: eaffffe5     	b	0x622e74 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; position_x_short_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00622edc, file offset=0x00622edc, size=68, SHA-256=7f47e615779998b120978deb1de94928d1fda9d6fb054d61c174460de9b70a04
00622edc <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  622edc: e92d4030     	push	{r4, r5, lr}
  622ee0: e24dd014     	sub	sp, sp, #20
  622ee4: e28d5004     	add	r5, sp, #4
  622ee8: e3a03000     	mov	r3, #0
  622eec: e1a04002     	mov	r4, r2
  622ef0: e1a02005     	mov	r2, r5
  622ef4: e58d300c     	str	r3, [sp, #0xc]
  622ef8: e58d3004     	str	r3, [sp, #0x4]
  622efc: e58d3008     	str	r3, [sp, #0x8]
  622f00: ebffc7b9     	bl	0x614dec <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xe11c
  622f04: e1a00004     	mov	r0, r4
  622f08: e1a01005     	mov	r1, r5
  622f0c: e5943000     	ldr	r3, [r4]
  622f10: e1a0e00f     	mov	lr, pc
  622f14: e593f0a4     	ldr	pc, [r3, #0xa4]
  622f18: e28dd014     	add	sp, sp, #20
  622f1c: e8bd8030     	pop	{r4, r5, pc}

; position_x_short_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00622f20, file offset=0x00622f20, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
00622f20 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  622f20: e1a00001     	mov	r0, r1
  622f24: e1a01002     	mov	r1, r2
  622f28: e1a02003     	mov	r2, r3
  622f2c: e59d3000     	ldr	r3, [sp]
  622f30: eaffffe9     	b	0x622edc <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; position_x_short_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00622f34, file offset=0x00622f34, size=68, SHA-256=9c459fa22eac18d47a0fde2aa556f328c6aacf3b3b50f57a1e86ecfb5847cbdd
00622f34 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  622f34: e92d4030     	push	{r4, r5, lr}
  622f38: e24dd01c     	sub	sp, sp, #28
  622f3c: e59d4028     	ldr	r4, [sp, #0x28]
  622f40: e3a0c000     	mov	r12, #0
  622f44: e28d500c     	add	r5, sp, #12
  622f48: e58d5000     	str	r5, [sp]
  622f4c: e58dc014     	str	r12, [sp, #0x14]
  622f50: e58dc00c     	str	r12, [sp, #0xc]
  622f54: e58dc010     	str	r12, [sp, #0x10]
  622f58: ebffc7cf     	bl	0x614e9c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xe0c4
  622f5c: e1a00004     	mov	r0, r4
  622f60: e1a01005     	mov	r1, r5
  622f64: e5943000     	ldr	r3, [r4]
  622f68: e1a0e00f     	mov	lr, pc
  622f6c: e593f0a4     	ldr	pc, [r3, #0xa4]
  622f70: e28dd01c     	add	sp, sp, #28
  622f74: e8bd8030     	pop	{r4, r5, pc}

; position_x_short_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00622f78, file offset=0x00622f78, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00622f78 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  622f78: e59dc004     	ldr	r12, [sp, #0x4]
  622f7c: e1a00001     	mov	r0, r1
  622f80: e1a01002     	mov	r1, r2
  622f84: e1a02003     	mov	r2, r3
  622f88: e59d3000     	ldr	r3, [sp]
  622f8c: e58dc000     	str	r12, [sp]
  622f90: e59dc008     	ldr	r12, [sp, #0x8]
  622f94: e58dc004     	str	r12, [sp, #0x4]
  622f98: eaffffe5     	b	0x622f34 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; position_x_char_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00622f9c, file offset=0x00622f9c, size=68, SHA-256=351876db989a12fc90b5024ce2ecd85581ec314b9db1237b0c3b73936ee8584d
00622f9c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  622f9c: e92d4030     	push	{r4, r5, lr}
  622fa0: e24dd014     	sub	sp, sp, #20
  622fa4: e28d5004     	add	r5, sp, #4
  622fa8: e3a03000     	mov	r3, #0
  622fac: e1a04002     	mov	r4, r2
  622fb0: e1a02005     	mov	r2, r5
  622fb4: e58d300c     	str	r3, [sp, #0xc]
  622fb8: e58d3004     	str	r3, [sp, #0x4]
  622fbc: e58d3008     	str	r3, [sp, #0x8]
  622fc0: ebffc895     	bl	0x61521c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xddac
  622fc4: e1a00004     	mov	r0, r4
  622fc8: e1a01005     	mov	r1, r5
  622fcc: e5943000     	ldr	r3, [r4]
  622fd0: e1a0e00f     	mov	lr, pc
  622fd4: e593f0a4     	ldr	pc, [r3, #0xa4]
  622fd8: e28dd014     	add	sp, sp, #20
  622fdc: e8bd8030     	pop	{r4, r5, pc}

; position_x_char_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00622fe0, file offset=0x00622fe0, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
00622fe0 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  622fe0: e1a00001     	mov	r0, r1
  622fe4: e1a01002     	mov	r1, r2
  622fe8: e1a02003     	mov	r2, r3
  622fec: e59d3000     	ldr	r3, [sp]
  622ff0: eaffffe9     	b	0x622f9c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; position_x_char_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00622ff4, file offset=0x00622ff4, size=68, SHA-256=205a27903cc9f669bcb4c7e048561b05d6903f780508b8130d4d91eee6bfd6c0
00622ff4 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  622ff4: e92d4030     	push	{r4, r5, lr}
  622ff8: e24dd01c     	sub	sp, sp, #28
  622ffc: e59d4028     	ldr	r4, [sp, #0x28]
  623000: e3a0c000     	mov	r12, #0
  623004: e28d500c     	add	r5, sp, #12
  623008: e58d5000     	str	r5, [sp]
  62300c: e58dc014     	str	r12, [sp, #0x14]
  623010: e58dc00c     	str	r12, [sp, #0xc]
  623014: e58dc010     	str	r12, [sp, #0x10]
  623018: ebffc8aa     	bl	0x6152c8 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xdd58
  62301c: e1a00004     	mov	r0, r4
  623020: e1a01005     	mov	r1, r5
  623024: e5943000     	ldr	r3, [r4]
  623028: e1a0e00f     	mov	lr, pc
  62302c: e593f0a4     	ldr	pc, [r3, #0xa4]
  623030: e28dd01c     	add	sp, sp, #28
  623034: e8bd8030     	pop	{r4, r5, pc}

; position_x_char_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623038, file offset=0x00623038, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00623038 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623038: e59dc004     	ldr	r12, [sp, #0x4]
  62303c: e1a00001     	mov	r0, r1
  623040: e1a01002     	mov	r1, r2
  623044: e1a02003     	mov	r2, r3
  623048: e59d3000     	ldr	r3, [sp]
  62304c: e58dc000     	str	r12, [sp]
  623050: e59dc008     	ldr	r12, [sp, #0x8]
  623054: e58dc004     	str	r12, [sp, #0x4]
  623058: eaffffe5     	b	0x622ff4 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; position_y_float_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x0062305c, file offset=0x0062305c, size=68, SHA-256=f5bea928ae09fb81f6ab9712fbc989ae6a8f057df41d2f5b1a55f8dc89d16999
0062305c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  62305c: e92d4030     	push	{r4, r5, lr}
  623060: e24dd014     	sub	sp, sp, #20
  623064: e28d5004     	add	r5, sp, #4
  623068: e3a03000     	mov	r3, #0
  62306c: e1a04002     	mov	r4, r2
  623070: e1a02005     	mov	r2, r5
  623074: e58d300c     	str	r3, [sp, #0xc]
  623078: e58d3004     	str	r3, [sp, #0x4]
  62307c: e58d3008     	str	r3, [sp, #0x8]
  623080: ebfff2fa     	bl	0x61fc70 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0x3418
  623084: e1a00004     	mov	r0, r4
  623088: e1a01005     	mov	r1, r5
  62308c: e5943000     	ldr	r3, [r4]
  623090: e1a0e00f     	mov	lr, pc
  623094: e593f0a4     	ldr	pc, [r3, #0xa4]
  623098: e28dd014     	add	sp, sp, #20
  62309c: e8bd8030     	pop	{r4, r5, pc}

; position_y_float_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x006230a0, file offset=0x006230a0, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
006230a0 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  6230a0: e1a00001     	mov	r0, r1
  6230a4: e1a01002     	mov	r1, r2
  6230a8: e1a02003     	mov	r2, r3
  6230ac: e59d3000     	ldr	r3, [sp]
  6230b0: eaffffe9     	b	0x62305c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; position_y_float_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x006230b4, file offset=0x006230b4, size=68, SHA-256=08b62473d7d8890e23b9fa1cc9944f0368f1ce8e45ee0c935c84409b831ee025
006230b4 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  6230b4: e92d4030     	push	{r4, r5, lr}
  6230b8: e24dd01c     	sub	sp, sp, #28
  6230bc: e59d4028     	ldr	r4, [sp, #0x28]
  6230c0: e3a0c000     	mov	r12, #0
  6230c4: e28d500c     	add	r5, sp, #12
  6230c8: e58d5000     	str	r5, [sp]
  6230cc: e58dc014     	str	r12, [sp, #0x14]
  6230d0: e58dc00c     	str	r12, [sp, #0xc]
  6230d4: e58dc010     	str	r12, [sp, #0x10]
  6230d8: ebfff304     	bl	0x61fcf0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x33f0
  6230dc: e1a00004     	mov	r0, r4
  6230e0: e1a01005     	mov	r1, r5
  6230e4: e5943000     	ldr	r3, [r4]
  6230e8: e1a0e00f     	mov	lr, pc
  6230ec: e593f0a4     	ldr	pc, [r3, #0xa4]
  6230f0: e28dd01c     	add	sp, sp, #28
  6230f4: e8bd8030     	pop	{r4, r5, pc}

; position_y_float_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x006230f8, file offset=0x006230f8, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
006230f8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  6230f8: e59dc004     	ldr	r12, [sp, #0x4]
  6230fc: e1a00001     	mov	r0, r1
  623100: e1a01002     	mov	r1, r2
  623104: e1a02003     	mov	r2, r3
  623108: e59d3000     	ldr	r3, [sp]
  62310c: e58dc000     	str	r12, [sp]
  623110: e59dc008     	ldr	r12, [sp, #0x8]
  623114: e58dc004     	str	r12, [sp, #0x4]
  623118: eaffffe5     	b	0x6230b4 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; position_y_short_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x0062311c, file offset=0x0062311c, size=68, SHA-256=3e726b1361a9721419e5cc19858c4a58ce577164e9f668c9130e61771550fc50
0062311c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  62311c: e92d4030     	push	{r4, r5, lr}
  623120: e24dd014     	sub	sp, sp, #20
  623124: e28d5004     	add	r5, sp, #4
  623128: e3a03000     	mov	r3, #0
  62312c: e1a04002     	mov	r4, r2
  623130: e1a02005     	mov	r2, r5
  623134: e58d300c     	str	r3, [sp, #0xc]
  623138: e58d3004     	str	r3, [sp, #0x4]
  62313c: e58d3008     	str	r3, [sp, #0x8]
  623140: ebffc939     	bl	0x61562c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xdb1c
  623144: e1a00004     	mov	r0, r4
  623148: e1a01005     	mov	r1, r5
  62314c: e5943000     	ldr	r3, [r4]
  623150: e1a0e00f     	mov	lr, pc
  623154: e593f0a4     	ldr	pc, [r3, #0xa4]
  623158: e28dd014     	add	sp, sp, #20
  62315c: e8bd8030     	pop	{r4, r5, pc}

; position_y_short_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623160, file offset=0x00623160, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
00623160 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623160: e1a00001     	mov	r0, r1
  623164: e1a01002     	mov	r1, r2
  623168: e1a02003     	mov	r2, r3
  62316c: e59d3000     	ldr	r3, [sp]
  623170: eaffffe9     	b	0x62311c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; position_y_short_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623174, file offset=0x00623174, size=68, SHA-256=36dfa8edd1a85d7a63a7c240a33fdabeeb157f403c3ba20be1d51c001d396449
00623174 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623174: e92d4030     	push	{r4, r5, lr}
  623178: e24dd01c     	sub	sp, sp, #28
  62317c: e59d4028     	ldr	r4, [sp, #0x28]
  623180: e3a0c000     	mov	r12, #0
  623184: e28d500c     	add	r5, sp, #12
  623188: e58d5000     	str	r5, [sp]
  62318c: e58dc014     	str	r12, [sp, #0x14]
  623190: e58dc00c     	str	r12, [sp, #0xc]
  623194: e58dc010     	str	r12, [sp, #0x10]
  623198: ebffc94f     	bl	0x6156dc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xdac4
  62319c: e1a00004     	mov	r0, r4
  6231a0: e1a01005     	mov	r1, r5
  6231a4: e5943000     	ldr	r3, [r4]
  6231a8: e1a0e00f     	mov	lr, pc
  6231ac: e593f0a4     	ldr	pc, [r3, #0xa4]
  6231b0: e28dd01c     	add	sp, sp, #28
  6231b4: e8bd8030     	pop	{r4, r5, pc}

; position_y_short_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x006231b8, file offset=0x006231b8, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
006231b8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  6231b8: e59dc004     	ldr	r12, [sp, #0x4]
  6231bc: e1a00001     	mov	r0, r1
  6231c0: e1a01002     	mov	r1, r2
  6231c4: e1a02003     	mov	r2, r3
  6231c8: e59d3000     	ldr	r3, [sp]
  6231cc: e58dc000     	str	r12, [sp]
  6231d0: e59dc008     	ldr	r12, [sp, #0x8]
  6231d4: e58dc004     	str	r12, [sp, #0x4]
  6231d8: eaffffe5     	b	0x623174 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; scale_z_short_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x006231dc, file offset=0x006231dc, size=68, SHA-256=02753cfe102b002cf9434bfe5ad76690e5038c2e68693caad321ef5e4fe1ac12
006231dc <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  6231dc: e92d4030     	push	{r4, r5, lr}
  6231e0: e24dd014     	sub	sp, sp, #20
  6231e4: e28d5004     	add	r5, sp, #4
  6231e8: e3a03000     	mov	r3, #0
  6231ec: e1a04002     	mov	r4, r2
  6231f0: e1a02005     	mov	r2, r5
  6231f4: e58d300c     	str	r3, [sp, #0xc]
  6231f8: e58d3004     	str	r3, [sp, #0x4]
  6231fc: e58d3008     	str	r3, [sp, #0x8]
  623200: ebffd167     	bl	0x6177a4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xba64
  623204: e1a00004     	mov	r0, r4
  623208: e1a01005     	mov	r1, r5
  62320c: e5943000     	ldr	r3, [r4]
  623210: e1a0e00f     	mov	lr, pc
  623214: e593f094     	ldr	pc, [r3, #0x94]
  623218: e28dd014     	add	sp, sp, #20
  62321c: e8bd8030     	pop	{r4, r5, pc}

; scale_z_short_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623220, file offset=0x00623220, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
00623220 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623220: e1a00001     	mov	r0, r1
  623224: e1a01002     	mov	r1, r2
  623228: e1a02003     	mov	r2, r3
  62322c: e59d3000     	ldr	r3, [sp]
  623230: eaffffe9     	b	0x6231dc <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; scale_z_short_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623234, file offset=0x00623234, size=68, SHA-256=f52425e5b0565f63a8545bd25cc00e7c1c0f0d17b4be0f86c3e1bf0c02641503
00623234 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623234: e92d4030     	push	{r4, r5, lr}
  623238: e24dd01c     	sub	sp, sp, #28
  62323c: e59d4028     	ldr	r4, [sp, #0x28]
  623240: e3a0c000     	mov	r12, #0
  623244: e28d500c     	add	r5, sp, #12
  623248: e58d5000     	str	r5, [sp]
  62324c: e58dc014     	str	r12, [sp, #0x14]
  623250: e58dc00c     	str	r12, [sp, #0xc]
  623254: e58dc010     	str	r12, [sp, #0x10]
  623258: ebffd17d     	bl	0x617854 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xba0c
  62325c: e1a00004     	mov	r0, r4
  623260: e1a01005     	mov	r1, r5
  623264: e5943000     	ldr	r3, [r4]
  623268: e1a0e00f     	mov	lr, pc
  62326c: e593f094     	ldr	pc, [r3, #0x94]
  623270: e28dd01c     	add	sp, sp, #28
  623274: e8bd8030     	pop	{r4, r5, pc}

; scale_z_short_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623278, file offset=0x00623278, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00623278 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623278: e59dc004     	ldr	r12, [sp, #0x4]
  62327c: e1a00001     	mov	r0, r1
  623280: e1a01002     	mov	r1, r2
  623284: e1a02003     	mov	r2, r3
  623288: e59d3000     	ldr	r3, [sp]
  62328c: e58dc000     	str	r12, [sp]
  623290: e59dc008     	ldr	r12, [sp, #0x8]
  623294: e58dc004     	str	r12, [sp, #0x4]
  623298: eaffffe5     	b	0x623234 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; scale_z_char_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x0062329c, file offset=0x0062329c, size=68, SHA-256=12b4bbb503a5cab3324b57ed82b2635bb52aed5bd55d119443604ca007763574
0062329c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  62329c: e92d4030     	push	{r4, r5, lr}
  6232a0: e24dd014     	sub	sp, sp, #20
  6232a4: e28d5004     	add	r5, sp, #4
  6232a8: e3a03000     	mov	r3, #0
  6232ac: e1a04002     	mov	r4, r2
  6232b0: e1a02005     	mov	r2, r5
  6232b4: e58d300c     	str	r3, [sp, #0xc]
  6232b8: e58d3004     	str	r3, [sp, #0x4]
  6232bc: e58d3008     	str	r3, [sp, #0x8]
  6232c0: ebffd242     	bl	0x617bd0 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xb6f8
  6232c4: e1a00004     	mov	r0, r4
  6232c8: e1a01005     	mov	r1, r5
  6232cc: e5943000     	ldr	r3, [r4]
  6232d0: e1a0e00f     	mov	lr, pc
  6232d4: e593f094     	ldr	pc, [r3, #0x94]
  6232d8: e28dd014     	add	sp, sp, #20
  6232dc: e8bd8030     	pop	{r4, r5, pc}

; scale_z_char_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x006232e0, file offset=0x006232e0, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
006232e0 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  6232e0: e1a00001     	mov	r0, r1
  6232e4: e1a01002     	mov	r1, r2
  6232e8: e1a02003     	mov	r2, r3
  6232ec: e59d3000     	ldr	r3, [sp]
  6232f0: eaffffe9     	b	0x62329c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; scale_z_char_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x006232f4, file offset=0x006232f4, size=68, SHA-256=c18823d59342a2aca943c06f933b98d59e3d4235b2f44b82a4be2178629d5d0f
006232f4 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  6232f4: e92d4030     	push	{r4, r5, lr}
  6232f8: e24dd01c     	sub	sp, sp, #28
  6232fc: e59d4028     	ldr	r4, [sp, #0x28]
  623300: e3a0c000     	mov	r12, #0
  623304: e28d500c     	add	r5, sp, #12
  623308: e58d5000     	str	r5, [sp]
  62330c: e58dc014     	str	r12, [sp, #0x14]
  623310: e58dc00c     	str	r12, [sp, #0xc]
  623314: e58dc010     	str	r12, [sp, #0x10]
  623318: ebffd257     	bl	0x617c7c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xb6a4
  62331c: e1a00004     	mov	r0, r4
  623320: e1a01005     	mov	r1, r5
  623324: e5943000     	ldr	r3, [r4]
  623328: e1a0e00f     	mov	lr, pc
  62332c: e593f094     	ldr	pc, [r3, #0x94]
  623330: e28dd01c     	add	sp, sp, #28
  623334: e8bd8030     	pop	{r4, r5, pc}

; scale_z_char_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623338, file offset=0x00623338, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00623338 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623338: e59dc004     	ldr	r12, [sp, #0x4]
  62333c: e1a00001     	mov	r0, r1
  623340: e1a01002     	mov	r1, r2
  623344: e1a02003     	mov	r2, r3
  623348: e59d3000     	ldr	r3, [sp]
  62334c: e58dc000     	str	r12, [sp]
  623350: e59dc008     	ldr	r12, [sp, #0x8]
  623354: e58dc004     	str	r12, [sp, #0x4]
  623358: eaffffe5     	b	0x6232f4 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; scale_x_float_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x006233b4, file offset=0x006233b4, size=68, SHA-256=9ed4b5825e09e68ff623c6e8ab7c0e17020adad81b2fdafface8c9e6abc0069c
006233b4 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  6233b4: e92d4030     	push	{r4, r5, lr}
  6233b8: e24dd014     	sub	sp, sp, #20
  6233bc: e28d5004     	add	r5, sp, #4
  6233c0: e3a03000     	mov	r3, #0
  6233c4: e1a04002     	mov	r4, r2
  6233c8: e1a02005     	mov	r2, r5
  6233cc: e58d300c     	str	r3, [sp, #0xc]
  6233d0: e58d3004     	str	r3, [sp, #0x4]
  6233d4: e58d3008     	str	r3, [sp, #0x8]
  6233d8: ebffea1b     	bl	0x61dc4c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0x5794
  6233dc: e1a00004     	mov	r0, r4
  6233e0: e1a01005     	mov	r1, r5
  6233e4: e5943000     	ldr	r3, [r4]
  6233e8: e1a0e00f     	mov	lr, pc
  6233ec: e593f094     	ldr	pc, [r3, #0x94]
  6233f0: e28dd014     	add	sp, sp, #20
  6233f4: e8bd8030     	pop	{r4, r5, pc}

; scale_x_float_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x006233f8, file offset=0x006233f8, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
006233f8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  6233f8: e1a00001     	mov	r0, r1
  6233fc: e1a01002     	mov	r1, r2
  623400: e1a02003     	mov	r2, r3
  623404: e59d3000     	ldr	r3, [sp]
  623408: eaffffe9     	b	0x6233b4 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; scale_x_float_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x0062340c, file offset=0x0062340c, size=68, SHA-256=606e40445e4ce354d46c8f4c7344366f3b62768174f4a5b18e9e995fc614ea51
0062340c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  62340c: e92d4030     	push	{r4, r5, lr}
  623410: e24dd01c     	sub	sp, sp, #28
  623414: e59d4028     	ldr	r4, [sp, #0x28]
  623418: e3a0c000     	mov	r12, #0
  62341c: e28d500c     	add	r5, sp, #12
  623420: e58d5000     	str	r5, [sp]
  623424: e58dc014     	str	r12, [sp, #0x14]
  623428: e58dc00c     	str	r12, [sp, #0xc]
  62342c: e58dc010     	str	r12, [sp, #0x10]
  623430: ebffea25     	bl	0x61dccc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x576c
  623434: e1a00004     	mov	r0, r4
  623438: e1a01005     	mov	r1, r5
  62343c: e5943000     	ldr	r3, [r4]
  623440: e1a0e00f     	mov	lr, pc
  623444: e593f094     	ldr	pc, [r3, #0x94]
  623448: e28dd01c     	add	sp, sp, #28
  62344c: e8bd8030     	pop	{r4, r5, pc}

; scale_x_float_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623450, file offset=0x00623450, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00623450 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623450: e59dc004     	ldr	r12, [sp, #0x4]
  623454: e1a00001     	mov	r0, r1
  623458: e1a01002     	mov	r1, r2
  62345c: e1a02003     	mov	r2, r3
  623460: e59d3000     	ldr	r3, [sp]
  623464: e58dc000     	str	r12, [sp]
  623468: e59dc008     	ldr	r12, [sp, #0x8]
  62346c: e58dc004     	str	r12, [sp, #0x4]
  623470: eaffffe5     	b	0x62340c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; scale_x_short_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623474, file offset=0x00623474, size=68, SHA-256=aa359493023d8cdc33046ee7d0281b44952675d8c3704775d294c4e7cd7c27f5
00623474 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623474: e92d4030     	push	{r4, r5, lr}
  623478: e24dd014     	sub	sp, sp, #20
  62347c: e28d5004     	add	r5, sp, #4
  623480: e3a03000     	mov	r3, #0
  623484: e1a04002     	mov	r4, r2
  623488: e1a02005     	mov	r2, r5
  62348c: e58d300c     	str	r3, [sp, #0xc]
  623490: e58d3004     	str	r3, [sp, #0x4]
  623494: e58d3008     	str	r3, [sp, #0x8]
  623498: ebffcca1     	bl	0x616724 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xcd7c
  62349c: e1a00004     	mov	r0, r4
  6234a0: e1a01005     	mov	r1, r5
  6234a4: e5943000     	ldr	r3, [r4]
  6234a8: e1a0e00f     	mov	lr, pc
  6234ac: e593f094     	ldr	pc, [r3, #0x94]
  6234b0: e28dd014     	add	sp, sp, #20
  6234b4: e8bd8030     	pop	{r4, r5, pc}

; scale_x_short_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x006234b8, file offset=0x006234b8, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
006234b8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  6234b8: e1a00001     	mov	r0, r1
  6234bc: e1a01002     	mov	r1, r2
  6234c0: e1a02003     	mov	r2, r3
  6234c4: e59d3000     	ldr	r3, [sp]
  6234c8: eaffffe9     	b	0x623474 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; scale_x_short_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x006234cc, file offset=0x006234cc, size=68, SHA-256=644e84bfa0a67bd109d41908fb7dbea26de11ca34f0808846d00cb40065a55be
006234cc <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  6234cc: e92d4030     	push	{r4, r5, lr}
  6234d0: e24dd01c     	sub	sp, sp, #28
  6234d4: e59d4028     	ldr	r4, [sp, #0x28]
  6234d8: e3a0c000     	mov	r12, #0
  6234dc: e28d500c     	add	r5, sp, #12
  6234e0: e58d5000     	str	r5, [sp]
  6234e4: e58dc014     	str	r12, [sp, #0x14]
  6234e8: e58dc00c     	str	r12, [sp, #0xc]
  6234ec: e58dc010     	str	r12, [sp, #0x10]
  6234f0: ebffccb7     	bl	0x6167d4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xcd24
  6234f4: e1a00004     	mov	r0, r4
  6234f8: e1a01005     	mov	r1, r5
  6234fc: e5943000     	ldr	r3, [r4]
  623500: e1a0e00f     	mov	lr, pc
  623504: e593f094     	ldr	pc, [r3, #0x94]
  623508: e28dd01c     	add	sp, sp, #28
  62350c: e8bd8030     	pop	{r4, r5, pc}

; scale_x_short_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623510, file offset=0x00623510, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00623510 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623510: e59dc004     	ldr	r12, [sp, #0x4]
  623514: e1a00001     	mov	r0, r1
  623518: e1a01002     	mov	r1, r2
  62351c: e1a02003     	mov	r2, r3
  623520: e59d3000     	ldr	r3, [sp]
  623524: e58dc000     	str	r12, [sp]
  623528: e59dc008     	ldr	r12, [sp, #0x8]
  62352c: e58dc004     	str	r12, [sp, #0x4]
  623530: eaffffe5     	b	0x6234cc <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; scale_x_char_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623534, file offset=0x00623534, size=68, SHA-256=a943fd7613062f5df6f86424fc59d745bd53f8917b672d564728649caf403320
00623534 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623534: e92d4030     	push	{r4, r5, lr}
  623538: e24dd014     	sub	sp, sp, #20
  62353c: e28d5004     	add	r5, sp, #4
  623540: e3a03000     	mov	r3, #0
  623544: e1a04002     	mov	r4, r2
  623548: e1a02005     	mov	r2, r5
  62354c: e58d300c     	str	r3, [sp, #0xc]
  623550: e58d3004     	str	r3, [sp, #0x4]
  623554: e58d3008     	str	r3, [sp, #0x8]
  623558: ebffcd7d     	bl	0x616b54 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xca0c
  62355c: e1a00004     	mov	r0, r4
  623560: e1a01005     	mov	r1, r5
  623564: e5943000     	ldr	r3, [r4]
  623568: e1a0e00f     	mov	lr, pc
  62356c: e593f094     	ldr	pc, [r3, #0x94]
  623570: e28dd014     	add	sp, sp, #20
  623574: e8bd8030     	pop	{r4, r5, pc}

; scale_x_char_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623578, file offset=0x00623578, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
00623578 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623578: e1a00001     	mov	r0, r1
  62357c: e1a01002     	mov	r1, r2
  623580: e1a02003     	mov	r2, r3
  623584: e59d3000     	ldr	r3, [sp]
  623588: eaffffe9     	b	0x623534 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; scale_x_char_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x0062358c, file offset=0x0062358c, size=68, SHA-256=2f4f95cc3ad4cdf1838806a906a53d100ba067f1a76af9b9ed3676dd6bef1a5e
0062358c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  62358c: e92d4030     	push	{r4, r5, lr}
  623590: e24dd01c     	sub	sp, sp, #28
  623594: e59d4028     	ldr	r4, [sp, #0x28]
  623598: e3a0c000     	mov	r12, #0
  62359c: e28d500c     	add	r5, sp, #12
  6235a0: e58d5000     	str	r5, [sp]
  6235a4: e58dc014     	str	r12, [sp, #0x14]
  6235a8: e58dc00c     	str	r12, [sp, #0xc]
  6235ac: e58dc010     	str	r12, [sp, #0x10]
  6235b0: ebffcd92     	bl	0x616c00 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xc9b8
  6235b4: e1a00004     	mov	r0, r4
  6235b8: e1a01005     	mov	r1, r5
  6235bc: e5943000     	ldr	r3, [r4]
  6235c0: e1a0e00f     	mov	lr, pc
  6235c4: e593f094     	ldr	pc, [r3, #0x94]
  6235c8: e28dd01c     	add	sp, sp, #28
  6235cc: e8bd8030     	pop	{r4, r5, pc}

; scale_x_char_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x006235d0, file offset=0x006235d0, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
006235d0 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  6235d0: e59dc004     	ldr	r12, [sp, #0x4]
  6235d4: e1a00001     	mov	r0, r1
  6235d8: e1a01002     	mov	r1, r2
  6235dc: e1a02003     	mov	r2, r3
  6235e0: e59d3000     	ldr	r3, [sp]
  6235e4: e58dc000     	str	r12, [sp]
  6235e8: e59dc008     	ldr	r12, [sp, #0x8]
  6235ec: e58dc004     	str	r12, [sp, #0x4]
  6235f0: eaffffe5     	b	0x62358c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; scale_y_float_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x006235f4, file offset=0x006235f4, size=68, SHA-256=a786935ee284d4af85d22b074eaadbe6b8789ddfeb118119e129aab86082ff66
006235f4 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  6235f4: e92d4030     	push	{r4, r5, lr}
  6235f8: e24dd014     	sub	sp, sp, #20
  6235fc: e28d5004     	add	r5, sp, #4
  623600: e3a03000     	mov	r3, #0
  623604: e1a04002     	mov	r4, r2
  623608: e1a02005     	mov	r2, r5
  62360c: e58d300c     	str	r3, [sp, #0xc]
  623610: e58d3004     	str	r3, [sp, #0x4]
  623614: e58d3008     	str	r3, [sp, #0x8]
  623618: ebffea3e     	bl	0x61df18 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0x5708
  62361c: e1a00004     	mov	r0, r4
  623620: e1a01005     	mov	r1, r5
  623624: e5943000     	ldr	r3, [r4]
  623628: e1a0e00f     	mov	lr, pc
  62362c: e593f094     	ldr	pc, [r3, #0x94]
  623630: e28dd014     	add	sp, sp, #20
  623634: e8bd8030     	pop	{r4, r5, pc}

; scale_y_float_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623638, file offset=0x00623638, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
00623638 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623638: e1a00001     	mov	r0, r1
  62363c: e1a01002     	mov	r1, r2
  623640: e1a02003     	mov	r2, r3
  623644: e59d3000     	ldr	r3, [sp]
  623648: eaffffe9     	b	0x6235f4 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; scale_y_float_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x0062364c, file offset=0x0062364c, size=68, SHA-256=6702a3a951907bf44b8318251db0e3e26b47ed48b7d27f3fe23c6b4ffd0c0455
0062364c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  62364c: e92d4030     	push	{r4, r5, lr}
  623650: e24dd01c     	sub	sp, sp, #28
  623654: e59d4028     	ldr	r4, [sp, #0x28]
  623658: e3a0c000     	mov	r12, #0
  62365c: e28d500c     	add	r5, sp, #12
  623660: e58d5000     	str	r5, [sp]
  623664: e58dc014     	str	r12, [sp, #0x14]
  623668: e58dc00c     	str	r12, [sp, #0xc]
  62366c: e58dc010     	str	r12, [sp, #0x10]
  623670: ebffea48     	bl	0x61df98 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x56e0
  623674: e1a00004     	mov	r0, r4
  623678: e1a01005     	mov	r1, r5
  62367c: e5943000     	ldr	r3, [r4]
  623680: e1a0e00f     	mov	lr, pc
  623684: e593f094     	ldr	pc, [r3, #0x94]
  623688: e28dd01c     	add	sp, sp, #28
  62368c: e8bd8030     	pop	{r4, r5, pc}

; scale_y_float_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623690, file offset=0x00623690, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00623690 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623690: e59dc004     	ldr	r12, [sp, #0x4]
  623694: e1a00001     	mov	r0, r1
  623698: e1a01002     	mov	r1, r2
  62369c: e1a02003     	mov	r2, r3
  6236a0: e59d3000     	ldr	r3, [sp]
  6236a4: e58dc000     	str	r12, [sp]
  6236a8: e59dc008     	ldr	r12, [sp, #0x8]
  6236ac: e58dc004     	str	r12, [sp, #0x4]
  6236b0: eaffffe5     	b	0x62364c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; scale_y_short_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x006236b4, file offset=0x006236b4, size=68, SHA-256=1ea651c503117cdb91ebeed1142826bbfa4dbf292d5cb2aee8d49ac96bbb9973
006236b4 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  6236b4: e92d4030     	push	{r4, r5, lr}
  6236b8: e24dd014     	sub	sp, sp, #20
  6236bc: e28d5004     	add	r5, sp, #4
  6236c0: e3a03000     	mov	r3, #0
  6236c4: e1a04002     	mov	r4, r2
  6236c8: e1a02005     	mov	r2, r5
  6236cc: e58d300c     	str	r3, [sp, #0xc]
  6236d0: e58d3004     	str	r3, [sp, #0x4]
  6236d4: e58d3008     	str	r3, [sp, #0x8]
  6236d8: ebffce21     	bl	0x616f64 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xc77c
  6236dc: e1a00004     	mov	r0, r4
  6236e0: e1a01005     	mov	r1, r5
  6236e4: e5943000     	ldr	r3, [r4]
  6236e8: e1a0e00f     	mov	lr, pc
  6236ec: e593f094     	ldr	pc, [r3, #0x94]
  6236f0: e28dd014     	add	sp, sp, #20
  6236f4: e8bd8030     	pop	{r4, r5, pc}

; scale_y_short_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x006236f8, file offset=0x006236f8, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
006236f8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  6236f8: e1a00001     	mov	r0, r1
  6236fc: e1a01002     	mov	r1, r2
  623700: e1a02003     	mov	r2, r3
  623704: e59d3000     	ldr	r3, [sp]
  623708: eaffffe9     	b	0x6236b4 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; scale_y_short_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x0062370c, file offset=0x0062370c, size=68, SHA-256=7e3a0776aaf2df62d9e2105cc00a64b77f481fa4e760ac0a9a6be2eb9785b1f0
0062370c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  62370c: e92d4030     	push	{r4, r5, lr}
  623710: e24dd01c     	sub	sp, sp, #28
  623714: e59d4028     	ldr	r4, [sp, #0x28]
  623718: e3a0c000     	mov	r12, #0
  62371c: e28d500c     	add	r5, sp, #12
  623720: e58d5000     	str	r5, [sp]
  623724: e58dc014     	str	r12, [sp, #0x14]
  623728: e58dc00c     	str	r12, [sp, #0xc]
  62372c: e58dc010     	str	r12, [sp, #0x10]
  623730: ebffce37     	bl	0x617014 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xc724
  623734: e1a00004     	mov	r0, r4
  623738: e1a01005     	mov	r1, r5
  62373c: e5943000     	ldr	r3, [r4]
  623740: e1a0e00f     	mov	lr, pc
  623744: e593f094     	ldr	pc, [r3, #0x94]
  623748: e28dd01c     	add	sp, sp, #28
  62374c: e8bd8030     	pop	{r4, r5, pc}

; scale_y_short_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623750, file offset=0x00623750, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00623750 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623750: e59dc004     	ldr	r12, [sp, #0x4]
  623754: e1a00001     	mov	r0, r1
  623758: e1a01002     	mov	r1, r2
  62375c: e1a02003     	mov	r2, r3
  623760: e59d3000     	ldr	r3, [sp]
  623764: e58dc000     	str	r12, [sp]
  623768: e59dc008     	ldr	r12, [sp, #0x8]
  62376c: e58dc004     	str	r12, [sp, #0x4]
  623770: eaffffe5     	b	0x62370c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; scale_y_char_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623774, file offset=0x00623774, size=68, SHA-256=52d761ffeec3d13fa7446ac6bfbb8da5ccee2082bb4b828c4ab75a811f7f0ea0
00623774 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623774: e92d4030     	push	{r4, r5, lr}
  623778: e24dd014     	sub	sp, sp, #20
  62377c: e28d5004     	add	r5, sp, #4
  623780: e3a03000     	mov	r3, #0
  623784: e1a04002     	mov	r4, r2
  623788: e1a02005     	mov	r2, r5
  62378c: e58d300c     	str	r3, [sp, #0xc]
  623790: e58d3004     	str	r3, [sp, #0x4]
  623794: e58d3008     	str	r3, [sp, #0x8]
  623798: ebffcefd     	bl	0x617394 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xc40c
  62379c: e1a00004     	mov	r0, r4
  6237a0: e1a01005     	mov	r1, r5
  6237a4: e5943000     	ldr	r3, [r4]
  6237a8: e1a0e00f     	mov	lr, pc
  6237ac: e593f094     	ldr	pc, [r3, #0x94]
  6237b0: e28dd014     	add	sp, sp, #20
  6237b4: e8bd8030     	pop	{r4, r5, pc}

; scale_y_char_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x006237b8, file offset=0x006237b8, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
006237b8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  6237b8: e1a00001     	mov	r0, r1
  6237bc: e1a01002     	mov	r1, r2
  6237c0: e1a02003     	mov	r2, r3
  6237c4: e59d3000     	ldr	r3, [sp]
  6237c8: eaffffe9     	b	0x623774 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; scale_y_char_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x006237cc, file offset=0x006237cc, size=68, SHA-256=08b99025341b0162e9c036b5f0fa89c8a3a50bde3dc8ce1229c38080e2740d6f
006237cc <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  6237cc: e92d4030     	push	{r4, r5, lr}
  6237d0: e24dd01c     	sub	sp, sp, #28
  6237d4: e59d4028     	ldr	r4, [sp, #0x28]
  6237d8: e3a0c000     	mov	r12, #0
  6237dc: e28d500c     	add	r5, sp, #12
  6237e0: e58d5000     	str	r5, [sp]
  6237e4: e58dc014     	str	r12, [sp, #0x14]
  6237e8: e58dc00c     	str	r12, [sp, #0xc]
  6237ec: e58dc010     	str	r12, [sp, #0x10]
  6237f0: ebffcf12     	bl	0x617440 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xc3b8
  6237f4: e1a00004     	mov	r0, r4
  6237f8: e1a01005     	mov	r1, r5
  6237fc: e5943000     	ldr	r3, [r4]
  623800: e1a0e00f     	mov	lr, pc
  623804: e593f094     	ldr	pc, [r3, #0x94]
  623808: e28dd01c     	add	sp, sp, #28
  62380c: e8bd8030     	pop	{r4, r5, pc}

; scale_y_char_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623810, file offset=0x00623810, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00623810 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623810: e59dc004     	ldr	r12, [sp, #0x4]
  623814: e1a00001     	mov	r0, r1
  623818: e1a01002     	mov	r1, r2
  62381c: e1a02003     	mov	r2, r3
  623820: e59d3000     	ldr	r3, [sp]
  623824: e58dc000     	str	r12, [sp]
  623828: e59dc008     	ldr	r12, [sp, #0x8]
  62382c: e58dc004     	str	r12, [sp, #0x4]
  623830: eaffffe5     	b	0x6237cc <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; scale_z_float_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623834, file offset=0x00623834, size=68, SHA-256=fc7621eb58afd99d9ee018f8ddc8077484f7d4359e3d7af08dab75267d4e35a3
00623834 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623834: e92d4030     	push	{r4, r5, lr}
  623838: e24dd014     	sub	sp, sp, #20
  62383c: e28d5004     	add	r5, sp, #4
  623840: e3a03000     	mov	r3, #0
  623844: e1a04002     	mov	r4, r2
  623848: e1a02005     	mov	r2, r5
  62384c: e58d300c     	str	r3, [sp, #0xc]
  623850: e58d3004     	str	r3, [sp, #0x4]
  623854: e58d3008     	str	r3, [sp, #0x8]
  623858: ebffea61     	bl	0x61e1e4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0x567c
  62385c: e1a00004     	mov	r0, r4
  623860: e1a01005     	mov	r1, r5
  623864: e5943000     	ldr	r3, [r4]
  623868: e1a0e00f     	mov	lr, pc
  62386c: e593f094     	ldr	pc, [r3, #0x94]
  623870: e28dd014     	add	sp, sp, #20
  623874: e8bd8030     	pop	{r4, r5, pc}

; scale_z_float_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623878, file offset=0x00623878, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
00623878 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623878: e1a00001     	mov	r0, r1
  62387c: e1a01002     	mov	r1, r2
  623880: e1a02003     	mov	r2, r3
  623884: e59d3000     	ldr	r3, [sp]
  623888: eaffffe9     	b	0x623834 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; scale_z_float_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x0062388c, file offset=0x0062388c, size=68, SHA-256=752723f793487a6d680b9c1f8acb52220cf5ef83c1608b84207ea486f983c25a
0062388c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  62388c: e92d4030     	push	{r4, r5, lr}
  623890: e24dd01c     	sub	sp, sp, #28
  623894: e59d4028     	ldr	r4, [sp, #0x28]
  623898: e3a0c000     	mov	r12, #0
  62389c: e28d500c     	add	r5, sp, #12
  6238a0: e58d5000     	str	r5, [sp]
  6238a4: e58dc014     	str	r12, [sp, #0x14]
  6238a8: e58dc00c     	str	r12, [sp, #0xc]
  6238ac: e58dc010     	str	r12, [sp, #0x10]
  6238b0: ebffea6b     	bl	0x61e264 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x5654
  6238b4: e1a00004     	mov	r0, r4
  6238b8: e1a01005     	mov	r1, r5
  6238bc: e5943000     	ldr	r3, [r4]
  6238c0: e1a0e00f     	mov	lr, pc
  6238c4: e593f094     	ldr	pc, [r3, #0x94]
  6238c8: e28dd01c     	add	sp, sp, #28
  6238cc: e8bd8030     	pop	{r4, r5, pc}

; scale_z_float_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x006238d0, file offset=0x006238d0, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
006238d0 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  6238d0: e59dc004     	ldr	r12, [sp, #0x4]
  6238d4: e1a00001     	mov	r0, r1
  6238d8: e1a01002     	mov	r1, r2
  6238dc: e1a02003     	mov	r2, r3
  6238e0: e59d3000     	ldr	r3, [sp]
  6238e4: e58dc000     	str	r12, [sp]
  6238e8: e59dc008     	ldr	r12, [sp, #0x8]
  6238ec: e58dc004     	str	r12, [sp, #0x4]
  6238f0: eaffffe5     	b	0x62388c <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; position_y_char_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623a30, file offset=0x00623a30, size=68, SHA-256=8f03275c499f98ee71959378a5e12dd83fc02da71a7b7f5c371c36d020a1e014
00623a30 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623a30: e92d4030     	push	{r4, r5, lr}
  623a34: e24dd014     	sub	sp, sp, #20
  623a38: e28d5004     	add	r5, sp, #4
  623a3c: e3a03000     	mov	r3, #0
  623a40: e1a04002     	mov	r4, r2
  623a44: e1a02005     	mov	r2, r5
  623a48: e58d300c     	str	r3, [sp, #0xc]
  623a4c: e58d3004     	str	r3, [sp, #0x4]
  623a50: e58d3008     	str	r3, [sp, #0x8]
  623a54: ebffc800     	bl	0x615a5c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xe000
  623a58: e1a00004     	mov	r0, r4
  623a5c: e1a01005     	mov	r1, r5
  623a60: e5943000     	ldr	r3, [r4]
  623a64: e1a0e00f     	mov	lr, pc
  623a68: e593f0a4     	ldr	pc, [r3, #0xa4]
  623a6c: e28dd014     	add	sp, sp, #20
  623a70: e8bd8030     	pop	{r4, r5, pc}

; position_y_char_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623a74, file offset=0x00623a74, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
00623a74 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623a74: e1a00001     	mov	r0, r1
  623a78: e1a01002     	mov	r1, r2
  623a7c: e1a02003     	mov	r2, r3
  623a80: e59d3000     	ldr	r3, [sp]
  623a84: eaffffe9     	b	0x623a30 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; position_y_char_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623a88, file offset=0x00623a88, size=68, SHA-256=6559fee5a649f4c5424080982025a83a398e6a898ab949f7939e21f339ee6a62
00623a88 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623a88: e92d4030     	push	{r4, r5, lr}
  623a8c: e24dd01c     	sub	sp, sp, #28
  623a90: e59d4028     	ldr	r4, [sp, #0x28]
  623a94: e3a0c000     	mov	r12, #0
  623a98: e28d500c     	add	r5, sp, #12
  623a9c: e58d5000     	str	r5, [sp]
  623aa0: e58dc014     	str	r12, [sp, #0x14]
  623aa4: e58dc00c     	str	r12, [sp, #0xc]
  623aa8: e58dc010     	str	r12, [sp, #0x10]
  623aac: ebffc815     	bl	0x615b08 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xdfac
  623ab0: e1a00004     	mov	r0, r4
  623ab4: e1a01005     	mov	r1, r5
  623ab8: e5943000     	ldr	r3, [r4]
  623abc: e1a0e00f     	mov	lr, pc
  623ac0: e593f0a4     	ldr	pc, [r3, #0xa4]
  623ac4: e28dd01c     	add	sp, sp, #28
  623ac8: e8bd8030     	pop	{r4, r5, pc}

; position_y_char_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623acc, file offset=0x00623acc, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00623acc <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623acc: e59dc004     	ldr	r12, [sp, #0x4]
  623ad0: e1a00001     	mov	r0, r1
  623ad4: e1a01002     	mov	r1, r2
  623ad8: e1a02003     	mov	r2, r3
  623adc: e59d3000     	ldr	r3, [sp]
  623ae0: e58dc000     	str	r12, [sp]
  623ae4: e59dc008     	ldr	r12, [sp, #0x8]
  623ae8: e58dc004     	str	r12, [sp, #0x4]
  623aec: eaffffe5     	b	0x623a88 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; position_z_float_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623af0, file offset=0x00623af0, size=68, SHA-256=495b0e6f5f4768b5516c0f1aa8743d6f639e818288ef701b607cb2361fbfc77f
00623af0 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623af0: e92d4030     	push	{r4, r5, lr}
  623af4: e24dd014     	sub	sp, sp, #20
  623af8: e28d5004     	add	r5, sp, #4
  623afc: e3a03000     	mov	r3, #0
  623b00: e1a04002     	mov	r4, r2
  623b04: e1a02005     	mov	r2, r5
  623b08: e58d300c     	str	r3, [sp, #0xc]
  623b0c: e58d3004     	str	r3, [sp, #0x4]
  623b10: e58d3008     	str	r3, [sp, #0x8]
  623b14: ebfff108     	bl	0x61ff3c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0x3be0
  623b18: e1a00004     	mov	r0, r4
  623b1c: e1a01005     	mov	r1, r5
  623b20: e5943000     	ldr	r3, [r4]
  623b24: e1a0e00f     	mov	lr, pc
  623b28: e593f0a4     	ldr	pc, [r3, #0xa4]
  623b2c: e28dd014     	add	sp, sp, #20
  623b30: e8bd8030     	pop	{r4, r5, pc}

; position_z_float_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623b34, file offset=0x00623b34, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
00623b34 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623b34: e1a00001     	mov	r0, r1
  623b38: e1a01002     	mov	r1, r2
  623b3c: e1a02003     	mov	r2, r3
  623b40: e59d3000     	ldr	r3, [sp]
  623b44: eaffffe9     	b	0x623af0 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; position_z_float_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623b48, file offset=0x00623b48, size=68, SHA-256=c92f193923014571c798167a6b4461b982f98727d10e6fa85b10e5c132e7c9c8
00623b48 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623b48: e92d4030     	push	{r4, r5, lr}
  623b4c: e24dd01c     	sub	sp, sp, #28
  623b50: e59d4028     	ldr	r4, [sp, #0x28]
  623b54: e3a0c000     	mov	r12, #0
  623b58: e28d500c     	add	r5, sp, #12
  623b5c: e58d5000     	str	r5, [sp]
  623b60: e58dc014     	str	r12, [sp, #0x14]
  623b64: e58dc00c     	str	r12, [sp, #0xc]
  623b68: e58dc010     	str	r12, [sp, #0x10]
  623b6c: ebfff112     	bl	0x61ffbc <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x3bb8
  623b70: e1a00004     	mov	r0, r4
  623b74: e1a01005     	mov	r1, r5
  623b78: e5943000     	ldr	r3, [r4]
  623b7c: e1a0e00f     	mov	lr, pc
  623b80: e593f0a4     	ldr	pc, [r3, #0xa4]
  623b84: e28dd01c     	add	sp, sp, #28
  623b88: e8bd8030     	pop	{r4, r5, pc}

; position_z_float_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623b8c, file offset=0x00623b8c, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00623b8c <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623b8c: e59dc004     	ldr	r12, [sp, #0x4]
  623b90: e1a00001     	mov	r0, r1
  623b94: e1a01002     	mov	r1, r2
  623b98: e1a02003     	mov	r2, r3
  623b9c: e59d3000     	ldr	r3, [sp]
  623ba0: e58dc000     	str	r12, [sp]
  623ba4: e59dc008     	ldr	r12, [sp, #0x8]
  623ba8: e58dc004     	str	r12, [sp, #0x4]
  623bac: eaffffe5     	b	0x623b48 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; position_z_short_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623bb0, file offset=0x00623bb0, size=68, SHA-256=c64d61881faf423c018dae5ce1039691a75575b72a3f15981580f6dd924d6fca
00623bb0 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623bb0: e92d4030     	push	{r4, r5, lr}
  623bb4: e24dd014     	sub	sp, sp, #20
  623bb8: e28d5004     	add	r5, sp, #4
  623bbc: e3a03000     	mov	r3, #0
  623bc0: e1a04002     	mov	r4, r2
  623bc4: e1a02005     	mov	r2, r5
  623bc8: e58d300c     	str	r3, [sp, #0xc]
  623bcc: e58d3004     	str	r3, [sp, #0x4]
  623bd0: e58d3008     	str	r3, [sp, #0x8]
  623bd4: ebffc8c4     	bl	0x615eec <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xdcf0
  623bd8: e1a00004     	mov	r0, r4
  623bdc: e1a01005     	mov	r1, r5
  623be0: e5943000     	ldr	r3, [r4]
  623be4: e1a0e00f     	mov	lr, pc
  623be8: e593f0a4     	ldr	pc, [r3, #0xa4]
  623bec: e28dd014     	add	sp, sp, #20
  623bf0: e8bd8030     	pop	{r4, r5, pc}

; position_z_short_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623bf4, file offset=0x00623bf4, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
00623bf4 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623bf4: e1a00001     	mov	r0, r1
  623bf8: e1a01002     	mov	r1, r2
  623bfc: e1a02003     	mov	r2, r3
  623c00: e59d3000     	ldr	r3, [sp]
  623c04: eaffffe9     	b	0x623bb0 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; position_z_short_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623c08, file offset=0x00623c08, size=68, SHA-256=17038164e50336bcb24f878687d0e8006991a28e3675093603ff5a781e459c2f
00623c08 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623c08: e92d4030     	push	{r4, r5, lr}
  623c0c: e24dd01c     	sub	sp, sp, #28
  623c10: e59d4028     	ldr	r4, [sp, #0x28]
  623c14: e3a0c000     	mov	r12, #0
  623c18: e28d500c     	add	r5, sp, #12
  623c1c: e58d5000     	str	r5, [sp]
  623c20: e58dc014     	str	r12, [sp, #0x14]
  623c24: e58dc00c     	str	r12, [sp, #0xc]
  623c28: e58dc010     	str	r12, [sp, #0x10]
  623c2c: ebffc8da     	bl	0x615f9c <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xdc98
  623c30: e1a00004     	mov	r0, r4
  623c34: e1a01005     	mov	r1, r5
  623c38: e5943000     	ldr	r3, [r4]
  623c3c: e1a0e00f     	mov	lr, pc
  623c40: e593f0a4     	ldr	pc, [r3, #0xa4]
  623c44: e28dd01c     	add	sp, sp, #28
  623c48: e8bd8030     	pop	{r4, r5, pc}

; position_z_short_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623c4c, file offset=0x00623c4c, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00623c4c <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623c4c: e59dc004     	ldr	r12, [sp, #0x4]
  623c50: e1a00001     	mov	r0, r1
  623c54: e1a01002     	mov	r1, r2
  623c58: e1a02003     	mov	r2, r3
  623c5c: e59d3000     	ldr	r3, [sp]
  623c60: e58dc000     	str	r12, [sp]
  623c64: e59dc008     	ldr	r12, [sp, #0x8]
  623c68: e58dc004     	str	r12, [sp, #0x4]
  623c6c: eaffffe5     	b	0x623c08 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; position_z_char_apply_direct: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623c70, file offset=0x00623c70, size=68, SHA-256=abdd9f1a207270caec13b9df0d7c69db92160bc3aa0be7c1daafc2d9afea469b
00623c70 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623c70: e92d4030     	push	{r4, r5, lr}
  623c74: e24dd014     	sub	sp, sp, #20
  623c78: e28d5004     	add	r5, sp, #4
  623c7c: e3a03000     	mov	r3, #0
  623c80: e1a04002     	mov	r4, r2
  623c84: e1a02005     	mov	r2, r5
  623c88: e58d300c     	str	r3, [sp, #0xc]
  623c8c: e58d3004     	str	r3, [sp, #0x4]
  623c90: e58d3008     	str	r3, [sp, #0x8]
  623c94: ebffc99f     	bl	0x616318 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)> @ imm = #-0xd984
  623c98: e1a00004     	mov	r0, r4
  623c9c: e1a01005     	mov	r1, r5
  623ca0: e5943000     	ldr	r3, [r4]
  623ca4: e1a0e00f     	mov	lr, pc
  623ca8: e593f0a4     	ldr	pc, [r3, #0xa4]
  623cac: e28dd014     	add	sp, sp, #20
  623cb0: e8bd8030     	pop	{r4, r5, pc}

; position_z_char_direct_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623cb4, file offset=0x00623cb4, size=20, SHA-256=86a9fb7e0d09e208a9ecd2deb026be65e2be489e28e1e9b55c738167a63d6d3f
00623cb4 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623cb4: e1a00001     	mov	r0, r1
  623cb8: e1a01002     	mov	r1, r2
  623cbc: e1a02003     	mov	r2, r3
  623cc0: e59d3000     	ldr	r3, [sp]
  623cc4: eaffffe9     	b	0x623c70 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x5c

; position_z_char_apply_interpolated: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; ELF VA=0x00623cc8, file offset=0x00623cc8, size=68, SHA-256=1f8571ecd97ae958190398957d94ff2abed87d3731207509ce0e0ee62b8812ee
00623cc8 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623cc8: e92d4030     	push	{r4, r5, lr}
  623ccc: e24dd01c     	sub	sp, sp, #28
  623cd0: e59d4028     	ldr	r4, [sp, #0x28]
  623cd4: e3a0c000     	mov	r12, #0
  623cd8: e28d500c     	add	r5, sp, #12
  623cdc: e58d5000     	str	r5, [sp]
  623ce0: e58dc014     	str	r12, [sp, #0x14]
  623ce4: e58dc00c     	str	r12, [sp, #0xc]
  623ce8: e58dc010     	str	r12, [sp, #0x10]
  623cec: ebffc9b4     	bl	0x6163c4 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xd930
  623cf0: e1a00004     	mov	r0, r4
  623cf4: e1a01005     	mov	r1, r5
  623cf8: e5943000     	ldr	r3, [r4]
  623cfc: e1a0e00f     	mov	lr, pc
  623d00: e593f0a4     	ldr	pc, [r3, #0xa4]
  623d04: e28dd01c     	add	sp, sp, #28
  623d08: e8bd8030     	pop	{r4, r5, pc}

; position_z_char_interpolated_apply_wrapper: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; ELF VA=0x00623d0c, file offset=0x00623d0c, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00623d0c <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  623d0c: e59dc004     	ldr	r12, [sp, #0x4]
  623d10: e1a00001     	mov	r0, r1
  623d14: e1a01002     	mov	r1, r2
  623d18: e1a02003     	mov	r2, r3
  623d1c: e59d3000     	ldr	r3, [sp]
  623d20: e58dc000     	str	r12, [sp]
  623d24: e59dc008     	ldr	r12, [sp, #0x8]
  623d28: e58dc004     	str	r12, [sp, #0x4]
  623d2c: eaffffe5     	b	0x623cc8 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c
