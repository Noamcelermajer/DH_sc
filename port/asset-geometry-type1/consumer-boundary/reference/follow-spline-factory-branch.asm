
work\DH_sc\work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006b9928 <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)>:
  6b9938: e3510008     	cmp	r1, #8
  6b993c: 908ff101     	addls	pc, pc, r1, lsl #2
  6b9940: ea000020     	b	0x6b99c8 <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0xa0> @ imm = #0x80
  6b9944: ea000021     	b	0x6b99d0 <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0xa8> @ imm = #0x84
  6b9948: ea000039     	b	0x6b9a34 <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x10c> @ imm = #0xe4
  6b994c: ea00004f     	b	0x6b9a90 <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x168> @ imm = #0x13c
  6b9950: ea00007d     	b	0x6b9b4c <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x224> @ imm = #0x1f4
  6b9954: ea00008e     	b	0x6b9b94 <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x26c> @ imm = #0x238
  6b9958: ea0000a1     	b	0x6b9be4 <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x2bc> @ imm = #0x284
  6b995c: ea0000ab     	b	0x6b9c10 <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x2e8> @ imm = #0x2ac
  6b9960: ea0000cc     	b	0x6b9c98 <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x370> @ imm = #0x330
  6b9964: eaffffff     	b	0x6b9968 <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x40> @ imm = #-0x4
  6b9968: e3a01000     	mov	r1, #0
  6b996c: e3a00080     	mov	r0, #128
  6b9970: ebf9ea0d     	bl	0x5341ac <operator new(unsigned int, glitch::memory::E_MEMORY_HINT)> @ imm = #-0x1857cc
  6b9974: e3082000     	movw	r2, #0x8000
  6b9978: e3a03443     	mov	r3, #1124073472
  6b997c: e308c000     	movw	r12, #0x8000
  6b9980: e597100c     	ldr	r1, [r7, #0xc]
  6b9984: e344c4bb     	movt	r12, #0x44bb
  6b9988: e34c24bb     	movt	r2, #0xc4bb
  6b998c: e2833712     	add	r3, r3, #4718592
  6b9990: e1a05000     	mov	r5, r0
  6b9994: e58dc000     	str	r12, [sp]
  6b9998: eb004266     	bl	0x6ca338 <glitch::scene::CSceneNodeAnimatorCameraMaya::CSceneNodeAnimatorCameraMaya(glitch::gui::ICursorControl*, float, float, float)> @ imm = #0x10998
  6b999c: e3550000     	cmp	r5, #0
  6b99a0: 13540000     	cmpne	r4, #0
  6b99a4: 0a000004     	beq	0x6b99bc <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x94> @ imm = #0x10
  6b99a8: e1a00004     	mov	r0, r4
  6b99ac: e5943000     	ldr	r3, [r4]
  6b99b0: e1a01005     	mov	r1, r5
  6b99b4: e1a0e00f     	mov	lr, pc
  6b99b8: e593f06c     	ldr	pc, [r3, #0x6c]
  6b99bc: e1a00005     	mov	r0, r5
  6b99c0: e28dd0ac     	add	sp, sp, #172
  6b99c4: e8bd80f0     	pop	{r4, r5, r6, r7, pc}
  6b99c8: e3a05000     	mov	r5, #0
  6b99cc: eafffffa     	b	0x6b99bc <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x94> @ imm = #-0x18
  6b99d0: ebfd4543     	bl	0x60aee4 <glitch::os::Timer::getTime()> @ imm = #-0xaeaf4
  6b99d4: e3a03000     	mov	r3, #0
  6b99d8: e1a06000     	mov	r6, r0
  6b99dc: e3a025fe     	mov	r2, #1065353216
  6b99e0: e3a01000     	mov	r1, #0
  6b99e4: e3a00050     	mov	r0, #80
  6b99e8: e58d2094     	str	r2, [sp, #0x94]
  6b99ec: e58d3098     	str	r3, [sp, #0x98]
  6b99f0: e58d309c     	str	r3, [sp, #0x9c]
  6b99f4: e58d30a0     	str	r3, [sp, #0xa0]
  6b99f8: e58d30a4     	str	r3, [sp, #0xa4]
  6b99fc: e58d3090     	str	r3, [sp, #0x90]
  6b9a00: ebf9e9e9     	bl	0x5341ac <operator new(unsigned int, glitch::memory::E_MEMORY_HINT)> @ imm = #-0x18585c
  6b9a04: e301c26f     	movw	r12, #0x126f
  6b9a08: e343ca83     	movt	r12, #0x3a83
  6b9a0c: e3a03441     	mov	r3, #1090519040
  6b9a10: e58dc000     	str	r12, [sp]
  6b9a14: e1a01006     	mov	r1, r6
  6b9a18: e28dc090     	add	r12, sp, #144
  6b9a1c: e28d209c     	add	r2, sp, #156
  6b9a20: e2833602     	add	r3, r3, #2097152
  6b9a24: e1a05000     	mov	r5, r0
  6b9a28: e58dc004     	str	r12, [sp, #0x4]
  6b9a2c: eb0048d1     	bl	0x6cbd78 <glitch::scene::CSceneNodeAnimatorFlyCircle::CSceneNodeAnimatorFlyCircle(unsigned int, glitch::core::vector3d<float> const&, float, float, glitch::core::vector3d<float> const&)> @ imm = #0x12344
  6b9a30: eaffffd9     	b	0x6b999c <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x74> @ imm = #-0x9c
  6b9a34: e3a03442     	mov	r3, #1107296256
  6b9a38: e3a02000     	mov	r2, #0
  6b9a3c: e2833732     	add	r3, r3, #13107200
  6b9a40: e58d208c     	str	r2, [sp, #0x8c]
  6b9a44: e58d3080     	str	r3, [sp, #0x80]
  6b9a48: e58d2084     	str	r2, [sp, #0x84]
  6b9a4c: e58d2088     	str	r2, [sp, #0x88]
  6b9a50: e58d3078     	str	r3, [sp, #0x78]
  6b9a54: e58d307c     	str	r3, [sp, #0x7c]
  6b9a58: ebfd4521     	bl	0x60aee4 <glitch::os::Timer::getTime()> @ imm = #-0xaeb7c
  6b9a5c: e3a01000     	mov	r1, #0
  6b9a60: e1a06000     	mov	r6, r0
  6b9a64: e3a0004c     	mov	r0, #76
  6b9a68: ebf9e9cf     	bl	0x5341ac <operator new(unsigned int, glitch::memory::E_MEMORY_HINT)> @ imm = #-0x1858c4
  6b9a6c: e3a0c001     	mov	r12, #1
  6b9a70: e28d1084     	add	r1, sp, #132
  6b9a74: e28d2078     	add	r2, sp, #120
  6b9a78: e3023710     	movw	r3, #0x2710
  6b9a7c: e1a05000     	mov	r5, r0
  6b9a80: e58dc000     	str	r12, [sp]
  6b9a84: e58d6004     	str	r6, [sp, #0x4]
  6b9a88: eb004a8a     	bl	0x6cc4b8 <glitch::scene::CSceneNodeAnimatorFlyStraight::CSceneNodeAnimatorFlyStraight(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, unsigned int, bool, unsigned int)> @ imm = #0x12a28
  6b9a8c: eaffffc2     	b	0x6b999c <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x74> @ imm = #-0xf8
  6b9a90: e3a03000     	mov	r3, #0
  6b9a94: e28d606c     	add	r6, sp, #108
  6b9a98: e3a0c000     	mov	r12, #0
  6b9a9c: e1a01003     	mov	r1, r3
  6b9aa0: e28d2060     	add	r2, sp, #96
  6b9aa4: e1a00006     	mov	r0, r6
  6b9aa8: e58d306c     	str	r3, [sp, #0x6c]
  6b9aac: e58d3070     	str	r3, [sp, #0x70]
  6b9ab0: e58d3074     	str	r3, [sp, #0x74]
  6b9ab4: e58dc068     	str	r12, [sp, #0x68]
  6b9ab8: e58dc060     	str	r12, [sp, #0x60]
  6b9abc: e58dc064     	str	r12, [sp, #0x64]
  6b9ac0: ebffff43     	bl	0x6b97d4 <std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::core::vector3d<float>*, glitch::core::vector3d<float> const&, std::__false_type const&, unsigned int, bool) (.clone.1)> @ imm = #-0x2f4
  6b9ac4: e59d2074     	ldr	r2, [sp, #0x74]
  6b9ac8: e59d1070     	ldr	r1, [sp, #0x70]
  6b9acc: e3a03441     	mov	r3, #1090519040
  6b9ad0: e2833602     	add	r3, r3, #2097152
  6b9ad4: e1510002     	cmp	r1, r2
  6b9ad8: e3a02101     	mov	r2, #1073741824
  6b9adc: e282260a     	add	r2, r2, #10485760
  6b9ae0: e58d3054     	str	r3, [sp, #0x54]
  6b9ae4: e58d2058     	str	r2, [sp, #0x58]
  6b9ae8: e58d305c     	str	r3, [sp, #0x5c]
  6b9aec: 0a00007a     	beq	0x6b9cdc <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x3b4> @ imm = #0x1e8
  6b9af0: e5813000     	str	r3, [r1]
  6b9af4: e59d3058     	ldr	r3, [sp, #0x58]
  6b9af8: e5813004     	str	r3, [r1, #0x4]
  6b9afc: e59d305c     	ldr	r3, [sp, #0x5c]
  6b9b00: e5813008     	str	r3, [r1, #0x8]
  6b9b04: e59d3070     	ldr	r3, [sp, #0x70]
  6b9b08: e283300c     	add	r3, r3, #12
  6b9b0c: e58d3070     	str	r3, [sp, #0x70]
  6b9b10: e3a01000     	mov	r1, #0
  6b9b14: e3a0002c     	mov	r0, #44
  6b9b18: ebf9e9a3     	bl	0x5341ac <operator new(unsigned int, glitch::memory::E_MEMORY_HINT)> @ imm = #-0x185974
  6b9b1c: e3a0c43f     	mov	r12, #1056964608
  6b9b20: e1a02006     	mov	r2, r6
  6b9b24: e3a01000     	mov	r1, #0
  6b9b28: e3a035fe     	mov	r3, #1065353216
  6b9b2c: e1a05000     	mov	r5, r0
  6b9b30: e58dc000     	str	r12, [sp]
  6b9b34: eb004c61     	bl	0x6cccc0 <glitch::scene::CSceneNodeAnimatorFollowSpline::CSceneNodeAnimatorFollowSpline(unsigned int, std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0>> const&, float, float)> @ imm = #0x13184
  6b9b38: e59d006c     	ldr	r0, [sp, #0x6c]
  6b9b3c: e3500000     	cmp	r0, #0
  6b9b40: 0affff95     	beq	0x6b999c <glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)+0x74> @ imm = #-0x1ac
  6b9b44: ebf15a41     	bl	0x310450 <GlitchFree(void*)> @ imm = #-0x3a96fc
