# ARM32 little-endian listing; exact function bytes from the APK-matched ELF.
# APK member: lib/armeabi-v7a/libDungeonHunter2.so
# ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80

# CSceneManager::drawAll(vector<ISceneNode*> const&) | VA 0x0058b728 | size 0x84 | file offset 0x58b728

0058b728 <glitch::scene::CSceneManager::drawAll(std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0>> const&)>:
  58b728: e92d4070     	push	{r4, r5, r6, lr}
  58b72c: e1a04000     	mov	r4, r0
  58b730: e1a05001     	mov	r5, r1
  58b734: e5903000     	ldr	r3, [r0]
  58b738: e5901014     	ldr	r1, [r0, #0x14]
  58b73c: e1a0e00f     	mov	lr, pc
  58b740: e593f040     	ldr	pc, [r3, #0x40]
  58b744: e1a01005     	mov	r1, r5
  58b748: e1a00004     	mov	r0, r4
  58b74c: ebffffdd     	bl	0x58b6c8 <glitch::scene::CSceneManager::collectAllNodes(std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0>> const&)> @ imm = #-0x8c
  58b750: e1a00004     	mov	r0, r4
  58b754: e5943000     	ldr	r3, [r4]
  58b758: e1a0e00f     	mov	lr, pc
  58b75c: e593f044     	ldr	pc, [r3, #0x44]
  58b760: e1a01005     	mov	r1, r5
  58b764: e1a00004     	mov	r0, r4
  58b768: e5943000     	ldr	r3, [r4]
  58b76c: e1a0e00f     	mov	lr, pc
  58b770: e593f02c     	ldr	pc, [r3, #0x2c]
  58b774: e1a00004     	mov	r0, r4
  58b778: e5943000     	ldr	r3, [r4]
  58b77c: e1a0e00f     	mov	lr, pc
  58b780: e593f04c     	ldr	pc, [r3, #0x4c]
  58b784: e1a00004     	mov	r0, r4
  58b788: e5943000     	ldr	r3, [r4]
  58b78c: e5941014     	ldr	r1, [r4, #0x14]
  58b790: e1a0e00f     	mov	lr, pc
  58b794: e593f048     	ldr	pc, [r3, #0x48]
  58b798: e3a03009     	mov	r3, #9
  58b79c: e2840f45     	add	r0, r4, #276
  58b7a0: e5843174     	str	r3, [r4, #0x174]
  58b7a4: e8bd4070     	pop	{r4, r5, r6, lr}
  58b7a8: eafffbeb     	b	0x58a75c <(anonymous namespace)::SStats::reset(glitch::io::IAttributes*) (.clone.3)> @ imm = #-0x1054

# CSceneManager::drawAll(ISceneNode*) | VA 0x0058b7f4 | size 0x98 | file offset 0x58b7f4

0058b7f4 <glitch::scene::CSceneManager::drawAll(glitch::scene::ISceneNode*)>:
  58b7f4: e92d4070     	push	{r4, r5, r6, lr}
  58b7f8: e1a05001     	mov	r5, r1
  58b7fc: e5903000     	ldr	r3, [r0]
  58b800: e5901018     	ldr	r1, [r0, #0x18]
  58b804: e1a04000     	mov	r4, r0
  58b808: e1a0e00f     	mov	lr, pc
  58b80c: e593f040     	ldr	pc, [r3, #0x40]
  58b810: e3550000     	cmp	r5, #0
  58b814: 0a000016     	beq	0x58b874 <glitch::scene::CSceneManager::drawAll(glitch::scene::ISceneNode*)+0x80> @ imm = #0x58
  58b818: e1a00004     	mov	r0, r4
  58b81c: e5943000     	ldr	r3, [r4]
  58b820: e1a0e00f     	mov	lr, pc
  58b824: e593f044     	ldr	pc, [r3, #0x44]
  58b828: e1a01005     	mov	r1, r5
  58b82c: e1a00004     	mov	r0, r4
  58b830: e5943000     	ldr	r3, [r4]
  58b834: e1a0e00f     	mov	lr, pc
  58b838: e593f028     	ldr	pc, [r3, #0x28]
  58b83c: e1a00004     	mov	r0, r4
  58b840: e5943000     	ldr	r3, [r4]
  58b844: e1a0e00f     	mov	lr, pc
  58b848: e593f04c     	ldr	pc, [r3, #0x4c]
  58b84c: e1a00004     	mov	r0, r4
  58b850: e5943000     	ldr	r3, [r4]
  58b854: e5941018     	ldr	r1, [r4, #0x18]
  58b858: e1a0e00f     	mov	lr, pc
  58b85c: e593f048     	ldr	pc, [r3, #0x48]
  58b860: e3a03009     	mov	r3, #9
  58b864: e2840f45     	add	r0, r4, #276
  58b868: e5843174     	str	r3, [r4, #0x174]
  58b86c: e8bd4070     	pop	{r4, r5, r6, lr}
  58b870: eafffbb9     	b	0x58a75c <(anonymous namespace)::SStats::reset(glitch::io::IAttributes*) (.clone.3)> @ imm = #-0x111c
  58b874: e5d43288     	ldrb	r3, [r4, #0x288]
  58b878: e3530000     	cmp	r3, #0
  58b87c: 0affffe5     	beq	0x58b818 <glitch::scene::CSceneManager::drawAll(glitch::scene::ISceneNode*)+0x24> @ imm = #-0x6c
  58b880: e1a00004     	mov	r0, r4
  58b884: ebffffc8     	bl	0x58b7ac <glitch::scene::CSceneManager::collectAllNodes()> @ imm = #-0xe0
  58b888: eaffffe2     	b	0x58b818 <glitch::scene::CSceneManager::drawAll(glitch::scene::ISceneNode*)+0x24> @ imm = #-0x78

# CSceneManager::collectAllNodes() | VA 0x0058b7ac | size 0x48 | file offset 0x58b7ac

0058b7ac <glitch::scene::CSceneManager::collectAllNodes()>:
  58b7ac: e5d03288     	ldrb	r3, [r0, #0x288]
  58b7b0: e92d4010     	push	{r4, lr}
  58b7b4: e3530000     	cmp	r3, #0
  58b7b8: e1a04000     	mov	r4, r0
  58b7bc: 0a00000b     	beq	0x58b7f0 <glitch::scene::CSceneManager::collectAllNodes()+0x44> @ imm = #0x2c
  58b7c0: e5903270     	ldr	r3, [r0, #0x270]
  58b7c4: e5902274     	ldr	r2, [r0, #0x274]
  58b7c8: e1530002     	cmp	r3, r2
  58b7cc: 15803274     	strne	r3, [r0, #0x274]
  58b7d0: e5902280     	ldr	r2, [r0, #0x280]
  58b7d4: e590327c     	ldr	r3, [r0, #0x27c]
  58b7d8: e1530002     	cmp	r3, r2
  58b7dc: 15803280     	strne	r3, [r0, #0x280]
  58b7e0: e5941004     	ldr	r1, [r4, #0x4]
  58b7e4: ebffff5b     	bl	0x58b558 <glitch::scene::CSceneManager::collectAllNodes(glitch::scene::ISceneNode*)> @ imm = #-0x294
  58b7e8: e3a03000     	mov	r3, #0
  58b7ec: e5c43288     	strb	r3, [r4, #0x288]
  58b7f0: e8bd8010     	pop	{r4, pc}

# CSceneManager::drawInit(IVideoDriver*) | VA 0x00589e7c | size 0x58 | file offset 0x589e7c

00589e7c <glitch::scene::CSceneManager::drawInit(glitch::video::IVideoDriver*)>:
  589e7c: e92d4070     	push	{r4, r5, r6, lr}
  589e80: e1a04001     	mov	r4, r1
  589e84: e59f1040     	ldr	r1, [pc, #0x40]         @ 0x589ecc <glitch::scene::CSceneManager::drawInit(glitch::video::IVideoDriver*)+0x50>
  589e88: e2805f45     	add	r5, r0, #276
  589e8c: e5804014     	str	r4, [r0, #0x14]
  589e90: e3a02000     	mov	r2, #0
  589e94: e1a00005     	mov	r0, r5
  589e98: e08f1001     	add	r1, pc, r1
  589e9c: ebff849e     	bl	0x56b11c <glitch::io::CAttributes::setAttribute(char const*, int)> @ imm = #-0x1ed88
  589ea0: e59f1028     	ldr	r1, [pc, #0x28]         @ 0x589ed0 <glitch::scene::CSceneManager::drawInit(glitch::video::IVideoDriver*)+0x54>
  589ea4: e5943000     	ldr	r3, [r4]
  589ea8: e1a00005     	mov	r0, r5
  589eac: e08f1001     	add	r1, pc, r1
  589eb0: e59350a0     	ldr	r5, [r3, #0xa0]
  589eb4: ebff6273     	bl	0x562888 <glitch::io::CAttributes::getBool(char const*)> @ imm = #-0x27634
  589eb8: e3a01080     	mov	r1, #128
  589ebc: e1a02000     	mov	r2, r0
  589ec0: e1a00004     	mov	r0, r4
  589ec4: e12fff35     	blx	r5
  589ec8: e8bd8070     	pop	{r4, r5, r6, pc}
  589ecc: 28 56 35 00  	.word	0x00355628
  589ed0: 1c 56 35 00  	.word	0x0035561c

# CSceneManager::setupCamera() | VA 0x00589e18 | size 0x64 | file offset 0x589e18

00589e18 <glitch::scene::CSceneManager::setupCamera()>:
  589e18: e92d4010     	push	{r4, lr}
  589e1c: e59030e4     	ldr	r3, [r0, #0xe4]
  589e20: e3a02000     	mov	r2, #0
  589e24: e24dd010     	sub	sp, sp, #16
  589e28: e3530000     	cmp	r3, #0
  589e2c: e1a04000     	mov	r4, r0
  589e30: e58020f0     	str	r2, [r0, #0xf0]
  589e34: e58020e8     	str	r2, [r0, #0xe8]
  589e38: e58020ec     	str	r2, [r0, #0xec]
  589e3c: 0a00000c     	beq	0x589e74 <glitch::scene::CSceneManager::setupCamera()+0x5c> @ imm = #0x30
  589e40: e1a00003     	mov	r0, r3
  589e44: e5933000     	ldr	r3, [r3]
  589e48: e1a0e00f     	mov	lr, pc
  589e4c: e593f010     	ldr	pc, [r3, #0x10]
  589e50: e59410e4     	ldr	r1, [r4, #0xe4]
  589e54: e28d0004     	add	r0, sp, #4
  589e58: eb0034c8     	bl	0x597180 <glitch::scene::ISceneNode::getAbsolutePosition() const> @ imm = #0xd320
  589e5c: e59d2008     	ldr	r2, [sp, #0x8]
  589e60: e59d300c     	ldr	r3, [sp, #0xc]
  589e64: e59d1004     	ldr	r1, [sp, #0x4]
  589e68: e58420ec     	str	r2, [r4, #0xec]
  589e6c: e58430f0     	str	r3, [r4, #0xf0]
  589e70: e58410e8     	str	r1, [r4, #0xe8]
  589e74: e28dd010     	add	sp, sp, #16
  589e78: e8bd8010     	pop	{r4, pc}

# CSceneManager::setActiveCamera(ICameraSceneNode*) | VA 0x005890c0 | size 0x68 | file offset 0x5890c0

005890c0 <glitch::scene::CSceneManager::setActiveCamera(glitch::scene::ICameraSceneNode*)>:
  5890c0: e92d4070     	push	{r4, r5, r6, lr}
  5890c4: e59030e4     	ldr	r3, [r0, #0xe4]
  5890c8: e1a04000     	mov	r4, r0
  5890cc: e1a05001     	mov	r5, r1
  5890d0: e1530001     	cmp	r3, r1
  5890d4: 0a000012     	beq	0x589124 <glitch::scene::CSceneManager::setActiveCamera(glitch::scene::ICameraSceneNode*)+0x64> @ imm = #0x48
  5890d8: e3510000     	cmp	r1, #0
  5890dc: 0a000006     	beq	0x5890fc <glitch::scene::CSceneManager::setActiveCamera(glitch::scene::ICameraSceneNode*)+0x3c> @ imm = #0x18
  5890e0: e5913000     	ldr	r3, [r1]
  5890e4: e513300c     	ldr	r3, [r3, #-0xc]
  5890e8: e0813003     	add	r3, r1, r3
  5890ec: e5932004     	ldr	r2, [r3, #0x4]
  5890f0: e2822001     	add	r2, r2, #1
  5890f4: e5832004     	str	r2, [r3, #0x4]
  5890f8: e59030e4     	ldr	r3, [r0, #0xe4]
  5890fc: e3530000     	cmp	r3, #0
  589100: 0a000003     	beq	0x589114 <glitch::scene::CSceneManager::setActiveCamera(glitch::scene::ICameraSceneNode*)+0x54> @ imm = #0xc
  589104: e5932000     	ldr	r2, [r3]
  589108: e512000c     	ldr	r0, [r2, #-0xc]
  58910c: e0830000     	add	r0, r3, r0
  589110: ebf6511b     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x26bb94
  589114: e1a00004     	mov	r0, r4
  589118: e58450e4     	str	r5, [r4, #0xe4]
  58911c: e8bd4070     	pop	{r4, r5, r6, lr}
  589120: eaffffe0     	b	0x5890a8 <glitch::scene::CSceneManager::notifyVisibilityChanged()> @ imm = #-0x80
  589124: e8bd8070     	pop	{r4, r5, r6, pc}

# CSceneManager::update(float,bool) | VA 0x0058b9f0 | size 0xe8 | file offset 0x58b9f0

0058b9f0 <glitch::scene::CSceneManager::update(float, bool)>:
  58b9f0: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  58b9f4: e1a05001     	mov	r5, r1
  58b9f8: e3a01332     	mov	r1, #-939524096
  58b9fc: e1a04000     	mov	r4, r0
  58ba00: e2411aee     	sub	r1, r1, #974848
  58ba04: e1a00005     	mov	r0, r5
  58ba08: e1a07002     	mov	r7, r2
  58ba0c: ebf6095e     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x27da88
  58ba10: e3500000     	cmp	r0, #0
  58ba14: 1a000024     	bne	0x58baac <glitch::scene::CSceneManager::update(float, bool)+0xbc> @ imm = #0x90
  58ba18: e5941254     	ldr	r1, [r4, #0x254]
  58ba1c: e1a00005     	mov	r0, r5
  58ba20: ebf60c5f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x27ce84
  58ba24: e5840254     	str	r0, [r4, #0x254]
  58ba28: eb0cca1c     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x332870
  58ba2c: e5d43288     	ldrb	r3, [r4, #0x288]
  58ba30: e1a06000     	mov	r6, r0
  58ba34: e3530000     	cmp	r3, #0
  58ba38: 1a000023     	bne	0x58bacc <glitch::scene::CSceneManager::update(float, bool)+0xdc> @ imm = #0x8c
  58ba3c: e3570000     	cmp	r7, #0
  58ba40: 0a000012     	beq	0x58ba90 <glitch::scene::CSceneManager::update(float, bool)+0xa0> @ imm = #0x48
  58ba44: e594327c     	ldr	r3, [r4, #0x27c]
  58ba48: e5942280     	ldr	r2, [r4, #0x280]
  58ba4c: e0632002     	rsb	r2, r3, r2
  58ba50: e1b02122     	lsrs	r2, r2, #2
  58ba54: 0a000013     	beq	0x58baa8 <glitch::scene::CSceneManager::update(float, bool)+0xb8> @ imm = #0x4c
  58ba58: e3a05000     	mov	r5, #0
  58ba5c: e7933105     	ldr	r3, [r3, r5, lsl #2]
  58ba60: e1a01006     	mov	r1, r6
  58ba64: e2855001     	add	r5, r5, #1
  58ba68: e1a00003     	mov	r0, r3
  58ba6c: e5933000     	ldr	r3, [r3]
  58ba70: e1a0e00f     	mov	lr, pc
  58ba74: e593f018     	ldr	pc, [r3, #0x18]
  58ba78: e594327c     	ldr	r3, [r4, #0x27c]
  58ba7c: e5942280     	ldr	r2, [r4, #0x280]
  58ba80: e0632002     	rsb	r2, r3, r2
  58ba84: e1550142     	cmp	r5, r2, asr #2
  58ba88: 3afffff3     	blo	0x58ba5c <glitch::scene::CSceneManager::update(float, bool)+0x6c> @ imm = #-0x34
  58ba8c: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  58ba90: e5943004     	ldr	r3, [r4, #0x4]
  58ba94: e1a01006     	mov	r1, r6
  58ba98: e1a00003     	mov	r0, r3
  58ba9c: e5933000     	ldr	r3, [r3]
  58baa0: e1a0e00f     	mov	lr, pc
  58baa4: e593f014     	ldr	pc, [r3, #0x14]
  58baa8: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  58baac: eb01fd0c     	bl	0x60aee4 <glitch::os::Timer::getTime()> @ imm = #0x7f430
  58bab0: ebf60a0a     	bl	0x30e2e0 <__aeabi_ui2f@plt> @ imm = #-0x27d7d8
  58bab4: e5840254     	str	r0, [r4, #0x254]
  58bab8: eb0cc9f8     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x3327e0
  58babc: e5d43288     	ldrb	r3, [r4, #0x288]
  58bac0: e1a06000     	mov	r6, r0
  58bac4: e3530000     	cmp	r3, #0
  58bac8: 0affffdb     	beq	0x58ba3c <glitch::scene::CSceneManager::update(float, bool)+0x4c> @ imm = #-0x94
  58bacc: e1a00004     	mov	r0, r4
  58bad0: ebffff35     	bl	0x58b7ac <glitch::scene::CSceneManager::collectAllNodes()> @ imm = #-0x32c
  58bad4: eaffffd8     	b	0x58ba3c <glitch::scene::CSceneManager::update(float, bool)+0x4c> @ imm = #-0xa0

# CSceneManager::registerSceneNodes(ISceneNode*) | VA 0x0058b88c | size 0x164 | file offset 0x58b88c

0058b88c <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)>:
  58b88c: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  58b890: e2515000     	subs	r5, r1, #0
  58b894: e1a08000     	mov	r8, r0
  58b898: 0a000035     	beq	0x58b974 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0xe8> @ imm = #0xd4
  58b89c: e1a00005     	mov	r0, r5
  58b8a0: eb002e7a     	bl	0x597290 <glitch::scene::ISceneNode::getParent() const> @ imm = #0xb9e8
  58b8a4: e5956004     	ldr	r6, [r5, #0x4]
  58b8a8: e1a07000     	mov	r7, r0
  58b8ac: e2855004     	add	r5, r5, #4
  58b8b0: e1a04000     	mov	r4, r0
  58b8b4: e3550000     	cmp	r5, #0
  58b8b8: 01a03005     	moveq	r3, r5
  58b8bc: 12453004     	subne	r3, r5, #4
  58b8c0: e593311c     	ldr	r3, [r3, #0x11c]
  58b8c4: e3130001     	tst	r3, #1
  58b8c8: 0a000019     	beq	0x58b934 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0xa8> @ imm = #0x64
  58b8cc: e3550000     	cmp	r5, #0
  58b8d0: 01a01005     	moveq	r1, r5
  58b8d4: 12451004     	subne	r1, r5, #4
  58b8d8: e1a00008     	mov	r0, r8
  58b8dc: ebfffc91     	bl	0x58ab28 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const> @ imm = #-0xdbc
  58b8e0: e3500000     	cmp	r0, #0
  58b8e4: 1a000012     	bne	0x58b934 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0xa8> @ imm = #0x48
  58b8e8: e3550000     	cmp	r5, #0
  58b8ec: 01a03005     	moveq	r3, r5
  58b8f0: 12453004     	subne	r3, r5, #4
  58b8f4: e1a00003     	mov	r0, r3
  58b8f8: e5933000     	ldr	r3, [r3]
  58b8fc: e1a0e00f     	mov	lr, pc
  58b900: e593f010     	ldr	pc, [r3, #0x10]
  58b904: e3500000     	cmp	r0, #0
  58b908: 0a000009     	beq	0x58b934 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0xa8> @ imm = #0x24
  58b90c: e3550000     	cmp	r5, #0
  58b910: 01a04005     	moveq	r4, r5
  58b914: 12454004     	subne	r4, r5, #4
  58b918: e59450f4     	ldr	r5, [r4, #0xf4]
  58b91c: e28460f4     	add	r6, r4, #244
  58b920: e1560005     	cmp	r6, r5
  58b924: 0a000005     	beq	0x58b940 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0xb4> @ imm = #0x14
  58b928: e1540007     	cmp	r4, r7
  58b92c: 1affffe0     	bne	0x58b8b4 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0x28> @ imm = #-0x80
  58b930: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  58b934: e5955000     	ldr	r5, [r5]
  58b938: e1560005     	cmp	r6, r5
  58b93c: 1afffff9     	bne	0x58b928 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0x9c> @ imm = #-0x1c
  58b940: e1570004     	cmp	r7, r4
  58b944: 0a000026     	beq	0x58b9e4 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0x158> @ imm = #0x98
  58b948: e1a00004     	mov	r0, r4
  58b94c: eb002e4f     	bl	0x597290 <glitch::scene::ISceneNode::getParent() const> @ imm = #0xb93c
  58b950: e5945004     	ldr	r5, [r4, #0x4]
  58b954: e28060f4     	add	r6, r0, #244
  58b958: e1560005     	cmp	r6, r5
  58b95c: 11a04000     	movne	r4, r0
  58b960: 1afffff0     	bne	0x58b928 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0x9c> @ imm = #-0x40
  58b964: e1570000     	cmp	r7, r0
  58b968: e1a04000     	mov	r4, r0
  58b96c: 1afffff5     	bne	0x58b948 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0xbc> @ imm = #-0x2c
  58b970: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  58b974: e5d03288     	ldrb	r3, [r0, #0x288]
  58b978: e3530000     	cmp	r3, #0
  58b97c: 1a000019     	bne	0x58b9e8 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0x15c> @ imm = #0x64
  58b980: e5984270     	ldr	r4, [r8, #0x270]
  58b984: e5985274     	ldr	r5, [r8, #0x274]
  58b988: e1540005     	cmp	r4, r5
  58b98c: 1a000003     	bne	0x58b9a0 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0x114> @ imm = #0xc
  58b990: eafffff6     	b	0x58b970 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0xe4> @ imm = #-0x28
  58b994: e2844004     	add	r4, r4, #4
  58b998: e1540005     	cmp	r4, r5
  58b99c: 0a00000f     	beq	0x58b9e0 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0x154> @ imm = #0x3c
  58b9a0: e5941000     	ldr	r1, [r4]
  58b9a4: e591311c     	ldr	r3, [r1, #0x11c]
  58b9a8: e3130001     	tst	r3, #1
  58b9ac: 0afffff8     	beq	0x58b994 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0x108> @ imm = #-0x20
  58b9b0: e1a00008     	mov	r0, r8
  58b9b4: ebfffc5b     	bl	0x58ab28 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const> @ imm = #-0xe94
  58b9b8: e3500000     	cmp	r0, #0
  58b9bc: 1afffff4     	bne	0x58b994 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0x108> @ imm = #-0x30
  58b9c0: e5943000     	ldr	r3, [r4]
  58b9c4: e2844004     	add	r4, r4, #4
  58b9c8: e1a00003     	mov	r0, r3
  58b9cc: e5933000     	ldr	r3, [r3]
  58b9d0: e1a0e00f     	mov	lr, pc
  58b9d4: e593f010     	ldr	pc, [r3, #0x10]
  58b9d8: e1540005     	cmp	r4, r5
  58b9dc: 1affffef     	bne	0x58b9a0 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0x114> @ imm = #-0x44
  58b9e0: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  58b9e4: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  58b9e8: ebffff6f     	bl	0x58b7ac <glitch::scene::CSceneManager::collectAllNodes()> @ imm = #-0x244
  58b9ec: eaffffe3     	b	0x58b980 <glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)+0xf4> @ imm = #-0x74

# CSceneManager::isCulled(ISceneNode const*) | VA 0x0058ab28 | size 0x184 | file offset 0x58ab28

0058ab28 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const>:
  58ab28: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  58ab2c: e5d03250     	ldrb	r3, [r0, #0x250]
  58ab30: e1a04001     	mov	r4, r1
  58ab34: e3530000     	cmp	r3, #0
  58ab38: 0a000009     	beq	0x58ab64 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const+0x3c> @ imm = #0x24
  58ab3c: e59050e4     	ldr	r5, [r0, #0xe4]
  58ab40: e3550000     	cmp	r5, #0
  58ab44: 0a000006     	beq	0x58ab64 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const+0x3c> @ imm = #0x18
  58ab48: e5913118     	ldr	r3, [r1, #0x118]
  58ab4c: e3530002     	cmp	r3, #2
  58ab50: 0a000005     	beq	0x58ab6c <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const+0x44> @ imm = #0x14
  58ab54: e3530008     	cmp	r3, #8
  58ab58: 0a000044     	beq	0x58ac70 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const+0x148> @ imm = #0x110
  58ab5c: e3530001     	cmp	r3, #1
  58ab60: 0a000010     	beq	0x58aba8 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const+0x80> @ imm = #0x40
  58ab64: e3a00000     	mov	r0, #0
  58ab68: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  58ab6c: e5953000     	ldr	r3, [r5]
  58ab70: e1a00005     	mov	r0, r5
  58ab74: e1a0e00f     	mov	lr, pc
  58ab78: e593f144     	ldr	pc, [r3, #0x144]
  58ab7c: e5943000     	ldr	r3, [r4]
  58ab80: e1a05000     	mov	r5, r0
  58ab84: e1a00004     	mov	r0, r4
  58ab88: e1a0e00f     	mov	lr, pc
  58ab8c: e593f034     	ldr	pc, [r3, #0x34]
  58ab90: e1a01000     	mov	r1, r0
  58ab94: e1a00005     	mov	r0, r5
  58ab98: ebf744ca     	bl	0x35bec8 <glitch::scene::SViewFrustum::intersects(glitch::core::aabbox3d<float> const&) const> @ imm = #-0x22ecd8
  58ab9c: e2200001     	eor	r0, r0, #1
  58aba0: e6ef0070     	uxtb	r0, r0
  58aba4: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  58aba8: e5913000     	ldr	r3, [r1]
  58abac: e1a00001     	mov	r0, r1
  58abb0: e1a0e00f     	mov	lr, pc
  58abb4: e593f034     	ldr	pc, [r3, #0x34]
  58abb8: e5953000     	ldr	r3, [r5]
  58abbc: e1a02000     	mov	r2, r0
  58abc0: e1a00005     	mov	r0, r5
  58abc4: e5929000     	ldr	r9, [r2]
  58abc8: e5928014     	ldr	r8, [r2, #0x14]
  58abcc: e5925004     	ldr	r5, [r2, #0x4]
  58abd0: e5927008     	ldr	r7, [r2, #0x8]
  58abd4: e592a00c     	ldr	r10, [r2, #0xc]
  58abd8: e5926010     	ldr	r6, [r2, #0x10]
  58abdc: e1a0e00f     	mov	lr, pc
  58abe0: e593f144     	ldr	pc, [r3, #0x144]
  58abe4: e1a04000     	mov	r4, r0
  58abe8: e5941078     	ldr	r1, [r4, #0x78]
  58abec: e1a00009     	mov	r0, r9
  58abf0: ebf60f6d     	bl	0x30e9ac <__aeabi_fcmple@plt> @ imm = #-0x27c24c
  58abf4: e3500000     	cmp	r0, #0
  58abf8: 0a00001a     	beq	0x58ac68 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const+0x140> @ imm = #0x68
  58abfc: e1a00005     	mov	r0, r5
  58ac00: e594107c     	ldr	r1, [r4, #0x7c]
  58ac04: ebf60f68     	bl	0x30e9ac <__aeabi_fcmple@plt> @ imm = #-0x27c260
  58ac08: e3500000     	cmp	r0, #0
  58ac0c: 0a000015     	beq	0x58ac68 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const+0x140> @ imm = #0x54
  58ac10: e1a00007     	mov	r0, r7
  58ac14: e5941080     	ldr	r1, [r4, #0x80]
  58ac18: ebf60f63     	bl	0x30e9ac <__aeabi_fcmple@plt> @ imm = #-0x27c274
  58ac1c: e3500000     	cmp	r0, #0
  58ac20: 0a000010     	beq	0x58ac68 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const+0x140> @ imm = #0x40
  58ac24: e1a0000a     	mov	r0, r10
  58ac28: e594106c     	ldr	r1, [r4, #0x6c]
  58ac2c: ebf60e20     	bl	0x30e4b4 <__aeabi_fcmpge@plt> @ imm = #-0x27c780
  58ac30: e3500000     	cmp	r0, #0
  58ac34: 0a00000b     	beq	0x58ac68 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const+0x140> @ imm = #0x2c
  58ac38: e1a00006     	mov	r0, r6
  58ac3c: e5941070     	ldr	r1, [r4, #0x70]
  58ac40: ebf60e1b     	bl	0x30e4b4 <__aeabi_fcmpge@plt> @ imm = #-0x27c794
  58ac44: e3500000     	cmp	r0, #0
  58ac48: 0a000006     	beq	0x58ac68 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const+0x140> @ imm = #0x18
  58ac4c: e1a00008     	mov	r0, r8
  58ac50: e5941074     	ldr	r1, [r4, #0x74]
  58ac54: ebf60e16     	bl	0x30e4b4 <__aeabi_fcmpge@plt> @ imm = #-0x27c7a8
  58ac58: e3500000     	cmp	r0, #0
  58ac5c: e3a00000     	mov	r0, #0
  58ac60: 13a00001     	movne	r0, #1
  58ac64: ea00000d     	b	0x58aca0 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const+0x178> @ imm = #0x34
  58ac68: e3a00001     	mov	r0, #1
  58ac6c: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  58ac70: e5953000     	ldr	r3, [r5]
  58ac74: e1a00005     	mov	r0, r5
  58ac78: e1a0e00f     	mov	lr, pc
  58ac7c: e593f144     	ldr	pc, [r3, #0x144]
  58ac80: e5943000     	ldr	r3, [r4]
  58ac84: e1a05000     	mov	r5, r0
  58ac88: e1a00004     	mov	r0, r4
  58ac8c: e1a0e00f     	mov	lr, pc
  58ac90: e593f034     	ldr	pc, [r3, #0x34]
  58ac94: e1a01000     	mov	r1, r0
  58ac98: e1a00005     	mov	r0, r5
  58ac9c: ebffff7a     	bl	0x58aa8c <glitch::scene::SViewFrustum::intersects3(glitch::core::aabbox3d<float> const&) const> @ imm = #-0x218
  58aca0: e2200001     	eor	r0, r0, #1
  58aca4: e6ef0070     	uxtb	r0, r0
  58aca8: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}

# CSceneManager::drawShadowReceivers() | VA 0x0058b0a8 | size 0x2a8 | file offset 0x58b0a8

0058b0a8 <glitch::scene::CSceneManager::drawShadowReceivers()>:
  58b0a8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  58b0ac: e5902090     	ldr	r2, [r0, #0x90]
  58b0b0: e5903094     	ldr	r3, [r0, #0x94]
  58b0b4: e24dd074     	sub	sp, sp, #116
  58b0b8: e1a07000     	mov	r7, r0
  58b0bc: e1520003     	cmp	r2, r3
  58b0c0: 0a0000a0     	beq	0x58b348 <glitch::scene::CSceneManager::drawShadowReceivers()+0x2a0> @ imm = #0x280
  58b0c4: e5902030     	ldr	r2, [r0, #0x30]
  58b0c8: e5903034     	ldr	r3, [r0, #0x34]
  58b0cc: e1520003     	cmp	r2, r3
  58b0d0: 0a00009c     	beq	0x58b348 <glitch::scene::CSceneManager::drawShadowReceivers()+0x2a0> @ imm = #0x270
  58b0d4: e59020e4     	ldr	r2, [r0, #0xe4]
  58b0d8: e58d2014     	str	r2, [sp, #0x14]
  58b0dc: e5923000     	ldr	r3, [r2]
  58b0e0: e513300c     	ldr	r3, [r3, #-0xc]
  58b0e4: e0823003     	add	r3, r2, r3
  58b0e8: e5932004     	ldr	r2, [r3, #0x4]
  58b0ec: e2822001     	add	r2, r2, #1
  58b0f0: e5832004     	str	r2, [r3, #0x4]
  58b0f4: e5903014     	ldr	r3, [r0, #0x14]
  58b0f8: e1a00003     	mov	r0, r3
  58b0fc: e5933000     	ldr	r3, [r3]
  58b100: e1a0e00f     	mov	lr, pc
  58b104: e593f0d8     	ldr	pc, [r3, #0xd8]
  58b108: e7e73c50     	ubfx	r3, r0, #0x18, #0x8
  58b10c: e7e71450     	ubfx	r1, r0, #0x8, #0x8
  58b110: e7e72850     	ubfx	r2, r0, #0x10, #0x8
  58b114: e5cd1019     	strb	r1, [sp, #0x19]
  58b118: e5cd201a     	strb	r2, [sp, #0x1a]
  58b11c: e5cd301b     	strb	r3, [sp, #0x1b]
  58b120: e5cd0018     	strb	r0, [sp, #0x18]
  58b124: e5973090     	ldr	r3, [r7, #0x90]
  58b128: e58d3010     	str	r3, [sp, #0x10]
  58b12c: e5973094     	ldr	r3, [r7, #0x94]
  58b130: e59dc010     	ldr	r12, [sp, #0x10]
  58b134: e15c0003     	cmp	r12, r3
  58b138: e59d3018     	ldr	r3, [sp, #0x18]
  58b13c: e58d306c     	str	r3, [sp, #0x6c]
  58b140: 0a000072     	beq	0x58b310 <glitch::scene::CSceneManager::drawShadowReceivers()+0x268> @ imm = #0x1c8
  58b144: e2872030     	add	r2, r7, #48
  58b148: e58d200c     	str	r2, [sp, #0xc]
  58b14c: e3a08000     	mov	r8, #0
  58b150: e28da024     	add	r10, sp, #36
  58b154: e59d3010     	ldr	r3, [sp, #0x10]
  58b158: e5970014     	ldr	r0, [r7, #0x14]
  58b15c: e5935000     	ldr	r5, [r3]
  58b160: e5903000     	ldr	r3, [r0]
  58b164: e5d5e01e     	ldrb	lr, [r5, #0x1e]
  58b168: e5d5201c     	ldrb	r2, [r5, #0x1c]
  58b16c: e5d5c01f     	ldrb	r12, [r5, #0x1f]
  58b170: e5d5101d     	ldrb	r1, [r5, #0x1d]
  58b174: e59330dc     	ldr	r3, [r3, #0xdc]
  58b178: e5cde06a     	strb	lr, [sp, #0x6a]
  58b17c: e5cdc06b     	strb	r12, [sp, #0x6b]
  58b180: e5cd2068     	strb	r2, [sp, #0x68]
  58b184: e5cd1069     	strb	r1, [sp, #0x69]
  58b188: e59d1068     	ldr	r1, [sp, #0x68]
  58b18c: e12fff33     	blx	r3
  58b190: e5954014     	ldr	r4, [r5, #0x14]
  58b194: e1a00007     	mov	r0, r7
  58b198: e1a01004     	mov	r1, r4
  58b19c: ebfff7c7     	bl	0x5890c0 <glitch::scene::CSceneManager::setActiveCamera(glitch::scene::ICameraSceneNode*)> @ imm = #-0x20e4
  58b1a0: e1a00005     	mov	r0, r5
  58b1a4: e5971014     	ldr	r1, [r7, #0x14]
  58b1a8: e5953000     	ldr	r3, [r5]
  58b1ac: e1a0e00f     	mov	lr, pc
  58b1b0: e593f014     	ldr	pc, [r3, #0x14]
  58b1b4: e5953000     	ldr	r3, [r5]
  58b1b8: e1a00005     	mov	r0, r5
  58b1bc: e1a0e00f     	mov	lr, pc
  58b1c0: e593f00c     	ldr	pc, [r3, #0xc]
  58b1c4: e2509000     	subs	r9, r0, #0
  58b1c8: da00004a     	ble	0x58b2f8 <glitch::scene::CSceneManager::drawShadowReceivers()+0x250> @ imm = #0x128
  58b1cc: e249b001     	sub	r11, r9, #1
  58b1d0: e3a06000     	mov	r6, #0
  58b1d4: e1a01006     	mov	r1, r6
  58b1d8: e1a00005     	mov	r0, r5
  58b1dc: e5953000     	ldr	r3, [r5]
  58b1e0: e1a0e00f     	mov	lr, pc
  58b1e4: e593f010     	ldr	pc, [r3, #0x10]
  58b1e8: e3a01000     	mov	r1, #0
  58b1ec: e5943000     	ldr	r3, [r4]
  58b1f0: e1a00004     	mov	r0, r4
  58b1f4: e1a0e00f     	mov	lr, pc
  58b1f8: e593f0b8     	ldr	pc, [r3, #0xb8]
  58b1fc: e1a00004     	mov	r0, r4
  58b200: ebffe01e     	bl	0x583280 <glitch::scene::CCameraSceneNode::recalculateMatrices()> @ imm = #-0x7f88
  58b204: e5943000     	ldr	r3, [r4]
  58b208: e1a00004     	mov	r0, r4
  58b20c: e1a0e00f     	mov	lr, pc
  58b210: e593f0f8     	ldr	pc, [r3, #0xf8]
  58b214: e3a02041     	mov	r2, #65
  58b218: e1a01000     	mov	r1, r0
  58b21c: e1a0000a     	mov	r0, r10
  58b220: e5cd8064     	strb	r8, [sp, #0x64]
  58b224: ebf60d8f     	bl	0x30e868 <memcpy@plt>   @ imm = #-0x27c9c4
  58b228: e59d0024     	ldr	r0, [sp, #0x24]
  58b22c: e59d1034     	ldr	r1, [sp, #0x34]
  58b230: e59d2044     	ldr	r2, [sp, #0x44]
  58b234: e59d3054     	ldr	r3, [sp, #0x54]
  58b238: e2800102     	add	r0, r0, #-2147483648
  58b23c: e2811102     	add	r1, r1, #-2147483648
  58b240: e2822102     	add	r2, r2, #-2147483648
  58b244: e2833102     	add	r3, r3, #-2147483648
  58b248: e58d0024     	str	r0, [sp, #0x24]
  58b24c: e58d1034     	str	r1, [sp, #0x34]
  58b250: e58d2044     	str	r2, [sp, #0x44]
  58b254: e58d3054     	str	r3, [sp, #0x54]
  58b258: e5cd8064     	strb	r8, [sp, #0x64]
  58b25c: e3a02000     	mov	r2, #0
  58b260: e1a00004     	mov	r0, r4
  58b264: e1a0100a     	mov	r1, r10
  58b268: e5943000     	ldr	r3, [r4]
  58b26c: e1a0e00f     	mov	lr, pc
  58b270: e593f0f4     	ldr	pc, [r3, #0xf4]
  58b274: e1a00004     	mov	r0, r4
  58b278: e3a01000     	mov	r1, #0
  58b27c: e5943000     	ldr	r3, [r4]
  58b280: e1a0e00f     	mov	lr, pc
  58b284: e593f01c     	ldr	pc, [r3, #0x1c]
  58b288: e1a00005     	mov	r0, r5
  58b28c: e5971014     	ldr	r1, [r7, #0x14]
  58b290: e5953000     	ldr	r3, [r5]
  58b294: e1a0e00f     	mov	lr, pc
  58b298: e593f018     	ldr	pc, [r3, #0x18]
  58b29c: e5973014     	ldr	r3, [r7, #0x14]
  58b2a0: e3a01003     	mov	r1, #3
  58b2a4: e1a00003     	mov	r0, r3
  58b2a8: e5933000     	ldr	r3, [r3]
  58b2ac: e1a0e00f     	mov	lr, pc
  58b2b0: e593f0a8     	ldr	pc, [r3, #0xa8]
  58b2b4: e156000b     	cmp	r6, r11
  58b2b8: 13a03000     	movne	r3, #0
  58b2bc: 03a03001     	moveq	r3, #1
  58b2c0: e3a0c001     	mov	r12, #1
  58b2c4: e1a00007     	mov	r0, r7
  58b2c8: e3a01007     	mov	r1, #7
  58b2cc: e59d200c     	ldr	r2, [sp, #0xc]
  58b2d0: e58dc000     	str	r12, [sp]
  58b2d4: e2866001     	add	r6, r6, #1
  58b2d8: ebffff01     	bl	0x58aee4 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)> @ imm = #-0x3fc
  58b2dc: e5953000     	ldr	r3, [r5]
  58b2e0: e1a00005     	mov	r0, r5
  58b2e4: e5971014     	ldr	r1, [r7, #0x14]
  58b2e8: e1a0e00f     	mov	lr, pc
  58b2ec: e593f01c     	ldr	pc, [r3, #0x1c]
  58b2f0: e1590006     	cmp	r9, r6
  58b2f4: 1affffb6     	bne	0x58b1d4 <glitch::scene::CSceneManager::drawShadowReceivers()+0x12c> @ imm = #-0x128
  58b2f8: e59d2010     	ldr	r2, [sp, #0x10]
  58b2fc: e5973094     	ldr	r3, [r7, #0x94]
  58b300: e2822004     	add	r2, r2, #4
  58b304: e1520003     	cmp	r2, r3
  58b308: e58d2010     	str	r2, [sp, #0x10]
  58b30c: 1affff90     	bne	0x58b154 <glitch::scene::CSceneManager::drawShadowReceivers()+0xac> @ imm = #-0x1c0
  58b310: e5973014     	ldr	r3, [r7, #0x14]
  58b314: e59d106c     	ldr	r1, [sp, #0x6c]
  58b318: e1a00003     	mov	r0, r3
  58b31c: e5933000     	ldr	r3, [r3]
  58b320: e1a0e00f     	mov	lr, pc
  58b324: e593f0dc     	ldr	pc, [r3, #0xdc]
  58b328: e1a00007     	mov	r0, r7
  58b32c: e59d1014     	ldr	r1, [sp, #0x14]
  58b330: ebfff762     	bl	0x5890c0 <glitch::scene::CSceneManager::setActiveCamera(glitch::scene::ICameraSceneNode*)> @ imm = #-0x2278
  58b334: e59dc014     	ldr	r12, [sp, #0x14]
  58b338: e59c3000     	ldr	r3, [r12]
  58b33c: e513000c     	ldr	r0, [r3, #-0xc]
  58b340: e08c0000     	add	r0, r12, r0
  58b344: ebf6488e     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x26ddc8
  58b348: e28dd074     	add	sp, sp, #116
  58b34c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

# CSceneManager::renderLists(IVideoDriver*) | VA 0x00590660 | size 0x860 | file offset 0x590660

00590660 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)>:
  590660: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  590664: e3a05000     	mov	r5, #0
  590668: e24dd0a4     	sub	sp, sp, #164
  59066c: e1a06001     	mov	r6, r1
  590670: e280203c     	add	r2, r0, #60
  590674: e1a01005     	mov	r1, r5
  590678: e3a03001     	mov	r3, #1
  59067c: e1a04000     	mov	r4, r0
  590680: e58d5000     	str	r5, [sp]
  590684: ebffea16     	bl	0x58aee4 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)> @ imm = #-0x57a8
  590688: e1a00006     	mov	r0, r6
  59068c: eb0068fc     	bl	0x5aaa84 <glitch::video::IVideoDriver::deleteAllDynamicLights()> @ imm = #0x1a3f0
  590690: e3003136     	movw	r3, #0x136
  590694: e19610b3     	ldrh	r1, [r6, r3]
  590698: e1a02005     	mov	r2, r5
  59069c: e2843f41     	add	r3, r4, #260
  5906a0: e59600e4     	ldr	r0, [r6, #0xe4]
  5906a4: eb00d02a     	bl	0x5c4754 <boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColorf>(unsigned short, unsigned int, glitch::video::SColorf const&)> @ imm = #0x340a8
  5906a8: e5940048     	ldr	r0, [r4, #0x48]
  5906ac: e594304c     	ldr	r3, [r4, #0x4c]
  5906b0: e59f27fc     	ldr	r2, [pc, #0x7fc]        @ 0x590eb4 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x854>
  5906b4: e0601003     	rsb	r1, r0, r3
  5906b8: e1a01241     	asr	r1, r1, #4
  5906bc: e3510001     	cmp	r1, #1
  5906c0: e08f2002     	add	r2, pc, r2
  5906c4: e58d200c     	str	r2, [sp, #0xc]
  5906c8: 9a000002     	bls	0x5906d8 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x78> @ imm = #0x8
  5906cc: ebf7023b     	bl	0x350fc0 <void glitch::core::heapsort<glitch::scene::CSceneManager::SDistanceNodeEntry>(glitch::scene::CSceneManager::SDistanceNodeEntry*, int)> @ imm = #-0x23f714
  5906d0: e5940048     	ldr	r0, [r4, #0x48]
  5906d4: e594304c     	ldr	r3, [r4, #0x4c]
  5906d8: e1d623bc     	ldrh	r2, [r6, #60]
  5906dc: e0600003     	rsb	r0, r0, r3
  5906e0: e1a01240     	asr	r1, r0, #4
  5906e4: e2845048     	add	r5, r4, #72
  5906e8: e3a08000     	mov	r8, #0
  5906ec: e1510002     	cmp	r1, r2
  5906f0: 21a01002     	movhs	r1, r2
  5906f4: e3a0a000     	mov	r10, #0
  5906f8: e3a0b000     	mov	r11, #0
  5906fc: e1a00005     	mov	r0, r5
  590700: e28d2078     	add	r2, sp, #120
  590704: e58d8078     	str	r8, [sp, #0x78]
  590708: e58d807c     	str	r8, [sp, #0x7c]
  59070c: e1cda8f0     	strd	r10, r11, [sp, #128]
  590710: ebf704e8     	bl	0x351ab8 <std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>::resize(unsigned int, glitch::scene::CSceneManager::SDistanceNodeEntry const&)> @ imm = #-0x23ec60
  590714: e594c04c     	ldr	r12, [r4, #0x4c]
  590718: e5947048     	ldr	r7, [r4, #0x48]
  59071c: e5943050     	ldr	r3, [r4, #0x50]
  590720: e3a0e001     	mov	lr, #1
  590724: e067700c     	rsb	r7, r7, r12
  590728: e15c0003     	cmp	r12, r3
  59072c: e58d806c     	str	r8, [sp, #0x6c]
  590730: e1cda7f0     	strd	r10, r11, [sp, #112]
  590734: e1a07247     	asr	r7, r7, #4
  590738: e584e174     	str	lr, [r4, #0x174]
  59073c: e58d8068     	str	r8, [sp, #0x68]
  590740: 0a0001d3     	beq	0x590e94 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x834> @ imm = #0x74c
  590744: e28d3068     	add	r3, sp, #104
  590748: e893000f     	ldm	r3, {r0, r1, r2, r3}
  59074c: e88c000f     	stm	r12, {r0, r1, r2, r3}
  590750: e594304c     	ldr	r3, [r4, #0x4c]
  590754: e2833010     	add	r3, r3, #16
  590758: e584304c     	str	r3, [r4, #0x4c]
  59075c: e5943048     	ldr	r3, [r4, #0x48]
  590760: e594c0a8     	ldr	r12, [r4, #0xa8]
  590764: e59400ac     	ldr	r0, [r4, #0xac]
  590768: e5932004     	ldr	r2, [r3, #0x4]
  59076c: e59410b0     	ldr	r1, [r4, #0xb0]
  590770: e5933000     	ldr	r3, [r3]
  590774: e3a08000     	mov	r8, #0
  590778: e3570000     	cmp	r7, #0
  59077c: e584c09c     	str	r12, [r4, #0x9c]
  590780: e58400a0     	str	r0, [r4, #0xa0]
  590784: e58410a4     	str	r1, [r4, #0xa4]
  590788: e58420ac     	str	r2, [r4, #0xac]
  59078c: e58430a8     	str	r3, [r4, #0xa8]
  590790: e58480b0     	str	r8, [r4, #0xb0]
  590794: 0a000016     	beq	0x5907f4 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x194> @ imm = #0x58
  590798: e1a09008     	mov	r9, r8
  59079c: ea000000     	b	0x5907a4 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x144> @ imm = #0x0
  5907a0: e59430a8     	ldr	r3, [r4, #0xa8]
  5907a4: e5952000     	ldr	r2, [r5]
  5907a8: e2888001     	add	r8, r8, #1
  5907ac: e59410ac     	ldr	r1, [r4, #0xac]
  5907b0: e0820208     	add	r0, r2, r8, lsl #4
  5907b4: e792c208     	ldr	r12, [r2, r8, lsl #4]
  5907b8: e5900004     	ldr	r0, [r0, #0x4]
  5907bc: e59420b0     	ldr	r2, [r4, #0xb0]
  5907c0: e584c0a8     	str	r12, [r4, #0xa8]
  5907c4: e58400ac     	str	r0, [r4, #0xac]
  5907c8: e58420a4     	str	r2, [r4, #0xa4]
  5907cc: e584309c     	str	r3, [r4, #0x9c]
  5907d0: e58410a0     	str	r1, [r4, #0xa0]
  5907d4: e58490b0     	str	r9, [r4, #0xb0]
  5907d8: e1a00003     	mov	r0, r3
  5907dc: e5933000     	ldr	r3, [r3]
  5907e0: e1a0e00f     	mov	lr, pc
  5907e4: e593f01c     	ldr	pc, [r3, #0x1c]
  5907e8: e1570008     	cmp	r7, r8
  5907ec: 1affffeb     	bne	0x5907a0 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x140> @ imm = #-0x54
  5907f0: e59430a8     	ldr	r3, [r4, #0xa8]
  5907f4: e594204c     	ldr	r2, [r4, #0x4c]
  5907f8: e594c0ac     	ldr	r12, [r4, #0xac]
  5907fc: e59400b0     	ldr	r0, [r4, #0xb0]
  590800: e512100c     	ldr	r1, [r2, #-0xc]
  590804: e5122010     	ldr	r2, [r2, #-0x10]
  590808: e3a07000     	mov	r7, #0
  59080c: e584309c     	str	r3, [r4, #0x9c]
  590810: e584c0a0     	str	r12, [r4, #0xa0]
  590814: e58400a4     	str	r0, [r4, #0xa4]
  590818: e58420a8     	str	r2, [r4, #0xa8]
  59081c: e58410ac     	str	r1, [r4, #0xac]
  590820: e58470b0     	str	r7, [r4, #0xb0]
  590824: e1a00005     	mov	r0, r5
  590828: e1a01007     	mov	r1, r7
  59082c: e28d2058     	add	r2, sp, #88
  590830: e3a08000     	mov	r8, #0
  590834: e3a09000     	mov	r9, #0
  590838: e1cd86f0     	strd	r8, r9, [sp, #96]
  59083c: e58d7058     	str	r7, [sp, #0x58]
  590840: e58d705c     	str	r7, [sp, #0x5c]
  590844: ebf7049b     	bl	0x351ab8 <std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>::resize(unsigned int, glitch::scene::CSceneManager::SDistanceNodeEntry const&)> @ imm = #-0x23ed94
  590848: e3a01002     	mov	r1, #2
  59084c: e3a03001     	mov	r3, #1
  590850: e1a00004     	mov	r0, r4
  590854: e284206c     	add	r2, r4, #108
  590858: e58d7000     	str	r7, [sp]
  59085c: ebffe9a0     	bl	0x58aee4 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)> @ imm = #-0x5980
  590860: e594e078     	ldr	lr, [r4, #0x78]
  590864: e594307c     	ldr	r3, [r4, #0x7c]
  590868: e06e1003     	rsb	r1, lr, r3
  59086c: e1a01241     	asr	r1, r1, #4
  590870: e3510001     	cmp	r1, #1
  590874: 9a000003     	bls	0x590888 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x228> @ imm = #0xc
  590878: e1a0000e     	mov	r0, lr
  59087c: ebf71a8a     	bl	0x3572ac <void glitch::core::heapsort<glitch::scene::CSceneManager::SDefaultNodeEntry>(glitch::scene::CSceneManager::SDefaultNodeEntry*, int)> @ imm = #-0x2395d8
  590880: e594e078     	ldr	lr, [r4, #0x78]
  590884: e594307c     	ldr	r3, [r4, #0x7c]
  590888: e5941080     	ldr	r1, [r4, #0x80]
  59088c: e3a02000     	mov	r2, #0
  590890: e06e5003     	rsb	r5, lr, r3
  590894: e1530001     	cmp	r3, r1
  590898: e3a01004     	mov	r1, #4
  59089c: e5841174     	str	r1, [r4, #0x174]
  5908a0: e1a05155     	asr	r5, r5, r1
  5908a4: e58d2048     	str	r2, [sp, #0x48]
  5908a8: e58d204c     	str	r2, [sp, #0x4c]
  5908ac: e58d2050     	str	r2, [sp, #0x50]
  5908b0: e58d2054     	str	r2, [sp, #0x54]
  5908b4: e2847078     	add	r7, r4, #120
  5908b8: 0a00016c     	beq	0x590e70 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x810> @ imm = #0x5b0
  5908bc: e5832000     	str	r2, [r3]
  5908c0: e59d204c     	ldr	r2, [sp, #0x4c]
  5908c4: e5832004     	str	r2, [r3, #0x4]
  5908c8: e59d2050     	ldr	r2, [sp, #0x50]
  5908cc: e5832008     	str	r2, [r3, #0x8]
  5908d0: e3520000     	cmp	r2, #0
  5908d4: 15921000     	ldrne	r1, [r2]
  5908d8: 12811001     	addne	r1, r1, #1
  5908dc: 15821000     	strne	r1, [r2]
  5908e0: e59d2054     	ldr	r2, [sp, #0x54]
  5908e4: e583200c     	str	r2, [r3, #0xc]
  5908e8: e594307c     	ldr	r3, [r4, #0x7c]
  5908ec: e2833010     	add	r3, r3, #16
  5908f0: e584307c     	str	r3, [r4, #0x7c]
  5908f4: e59d8050     	ldr	r8, [sp, #0x50]
  5908f8: e3580000     	cmp	r8, #0
  5908fc: 0a000004     	beq	0x590914 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x2b4> @ imm = #0x10
  590900: e5983000     	ldr	r3, [r8]
  590904: e2433001     	sub	r3, r3, #1
  590908: e3530000     	cmp	r3, #0
  59090c: e5883000     	str	r3, [r8]
  590910: 0a00012b     	beq	0x590dc4 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x764> @ imm = #0x4ac
  590914: e594e078     	ldr	lr, [r4, #0x78]
  590918: e59480a8     	ldr	r8, [r4, #0xa8]
  59091c: e594c0ac     	ldr	r12, [r4, #0xac]
  590920: e59e3000     	ldr	r3, [lr]
  590924: e59e1004     	ldr	r1, [lr, #0x4]
  590928: e59e200c     	ldr	r2, [lr, #0xc]
  59092c: e59400b0     	ldr	r0, [r4, #0xb0]
  590930: e3550000     	cmp	r5, #0
  590934: e584809c     	str	r8, [r4, #0x9c]
  590938: e584c0a0     	str	r12, [r4, #0xa0]
  59093c: e58400a4     	str	r0, [r4, #0xa4]
  590940: e58410ac     	str	r1, [r4, #0xac]
  590944: e58420b0     	str	r2, [r4, #0xb0]
  590948: e58430a8     	str	r3, [r4, #0xa8]
  59094c: 0a000018     	beq	0x5909b4 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x354> @ imm = #0x60
  590950: e3a08000     	mov	r8, #0
  590954: ea000000     	b	0x59095c <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x2fc> @ imm = #0x0
  590958: e59430a8     	ldr	r3, [r4, #0xa8]
  59095c: e5970000     	ldr	r0, [r7]
  590960: e2888001     	add	r8, r8, #1
  590964: e59410ac     	ldr	r1, [r4, #0xac]
  590968: e0802208     	add	r2, r0, r8, lsl #4
  59096c: e790e208     	ldr	lr, [r0, r8, lsl #4]
  590970: e592c004     	ldr	r12, [r2, #0x4]
  590974: e592000c     	ldr	r0, [r2, #0xc]
  590978: e59420b0     	ldr	r2, [r4, #0xb0]
  59097c: e584e0a8     	str	lr, [r4, #0xa8]
  590980: e58400b0     	str	r0, [r4, #0xb0]
  590984: e584c0ac     	str	r12, [r4, #0xac]
  590988: e58420a4     	str	r2, [r4, #0xa4]
  59098c: e584309c     	str	r3, [r4, #0x9c]
  590990: e58410a0     	str	r1, [r4, #0xa0]
  590994: e1a00003     	mov	r0, r3
  590998: e5933000     	ldr	r3, [r3]
  59099c: e1a0e00f     	mov	lr, pc
  5909a0: e593f01c     	ldr	pc, [r3, #0x1c]
  5909a4: e1550008     	cmp	r5, r8
  5909a8: 1affffea     	bne	0x590958 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x2f8> @ imm = #-0x58
  5909ac: e59430a8     	ldr	r3, [r4, #0xa8]
  5909b0: e594e078     	ldr	lr, [r4, #0x78]
  5909b4: e594207c     	ldr	r2, [r4, #0x7c]
  5909b8: e594b0ac     	ldr	r11, [r4, #0xac]
  5909bc: e59490b0     	ldr	r9, [r4, #0xb0]
  5909c0: e2421010     	sub	r1, r2, #16
  5909c4: e591000c     	ldr	r0, [r1, #0xc]
  5909c8: e5915004     	ldr	r5, [r1, #0x4]
  5909cc: e5128010     	ldr	r8, [r2, #-0x10]
  5909d0: e06ec002     	rsb	r12, lr, r2
  5909d4: e3a01000     	mov	r1, #0
  5909d8: e1b0c24c     	asrs	r12, r12, #4
  5909dc: e584309c     	str	r3, [r4, #0x9c]
  5909e0: e584b0a0     	str	r11, [r4, #0xa0]
  5909e4: e58490a4     	str	r9, [r4, #0xa4]
  5909e8: e58480a8     	str	r8, [r4, #0xa8]
  5909ec: e58450ac     	str	r5, [r4, #0xac]
  5909f0: e58400b0     	str	r0, [r4, #0xb0]
  5909f4: e58d1044     	str	r1, [sp, #0x44]
  5909f8: e58d1038     	str	r1, [sp, #0x38]
  5909fc: e58d103c     	str	r1, [sp, #0x3c]
  590a00: e58d1040     	str	r1, [sp, #0x40]
  590a04: 0a000109     	beq	0x590e30 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x7d0> @ imm = #0x424
  590a08: e152000e     	cmp	r2, lr
  590a0c: 0a00000f     	beq	0x590a50 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x3f0> @ imm = #0x3c
  590a10: e1a00007     	mov	r0, r7
  590a14: e1a0100e     	mov	r1, lr
  590a18: e28d3094     	add	r3, sp, #148
  590a1c: ebf718a5     	bl	0x356cb8 <std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::scene::CSceneManager::SDefaultNodeEntry*, glitch::scene::CSceneManager::SDefaultNodeEntry*, std::__false_type const&)> @ imm = #-0x239d6c
  590a20: e59d5040     	ldr	r5, [sp, #0x40]
  590a24: e3550000     	cmp	r5, #0
  590a28: 0a000008     	beq	0x590a50 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x3f0> @ imm = #0x20
  590a2c: e5953000     	ldr	r3, [r5]
  590a30: e2433001     	sub	r3, r3, #1
  590a34: e3530000     	cmp	r3, #0
  590a38: e5853000     	str	r3, [r5]
  590a3c: 1a000003     	bne	0x590a50 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x3f0> @ imm = #0xc
  590a40: e1a00005     	mov	r0, r5
  590a44: eb00ed4b     	bl	0x5cbf78 <glitch::video::CMaterial::~CMaterial()> @ imm = #0x3b52c
  590a48: e1a00005     	mov	r0, r5
  590a4c: ebf5f617     	bl	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x2827a4
  590a50: e5942054     	ldr	r2, [r4, #0x54]
  590a54: e5945058     	ldr	r5, [r4, #0x58]
  590a58: e3a03000     	mov	r3, #0
  590a5c: e58d3000     	str	r3, [sp]
  590a60: e0625005     	rsb	r5, r2, r5
  590a64: e1a01003     	mov	r1, r3
  590a68: e7e751d5     	ubfx	r5, r5, #0x3, #0x8
  590a6c: e596c000     	ldr	r12, [r6]
  590a70: e1a00006     	mov	r0, r6
  590a74: e1a02003     	mov	r2, r3
  590a78: e1a0e00f     	mov	lr, pc
  590a7c: e59cf0d4     	ldr	pc, [r12, #0xd4]
  590a80: e3550001     	cmp	r5, #1
  590a84: 9a0000d3     	bls	0x590dd8 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x778> @ imm = #0x34c
  590a88: e5943054     	ldr	r3, [r4, #0x54]
  590a8c: e5942058     	ldr	r2, [r4, #0x58]
  590a90: e1a00003     	mov	r0, r3
  590a94: e0633002     	rsb	r3, r3, r2
  590a98: e1a011c3     	asr	r1, r3, #3
  590a9c: ebf70193     	bl	0x3510f0 <void glitch::core::heapsort<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(glitch::scene::CSceneManager::SRenderDataSortNodeEntry*, int)> @ imm = #-0x23f9b4
  590aa0: e1a00004     	mov	r0, r4
  590aa4: e2842054     	add	r2, r4, #84
  590aa8: e3a01005     	mov	r1, #5
  590aac: ebffe87e     	bl	0x58acac <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool) (.clone.8)> @ imm = #-0x5e08
  590ab0: e3a03001     	mov	r3, #1
  590ab4: e58d3000     	str	r3, [sp]
  590ab8: e1a01003     	mov	r1, r3
  590abc: e596c000     	ldr	r12, [r6]
  590ac0: e1a00006     	mov	r0, r6
  590ac4: e1a02003     	mov	r2, r3
  590ac8: e1a0e00f     	mov	lr, pc
  590acc: e59cf0d4     	ldr	pc, [r12, #0xd4]
  590ad0: e59db00c     	ldr	r11, [sp, #0xc]
  590ad4: e59f23dc     	ldr	r2, [pc, #0x3dc]        @ 0x590eb8 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x858>
  590ad8: e59f53dc     	ldr	r5, [pc, #0x3dc]        @ 0x590ebc <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x85c>
  590adc: e79b1002     	ldr	r1, [r11, r2]
  590ae0: e79b3005     	ldr	r3, [r11, r5]
  590ae4: e5d11000     	ldrb	r1, [r1]
  590ae8: e5932000     	ldr	r2, [r3]
  590aec: e5c21008     	strb	r1, [r2, #0x8]
  590af0: e5930000     	ldr	r0, [r3]
  590af4: e3500000     	cmp	r0, #0
  590af8: 03a020ff     	moveq	r2, #255
  590afc: 0a000001     	beq	0x590b08 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x4a8> @ imm = #0x4
  590b00: eb00d48b     	bl	0x5c5d34 <glitch::video::CMaterial::getTechnique() const> @ imm = #0x3522c
  590b04: e1a02000     	mov	r2, r0
  590b08: e59d000c     	ldr	r0, [sp, #0xc]
  590b0c: e3a03000     	mov	r3, #0
  590b10: e7901005     	ldr	r1, [r0, r5]
  590b14: e1a00006     	mov	r0, r6
  590b18: eb007212     	bl	0x5ad368 <glitch::video::IVideoDriver::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&, unsigned char, boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const*)> @ imm = #0x1c848
  590b1c: e1a00006     	mov	r0, r6
  590b20: e28410f4     	add	r1, r4, #244
  590b24: eb006f89     	bl	0x5ac950 <glitch::video::IVideoDriver::drawFullScreenQuad(glitch::video::SColor const*)> @ imm = #0x1be24
  590b28: e5940060     	ldr	r0, [r4, #0x60]
  590b2c: e5941064     	ldr	r1, [r4, #0x64]
  590b30: e0601001     	rsb	r1, r0, r1
  590b34: e1a011c1     	asr	r1, r1, #3
  590b38: e6ef3071     	uxtb	r3, r1
  590b3c: e3530001     	cmp	r3, #1
  590b40: 9a000000     	bls	0x590b48 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x4e8> @ imm = #0x0
  590b44: ebf70169     	bl	0x3510f0 <void glitch::core::heapsort<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(glitch::scene::CSceneManager::SRenderDataSortNodeEntry*, int)> @ imm = #-0x23fa5c
  590b48: e3a01006     	mov	r1, #6
  590b4c: e2842060     	add	r2, r4, #96
  590b50: e1a00004     	mov	r0, r4
  590b54: ebffe854     	bl	0x58acac <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool) (.clone.8)> @ imm = #-0x5eb0
  590b58: e594e084     	ldr	lr, [r4, #0x84]
  590b5c: e5943088     	ldr	r3, [r4, #0x88]
  590b60: e06e2003     	rsb	r2, lr, r3
  590b64: e1a02142     	asr	r2, r2, #2
  590b68: e0821082     	add	r1, r2, r2, lsl #1
  590b6c: e0811201     	add	r1, r1, r1, lsl #4
  590b70: e0811401     	add	r1, r1, r1, lsl #8
  590b74: e0811801     	add	r1, r1, r1, lsl #16
  590b78: e0821101     	add	r1, r2, r1, lsl #2
  590b7c: e3510001     	cmp	r1, #1
  590b80: 9a000003     	bls	0x590b94 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x534> @ imm = #0xc
  590b84: e1a0000e     	mov	r0, lr
  590b88: ebf718de     	bl	0x356f08 <void glitch::core::heapsort<glitch::scene::CSceneManager::STransparentNodeEntry>(glitch::scene::CSceneManager::STransparentNodeEntry*, int)> @ imm = #-0x239c88
  590b8c: e594e084     	ldr	lr, [r4, #0x84]
  590b90: e5943088     	ldr	r3, [r4, #0x88]
  590b94: e06ee003     	rsb	lr, lr, r3
  590b98: e1a0e14e     	asr	lr, lr, #2
  590b9c: e594208c     	ldr	r2, [r4, #0x8c]
  590ba0: e08e508e     	add	r5, lr, lr, lsl #1
  590ba4: e3a01008     	mov	r1, #8
  590ba8: e0855205     	add	r5, r5, r5, lsl #4
  590bac: e5841174     	str	r1, [r4, #0x174]
  590bb0: e0855405     	add	r5, r5, r5, lsl #8
  590bb4: e1530002     	cmp	r3, r2
  590bb8: e0855805     	add	r5, r5, r5, lsl #16
  590bbc: e3a02000     	mov	r2, #0
  590bc0: e3a01000     	mov	r1, #0
  590bc4: e08e5105     	add	r5, lr, r5, lsl #2
  590bc8: e58d1034     	str	r1, [sp, #0x34]
  590bcc: e58d2024     	str	r2, [sp, #0x24]
  590bd0: e58d2028     	str	r2, [sp, #0x28]
  590bd4: e58d202c     	str	r2, [sp, #0x2c]
  590bd8: e58d2030     	str	r2, [sp, #0x30]
  590bdc: e2846084     	add	r6, r4, #132
  590be0: 0a000099     	beq	0x590e4c <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x7ec> @ imm = #0x264
  590be4: e5832000     	str	r2, [r3]
  590be8: e59d2028     	ldr	r2, [sp, #0x28]
  590bec: e5832004     	str	r2, [r3, #0x4]
  590bf0: e59d202c     	ldr	r2, [sp, #0x2c]
  590bf4: e5832008     	str	r2, [r3, #0x8]
  590bf8: e3520000     	cmp	r2, #0
  590bfc: 15921000     	ldrne	r1, [r2]
  590c00: 12811001     	addne	r1, r1, #1
  590c04: 15821000     	strne	r1, [r2]
  590c08: e59d2030     	ldr	r2, [sp, #0x30]
  590c0c: e583200c     	str	r2, [r3, #0xc]
  590c10: e59d2034     	ldr	r2, [sp, #0x34]
  590c14: e5832010     	str	r2, [r3, #0x10]
  590c18: e5943088     	ldr	r3, [r4, #0x88]
  590c1c: e2833014     	add	r3, r3, #20
  590c20: e5843088     	str	r3, [r4, #0x88]
  590c24: e59d702c     	ldr	r7, [sp, #0x2c]
  590c28: e3570000     	cmp	r7, #0
  590c2c: 0a000008     	beq	0x590c54 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x5f4> @ imm = #0x20
  590c30: e5973000     	ldr	r3, [r7]
  590c34: e2433001     	sub	r3, r3, #1
  590c38: e3530000     	cmp	r3, #0
  590c3c: e5873000     	str	r3, [r7]
  590c40: 1a000003     	bne	0x590c54 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x5f4> @ imm = #0xc
  590c44: e1a00007     	mov	r0, r7
  590c48: eb00ecca     	bl	0x5cbf78 <glitch::video::CMaterial::~CMaterial()> @ imm = #0x3b328
  590c4c: e1a00007     	mov	r0, r7
  590c50: ebf5f596     	bl	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x2829a8
  590c54: e594e084     	ldr	lr, [r4, #0x84]
  590c58: e59470a8     	ldr	r7, [r4, #0xa8]
  590c5c: e594c0ac     	ldr	r12, [r4, #0xac]
  590c60: e59e3000     	ldr	r3, [lr]
  590c64: e59e1004     	ldr	r1, [lr, #0x4]
  590c68: e59e200c     	ldr	r2, [lr, #0xc]
  590c6c: e59400b0     	ldr	r0, [r4, #0xb0]
  590c70: e3550000     	cmp	r5, #0
  590c74: e584709c     	str	r7, [r4, #0x9c]
  590c78: e584c0a0     	str	r12, [r4, #0xa0]
  590c7c: e58400a4     	str	r0, [r4, #0xa4]
  590c80: e58410ac     	str	r1, [r4, #0xac]
  590c84: e58420b0     	str	r2, [r4, #0xb0]
  590c88: e58430a8     	str	r3, [r4, #0xa8]
  590c8c: 0a00001a     	beq	0x590cfc <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x69c> @ imm = #0x68
  590c90: e3a07014     	mov	r7, #20
  590c94: e3a08000     	mov	r8, #0
  590c98: ea000000     	b	0x590ca0 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x640> @ imm = #0x0
  590c9c: e59430a8     	ldr	r3, [r4, #0xa8]
  590ca0: e5960000     	ldr	r0, [r6]
  590ca4: e59410ac     	ldr	r1, [r4, #0xac]
  590ca8: e594e0b0     	ldr	lr, [r4, #0xb0]
  590cac: e0802007     	add	r2, r0, r7
  590cb0: e790c007     	ldr	r12, [r0, r7]
  590cb4: e592000c     	ldr	r0, [r2, #0xc]
  590cb8: e5922004     	ldr	r2, [r2, #0x4]
  590cbc: e584e0a4     	str	lr, [r4, #0xa4]
  590cc0: e58400b0     	str	r0, [r4, #0xb0]
  590cc4: e584c0a8     	str	r12, [r4, #0xa8]
  590cc8: e58420ac     	str	r2, [r4, #0xac]
  590ccc: e584309c     	str	r3, [r4, #0x9c]
  590cd0: e58410a0     	str	r1, [r4, #0xa0]
  590cd4: e1a00003     	mov	r0, r3
  590cd8: e2888001     	add	r8, r8, #1
  590cdc: e5933000     	ldr	r3, [r3]
  590ce0: e1a0e00f     	mov	lr, pc
  590ce4: e593f01c     	ldr	pc, [r3, #0x1c]
  590ce8: e1550008     	cmp	r5, r8
  590cec: e2877014     	add	r7, r7, #20
  590cf0: 1affffe9     	bne	0x590c9c <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x63c> @ imm = #-0x5c
  590cf4: e59430a8     	ldr	r3, [r4, #0xa8]
  590cf8: e594e084     	ldr	lr, [r4, #0x84]
  590cfc: e5942088     	ldr	r2, [r4, #0x88]
  590d00: e594a0ac     	ldr	r10, [r4, #0xac]
  590d04: e59480b0     	ldr	r8, [r4, #0xb0]
  590d08: e06e1002     	rsb	r1, lr, r2
  590d0c: e1a01141     	asr	r1, r1, #2
  590d10: e2425014     	sub	r5, r2, #20
  590d14: e081c081     	add	r12, r1, r1, lsl #1
  590d18: e595000c     	ldr	r0, [r5, #0xc]
  590d1c: e08cc20c     	add	r12, r12, r12, lsl #4
  590d20: e5127014     	ldr	r7, [r2, #-0x14]
  590d24: e08cc40c     	add	r12, r12, r12, lsl #8
  590d28: e5955004     	ldr	r5, [r5, #0x4]
  590d2c: e08cc80c     	add	r12, r12, r12, lsl #16
  590d30: e584309c     	str	r3, [r4, #0x9c]
  590d34: e091c10c     	adds	r12, r1, r12, lsl #2
  590d38: e3a03000     	mov	r3, #0
  590d3c: e3a01000     	mov	r1, #0
  590d40: e584a0a0     	str	r10, [r4, #0xa0]
  590d44: e58480a4     	str	r8, [r4, #0xa4]
  590d48: e58470a8     	str	r7, [r4, #0xa8]
  590d4c: e58450ac     	str	r5, [r4, #0xac]
  590d50: e58400b0     	str	r0, [r4, #0xb0]
  590d54: e58d101c     	str	r1, [sp, #0x1c]
  590d58: e58d3020     	str	r3, [sp, #0x20]
  590d5c: e58d1010     	str	r1, [sp, #0x10]
  590d60: e58d1014     	str	r1, [sp, #0x14]
  590d64: e58d1018     	str	r1, [sp, #0x18]
  590d68: 0a000029     	beq	0x590e14 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x7b4> @ imm = #0xa4
  590d6c: e152000e     	cmp	r2, lr
  590d70: 0a00000f     	beq	0x590db4 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x754> @ imm = #0x3c
  590d74: e1a00006     	mov	r0, r6
  590d78: e1a0100e     	mov	r1, lr
  590d7c: e28d308c     	add	r3, sp, #140
  590d80: ebf718b5     	bl	0x35705c <std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::scene::CSceneManager::STransparentNodeEntry*, glitch::scene::CSceneManager::STransparentNodeEntry*, std::__false_type const&)> @ imm = #-0x239d2c
  590d84: e59d5018     	ldr	r5, [sp, #0x18]
  590d88: e3550000     	cmp	r5, #0
  590d8c: 0a000008     	beq	0x590db4 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x754> @ imm = #0x20
  590d90: e5953000     	ldr	r3, [r5]
  590d94: e2433001     	sub	r3, r3, #1
  590d98: e3530000     	cmp	r3, #0
  590d9c: e5853000     	str	r3, [r5]
  590da0: 1a000003     	bne	0x590db4 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x754> @ imm = #0xc
  590da4: e1a00005     	mov	r0, r5
  590da8: eb00ec72     	bl	0x5cbf78 <glitch::video::CMaterial::~CMaterial()> @ imm = #0x3b1c8
  590dac: e1a00005     	mov	r0, r5
  590db0: ebf5f53e     	bl	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x282b08
  590db4: e1a00004     	mov	r0, r4
  590db8: ebffe964     	bl	0x58b350 <glitch::scene::CSceneManager::clearDeletionList()> @ imm = #-0x5a70
  590dbc: e28dd0a4     	add	sp, sp, #164
  590dc0: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  590dc4: e1a00008     	mov	r0, r8
  590dc8: eb00ec6a     	bl	0x5cbf78 <glitch::video::CMaterial::~CMaterial()> @ imm = #0x3b1a8
  590dcc: e1a00008     	mov	r0, r8
  590dd0: ebf5f536     	bl	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x282b28
  590dd4: eafffece     	b	0x590914 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x2b4> @ imm = #-0x4c8
  590dd8: e1a00004     	mov	r0, r4
  590ddc: e3a01005     	mov	r1, #5
  590de0: e2842054     	add	r2, r4, #84
  590de4: ebffe7b0     	bl	0x58acac <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool) (.clone.8)> @ imm = #-0x6140
  590de8: e3a03001     	mov	r3, #1
  590dec: e58d3000     	str	r3, [sp]
  590df0: e1a01003     	mov	r1, r3
  590df4: e596c000     	ldr	r12, [r6]
  590df8: e1a00006     	mov	r0, r6
  590dfc: e1a02003     	mov	r2, r3
  590e00: e1a0e00f     	mov	lr, pc
  590e04: e59cf0d4     	ldr	pc, [r12, #0xd4]
  590e08: e3550000     	cmp	r5, #0
  590e0c: 0affff45     	beq	0x590b28 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x4c8> @ imm = #-0x2ec
  590e10: eaffff2e     	b	0x590ad0 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x470> @ imm = #-0x348
  590e14: e1a01002     	mov	r1, r2
  590e18: e1a00006     	mov	r0, r6
  590e1c: e1a0200c     	mov	r2, r12
  590e20: e28d3010     	add	r3, sp, #16
  590e24: ebf71bb2     	bl	0x357cf4 <std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::scene::CSceneManager::STransparentNodeEntry*, unsigned int, glitch::scene::CSceneManager::STransparentNodeEntry const&)> @ imm = #-0x239138
  590e28: e59d5018     	ldr	r5, [sp, #0x18]
  590e2c: eaffffd5     	b	0x590d88 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x728> @ imm = #-0xac
  590e30: e1a01002     	mov	r1, r2
  590e34: e1a00007     	mov	r0, r7
  590e38: e1a0200c     	mov	r2, r12
  590e3c: e28d3038     	add	r3, sp, #56
  590e40: ebf71a26     	bl	0x3576e0 <std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::scene::CSceneManager::SDefaultNodeEntry*, unsigned int, glitch::scene::CSceneManager::SDefaultNodeEntry const&)> @ imm = #-0x239768
  590e44: e59d5040     	ldr	r5, [sp, #0x40]
  590e48: eafffef5     	b	0x590a24 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x3c4> @ imm = #-0x42c
  590e4c: e3a0c001     	mov	r12, #1
  590e50: e1a01003     	mov	r1, r3
  590e54: e1a00006     	mov	r0, r6
  590e58: e28d2024     	add	r2, sp, #36
  590e5c: e28d3090     	add	r3, sp, #144
  590e60: e58dc004     	str	r12, [sp, #0x4]
  590e64: e58dc000     	str	r12, [sp]
  590e68: ebf716ab     	bl	0x35691c <std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::CSceneManager::STransparentNodeEntry*, glitch::scene::CSceneManager::STransparentNodeEntry const&, std::__false_type const&, unsigned int, bool)> @ imm = #-0x23a554
  590e6c: eaffff6c     	b	0x590c24 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x5c4> @ imm = #-0x250
  590e70: e3a0c001     	mov	r12, #1
  590e74: e1a01003     	mov	r1, r3
  590e78: e1a00007     	mov	r0, r7
  590e7c: e28d2048     	add	r2, sp, #72
  590e80: e28d3098     	add	r3, sp, #152
  590e84: e58dc004     	str	r12, [sp, #0x4]
  590e88: e58dc000     	str	r12, [sp]
  590e8c: ebf703fc     	bl	0x351e84 <std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::CSceneManager::SDefaultNodeEntry*, glitch::scene::CSceneManager::SDefaultNodeEntry const&, std::__false_type const&, unsigned int, bool)> @ imm = #-0x23f010
  590e90: eafffe97     	b	0x5908f4 <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0x294> @ imm = #-0x5a4
  590e94: e1a0100c     	mov	r1, r12
  590e98: e1a00005     	mov	r0, r5
  590e9c: e28d2068     	add	r2, sp, #104
  590ea0: e28d309c     	add	r3, sp, #156
  590ea4: e58de004     	str	lr, [sp, #0x4]
  590ea8: e58de000     	str	lr, [sp]
  590eac: ebf7029b     	bl	0x351920 <std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::CSceneManager::SDistanceNodeEntry*, glitch::scene::CSceneManager::SDistanceNodeEntry const&, std::__false_type const&, unsigned int, bool)> @ imm = #-0x23f594
  590eb0: eafffe29     	b	0x59075c <glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)+0xfc> @ imm = #-0x75c
  590eb4: d0 43 40 00  	.word	0x004043d0
  590eb8: 4c 16 00 00  	.word	0x0000164c
  590ebc: 04 24 00 00  	.word	0x00002404

# CSceneManager::renderList<SUnsortedNodeEntry>(...) | VA 0x0058aee4 | size 0x1c4 | file offset 0x58aee4

0058aee4 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)>:
  58aee4: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  58aee8: e5801174     	str	r1, [r0, #0x174]
  58aeec: e5921004     	ldr	r1, [r2, #0x4]
  58aef0: e5926000     	ldr	r6, [r2]
  58aef4: e1a04000     	mov	r4, r0
  58aef8: e5920008     	ldr	r0, [r2, #0x8]
  58aefc: e24dd020     	sub	sp, sp, #32
  58af00: e1a05002     	mov	r5, r2
  58af04: e0666001     	rsb	r6, r6, r1
  58af08: e3a02000     	mov	r2, #0
  58af0c: e1510000     	cmp	r1, r0
  58af10: e1a08003     	mov	r8, r3
  58af14: e1a061c6     	asr	r6, r6, #3
  58af18: e58d2014     	str	r2, [sp, #0x14]
  58af1c: e58d2018     	str	r2, [sp, #0x18]
  58af20: e5dd7040     	ldrb	r7, [sp, #0x40]
  58af24: 0a000057     	beq	0x58b088 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)+0x1a4> @ imm = #0x15c
  58af28: e5812000     	str	r2, [r1]
  58af2c: e59d3018     	ldr	r3, [sp, #0x18]
  58af30: e5813004     	str	r3, [r1, #0x4]
  58af34: e5953004     	ldr	r3, [r5, #0x4]
  58af38: e2833008     	add	r3, r3, #8
  58af3c: e5853004     	str	r3, [r5, #0x4]
  58af40: e5953000     	ldr	r3, [r5]
  58af44: e594c0a8     	ldr	r12, [r4, #0xa8]
  58af48: e59400ac     	ldr	r0, [r4, #0xac]
  58af4c: e5932004     	ldr	r2, [r3, #0x4]
  58af50: e59410b0     	ldr	r1, [r4, #0xb0]
  58af54: e5933000     	ldr	r3, [r3]
  58af58: e3a0a000     	mov	r10, #0
  58af5c: e3560000     	cmp	r6, #0
  58af60: e584c09c     	str	r12, [r4, #0x9c]
  58af64: e58400a0     	str	r0, [r4, #0xa0]
  58af68: e58410a4     	str	r1, [r4, #0xa4]
  58af6c: e58420ac     	str	r2, [r4, #0xac]
  58af70: e58430a8     	str	r3, [r4, #0xa8]
  58af74: e584a0b0     	str	r10, [r4, #0xb0]
  58af78: 0a000022     	beq	0x58b008 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)+0x124> @ imm = #0x88
  58af7c: e1a0900a     	mov	r9, r10
  58af80: ea000000     	b	0x58af88 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)+0xa4> @ imm = #0x0
  58af84: e59430a8     	ldr	r3, [r4, #0xa8]
  58af88: e5951000     	ldr	r1, [r5]
  58af8c: e28aa001     	add	r10, r10, #1
  58af90: e59420ac     	ldr	r2, [r4, #0xac]
  58af94: e081018a     	add	r0, r1, r10, lsl #3
  58af98: e791c18a     	ldr	r12, [r1, r10, lsl #3]
  58af9c: e5901004     	ldr	r1, [r0, #0x4]
  58afa0: e59400b0     	ldr	r0, [r4, #0xb0]
  58afa4: e3570000     	cmp	r7, #0
  58afa8: e584c0a8     	str	r12, [r4, #0xa8]
  58afac: e58400a4     	str	r0, [r4, #0xa4]
  58afb0: e58410ac     	str	r1, [r4, #0xac]
  58afb4: e584309c     	str	r3, [r4, #0x9c]
  58afb8: e58420a0     	str	r2, [r4, #0xa0]
  58afbc: e58490b0     	str	r9, [r4, #0xb0]
  58afc0: 0a000008     	beq	0x58afe8 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)+0x104> @ imm = #0x20
  58afc4: e3530000     	cmp	r3, #0
  58afc8: e1a01003     	mov	r1, r3
  58afcc: e1a00004     	mov	r0, r4
  58afd0: 0a000004     	beq	0x58afe8 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)+0x104> @ imm = #0x10
  58afd4: ebfffed3     	bl	0x58ab28 <glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const> @ imm = #-0x4b4
  58afd8: e3500000     	cmp	r0, #0
  58afdc: 1a000006     	bne	0x58affc <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)+0x118> @ imm = #0x18
  58afe0: e594309c     	ldr	r3, [r4, #0x9c]
  58afe4: e59420a0     	ldr	r2, [r4, #0xa0]
  58afe8: e1a00003     	mov	r0, r3
  58afec: e1a01002     	mov	r1, r2
  58aff0: e5933000     	ldr	r3, [r3]
  58aff4: e1a0e00f     	mov	lr, pc
  58aff8: e593f01c     	ldr	pc, [r3, #0x1c]
  58affc: e15a0006     	cmp	r10, r6
  58b000: 1affffdf     	bne	0x58af84 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)+0xa0> @ imm = #-0x84
  58b004: e59430a8     	ldr	r3, [r4, #0xa8]
  58b008: e5952004     	ldr	r2, [r5, #0x4]
  58b00c: e59460ac     	ldr	r6, [r4, #0xac]
  58b010: e594c0b0     	ldr	r12, [r4, #0xb0]
  58b014: e9120003     	ldmdb	r2, {r0, r1}
  58b018: e3580000     	cmp	r8, #0
  58b01c: e3a02000     	mov	r2, #0
  58b020: e584309c     	str	r3, [r4, #0x9c]
  58b024: e58460a0     	str	r6, [r4, #0xa0]
  58b028: e584c0a4     	str	r12, [r4, #0xa4]
  58b02c: e58400a8     	str	r0, [r4, #0xa8]
  58b030: e58410ac     	str	r1, [r4, #0xac]
  58b034: e58420b0     	str	r2, [r4, #0xb0]
  58b038: 0a00000b     	beq	0x58b06c <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)+0x188> @ imm = #0x2c
  58b03c: e5951004     	ldr	r1, [r5, #0x4]
  58b040: e5953000     	ldr	r3, [r5]
  58b044: e58d2010     	str	r2, [sp, #0x10]
  58b048: e58d200c     	str	r2, [sp, #0xc]
  58b04c: e0632001     	rsb	r2, r3, r1
  58b050: e1b021c2     	asrs	r2, r2, #3
  58b054: 0a000007     	beq	0x58b078 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)+0x194> @ imm = #0x1c
  58b058: e1510003     	cmp	r1, r3
  58b05c: 0a000000     	beq	0x58b064 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)+0x180> @ imm = #0x0
  58b060: e5853004     	str	r3, [r5, #0x4]
  58b064: e28dd020     	add	sp, sp, #32
  58b068: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  58b06c: e5953004     	ldr	r3, [r5, #0x4]
  58b070: e2433008     	sub	r3, r3, #8
  58b074: eafffff9     	b	0x58b060 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)+0x17c> @ imm = #-0x1c
  58b078: e1a00005     	mov	r0, r5
  58b07c: e28d300c     	add	r3, sp, #12
  58b080: ebf71af0     	bl	0x351c48 <std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::scene::CSceneManager::SUnsortedNodeEntry*, unsigned int, glitch::scene::CSceneManager::SUnsortedNodeEntry const&)> @ imm = #-0x239440
  58b084: eafffff6     	b	0x58b064 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)+0x180> @ imm = #-0x28
  58b088: e3a0c001     	mov	r12, #1
  58b08c: e1a00005     	mov	r0, r5
  58b090: e28d2014     	add	r2, sp, #20
  58b094: e28d301c     	add	r3, sp, #28
  58b098: e58dc004     	str	r12, [sp, #0x4]
  58b09c: e58dc000     	str	r12, [sp]
  58b0a0: ebf71a95     	bl	0x351afc <std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::CSceneManager::SUnsortedNodeEntry*, glitch::scene::CSceneManager::SUnsortedNodeEntry const&, std::__false_type const&, unsigned int, bool)> @ imm = #-0x2395ac
  58b0a4: eaffffa5     	b	0x58af40 <void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0>>&, bool, bool)+0x5c> @ imm = #-0x16c

# ISceneNode::onRegisterSceneNode() | VA 0x00596d08 | size 0x8 | file offset 0x596d08

00596d08 <glitch::scene::ISceneNode::onRegisterSceneNode()>:
  596d08: e3a00001     	mov	r0, #1
  596d0c: e12fff1e     	bx	lr

# CCameraSceneNode::onRegisterSceneNode() | VA 0x00583534 | size 0x68 | file offset 0x583534

00583534 <glitch::scene::CCameraSceneNode::onRegisterSceneNode()>:
  583534: e92d4030     	push	{r4, r5, lr}
  583538: e1a05000     	mov	r5, r0
  58353c: e24dd01c     	sub	sp, sp, #28
  583540: ebffff4e     	bl	0x583280 <glitch::scene::CCameraSceneNode::recalculateMatrices()> @ imm = #-0x2c8
  583544: e5950110     	ldr	r0, [r5, #0x110]
  583548: e59030e4     	ldr	r3, [r0, #0xe4]
  58354c: e1550003     	cmp	r5, r3
  583550: 0a000002     	beq	0x583560 <glitch::scene::CCameraSceneNode::onRegisterSceneNode()+0x2c> @ imm = #0x8
  583554: e3a00001     	mov	r0, #1
  583558: e28dd01c     	add	sp, sp, #28
  58355c: e8bd8030     	pop	{r4, r5, pc}
  583560: e5902000     	ldr	r2, [r0]
  583564: e3a03000     	mov	r3, #0
  583568: e28d4018     	add	r4, sp, #24
  58356c: e592c024     	ldr	r12, [r2, #0x24]
  583570: e5243004     	str	r3, [r4, #-0x4]!
  583574: e3e02102     	mvn	r2, #-2147483648
  583578: e58d2008     	str	r2, [sp, #0x8]
  58357c: e58d3000     	str	r3, [sp]
  583580: e58d3004     	str	r3, [sp, #0x4]
  583584: e1a01005     	mov	r1, r5
  583588: e1a02004     	mov	r2, r4
  58358c: e12fff3c     	blx	r12
  583590: e1a00004     	mov	r0, r4
  583594: ebf63593     	bl	0x310be8 <boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr()> @ imm = #-0x2729b4
  583598: eaffffed     	b	0x583554 <glitch::scene::CCameraSceneNode::onRegisterSceneNode()+0x20> @ imm = #-0x4c

# CCameraSceneNode::render(void*) | VA 0x005820e4 | size 0x4c | file offset 0x5820e4

005820e4 <glitch::scene::CCameraSceneNode::render(void*)>:
  5820e4: e92d4070     	push	{r4, r5, r6, lr}
  5820e8: e5903110     	ldr	r3, [r0, #0x110]
  5820ec: e1a05000     	mov	r5, r0
  5820f0: e5934014     	ldr	r4, [r3, #0x14]
  5820f4: e3540000     	cmp	r4, #0
  5820f8: 0a00000b     	beq	0x58212c <glitch::scene::CCameraSceneNode::render(void*)+0x48> @ imm = #0x2c
  5820fc: e1a00004     	mov	r0, r4
  582100: e3a01002     	mov	r1, #2
  582104: e2852f9d     	add	r2, r5, #628
  582108: e5943000     	ldr	r3, [r4]
  58210c: e1a0e00f     	mov	lr, pc
  582110: e593f06c     	ldr	pc, [r3, #0x6c]
  582114: e1a00004     	mov	r0, r4
  582118: e2852f7b     	add	r2, r5, #492
  58211c: e5943000     	ldr	r3, [r4]
  582120: e3a01000     	mov	r1, #0
  582124: e1a0e00f     	mov	lr, pc
  582128: e593f06c     	ldr	pc, [r3, #0x6c]
  58212c: e8bd8070     	pop	{r4, r5, r6, pc}
