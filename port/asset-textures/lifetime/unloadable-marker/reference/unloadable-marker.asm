; Source: exact ELF member lib/armeabi-v7a/libDungeonHunter2.so from the checked APK.
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; PT_LOAD 0 has p_offset=0 and p_vaddr=0, so code VA equals file offset.
; Raw instruction words below are emitted by llvm-objdump from the hash-checked ELF.

; RANGE texture_manager_mark_unloadable: CTextureManager::markTextureAsUnloadable
; ELF_VA=0x005e8dd4 size=260 file_offset=0x005e8dd4 sha256=b777e3c30f46ce3a639a952f32087faa76ac65346290868d81f49d032c7afcfa

005e8dd4 <glitch::video::CTextureManager::markTextureAsUnloadable(boost::intrusive_ptr<glitch::video::ITexture> const&)>:
  5e8dd4: e92d40f0     	push	{r4, r5, r6, r7, lr}
  5e8dd8: e5913000     	ldr	r3, [r1]
  5e8ddc: e24dd014     	sub	sp, sp, #20
  5e8de0: e28d2010     	add	r2, sp, #16
  5e8de4: e5223008     	str	r3, [r2, #-0x8]!
  5e8de8: e1a04000     	mov	r4, r0
  5e8dec: e28d300c     	add	r3, sp, #12
  5e8df0: e5900068     	ldr	r0, [r0, #0x68]
  5e8df4: e594106c     	ldr	r1, [r4, #0x6c]
  5e8df8: ebf66e9c     	bl	0x384870 <glitch::video::ITexture** std::priv::__find<glitch::video::ITexture**, glitch::video::ITexture*>(glitch::video::ITexture**, glitch::video::ITexture**, glitch::video::ITexture* const&, std::random_access_iterator_tag const&)> @ imm = #-0x264590
  5e8dfc: e594306c     	ldr	r3, [r4, #0x6c]
  5e8e00: e1a05000     	mov	r5, r0
  5e8e04: e1500003     	cmp	r0, r3
  5e8e08: 0a000001     	beq	0x5e8e14 <glitch::video::CTextureManager::markTextureAsUnloadable(boost::intrusive_ptr<glitch::video::ITexture> const&)+0x40> @ imm = #0x4
  5e8e0c: e28dd014     	add	sp, sp, #20
  5e8e10: e8bd80f0     	pop	{r4, r5, r6, r7, pc}
  5e8e14: e5943070     	ldr	r3, [r4, #0x70]
  5e8e18: e1500003     	cmp	r0, r3
  5e8e1c: 0a000005     	beq	0x5e8e38 <glitch::video::CTextureManager::markTextureAsUnloadable(boost::intrusive_ptr<glitch::video::ITexture> const&)+0x64> @ imm = #0x14
  5e8e20: e59d3008     	ldr	r3, [sp, #0x8]
  5e8e24: e5803000     	str	r3, [r0]
  5e8e28: e594306c     	ldr	r3, [r4, #0x6c]
  5e8e2c: e2833004     	add	r3, r3, #4
  5e8e30: e584306c     	str	r3, [r4, #0x6c]
  5e8e34: eafffff4     	b	0x5e8e0c <glitch::video::CTextureManager::markTextureAsUnloadable(boost::intrusive_ptr<glitch::video::ITexture> const&)+0x38> @ imm = #-0x30
  5e8e38: e5943068     	ldr	r3, [r4, #0x68]
  5e8e3c: e0633000     	rsb	r3, r3, r0
  5e8e40: e1a03143     	asr	r3, r3, #2
  5e8e44: e3530001     	cmp	r3, #1
  5e8e48: 20831003     	addhs	r1, r3, r3
  5e8e4c: 32831001     	addlo	r1, r3, #1
  5e8e50: e3710107     	cmn	r1, #-1073741823
  5e8e54: 8a00001d     	bhi	0x5e8ed0 <glitch::video::CTextureManager::markTextureAsUnloadable(boost::intrusive_ptr<glitch::video::ITexture> const&)+0xfc> @ imm = #0x74
  5e8e58: e1530001     	cmp	r3, r1
  5e8e5c: 8a00001b     	bhi	0x5e8ed0 <glitch::video::CTextureManager::markTextureAsUnloadable(boost::intrusive_ptr<glitch::video::ITexture> const&)+0xfc> @ imm = #0x6c
  5e8e60: e28d2010     	add	r2, sp, #16
  5e8e64: e2847070     	add	r7, r4, #112
  5e8e68: e522100c     	str	r1, [r2, #-0xc]!
  5e8e6c: e1a00007     	mov	r0, r7
  5e8e70: ebfffe6f     	bl	0x5e8834 <std::allocator<glitch::video::ITexture*>::_M_allocate(unsigned int, unsigned int&)> @ imm = #-0x644
  5e8e74: e5941068     	ldr	r1, [r4, #0x68]
  5e8e78: e1a06000     	mov	r6, r0
  5e8e7c: e0555001     	subs	r5, r5, r1
  5e8e80: 01a05000     	moveq	r5, r0
  5e8e84: 0a000002     	beq	0x5e8e94 <glitch::video::CTextureManager::markTextureAsUnloadable(boost::intrusive_ptr<glitch::video::ITexture> const&)+0xc0> @ imm = #0x8
  5e8e88: e1a02005     	mov	r2, r5
  5e8e8c: ebf49429     	bl	0x30df38 <memmove@plt>  @ imm = #-0x2daf5c
  5e8e90: e0805005     	add	r5, r0, r5
  5e8e94: e59d3008     	ldr	r3, [sp, #0x8]
  5e8e98: e1a00007     	mov	r0, r7
  5e8e9c: e4853004     	str	r3, [r5], #4
  5e8ea0: e5943068     	ldr	r3, [r4, #0x68]
  5e8ea4: e5942070     	ldr	r2, [r4, #0x70]
  5e8ea8: e1a01003     	mov	r1, r3
  5e8eac: e0633002     	rsb	r3, r3, r2
  5e8eb0: e1a02143     	asr	r2, r3, #2
  5e8eb4: ebfffe79     	bl	0x5e88a0 <std::allocator<glitch::video::ITexture*>::deallocate(glitch::video::ITexture**, unsigned int)> @ imm = #-0x61c
  5e8eb8: e59d3004     	ldr	r3, [sp, #0x4]
  5e8ebc: e5846068     	str	r6, [r4, #0x68]
  5e8ec0: e584506c     	str	r5, [r4, #0x6c]
  5e8ec4: e0866103     	add	r6, r6, r3, lsl #2
  5e8ec8: e5846070     	str	r6, [r4, #0x70]
  5e8ecc: eaffffce     	b	0x5e8e0c <glitch::video::CTextureManager::markTextureAsUnloadable(boost::intrusive_ptr<glitch::video::ITexture> const&)+0x38> @ imm = #-0xc8
  5e8ed0: e3e01103     	mvn	r1, #-1073741824
  5e8ed4: eaffffe1     	b	0x5e8e60 <glitch::video::CTextureManager::markTextureAsUnloadable(boost::intrusive_ptr<glitch::video::ITexture> const&)+0x8c> @ imm = #-0x7c

; RANGE texture_add_from_desc: CTextureManager::addTexture(char const*, STextureDesc const&, bool)
; ELF_VA=0x005ea7f8 size=256 file_offset=0x005ea7f8 sha256=dddb7835951dcd2247d3b179c80522cf20c13d0b0f5743445123e86f3f074fbe

005ea7f8 <glitch::video::CTextureManager::addTexture(char const*, glitch::video::STextureDesc const&, bool)>:
  5ea7f8: e92d45f0     	push	{r4, r5, r6, r7, r8, r10, lr}
  5ea7fc: e24dd01c     	sub	sp, sp, #28
  5ea800: e5ddc038     	ldrb	r12, [sp, #0x38]
  5ea804: e28d6008     	add	r6, sp, #8
  5ea808: e1a08003     	mov	r8, r3
  5ea80c: e1a0300c     	mov	r3, r12
  5ea810: e3a0c000     	mov	r12, #0
  5ea814: e1a05000     	mov	r5, r0
  5ea818: e58dc014     	str	r12, [sp, #0x14]
  5ea81c: e1a00006     	mov	r0, r6
  5ea820: e28dc014     	add	r12, sp, #20
  5ea824: e58dc000     	str	r12, [sp]
  5ea828: e1a0a001     	mov	r10, r1
  5ea82c: ebfffe9d     	bl	0x5ea2a8 <glitch::video::CTextureManager::getTexture(char const*, bool, glitch::core::SScopedProcessArray<char>&) const> @ imm = #-0x58c
  5ea830: e59d4008     	ldr	r4, [sp, #0x8]
  5ea834: e3540000     	cmp	r4, #0
  5ea838: 15854000     	strne	r4, [r5]
  5ea83c: 0a00000d     	beq	0x5ea878 <glitch::video::CTextureManager::addTexture(char const*, glitch::video::STextureDesc const&, bool)+0x80> @ imm = #0x34
  5ea840: e5943004     	ldr	r3, [r4, #0x4]
  5ea844: e2833001     	add	r3, r3, #1
  5ea848: e5843004     	str	r3, [r4, #0x4]
  5ea84c: e59d0008     	ldr	r0, [sp, #0x8]
  5ea850: e3500000     	cmp	r0, #0
  5ea854: 0a000000     	beq	0x5ea85c <glitch::video::CTextureManager::addTexture(char const*, glitch::video::STextureDesc const&, bool)+0x64> @ imm = #0x0
  5ea858: ebf4cb49     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cd2dc
  5ea85c: e59d0014     	ldr	r0, [sp, #0x14]
  5ea860: e3500000     	cmp	r0, #0
  5ea864: 0a000000     	beq	0x5ea86c <glitch::video::CTextureManager::addTexture(char const*, glitch::video::STextureDesc const&, bool)+0x74> @ imm = #0x0
  5ea868: ebfd2786     	bl	0x534688 <glitch::core::releaseProcessBuffer(void*)> @ imm = #-0xb61e8
  5ea86c: e1a00005     	mov	r0, r5
  5ea870: e28dd01c     	add	sp, sp, #28
  5ea874: e8bd85f0     	pop	{r4, r5, r6, r7, r8, r10, pc}
  5ea878: e28d7010     	add	r7, sp, #16
  5ea87c: e59d200c     	ldr	r2, [sp, #0xc]
  5ea880: e1a03008     	mov	r3, r8
  5ea884: e1a00007     	mov	r0, r7
  5ea888: e59a1028     	ldr	r1, [r10, #0x28]
  5ea88c: ebfeff59     	bl	0x5aa5f8 <glitch::video::IVideoDriver::createTexture(char const*, glitch::video::STextureDesc const&)> @ imm = #-0x4029c
  5ea890: e1a01007     	mov	r1, r7
  5ea894: e1a00006     	mov	r0, r6
  5ea898: ebf66956     	bl	0x384df8 <boost::intrusive_ptr<glitch::video::ITexture>::operator=(boost::intrusive_ptr<glitch::video::ITexture> const&)> @ imm = #-0x265aa8
  5ea89c: e1a00007     	mov	r0, r7
  5ea8a0: ebf8b2e1     	bl	0x41742c <boost::intrusive_ptr<glitch::video::ITexture>::~intrusive_ptr()> @ imm = #-0x1d347c
  5ea8a4: e59d0008     	ldr	r0, [sp, #0x8]
  5ea8a8: e3500000     	cmp	r0, #0
  5ea8ac: 05850000     	streq	r0, [r5]
  5ea8b0: 0affffe9     	beq	0x5ea85c <glitch::video::CTextureManager::addTexture(char const*, glitch::video::STextureDesc const&, bool)+0x64> @ imm = #-0x5c
  5ea8b4: e1a03004     	mov	r3, r4
  5ea8b8: e1a0000a     	mov	r0, r10
  5ea8bc: e1a01006     	mov	r1, r6
  5ea8c0: e5982004     	ldr	r2, [r8, #0x4]
  5ea8c4: ebffffa6     	bl	0x5ea764 <glitch::video::CTextureManager::addTexture(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_PIXEL_FORMAT, char const*)> @ imm = #-0x168
  5ea8c8: e5d8301e     	ldrb	r3, [r8, #0x1e]
  5ea8cc: e3530000     	cmp	r3, #0
  5ea8d0: 1a000004     	bne	0x5ea8e8 <glitch::video::CTextureManager::addTexture(char const*, glitch::video::STextureDesc const&, bool)+0xf0> @ imm = #0x10
  5ea8d4: e59d0008     	ldr	r0, [sp, #0x8]
  5ea8d8: e2504000     	subs	r4, r0, #0
  5ea8dc: e5850000     	str	r0, [r5]
  5ea8e0: 0affffda     	beq	0x5ea850 <glitch::video::CTextureManager::addTexture(char const*, glitch::video::STextureDesc const&, bool)+0x58> @ imm = #-0x98
  5ea8e4: eaffffd5     	b	0x5ea840 <glitch::video::CTextureManager::addTexture(char const*, glitch::video::STextureDesc const&, bool)+0x48> @ imm = #-0xac
  5ea8e8: e1a0000a     	mov	r0, r10
  5ea8ec: e1a01006     	mov	r1, r6
  5ea8f0: ebfff937     	bl	0x5e8dd4 <glitch::video::CTextureManager::markTextureAsUnloadable(boost::intrusive_ptr<glitch::video::ITexture> const&)> @ imm = #-0x1b24
  5ea8f4: eafffff6     	b	0x5ea8d4 <glitch::video::CTextureManager::addTexture(char const*, glitch::video::STextureDesc const&, bool)+0xdc> @ imm = #-0x28

; RANGE texture_manager_constructor: CTextureManager::CTextureManager(IVideoDriver*) [C1]
; ELF_VA=0x005eaa7c size=1116 file_offset=0x005eaa7c sha256=23d6dba7500ed72551b152888a7b02659b9eb0fd678d8751021988ad2b3ac28e

005eaa7c <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)>:
  5eaa7c: e92d4030     	push	{r4, r5, lr}
  5eaa80: e24dd02c     	sub	sp, sp, #44
  5eaa84: e1a04000     	mov	r4, r0
  5eaa88: e1a05001     	mov	r5, r1
  5eaa8c: ebfff65e     	bl	0x5e840c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection()> @ imm = #-0x2688
  5eaa90: e5845028     	str	r5, [r4, #0x28]
  5eaa94: e59530d4     	ldr	r3, [r5, #0xd4]
  5eaa98: e2845030     	add	r5, r4, #48
  5eaa9c: e5933034     	ldr	r3, [r3, #0x34]
  5eaaa0: e3530000     	cmp	r3, #0
  5eaaa4: e584302c     	str	r3, [r4, #0x2c]
  5eaaa8: 15932004     	ldrne	r2, [r3, #0x4]
  5eaaac: 12822001     	addne	r2, r2, #1
  5eaab0: 15832004     	strne	r2, [r3, #0x4]
  5eaab4: e3a03000     	mov	r3, #0
  5eaab8: e3a02043     	mov	r2, #67
  5eaabc: e5843064     	str	r3, [r4, #0x64]
  5eaac0: e5843030     	str	r3, [r4, #0x30]
  5eaac4: e5843034     	str	r3, [r4, #0x34]
  5eaac8: e5843038     	str	r3, [r4, #0x38]
  5eaacc: e584303c     	str	r3, [r4, #0x3c]
  5eaad0: e5843040     	str	r3, [r4, #0x40]
  5eaad4: e5843044     	str	r3, [r4, #0x44]
  5eaad8: e5843068     	str	r3, [r4, #0x68]
  5eaadc: e584306c     	str	r3, [r4, #0x6c]
  5eaae0: e5843070     	str	r3, [r4, #0x70]
  5eaae4: e5843048     	str	r3, [r4, #0x48]
  5eaae8: e584304c     	str	r3, [r4, #0x4c]
  5eaaec: e5843050     	str	r3, [r4, #0x50]
  5eaaf0: e5843054     	str	r3, [r4, #0x54]
  5eaaf4: e5843058     	str	r3, [r4, #0x58]
  5eaaf8: e584305c     	str	r3, [r4, #0x5c]
  5eaafc: e5843060     	str	r3, [r4, #0x60]
  5eab00: e5842074     	str	r2, [r4, #0x74]
  5eab04: eb00625d     	bl	0x603480 <glitch::video::createImageLoaderBMP()> @ imm = #0x18974
  5eab08: e3500000     	cmp	r0, #0
  5eab0c: e58d0024     	str	r0, [sp, #0x24]
  5eab10: 15903004     	ldrne	r3, [r0, #0x4]
  5eab14: 12833001     	addne	r3, r3, #1
  5eab18: 15803004     	strne	r3, [r0, #0x4]
  5eab1c: e5941034     	ldr	r1, [r4, #0x34]
  5eab20: e5943038     	ldr	r3, [r4, #0x38]
  5eab24: e1510003     	cmp	r1, r3
  5eab28: 0a0000e6     	beq	0x5eaec8 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x44c> @ imm = #0x398
  5eab2c: e59d3024     	ldr	r3, [sp, #0x24]
  5eab30: e3530000     	cmp	r3, #0
  5eab34: e5813000     	str	r3, [r1]
  5eab38: 15932004     	ldrne	r2, [r3, #0x4]
  5eab3c: 12822001     	addne	r2, r2, #1
  5eab40: 15832004     	strne	r2, [r3, #0x4]
  5eab44: e5943034     	ldr	r3, [r4, #0x34]
  5eab48: e2833004     	add	r3, r3, #4
  5eab4c: e5843034     	str	r3, [r4, #0x34]
  5eab50: e59d0024     	ldr	r0, [sp, #0x24]
  5eab54: e3500000     	cmp	r0, #0
  5eab58: 0a000000     	beq	0x5eab60 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0xe4> @ imm = #0x0
  5eab5c: ebf4ca88     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cd5e0
  5eab60: eb006816     	bl	0x604bc0 <glitch::video::createImageLoaderJPG()> @ imm = #0x1a058
  5eab64: e3500000     	cmp	r0, #0
  5eab68: e58d0020     	str	r0, [sp, #0x20]
  5eab6c: 15903004     	ldrne	r3, [r0, #0x4]
  5eab70: 12833001     	addne	r3, r3, #1
  5eab74: 15803004     	strne	r3, [r0, #0x4]
  5eab78: e5941034     	ldr	r1, [r4, #0x34]
  5eab7c: e5943038     	ldr	r3, [r4, #0x38]
  5eab80: e1510003     	cmp	r1, r3
  5eab84: 0a0000bb     	beq	0x5eae78 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x3fc> @ imm = #0x2ec
  5eab88: e59d3020     	ldr	r3, [sp, #0x20]
  5eab8c: e3530000     	cmp	r3, #0
  5eab90: e5813000     	str	r3, [r1]
  5eab94: 15932004     	ldrne	r2, [r3, #0x4]
  5eab98: 12822001     	addne	r2, r2, #1
  5eab9c: 15832004     	strne	r2, [r3, #0x4]
  5eaba0: e5943034     	ldr	r3, [r4, #0x34]
  5eaba4: e2833004     	add	r3, r3, #4
  5eaba8: e5843034     	str	r3, [r4, #0x34]
  5eabac: e59d0020     	ldr	r0, [sp, #0x20]
  5eabb0: e3500000     	cmp	r0, #0
  5eabb4: 0a000000     	beq	0x5eabbc <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x140> @ imm = #0x0
  5eabb8: ebf4ca71     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cd63c
  5eabbc: eb006dda     	bl	0x60632c <glitch::video::createImageLoaderTGA()> @ imm = #0x1b768
  5eabc0: e3500000     	cmp	r0, #0
  5eabc4: e58d001c     	str	r0, [sp, #0x1c]
  5eabc8: 15903004     	ldrne	r3, [r0, #0x4]
  5eabcc: 12833001     	addne	r3, r3, #1
  5eabd0: 15803004     	strne	r3, [r0, #0x4]
  5eabd4: e5941034     	ldr	r1, [r4, #0x34]
  5eabd8: e5943038     	ldr	r3, [r4, #0x38]
  5eabdc: e1510003     	cmp	r1, r3
  5eabe0: 0a0000a0     	beq	0x5eae68 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x3ec> @ imm = #0x280
  5eabe4: e59d301c     	ldr	r3, [sp, #0x1c]
  5eabe8: e3530000     	cmp	r3, #0
  5eabec: e5813000     	str	r3, [r1]
  5eabf0: 15932004     	ldrne	r2, [r3, #0x4]
  5eabf4: 12822001     	addne	r2, r2, #1
  5eabf8: 15832004     	strne	r2, [r3, #0x4]
  5eabfc: e5943034     	ldr	r3, [r4, #0x34]
  5eac00: e2833004     	add	r3, r3, #4
  5eac04: e5843034     	str	r3, [r4, #0x34]
  5eac08: e59d001c     	ldr	r0, [sp, #0x1c]
  5eac0c: e3500000     	cmp	r0, #0
  5eac10: 0a000000     	beq	0x5eac18 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x19c> @ imm = #0x0
  5eac14: ebf4ca5a     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cd698
  5eac18: eb006069     	bl	0x602dc4 <glitch::video::createImageLoaderATC()> @ imm = #0x181a4
  5eac1c: e3500000     	cmp	r0, #0
  5eac20: e58d0018     	str	r0, [sp, #0x18]
  5eac24: 15903004     	ldrne	r3, [r0, #0x4]
  5eac28: 12833001     	addne	r3, r3, #1
  5eac2c: 15803004     	strne	r3, [r0, #0x4]
  5eac30: e5941034     	ldr	r1, [r4, #0x34]
  5eac34: e5943038     	ldr	r3, [r4, #0x38]
  5eac38: e1510003     	cmp	r1, r3
  5eac3c: 0a000095     	beq	0x5eae98 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x41c> @ imm = #0x254
  5eac40: e59d3018     	ldr	r3, [sp, #0x18]
  5eac44: e3530000     	cmp	r3, #0
  5eac48: e5813000     	str	r3, [r1]
  5eac4c: 15932004     	ldrne	r2, [r3, #0x4]
  5eac50: 12822001     	addne	r2, r2, #1
  5eac54: 15832004     	strne	r2, [r3, #0x4]
  5eac58: e5943034     	ldr	r3, [r4, #0x34]
  5eac5c: e2833004     	add	r3, r3, #4
  5eac60: e5843034     	str	r3, [r4, #0x34]
  5eac64: e59d0018     	ldr	r0, [sp, #0x18]
  5eac68: e3500000     	cmp	r0, #0
  5eac6c: 0a000000     	beq	0x5eac74 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x1f8> @ imm = #0x0
  5eac70: ebf4ca43     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cd6f4
  5eac74: eb0068e4     	bl	0x60500c <glitch::video::createImageLoaderPNG()> @ imm = #0x1a390
  5eac78: e3500000     	cmp	r0, #0
  5eac7c: e58d0014     	str	r0, [sp, #0x14]
  5eac80: 15903004     	ldrne	r3, [r0, #0x4]
  5eac84: 12833001     	addne	r3, r3, #1
  5eac88: 15803004     	strne	r3, [r0, #0x4]
  5eac8c: e5941034     	ldr	r1, [r4, #0x34]
  5eac90: e5943038     	ldr	r3, [r4, #0x38]
  5eac94: e1510003     	cmp	r1, r3
  5eac98: 0a000082     	beq	0x5eaea8 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x42c> @ imm = #0x208
  5eac9c: e59d3014     	ldr	r3, [sp, #0x14]
  5eaca0: e3530000     	cmp	r3, #0
  5eaca4: e5813000     	str	r3, [r1]
  5eaca8: 15932004     	ldrne	r2, [r3, #0x4]
  5eacac: 12822001     	addne	r2, r2, #1
  5eacb0: 15832004     	strne	r2, [r3, #0x4]
  5eacb4: e5943034     	ldr	r3, [r4, #0x34]
  5eacb8: e2833004     	add	r3, r3, #4
  5eacbc: e5843034     	str	r3, [r4, #0x34]
  5eacc0: e59d0014     	ldr	r0, [sp, #0x14]
  5eacc4: e3500000     	cmp	r0, #0
  5eacc8: 0a000000     	beq	0x5eacd0 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x254> @ imm = #0x0
  5eaccc: ebf4ca2c     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cd750
  5eacd0: eb00659b     	bl	0x604344 <glitch::video::createImageLoaderDDS()> @ imm = #0x1966c
  5eacd4: e3500000     	cmp	r0, #0
  5eacd8: e58d0010     	str	r0, [sp, #0x10]
  5eacdc: 15903004     	ldrne	r3, [r0, #0x4]
  5eace0: 12833001     	addne	r3, r3, #1
  5eace4: 15803004     	strne	r3, [r0, #0x4]
  5eace8: e5941034     	ldr	r1, [r4, #0x34]
  5eacec: e5943038     	ldr	r3, [r4, #0x38]
  5eacf0: e1510003     	cmp	r1, r3
  5eacf4: 0a00006f     	beq	0x5eaeb8 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x43c> @ imm = #0x1bc
  5eacf8: e59d3010     	ldr	r3, [sp, #0x10]
  5eacfc: e3530000     	cmp	r3, #0
  5ead00: e5813000     	str	r3, [r1]
  5ead04: 15932004     	ldrne	r2, [r3, #0x4]
  5ead08: 12822001     	addne	r2, r2, #1
  5ead0c: 15832004     	strne	r2, [r3, #0x4]
  5ead10: e5943034     	ldr	r3, [r4, #0x34]
  5ead14: e2833004     	add	r3, r3, #4
  5ead18: e5843034     	str	r3, [r4, #0x34]
  5ead1c: e59d0010     	ldr	r0, [sp, #0x10]
  5ead20: e3500000     	cmp	r0, #0
  5ead24: 0a000000     	beq	0x5ead2c <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x2b0> @ imm = #0x0
  5ead28: ebf4ca15     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cd7ac
  5ead2c: eb006aa3     	bl	0x6057c0 <glitch::video::createImageLoaderPVR()> @ imm = #0x1aa8c
  5ead30: e3500000     	cmp	r0, #0
  5ead34: e58d000c     	str	r0, [sp, #0xc]
  5ead38: 15903004     	ldrne	r3, [r0, #0x4]
  5ead3c: 12833001     	addne	r3, r3, #1
  5ead40: 15803004     	strne	r3, [r0, #0x4]
  5ead44: e5941034     	ldr	r1, [r4, #0x34]
  5ead48: e5943038     	ldr	r3, [r4, #0x38]
  5ead4c: e1510003     	cmp	r1, r3
  5ead50: 0a00004c     	beq	0x5eae88 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x40c> @ imm = #0x130
  5ead54: e59d300c     	ldr	r3, [sp, #0xc]
  5ead58: e3530000     	cmp	r3, #0
  5ead5c: e5813000     	str	r3, [r1]
  5ead60: 15932004     	ldrne	r2, [r3, #0x4]
  5ead64: 12822001     	addne	r2, r2, #1
  5ead68: 15832004     	strne	r2, [r3, #0x4]
  5ead6c: e5943034     	ldr	r3, [r4, #0x34]
  5ead70: e2833004     	add	r3, r3, #4
  5ead74: e5843034     	str	r3, [r4, #0x34]
  5ead78: e59d000c     	ldr	r0, [sp, #0xc]
  5ead7c: e3500000     	cmp	r0, #0
  5ead80: 0a000000     	beq	0x5ead88 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x30c> @ imm = #0x0
  5ead84: ebf4c9fe     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cd808
  5ead88: eb006fe0     	bl	0x606d10 <glitch::video::createImageWriterJPG()> @ imm = #0x1bf80
  5ead8c: e5941040     	ldr	r1, [r4, #0x40]
  5ead90: e5943044     	ldr	r3, [r4, #0x44]
  5ead94: e284503c     	add	r5, r4, #60
  5ead98: e58d0008     	str	r0, [sp, #0x8]
  5ead9c: e1510003     	cmp	r1, r3
  5eada0: 0a00001a     	beq	0x5eae10 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x394> @ imm = #0x68
  5eada4: e5810000     	str	r0, [r1]
  5eada8: e5943040     	ldr	r3, [r4, #0x40]
  5eadac: e2833004     	add	r3, r3, #4
  5eadb0: e5843040     	str	r3, [r4, #0x40]
  5eadb4: eb00721c     	bl	0x60762c <glitch::video::createImageWriterTGA()> @ imm = #0x1c870
  5eadb8: e5941040     	ldr	r1, [r4, #0x40]
  5eadbc: e5943044     	ldr	r3, [r4, #0x44]
  5eadc0: e58d0004     	str	r0, [sp, #0x4]
  5eadc4: e1510003     	cmp	r1, r3
  5eadc8: 0a000019     	beq	0x5eae34 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x3b8> @ imm = #0x64
  5eadcc: e5810000     	str	r0, [r1]
  5eadd0: e5943040     	ldr	r3, [r4, #0x40]
  5eadd4: e2833004     	add	r3, r3, #4
  5eadd8: e5843040     	str	r3, [r4, #0x40]
  5eaddc: eb007137     	bl	0x6072c0 <glitch::video::createImageWriterPNG()> @ imm = #0x1c4dc
  5eade0: e5941040     	ldr	r1, [r4, #0x40]
  5eade4: e5943044     	ldr	r3, [r4, #0x44]
  5eade8: e58d0000     	str	r0, [sp]
  5eadec: e1510003     	cmp	r1, r3
  5eadf0: 0a000018     	beq	0x5eae58 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x3dc> @ imm = #0x60
  5eadf4: e5810000     	str	r0, [r1]
  5eadf8: e5943040     	ldr	r3, [r4, #0x40]
  5eadfc: e2833004     	add	r3, r3, #4
  5eae00: e5843040     	str	r3, [r4, #0x40]
  5eae04: e1a00004     	mov	r0, r4
  5eae08: e28dd02c     	add	sp, sp, #44
  5eae0c: e8bd8030     	pop	{r4, r5, pc}
  5eae10: e1a00005     	mov	r0, r5
  5eae14: e28d2008     	add	r2, sp, #8
  5eae18: ebfffedc     	bl	0x5ea990 <std::vector<glitch::video::IImageWriter*, glitch::core::SAllocator<glitch::video::IImageWriter*, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(glitch::video::IImageWriter**, glitch::video::IImageWriter* const&, std::__true_type const&, unsigned int, bool) (.clone.4)> @ imm = #-0x490
  5eae1c: eb007202     	bl	0x60762c <glitch::video::createImageWriterTGA()> @ imm = #0x1c808
  5eae20: e5941040     	ldr	r1, [r4, #0x40]
  5eae24: e5943044     	ldr	r3, [r4, #0x44]
  5eae28: e58d0004     	str	r0, [sp, #0x4]
  5eae2c: e1510003     	cmp	r1, r3
  5eae30: 1affffe5     	bne	0x5eadcc <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x350> @ imm = #-0x6c
  5eae34: e1a00005     	mov	r0, r5
  5eae38: e28d2004     	add	r2, sp, #4
  5eae3c: ebfffed3     	bl	0x5ea990 <std::vector<glitch::video::IImageWriter*, glitch::core::SAllocator<glitch::video::IImageWriter*, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(glitch::video::IImageWriter**, glitch::video::IImageWriter* const&, std::__true_type const&, unsigned int, bool) (.clone.4)> @ imm = #-0x4b4
  5eae40: eb00711e     	bl	0x6072c0 <glitch::video::createImageWriterPNG()> @ imm = #0x1c478
  5eae44: e5941040     	ldr	r1, [r4, #0x40]
  5eae48: e5943044     	ldr	r3, [r4, #0x44]
  5eae4c: e58d0000     	str	r0, [sp]
  5eae50: e1510003     	cmp	r1, r3
  5eae54: 1affffe6     	bne	0x5eadf4 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x378> @ imm = #-0x68
  5eae58: e1a00005     	mov	r0, r5
  5eae5c: e1a0200d     	mov	r2, sp
  5eae60: ebfffeca     	bl	0x5ea990 <std::vector<glitch::video::IImageWriter*, glitch::core::SAllocator<glitch::video::IImageWriter*, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(glitch::video::IImageWriter**, glitch::video::IImageWriter* const&, std::__true_type const&, unsigned int, bool) (.clone.4)> @ imm = #-0x4d8
  5eae64: eaffffe6     	b	0x5eae04 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x388> @ imm = #-0x68
  5eae68: e1a00005     	mov	r0, r5
  5eae6c: e28d201c     	add	r2, sp, #28
  5eae70: ebfff859     	bl	0x5e8fdc <std::vector<boost::intrusive_ptr<glitch::video::IImageLoader>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IImageLoader>, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::IImageLoader>*, boost::intrusive_ptr<glitch::video::IImageLoader> const&, std::__false_type const&, unsigned int, bool) (.clone.5)> @ imm = #-0x1e9c
  5eae74: eaffff63     	b	0x5eac08 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x18c> @ imm = #-0x274
  5eae78: e1a00005     	mov	r0, r5
  5eae7c: e28d2020     	add	r2, sp, #32
  5eae80: ebfff855     	bl	0x5e8fdc <std::vector<boost::intrusive_ptr<glitch::video::IImageLoader>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IImageLoader>, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::IImageLoader>*, boost::intrusive_ptr<glitch::video::IImageLoader> const&, std::__false_type const&, unsigned int, bool) (.clone.5)> @ imm = #-0x1eac
  5eae84: eaffff48     	b	0x5eabac <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x130> @ imm = #-0x2e0
  5eae88: e1a00005     	mov	r0, r5
  5eae8c: e28d200c     	add	r2, sp, #12
  5eae90: ebfff851     	bl	0x5e8fdc <std::vector<boost::intrusive_ptr<glitch::video::IImageLoader>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IImageLoader>, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::IImageLoader>*, boost::intrusive_ptr<glitch::video::IImageLoader> const&, std::__false_type const&, unsigned int, bool) (.clone.5)> @ imm = #-0x1ebc
  5eae94: eaffffb7     	b	0x5ead78 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x2fc> @ imm = #-0x124
  5eae98: e1a00005     	mov	r0, r5
  5eae9c: e28d2018     	add	r2, sp, #24
  5eaea0: ebfff84d     	bl	0x5e8fdc <std::vector<boost::intrusive_ptr<glitch::video::IImageLoader>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IImageLoader>, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::IImageLoader>*, boost::intrusive_ptr<glitch::video::IImageLoader> const&, std::__false_type const&, unsigned int, bool) (.clone.5)> @ imm = #-0x1ecc
  5eaea4: eaffff6e     	b	0x5eac64 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x1e8> @ imm = #-0x248
  5eaea8: e1a00005     	mov	r0, r5
  5eaeac: e28d2014     	add	r2, sp, #20
  5eaeb0: ebfff849     	bl	0x5e8fdc <std::vector<boost::intrusive_ptr<glitch::video::IImageLoader>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IImageLoader>, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::IImageLoader>*, boost::intrusive_ptr<glitch::video::IImageLoader> const&, std::__false_type const&, unsigned int, bool) (.clone.5)> @ imm = #-0x1edc
  5eaeb4: eaffff81     	b	0x5eacc0 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x244> @ imm = #-0x1fc
  5eaeb8: e1a00005     	mov	r0, r5
  5eaebc: e28d2010     	add	r2, sp, #16
  5eaec0: ebfff845     	bl	0x5e8fdc <std::vector<boost::intrusive_ptr<glitch::video::IImageLoader>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IImageLoader>, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::IImageLoader>*, boost::intrusive_ptr<glitch::video::IImageLoader> const&, std::__false_type const&, unsigned int, bool) (.clone.5)> @ imm = #-0x1eec
  5eaec4: eaffff94     	b	0x5ead1c <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0x2a0> @ imm = #-0x1b0
  5eaec8: e1a00005     	mov	r0, r5
  5eaecc: e28d2024     	add	r2, sp, #36
  5eaed0: ebfff841     	bl	0x5e8fdc <std::vector<boost::intrusive_ptr<glitch::video::IImageLoader>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IImageLoader>, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::IImageLoader>*, boost::intrusive_ptr<glitch::video::IImageLoader> const&, std::__false_type const&, unsigned int, bool) (.clone.5)> @ imm = #-0x1efc
  5eaed4: eaffff1d     	b	0x5eab50 <glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)+0xd4> @ imm = #-0x38c

; RANGE texture_manager_destructor: CTextureManager::~CTextureManager() [D2]
; ELF_VA=0x005ea050 size=232 file_offset=0x005ea050 sha256=725f60ffd2b439539ded98733b4cd73ecc4852b753fbb7d2a731c60751626ab8

005ea050 <glitch::video::CTextureManager::~CTextureManager()>:
  5ea050: e92d4070     	push	{r4, r5, r6, lr}
  5ea054: e1a04000     	mov	r4, r0
  5ea058: ebfff88b     	bl	0x5e828c <glitch::video::CTextureManager::clearPlaceHolders()> @ imm = #-0x1dd4
  5ea05c: e1a00004     	mov	r0, r4
  5ea060: e3a01000     	mov	r1, #0
  5ea064: ebffffc3     	bl	0x5e9f78 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)> @ imm = #-0xf4
  5ea068: e5943030     	ldr	r3, [r4, #0x30]
  5ea06c: e5942034     	ldr	r2, [r4, #0x34]
  5ea070: e0632002     	rsb	r2, r3, r2
  5ea074: e1b02122     	lsrs	r2, r2, #2
  5ea078: 0a000008     	beq	0x5ea0a0 <glitch::video::CTextureManager::~CTextureManager()+0x50> @ imm = #0x20
  5ea07c: e3a05000     	mov	r5, #0
  5ea080: e7930105     	ldr	r0, [r3, r5, lsl #2]
  5ea084: ebf4cd3e     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2ccb08
  5ea088: e5943030     	ldr	r3, [r4, #0x30]
  5ea08c: e5942034     	ldr	r2, [r4, #0x34]
  5ea090: e2855001     	add	r5, r5, #1
  5ea094: e0632002     	rsb	r2, r3, r2
  5ea098: e1550142     	cmp	r5, r2, asr #2
  5ea09c: 3afffff7     	blo	0x5ea080 <glitch::video::CTextureManager::~CTextureManager()+0x30> @ imm = #-0x24
  5ea0a0: e594303c     	ldr	r3, [r4, #0x3c]
  5ea0a4: e5942040     	ldr	r2, [r4, #0x40]
  5ea0a8: e0632002     	rsb	r2, r3, r2
  5ea0ac: e1b02122     	lsrs	r2, r2, #2
  5ea0b0: 0a000008     	beq	0x5ea0d8 <glitch::video::CTextureManager::~CTextureManager()+0x88> @ imm = #0x20
  5ea0b4: e3a05000     	mov	r5, #0
  5ea0b8: e7930105     	ldr	r0, [r3, r5, lsl #2]
  5ea0bc: ebf4cd30     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2ccb40
  5ea0c0: e594303c     	ldr	r3, [r4, #0x3c]
  5ea0c4: e5942040     	ldr	r2, [r4, #0x40]
  5ea0c8: e2855001     	add	r5, r5, #1
  5ea0cc: e0632002     	rsb	r2, r3, r2
  5ea0d0: e1550142     	cmp	r5, r2, asr #2
  5ea0d4: 3afffff7     	blo	0x5ea0b8 <glitch::video::CTextureManager::~CTextureManager()+0x68> @ imm = #-0x24
  5ea0d8: e5943068     	ldr	r3, [r4, #0x68]
  5ea0dc: e2842068     	add	r2, r4, #104
  5ea0e0: e3530000     	cmp	r3, #0
  5ea0e4: 0a000005     	beq	0x5ea100 <glitch::video::CTextureManager::~CTextureManager()+0xb0> @ imm = #0x14
  5ea0e8: e5922008     	ldr	r2, [r2, #0x8]
  5ea0ec: e1a01003     	mov	r1, r3
  5ea0f0: e2840070     	add	r0, r4, #112
  5ea0f4: e0633002     	rsb	r3, r3, r2
  5ea0f8: e1a02143     	asr	r2, r3, #2
  5ea0fc: ebfff9e7     	bl	0x5e88a0 <std::allocator<glitch::video::ITexture*>::deallocate(glitch::video::ITexture**, unsigned int)> @ imm = #-0x1864
  5ea100: e594003c     	ldr	r0, [r4, #0x3c]
  5ea104: e3500000     	cmp	r0, #0
  5ea108: 0a000000     	beq	0x5ea110 <glitch::video::CTextureManager::~CTextureManager()+0xc0> @ imm = #0x0
  5ea10c: ebf498cf     	bl	0x310450 <GlitchFree(void*)> @ imm = #-0x2d9cc4
  5ea110: e2840030     	add	r0, r4, #48
  5ea114: ebfffb9d     	bl	0x5e8f90 <std::vector<boost::intrusive_ptr<glitch::video::IImageLoader>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IImageLoader>, (glitch::memory::E_MEMORY_HINT)0>>::~vector()> @ imm = #-0x118c
  5ea118: e594002c     	ldr	r0, [r4, #0x2c]
  5ea11c: e3500000     	cmp	r0, #0
  5ea120: 0a000000     	beq	0x5ea128 <glitch::video::CTextureManager::~CTextureManager()+0xd8> @ imm = #0x0
  5ea124: ebf4cd16     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2ccba8
  5ea128: e1a00004     	mov	r0, r4
  5ea12c: ebfffd9b     	bl	0x5e97a0 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::~SIDedCollection()> @ imm = #-0x994
  5ea130: e1a00004     	mov	r0, r4
  5ea134: e8bd8070     	pop	{r4, r5, r6, pc}

; RANGE texture_manager_remove_texture_raw: CTextureManager::removeTexture(ITexture*)
; ELF_VA=0x003849a0 size=172 file_offset=0x003849a0 sha256=cbf5dcc6fe056ac82493de46ab13c44cdde74dee3fb335bc52dbf3deb91f72a5

003849a0 <glitch::video::CTextureManager::removeTexture(glitch::video::ITexture*)>:
  3849a0: e92d4070     	push	{r4, r5, r6, lr}
  3849a4: e2515000     	subs	r5, r1, #0
  3849a8: e24dd010     	sub	sp, sp, #16
  3849ac: e1a04000     	mov	r4, r0
  3849b0: e58d1004     	str	r1, [sp, #0x4]
  3849b4: 0a000019     	beq	0x384a20 <glitch::video::CTextureManager::removeTexture(glitch::video::ITexture*)+0x80> @ imm = #0x64
  3849b8: e28d300c     	add	r3, sp, #12
  3849bc: e5900068     	ldr	r0, [r0, #0x68]
  3849c0: e594106c     	ldr	r1, [r4, #0x6c]
  3849c4: e28d2004     	add	r2, sp, #4
  3849c8: ebffffa8     	bl	0x384870 <glitch::video::ITexture** std::priv::__find<glitch::video::ITexture**, glitch::video::ITexture*>(glitch::video::ITexture**, glitch::video::ITexture**, glitch::video::ITexture* const&, std::random_access_iterator_tag const&)> @ imm = #-0x160
  3849cc: e594306c     	ldr	r3, [r4, #0x6c]
  3849d0: e1500003     	cmp	r0, r3
  3849d4: 0a000006     	beq	0x3849f4 <glitch::video::CTextureManager::removeTexture(glitch::video::ITexture*)+0x54> @ imm = #0x18
  3849d8: e2801004     	add	r1, r0, #4
  3849dc: e1530001     	cmp	r3, r1
  3849e0: 0a000001     	beq	0x3849ec <glitch::video::CTextureManager::removeTexture(glitch::video::ITexture*)+0x4c> @ imm = #0x4
  3849e4: e0532001     	subs	r2, r3, r1
  3849e8: 1a000014     	bne	0x384a40 <glitch::video::CTextureManager::removeTexture(glitch::video::ITexture*)+0xa0> @ imm = #0x50
  3849ec: e2433004     	sub	r3, r3, #4
  3849f0: e584306c     	str	r3, [r4, #0x6c]
  3849f4: e59d3004     	ldr	r3, [sp, #0x4]
  3849f8: e1a00004     	mov	r0, r4
  3849fc: e593101c     	ldr	r1, [r3, #0x1c]
  384a00: e5936038     	ldr	r6, [r3, #0x38]
  384a04: eb099133     	bl	0x5e8ed8 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::getId(char const*) const> @ imm = #0x2644cc
  384a08: e3a02000     	mov	r2, #0
  384a0c: e1a01000     	mov	r1, r0
  384a10: e1a00004     	mov	r0, r4
  384a14: eb099518     	bl	0x5e9e7c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)> @ imm = #0x265460
  384a18: e2505000     	subs	r5, r0, #0
  384a1c: 1a000002     	bne	0x384a2c <glitch::video::CTextureManager::removeTexture(glitch::video::ITexture*)+0x8c> @ imm = #0x8
  384a20: e1a00005     	mov	r0, r5
  384a24: e28dd010     	add	sp, sp, #16
  384a28: e8bd8070     	pop	{r4, r5, r6, pc}
  384a2c: e1a00004     	mov	r0, r4
  384a30: e2061003     	and	r1, r6, #3
  384a34: e59d2004     	ldr	r2, [sp, #0x4]
  384a38: eb098e08     	bl	0x5e8260 <glitch::video::CTextureManager::clearPlaceHolder(glitch::video::E_TEXTURE_TYPE, glitch::video::ITexture*)> @ imm = #0x263820
  384a3c: eafffff7     	b	0x384a20 <glitch::video::CTextureManager::removeTexture(glitch::video::ITexture*)+0x80> @ imm = #-0x24
  384a40: ebfe253c     	bl	0x30df38 <memmove@plt>  @ imm = #-0x76b10
  384a44: e594306c     	ldr	r3, [r4, #0x6c]
  384a48: eaffffe7     	b	0x3849ec <glitch::video::CTextureManager::removeTexture(glitch::video::ITexture*)+0x4c> @ imm = #-0x64

; RANGE texture_manager_remove_texture_intrusive: CTextureManager::removeTexture(intrusive_ptr<ITexture>&)
; ELF_VA=0x00384eb4 size=60 file_offset=0x00384eb4 sha256=aa9bf343f924968362268476444e5b867ac7d2b1d6a32aeda3b97ac5dddfacf3

00384eb4 <glitch::video::CTextureManager::removeTexture(boost::intrusive_ptr<glitch::video::ITexture>&)>:
  384eb4: e92d4070     	push	{r4, r5, r6, lr}
  384eb8: e5914000     	ldr	r4, [r1]
  384ebc: e1a05000     	mov	r5, r0
  384ec0: e3540000     	cmp	r4, #0
  384ec4: 0a000007     	beq	0x384ee8 <glitch::video::CTextureManager::removeTexture(boost::intrusive_ptr<glitch::video::ITexture>&)+0x34> @ imm = #0x1c
  384ec8: e3a03000     	mov	r3, #0
  384ecc: e5813000     	str	r3, [r1]
  384ed0: e1a00004     	mov	r0, r4
  384ed4: ebfe61aa     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x67958
  384ed8: e1a00005     	mov	r0, r5
  384edc: e1a01004     	mov	r1, r4
  384ee0: e8bd4070     	pop	{r4, r5, r6, lr}
  384ee4: eafffead     	b	0x3849a0 <glitch::video::CTextureManager::removeTexture(glitch::video::ITexture*)> @ imm = #-0x54c
  384ee8: e1a00004     	mov	r0, r4
  384eec: e8bd8070     	pop	{r4, r5, r6, pc}

; RANGE texture_manager_set_placeholder: CTextureManager::setPlaceHolder(...) 
; ELF_VA=0x005ea228 size=128 file_offset=0x005ea228 sha256=c14ab08f2efa31a2c0bdd69b552ec530538d3f7aee23cac37752ebff2aabc820

005ea228 <glitch::video::CTextureManager::setPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_TEXTURE_TYPE)>:
  5ea228: e35300ff     	cmp	r3, #255
  5ea22c: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5ea230: e1a04003     	mov	r4, r3
  5ea234: e1a05000     	mov	r5, r0
  5ea238: e1a08002     	mov	r8, r2
  5ea23c: 0a000010     	beq	0x5ea284 <glitch::video::CTextureManager::setPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_TEXTURE_TYPE)+0x5c> @ imm = #0x40
  5ea240: e1a06101     	lsl	r6, r1, #2
  5ea244: e0867004     	add	r7, r6, r4
  5ea248: e2877012     	add	r7, r7, #18
  5ea24c: e7951107     	ldr	r1, [r5, r7, lsl #2]
  5ea250: e3510000     	cmp	r1, #0
  5ea254: 0a000002     	beq	0x5ea264 <glitch::video::CTextureManager::setPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_TEXTURE_TYPE)+0x3c> @ imm = #0x8
  5ea258: e1a00005     	mov	r0, r5
  5ea25c: ebf669cf     	bl	0x3849a0 <glitch::video::CTextureManager::removeTexture(glitch::video::ITexture*)> @ imm = #-0x2658c4
  5ea260: e7951107     	ldr	r1, [r5, r7, lsl #2]
  5ea264: e5913004     	ldr	r3, [r1, #0x4]
  5ea268: e3530001     	cmp	r3, #1
  5ea26c: 0a00000a     	beq	0x5ea29c <glitch::video::CTextureManager::setPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_TEXTURE_TYPE)+0x74> @ imm = #0x28
  5ea270: e5983000     	ldr	r3, [r8]
  5ea274: e0864004     	add	r4, r6, r4
  5ea278: e2844012     	add	r4, r4, #18
  5ea27c: e7853104     	str	r3, [r5, r4, lsl #2]
  5ea280: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5ea284: e5923000     	ldr	r3, [r2]
  5ea288: e3530000     	cmp	r3, #0
  5ea28c: 0afffffb     	beq	0x5ea280 <glitch::video::CTextureManager::setPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_TEXTURE_TYPE)+0x58> @ imm = #-0x14
  5ea290: e5934038     	ldr	r4, [r3, #0x38]
  5ea294: e2044003     	and	r4, r4, #3
  5ea298: eaffffe8     	b	0x5ea240 <glitch::video::CTextureManager::setPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_TEXTURE_TYPE)+0x18> @ imm = #-0x60
  5ea29c: e1a00005     	mov	r0, r5
  5ea2a0: ebf669be     	bl	0x3849a0 <glitch::video::CTextureManager::removeTexture(glitch::video::ITexture*)> @ imm = #-0x265908
  5ea2a4: eafffff1     	b	0x5ea270 <glitch::video::CTextureManager::setPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_TEXTURE_TYPE)+0x48> @ imm = #-0x3c

; RANGE texture_manager_clear_placeholder: CTextureManager::clearPlaceHolder(...) 
; ELF_VA=0x005e8260 size=44 file_offset=0x005e8260 sha256=811461d1734bf0cd542bffbcb4391eaebf6e9416d4be6f44cd3054cd3b5c44d5

005e8260 <glitch::video::CTextureManager::clearPlaceHolder(glitch::video::E_TEXTURE_TYPE, glitch::video::ITexture*)>:
  5e8260: e2813012     	add	r3, r1, #18
  5e8264: e790c103     	ldr	r12, [r0, r3, lsl #2]
  5e8268: e2811016     	add	r1, r1, #22
  5e826c: e15c0002     	cmp	r12, r2
  5e8270: 03a0c000     	moveq	r12, #0
  5e8274: 0780c103     	streq	r12, [r0, r3, lsl #2]
  5e8278: e7903101     	ldr	r3, [r0, r1, lsl #2]
  5e827c: e1530002     	cmp	r3, r2
  5e8280: 03a03000     	moveq	r3, #0
  5e8284: 07803101     	streq	r3, [r0, r1, lsl #2]
  5e8288: e12fff1e     	bx	lr

; RANGE texture_cache_remove: SIDedCollection<ITexture>::remove(unsigned short, bool)
; ELF_VA=0x005e9e7c size=252 file_offset=0x005e9e7c sha256=61f268406b3778415efc5989bebcb0893c262582054e436a9345628590a39072

005e9e7c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)>:
  5e9e7c: e92d4070     	push	{r4, r5, r6, lr}
  5e9e80: e1a04000     	mov	r4, r0
  5e9e84: e594301c     	ldr	r3, [r4, #0x1c]
  5e9e88: e5900018     	ldr	r0, [r0, #0x18]
  5e9e8c: e24dd010     	sub	sp, sp, #16
  5e9e90: e1a05001     	mov	r5, r1
  5e9e94: e0603003     	rsb	r3, r0, r3
  5e9e98: e15101c3     	cmp	r1, r3, asr #3
  5e9e9c: 2a00002d     	bhs	0x5e9f58 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)+0xdc> @ imm = #0xb4
  5e9ea0: e7903181     	ldr	r3, [r0, r1, lsl #3]
  5e9ea4: e0806181     	add	r6, r0, r1, lsl #3
  5e9ea8: e3530000     	cmp	r3, #0
  5e9eac: 0a000029     	beq	0x5e9f58 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)+0xdc> @ imm = #0xa4
  5e9eb0: e5933004     	ldr	r3, [r3, #0x4]
  5e9eb4: e3530001     	cmp	r3, #1
  5e9eb8: 0a000001     	beq	0x5e9ec4 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)+0x48> @ imm = #0x4
  5e9ebc: e3520000     	cmp	r2, #0
  5e9ec0: 0a000024     	beq	0x5e9f58 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)+0xdc> @ imm = #0x90
  5e9ec4: e5963004     	ldr	r3, [r6, #0x4]
  5e9ec8: e28d1010     	add	r1, sp, #16
  5e9ecc: e1a00004     	mov	r0, r4
  5e9ed0: e5213004     	str	r3, [r1, #-0x4]!
  5e9ed4: ebfffd0b     	bl	0x5e9308 <std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0>>::erase(std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>>)> @ imm = #-0xbd4
  5e9ed8: e1a00006     	mov	r0, r6
  5e9edc: ebffffdb     	bl	0x5e9e50 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::reset()> @ imm = #-0x94
  5e9ee0: e1d422b4     	ldrh	r2, [r4, #36]
  5e9ee4: e1d432b6     	ldrh	r3, [r4, #38]
  5e9ee8: e594001c     	ldr	r0, [r4, #0x1c]
  5e9eec: e5941018     	ldr	r1, [r4, #0x18]
  5e9ef0: e1520005     	cmp	r2, r5
  5e9ef4: e2433001     	sub	r3, r3, #1
  5e9ef8: 81c452b4     	strhhi	r5, [r4, #36]
  5e9efc: e1500001     	cmp	r0, r1
  5e9f00: e1c432b6     	strh	r3, [r4, #38]
  5e9f04: 0a000019     	beq	0x5e9f70 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)+0xf4> @ imm = #0x64
  5e9f08: e1a03000     	mov	r3, r0
  5e9f0c: e5132008     	ldr	r2, [r3, #-0x8]
  5e9f10: e3520000     	cmp	r2, #0
  5e9f14: 0a000012     	beq	0x5e9f64 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)+0xe8> @ imm = #0x48
  5e9f18: e0633000     	rsb	r3, r3, r0
  5e9f1c: e0611000     	rsb	r1, r1, r0
  5e9f20: e1a031c3     	asr	r3, r3, #3
  5e9f24: e06311c1     	rsb	r1, r3, r1, asr #3
  5e9f28: e2840018     	add	r0, r4, #24
  5e9f2c: e3a03000     	mov	r3, #0
  5e9f30: e28d2004     	add	r2, sp, #4
  5e9f34: e58d3008     	str	r3, [sp, #0x8]
  5e9f38: e58d3004     	str	r3, [sp, #0x4]
  5e9f3c: ebffff9f     	bl	0x5e9dc0 <std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0>>::resize(unsigned int, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&)> @ imm = #-0x184
  5e9f40: e59d0004     	ldr	r0, [sp, #0x4]
  5e9f44: e3500000     	cmp	r0, #0
  5e9f48: 0a000008     	beq	0x5e9f70 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)+0xf4> @ imm = #0x20
  5e9f4c: ebf4cd8c     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cc9d0
  5e9f50: e3a00001     	mov	r0, #1
  5e9f54: ea000000     	b	0x5e9f5c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)+0xe0> @ imm = #0x0
  5e9f58: e3a00000     	mov	r0, #0
  5e9f5c: e28dd010     	add	sp, sp, #16
  5e9f60: e8bd8070     	pop	{r4, r5, r6, pc}
  5e9f64: e2433008     	sub	r3, r3, #8
  5e9f68: e1510003     	cmp	r1, r3
  5e9f6c: 1affffe6     	bne	0x5e9f0c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)+0x90> @ imm = #-0x68
  5e9f70: e3a00001     	mov	r0, #1
  5e9f74: eafffff8     	b	0x5e9f5c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)+0xe0> @ imm = #-0x20

; RANGE texture_cache_entry_reset: SIDedCollection<ITexture>::SEntry::reset()
; ELF_VA=0x005e9e50 size=44 file_offset=0x005e9e50 sha256=44a9c593634f86cc4abbe79dd962a118aa3d169c45e6d1039432f02aba09bfbd

005e9e50 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::reset()>:
  5e9e50: e92d4010     	push	{r4, lr}
  5e9e54: e1a04000     	mov	r4, r0
  5e9e58: e5900000     	ldr	r0, [r0]
  5e9e5c: e3a03000     	mov	r3, #0
  5e9e60: e5843000     	str	r3, [r4]
  5e9e64: e1500003     	cmp	r0, r3
  5e9e68: 0a000000     	beq	0x5e9e70 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::reset()+0x20> @ imm = #0x0
  5e9e6c: ebf4cdc4     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cc8f0
  5e9e70: e3a03000     	mov	r3, #0
  5e9e74: e5843004     	str	r3, [r4, #0x4]
  5e9e78: e8bd8010     	pop	{r4, pc}

; RANGE bres_manager_unload_iterator: CResFileManager::unload(iterator, bool)
; ELF_VA=0x006584fc size=104 file_offset=0x006584fc sha256=c6e00ba7814a823bbbb372a03ceccae912560564fa63d83af0cf9a16b719aaef

006584fc <glitch::collada::CResFileManager::unload(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>>, bool)>:
  6584fc: e92d4070     	push	{r4, r5, r6, lr}
  658500: e5913000     	ldr	r3, [r1]
  658504: e2804008     	add	r4, r0, #8
  658508: e24dd008     	sub	sp, sp, #8
  65850c: e1540003     	cmp	r4, r3
  658510: e1a05001     	mov	r5, r1
  658514: 03a06003     	moveq	r6, #3
  658518: 0a00000e     	beq	0x658558 <glitch::collada::CResFileManager::unload(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>>, bool)+0x5c> @ imm = #0x38
  65851c: e5930028     	ldr	r0, [r3, #0x28]
  658520: e5903004     	ldr	r3, [r0, #0x4]
  658524: e3530001     	cmp	r3, #1
  658528: 93a06000     	movls	r6, #0
  65852c: 9a000003     	bls	0x658540 <glitch::collada::CResFileManager::unload(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>>, bool)+0x44> @ imm = #0xc
  658530: e3520000     	cmp	r2, #0
  658534: 03a06002     	moveq	r6, #2
  658538: 0a000006     	beq	0x658558 <glitch::collada::CResFileManager::unload(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>>, bool)+0x5c> @ imm = #0x18
  65853c: e3a06001     	mov	r6, #1
  658540: ebf3140f     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x33afc4
  658544: e5953000     	ldr	r3, [r5]
  658548: e28d1008     	add	r1, sp, #8
  65854c: e1a00004     	mov	r0, r4
  658550: e5213004     	str	r3, [r1, #-0x4]!
  658554: ebffffd3     	bl	0x6584a8 <std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>>, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0>>::erase(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>>)> @ imm = #-0xb4
  658558: e1a00006     	mov	r0, r6
  65855c: e28dd008     	add	sp, sp, #8
  658560: e8bd8070     	pop	{r4, r5, r6, pc}

; RANGE bres_manager_unload_name: CResFileManager::unload(char const*, bool)
; ELF_VA=0x00659b60 size=220 file_offset=0x00659b60 sha256=0e54c0532f165bf9df45849c0fc14258e513f29616c5773d08fcda44d2ca26e6

00659b60 <glitch::collada::CResFileManager::unload(char const*, bool)>:
  659b60: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  659b64: e59f40c8     	ldr	r4, [pc, #0xc8]         @ 0x659c34 <glitch::collada::CResFileManager::unload(char const*, bool)+0xd4>
  659b68: e59f90c8     	ldr	r9, [pc, #0xc8]         @ 0x659c38 <glitch::collada::CResFileManager::unload(char const*, bool)+0xd8>
  659b6c: e1a07000     	mov	r7, r0
  659b70: e08f4004     	add	r4, pc, r4
  659b74: e7940009     	ldr	r0, [r4, r9]
  659b78: e5973020     	ldr	r3, [r7, #0x20]
  659b7c: e24dd044     	sub	sp, sp, #68
  659b80: e5900000     	ldr	r0, [r0]
  659b84: e28d5024     	add	r5, sp, #36
  659b88: e28d600c     	add	r6, sp, #12
  659b8c: e58d003c     	str	r0, [sp, #0x3c]
  659b90: e5938034     	ldr	r8, [r3, #0x34]
  659b94: e1a0b002     	mov	r11, r2
  659b98: e1a00005     	mov	r0, r5
  659b9c: e5983000     	ldr	r3, [r8]
  659ba0: e28d2008     	add	r2, sp, #8
  659ba4: e593a034     	ldr	r10, [r3, #0x34]
  659ba8: ebf33123     	bl	0x32603c <std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>::basic_string(char const*, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> const&)> @ imm = #-0x333b74
  659bac: e1a02005     	mov	r2, r5
  659bb0: e1a01008     	mov	r1, r8
  659bb4: e1a00006     	mov	r0, r6
  659bb8: e12fff3a     	blx	r10
  659bbc: e1a01006     	mov	r1, r6
  659bc0: e2870008     	add	r0, r7, #8
  659bc4: ebffffb0     	bl	0x659a8c <std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>>, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0>>::_M_find<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>>(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const&) const> @ imm = #-0x140
  659bc8: e28d1040     	add	r1, sp, #64
  659bcc: e521003c     	str	r0, [r1, #-0x3c]!
  659bd0: e1a0200b     	mov	r2, r11
  659bd4: e1a00007     	mov	r0, r7
  659bd8: ebfffa47     	bl	0x6584fc <glitch::collada::CResFileManager::unload(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>>, bool)> @ imm = #-0x16e4
  659bdc: e1a07000     	mov	r7, r0
  659be0: e59d0020     	ldr	r0, [sp, #0x20]
  659be4: e1500006     	cmp	r0, r6
  659be8: 0a000002     	beq	0x659bf8 <glitch::collada::CResFileManager::unload(char const*, bool)+0x98> @ imm = #0x8
  659bec: e3500000     	cmp	r0, #0
  659bf0: 0a000000     	beq	0x659bf8 <glitch::collada::CResFileManager::unload(char const*, bool)+0x98> @ imm = #0x0
  659bf4: ebf2da15     	bl	0x310450 <GlitchFree(void*)> @ imm = #-0x3497ac
  659bf8: e59d0038     	ldr	r0, [sp, #0x38]
  659bfc: e1500005     	cmp	r0, r5
  659c00: 0a000002     	beq	0x659c10 <glitch::collada::CResFileManager::unload(char const*, bool)+0xb0> @ imm = #0x8
  659c04: e3500000     	cmp	r0, #0
  659c08: 0a000000     	beq	0x659c10 <glitch::collada::CResFileManager::unload(char const*, bool)+0xb0> @ imm = #0x0
  659c0c: ebf2da0f     	bl	0x310450 <GlitchFree(void*)> @ imm = #-0x3497c4
  659c10: e7943009     	ldr	r3, [r4, r9]
  659c14: e59d203c     	ldr	r2, [sp, #0x3c]
  659c18: e1a00007     	mov	r0, r7
  659c1c: e5933000     	ldr	r3, [r3]
  659c20: e1520003     	cmp	r2, r3
  659c24: 1a000001     	bne	0x659c30 <glitch::collada::CResFileManager::unload(char const*, bool)+0xd0> @ imm = #0x4
  659c28: e28dd044     	add	sp, sp, #68
  659c2c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  659c30: ebf2d1b6     	bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x34b928
  659c34: 20 af 33 00  	.word	0x0033af20
  659c38: ac 40 00 00  	.word	0x000040ac

; RANGE bres_manager_unload_all: CResFileManager::unloadAll()
; ELF_VA=0x00659c3c size=192 file_offset=0x00659c3c sha256=aafac2ee2df19112cc017c65227ef172c99effa9681373726c3ae3ab7293f1d5

00659c3c <glitch::collada::CResFileManager::unloadAll()>:
  659c3c: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  659c40: e5903010     	ldr	r3, [r0, #0x10]
  659c44: e2806008     	add	r6, r0, #8
  659c48: e1a05000     	mov	r5, r0
  659c4c: e1560003     	cmp	r6, r3
  659c50: e3a07000     	mov	r7, #0
  659c54: 0a000010     	beq	0x659c9c <glitch::collada::CResFileManager::unloadAll()+0x60> @ imm = #0x40
  659c58: e593400c     	ldr	r4, [r3, #0xc]
  659c5c: e3540000     	cmp	r4, #0
  659c60: 1a000001     	bne	0x659c6c <glitch::collada::CResFileManager::unloadAll()+0x30> @ imm = #0x4
  659c64: ea00000e     	b	0x659ca4 <glitch::collada::CResFileManager::unloadAll()+0x68> @ imm = #0x38
  659c68: e1a04002     	mov	r4, r2
  659c6c: e5942008     	ldr	r2, [r4, #0x8]
  659c70: e3520000     	cmp	r2, #0
  659c74: 1afffffb     	bne	0x659c68 <glitch::collada::CResFileManager::unloadAll()+0x2c> @ imm = #-0x14
  659c78: e5931024     	ldr	r1, [r3, #0x24]
  659c7c: e1a00005     	mov	r0, r5
  659c80: e3a02000     	mov	r2, #0
  659c84: ebffffb5     	bl	0x659b60 <glitch::collada::CResFileManager::unload(char const*, bool)> @ imm = #-0x12c
  659c88: e3500000     	cmp	r0, #0
  659c8c: 02877001     	addeq	r7, r7, #1
  659c90: e1a03004     	mov	r3, r4
  659c94: e1560003     	cmp	r6, r3
  659c98: 1affffee     	bne	0x659c58 <glitch::collada::CResFileManager::unloadAll()+0x1c> @ imm = #-0x48
  659c9c: e1a00007     	mov	r0, r7
  659ca0: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  659ca4: e5932004     	ldr	r2, [r3, #0x4]
  659ca8: e592100c     	ldr	r1, [r2, #0xc]
  659cac: e1530001     	cmp	r3, r1
  659cb0: 11a04003     	movne	r4, r3
  659cb4: 13a01000     	movne	r1, #0
  659cb8: 1a000005     	bne	0x659cd4 <glitch::collada::CResFileManager::unloadAll()+0x98> @ imm = #0x14
  659cbc: e1a04002     	mov	r4, r2
  659cc0: e5922004     	ldr	r2, [r2, #0x4]
  659cc4: e592100c     	ldr	r1, [r2, #0xc]
  659cc8: e1510004     	cmp	r1, r4
  659ccc: 0afffffa     	beq	0x659cbc <glitch::collada::CResFileManager::unloadAll()+0x80> @ imm = #-0x18
  659cd0: e594100c     	ldr	r1, [r4, #0xc]
  659cd4: e1510002     	cmp	r1, r2
  659cd8: 11a04002     	movne	r4, r2
  659cdc: e5931024     	ldr	r1, [r3, #0x24]
  659ce0: e1a00005     	mov	r0, r5
  659ce4: e3a02000     	mov	r2, #0
  659ce8: ebffff9c     	bl	0x659b60 <glitch::collada::CResFileManager::unload(char const*, bool)> @ imm = #-0x190
  659cec: e3500000     	cmp	r0, #0
  659cf0: 02877001     	addeq	r7, r7, #1
  659cf4: e1a03004     	mov	r3, r4
  659cf8: eaffffe5     	b	0x659c94 <glitch::collada::CResFileManager::unloadAll()+0x58> @ imm = #-0x6c

; RANGE bres_release_objects: CResFile::releaseObjects()
; ELF_VA=0x00658744 size=744 file_offset=0x00658744 sha256=3037b41ceaf71e9cbf6758eb93eb6f519cb6aa32d919d928a186b980b8b1539d

00658744 <glitch::collada::CResFile::releaseObjects()>:
  658744: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  658748: e59f72d0     	ldr	r7, [pc, #0x2d0]        @ 0x658a20 <glitch::collada::CResFile::releaseObjects()+0x2dc>
  65874c: e59f22d0     	ldr	r2, [pc, #0x2d0]        @ 0x658a24 <glitch::collada::CResFile::releaseObjects()+0x2e0>
  658750: e5903004     	ldr	r3, [r0, #0x4]
  658754: e08f7007     	add	r7, pc, r7
  658758: e5901024     	ldr	r1, [r0, #0x24]
  65875c: e7972002     	ldr	r2, [r7, r2]
  658760: e59f82c0     	ldr	r8, [pc, #0x2c0]        @ 0x658a28 <glitch::collada::CResFile::releaseObjects()+0x2e4>
  658764: e3530000     	cmp	r3, #0
  658768: e24dd024     	sub	sp, sp, #36
  65876c: 12833001     	addne	r3, r3, #1
  658770: e591b020     	ldr	r11, [r1, #0x20]
  658774: e58d2018     	str	r2, [sp, #0x18]
  658778: e58d0014     	str	r0, [sp, #0x14]
  65877c: 15803004     	strne	r3, [r0, #0x4]
  658780: e7973008     	ldr	r3, [r7, r8]
  658784: e59b604c     	ldr	r6, [r11, #0x4c]
  658788: e1a0a000     	mov	r10, r0
  65878c: e5933000     	ldr	r3, [r3]
  658790: e3560000     	cmp	r6, #0
  658794: e5933020     	ldr	r3, [r3, #0x20]
  658798: e5933010     	ldr	r3, [r3, #0x10]
  65879c: e59330e0     	ldr	r3, [r3, #0xe0]
  6587a0: e58d3008     	str	r3, [sp, #0x8]
  6587a4: da000017     	ble	0x658808 <glitch::collada::CResFile::releaseObjects()+0xc4> @ imm = #0x5c
  6587a8: e3a04000     	mov	r4, #0
  6587ac: e1a05004     	mov	r5, r4
  6587b0: e1a09004     	mov	r9, r4
  6587b4: e59b3050     	ldr	r3, [r11, #0x50]
  6587b8: e2855001     	add	r5, r5, #1
  6587bc: e0833004     	add	r3, r3, r4
  6587c0: e5931010     	ldr	r1, [r3, #0x10]
  6587c4: e2844014     	add	r4, r4, #20
  6587c8: e2510000     	subs	r0, r1, #0
  6587cc: 0a00000b     	beq	0x658800 <glitch::collada::CResFile::releaseObjects()+0xbc> @ imm = #0x2c
  6587d0: e5839010     	str	r9, [r3, #0x10]
  6587d4: e58d1004     	str	r1, [sp, #0x4]
  6587d8: ebf31369     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x33b25c
  6587dc: e7973008     	ldr	r3, [r7, r8]
  6587e0: e59d1004     	ldr	r1, [sp, #0x4]
  6587e4: e5933000     	ldr	r3, [r3]
  6587e8: e5d33028     	ldrb	r3, [r3, #0x28]
  6587ec: e3530000     	cmp	r3, #0
  6587f0: 0a000002     	beq	0x658800 <glitch::collada::CResFile::releaseObjects()+0xbc> @ imm = #0x8
  6587f4: e5913004     	ldr	r3, [r1, #0x4]
  6587f8: e3530001     	cmp	r3, #1
  6587fc: 0a000084     	beq	0x658a14 <glitch::collada::CResFile::releaseObjects()+0x2d0> @ imm = #0x210
  658800: e1550006     	cmp	r5, r6
  658804: 1affffea     	bne	0x6587b4 <glitch::collada::CResFile::releaseObjects()+0x70> @ imm = #-0x58
  658808: e59b4008     	ldr	r4, [r11, #0x8]
  65880c: e3540000     	cmp	r4, #0
  658810: 0a00000d     	beq	0x65884c <glitch::collada::CResFile::releaseObjects()+0x108> @ imm = #0x34
  658814: e3a05000     	mov	r5, #0
  658818: e28d601c     	add	r6, sp, #28
  65881c: e5943034     	ldr	r3, [r4, #0x34]
  658820: e1a00006     	mov	r0, r6
  658824: e3530000     	cmp	r3, #0
  658828: 0a000004     	beq	0x658840 <glitch::collada::CResFile::releaseObjects()+0xfc> @ imm = #0x10
  65882c: e58d501c     	str	r5, [sp, #0x1c]
  658830: e5943034     	ldr	r3, [r4, #0x34]
  658834: e58d301c     	str	r3, [sp, #0x1c]
  658838: e5845034     	str	r5, [r4, #0x34]
  65883c: ebfc868a     	bl	0x57a26c <boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr()> @ imm = #-0xde5d8
  658840: e5944038     	ldr	r4, [r4, #0x38]
  658844: e3540000     	cmp	r4, #0
  658848: 1afffff3     	bne	0x65881c <glitch::collada::CResFile::releaseObjects()+0xd8> @ imm = #-0x34
  65884c: e59b2068     	ldr	r2, [r11, #0x68]
  658850: e3520000     	cmp	r2, #0
  658854: e58d200c     	str	r2, [sp, #0xc]
  658858: da00003e     	ble	0x658958 <glitch::collada::CResFile::releaseObjects()+0x214> @ imm = #0xf8
  65885c: e3a03000     	mov	r3, #0
  658860: e58d3008     	str	r3, [sp, #0x8]
  658864: e1a08003     	mov	r8, r3
  658868: e59b306c     	ldr	r3, [r11, #0x6c]
  65886c: e59d2008     	ldr	r2, [sp, #0x8]
  658870: e0833202     	add	r3, r3, r2, lsl #4
  658874: e5935008     	ldr	r5, [r3, #0x8]
  658878: e3550000     	cmp	r5, #0
  65887c: 1a00002f     	bne	0x658940 <glitch::collada::CResFile::releaseObjects()+0x1fc> @ imm = #0xbc
  658880: e593700c     	ldr	r7, [r3, #0xc]
  658884: e5974000     	ldr	r4, [r7]
  658888: e3540000     	cmp	r4, #0
  65888c: 1a000055     	bne	0x6589e8 <glitch::collada::CResFile::releaseObjects()+0x2a4> @ imm = #0x154
  658890: e5976004     	ldr	r6, [r7, #0x4]
  658894: e3560000     	cmp	r6, #0
  658898: da000010     	ble	0x6588e0 <glitch::collada::CResFile::releaseObjects()+0x19c> @ imm = #0x40
  65889c: e1a05004     	mov	r5, r4
  6588a0: e5971008     	ldr	r1, [r7, #0x8]
  6588a4: e1a0000a     	mov	r0, r10
  6588a8: e2855001     	add	r5, r5, #1
  6588ac: e0811004     	add	r1, r1, r4
  6588b0: e2811010     	add	r1, r1, #16
  6588b4: ebfffcf4     	bl	0x657c8c <glitch::collada::CResFile::releaseBuffer(boost::intrusive_ptr<glitch::video::IBuffer>&)> @ imm = #-0xc30
  6588b8: e5973008     	ldr	r3, [r7, #0x8]
  6588bc: e0833004     	add	r3, r3, r4
  6588c0: e5930010     	ldr	r0, [r3, #0x10]
  6588c4: e2844014     	add	r4, r4, #20
  6588c8: e5838010     	str	r8, [r3, #0x10]
  6588cc: e3500000     	cmp	r0, #0
  6588d0: 0a000000     	beq	0x6588d8 <glitch::collada::CResFile::releaseObjects()+0x194> @ imm = #0x0
  6588d4: ebf3132a     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x33b358
  6588d8: e1550006     	cmp	r5, r6
  6588dc: 1affffef     	bne	0x6588a0 <glitch::collada::CResFile::releaseObjects()+0x15c> @ imm = #-0x44
  6588e0: e597900c     	ldr	r9, [r7, #0xc]
  6588e4: e3590000     	cmp	r9, #0
  6588e8: da000014     	ble	0x658940 <glitch::collada::CResFile::releaseObjects()+0x1fc> @ imm = #0x50
  6588ec: e3a05000     	mov	r5, #0
  6588f0: e1a06005     	mov	r6, r5
  6588f4: e5974010     	ldr	r4, [r7, #0x10]
  6588f8: e1a0000a     	mov	r0, r10
  6588fc: e2866001     	add	r6, r6, #1
  658900: e0844005     	add	r4, r4, r5
  658904: e2841030     	add	r1, r4, #48
  658908: ebfffcdf     	bl	0x657c8c <glitch::collada::CResFile::releaseBuffer(boost::intrusive_ptr<glitch::video::IBuffer>&)> @ imm = #-0xc84
  65890c: e5940030     	ldr	r0, [r4, #0x30]
  658910: e2855038     	add	r5, r5, #56
  658914: e5848030     	str	r8, [r4, #0x30]
  658918: e3500000     	cmp	r0, #0
  65891c: 0a000000     	beq	0x658924 <glitch::collada::CResFile::releaseObjects()+0x1e0> @ imm = #0x0
  658920: ebf31317     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x33b3a4
  658924: e5940034     	ldr	r0, [r4, #0x34]
  658928: e5848034     	str	r8, [r4, #0x34]
  65892c: e3500000     	cmp	r0, #0
  658930: 0a000000     	beq	0x658938 <glitch::collada::CResFile::releaseObjects()+0x1f4> @ imm = #0x0
  658934: ebf31312     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x33b3b8
  658938: e1560009     	cmp	r6, r9
  65893c: 1affffec     	bne	0x6588f4 <glitch::collada::CResFile::releaseObjects()+0x1b0> @ imm = #-0x50
  658940: e59d3008     	ldr	r3, [sp, #0x8]
  658944: e59d200c     	ldr	r2, [sp, #0xc]
  658948: e2833001     	add	r3, r3, #1
  65894c: e1530002     	cmp	r3, r2
  658950: e58d3008     	str	r3, [sp, #0x8]
  658954: 1affffc3     	bne	0x658868 <glitch::collada::CResFile::releaseObjects()+0x124> @ imm = #-0xf4
  658958: e59b6070     	ldr	r6, [r11, #0x70]
  65895c: e3560000     	cmp	r6, #0
  658960: da000011     	ble	0x6589ac <glitch::collada::CResFile::releaseObjects()+0x268> @ imm = #0x44
  658964: e3a04000     	mov	r4, #0
  658968: e1a05004     	mov	r5, r4
  65896c: ea000001     	b	0x658978 <glitch::collada::CResFile::releaseObjects()+0x234> @ imm = #0x4
  658970: e1550006     	cmp	r5, r6
  658974: 0a00000c     	beq	0x6589ac <glitch::collada::CResFile::releaseObjects()+0x268> @ imm = #0x30
  658978: e59b3074     	ldr	r3, [r11, #0x74]
  65897c: e2855001     	add	r5, r5, #1
  658980: e7932004     	ldr	r2, [r3, r4]
  658984: e0833004     	add	r3, r3, r4
  658988: e284400c     	add	r4, r4, #12
  65898c: e3520000     	cmp	r2, #0
  658990: 1afffff6     	bne	0x658970 <glitch::collada::CResFile::releaseObjects()+0x22c> @ imm = #-0x28
  658994: e5931008     	ldr	r1, [r3, #0x8]
  658998: e1a0000a     	mov	r0, r10
  65899c: e2811094     	add	r1, r1, #148
  6589a0: ebfffcb9     	bl	0x657c8c <glitch::collada::CResFile::releaseBuffer(boost::intrusive_ptr<glitch::video::IBuffer>&)> @ imm = #-0xd1c
  6589a4: e1550006     	cmp	r5, r6
  6589a8: 1afffff2     	bne	0x658978 <glitch::collada::CResFile::releaseObjects()+0x234> @ imm = #-0x38
  6589ac: e59b4004     	ldr	r4, [r11, #0x4]
  6589b0: e3540000     	cmp	r4, #0
  6589b4: 0a000007     	beq	0x6589d8 <glitch::collada::CResFile::releaseObjects()+0x294> @ imm = #0x1c
  6589b8: e5940014     	ldr	r0, [r4, #0x14]
  6589bc: e1500004     	cmp	r0, r4
  6589c0: 0a000002     	beq	0x6589d0 <glitch::collada::CResFile::releaseObjects()+0x28c> @ imm = #0x8
  6589c4: e3500000     	cmp	r0, #0
  6589c8: 0a000000     	beq	0x6589d0 <glitch::collada::CResFile::releaseObjects()+0x28c> @ imm = #0x0
  6589cc: ebf2de9f     	bl	0x310450 <GlitchFree(void*)> @ imm = #-0x348584
  6589d0: e1a00004     	mov	r0, r4
  6589d4: ebf2d635     	bl	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x34a72c
  6589d8: e28d0014     	add	r0, sp, #20
  6589dc: ebff02a4     	bl	0x619474 <glitch::collada::CColladaDatabase::~CColladaDatabase()> @ imm = #-0x3f570
  6589e0: e28dd024     	add	sp, sp, #36
  6589e4: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6589e8: e5971008     	ldr	r1, [r7, #0x8]
  6589ec: e1a0000a     	mov	r0, r10
  6589f0: e2811028     	add	r1, r1, #40
  6589f4: ebfffca4     	bl	0x657c8c <glitch::collada::CResFile::releaseBuffer(boost::intrusive_ptr<glitch::video::IBuffer>&)> @ imm = #-0xd70
  6589f8: e5973008     	ldr	r3, [r7, #0x8]
  6589fc: e5930028     	ldr	r0, [r3, #0x28]
  658a00: e5835028     	str	r5, [r3, #0x28]
  658a04: e3500000     	cmp	r0, #0
  658a08: 0affffb4     	beq	0x6588e0 <glitch::collada::CResFile::releaseObjects()+0x19c> @ imm = #-0x130
  658a0c: ebf312dc     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x33b490
  658a10: eaffffb2     	b	0x6588e0 <glitch::collada::CResFile::releaseObjects()+0x19c> @ imm = #-0x138
  658a14: e59d0008     	ldr	r0, [sp, #0x8]
  658a18: ebf4afe0     	bl	0x3849a0 <glitch::video::CTextureManager::removeTexture(glitch::video::ITexture*)> @ imm = #-0x2d4080
  658a1c: eaffff77     	b	0x658800 <glitch::collada::CResFile::releaseObjects()+0xbc> @ imm = #-0x224
  658a20: 3c c3 33 00  	.word	0x0033c33c
  658a24: 10 47 00 00  	.word	0x00004710
  658a28: 48 44 00 00  	.word	0x00004448

; RANGE bres_file_destructor: CResFile::~CResFile() [D1]
; ELF_VA=0x00658a2c size=292 file_offset=0x00658a2c sha256=d7e7353658e67f08466cbb83af30227d6581fe610938f6132fd8b206cc39f128

00658a2c <glitch::collada::CResFile::~CResFile()>:
  658a2c: e59f3114     	ldr	r3, [pc, #0x114]        @ 0x658b48 <glitch::collada::CResFile::~CResFile()+0x11c>
  658a30: e59f2114     	ldr	r2, [pc, #0x114]        @ 0x658b4c <glitch::collada::CResFile::~CResFile()+0x120>
  658a34: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  658a38: e08f3003     	add	r3, pc, r3
  658a3c: e7932002     	ldr	r2, [r3, r2]
  658a40: e1a04000     	mov	r4, r0
  658a44: e2822008     	add	r2, r2, #8
  658a48: e5802000     	str	r2, [r0]
  658a4c: ebffff3c     	bl	0x658744 <glitch::collada::CResFile::releaseObjects()> @ imm = #-0x310
  658a50: e5940008     	ldr	r0, [r4, #0x8]
  658a54: e3500000     	cmp	r0, #0
  658a58: 0a00000b     	beq	0x658a8c <glitch::collada::CResFile::~CResFile()+0x60> @ imm = #0x2c
  658a5c: ebf312c8     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x33b4e0
  658a60: e3a03000     	mov	r3, #0
  658a64: e5843008     	str	r3, [r4, #0x8]
  658a68: e284300c     	add	r3, r4, #12
  658a6c: e5930014     	ldr	r0, [r3, #0x14]
  658a70: e1500003     	cmp	r0, r3
  658a74: 0a000002     	beq	0x658a84 <glitch::collada::CResFile::~CResFile()+0x58> @ imm = #0x8
  658a78: e3500000     	cmp	r0, #0
  658a7c: 0a000000     	beq	0x658a84 <glitch::collada::CResFile::~CResFile()+0x58> @ imm = #0x0
  658a80: ebf2de72     	bl	0x310450 <GlitchFree(void*)> @ imm = #-0x348638
  658a84: e1a00004     	mov	r0, r4
  658a88: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  658a8c: e5943044     	ldr	r3, [r4, #0x44]
  658a90: e3530000     	cmp	r3, #0
  658a94: 0a000013     	beq	0x658ae8 <glitch::collada::CResFile::~CResFile()+0xbc> @ imm = #0x4c
  658a98: e5d42048     	ldrb	r2, [r4, #0x48]
  658a9c: e3520000     	cmp	r2, #0
  658aa0: 1a000013     	bne	0x658af4 <glitch::collada::CResFile::~CResFile()+0xc8> @ imm = #0x4c
  658aa4: e5930000     	ldr	r0, [r3]
  658aa8: e3500000     	cmp	r0, #0
  658aac: 0a000003     	beq	0x658ac0 <glitch::collada::CResFile::~CResFile()+0x94> @ imm = #0xc
  658ab0: ebf2d580     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x34aa00
  658ab4: e5943044     	ldr	r3, [r4, #0x44]
  658ab8: e3530000     	cmp	r3, #0
  658abc: 0a000001     	beq	0x658ac8 <glitch::collada::CResFile::~CResFile()+0x9c> @ imm = #0x4
  658ac0: e1a00003     	mov	r0, r3
  658ac4: ebf2d57b     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x34aa14
  658ac8: e5940040     	ldr	r0, [r4, #0x40]
  658acc: e3a03000     	mov	r3, #0
  658ad0: e5843044     	str	r3, [r4, #0x44]
  658ad4: e1500003     	cmp	r0, r3
  658ad8: 0a000000     	beq	0x658ae0 <glitch::collada::CResFile::~CResFile()+0xb4> @ imm = #0x0
  658adc: ebf2d575     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x34aa2c
  658ae0: e3a03000     	mov	r3, #0
  658ae4: e5843040     	str	r3, [r4, #0x40]
  658ae8: e5940024     	ldr	r0, [r4, #0x24]
  658aec: ebf2de57     	bl	0x310450 <GlitchFree(void*)> @ imm = #-0x3486a4
  658af0: eaffffdc     	b	0x658a68 <glitch::collada::CResFile::~CResFile()+0x3c> @ imm = #-0x90
  658af4: e5942038     	ldr	r2, [r4, #0x38]
  658af8: e3520000     	cmp	r2, #0
  658afc: daffffef     	ble	0x658ac0 <glitch::collada::CResFile::~CResFile()+0x94> @ imm = #-0x44
  658b00: e1a05000     	mov	r5, r0
  658b04: e1a07000     	mov	r7, r0
  658b08: ea000000     	b	0x658b10 <glitch::collada::CResFile::~CResFile()+0xe4> @ imm = #0x0
  658b0c: e5943044     	ldr	r3, [r4, #0x44]
  658b10: e7930105     	ldr	r0, [r3, r5, lsl #2]
  658b14: e1a06105     	lsl	r6, r5, #2
  658b18: e0833006     	add	r3, r3, r6
  658b1c: e3500000     	cmp	r0, #0
  658b20: e2855001     	add	r5, r5, #1
  658b24: 0a000002     	beq	0x658b34 <glitch::collada::CResFile::~CResFile()+0x108> @ imm = #0x8
  658b28: ebf2d562     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x34aa78
  658b2c: e5943044     	ldr	r3, [r4, #0x44]
  658b30: e0833006     	add	r3, r3, r6
  658b34: e5837000     	str	r7, [r3]
  658b38: e5943038     	ldr	r3, [r4, #0x38]
  658b3c: e1530005     	cmp	r3, r5
  658b40: cafffff1     	bgt	0x658b0c <glitch::collada::CResFile::~CResFile()+0xe0> @ imm = #-0x3c
  658b44: eaffffda     	b	0x658ab4 <glitch::collada::CResFile::~CResFile()+0x88> @ imm = #-0x98
  658b48: 58 c0 33 00  	.word	0x0033c058
  658b4c: 24 2d 00 00  	.word	0x00002d24

; RANGE texture_desc_dimension_builder: CTextureManager::addTexture(dimension2d, ...)
; ELF_VA=0x005ea8f8 size=152 file_offset=0x005ea8f8 sha256=fb85e7b9ca8bd8a4ae3eeafccf5838568b2c760014a86efd3b8d9ddfb87f032a

005ea8f8 <glitch::video::CTextureManager::addTexture(glitch::core::dimension2d<int> const&, char const*, glitch::video::E_PIXEL_FORMAT, bool)>:
  5ea8f8: e92d4030     	push	{r4, r5, lr}
  5ea8fc: e592e004     	ldr	lr, [r2, #0x4]
  5ea900: e24dd02c     	sub	sp, sp, #44
  5ea904: e5924000     	ldr	r4, [r2]
  5ea908: e58de01c     	str	lr, [sp, #0x1c]
  5ea90c: e59de038     	ldr	lr, [sp, #0x38]
  5ea910: e591c028     	ldr	r12, [r1, #0x28]
  5ea914: e3a02000     	mov	r2, #0
  5ea918: e3a05001     	mov	r5, #1
  5ea91c: e58d4018     	str	r4, [sp, #0x18]
  5ea920: e58de00c     	str	lr, [sp, #0xc]
  5ea924: e5cd2024     	strb	r2, [sp, #0x24]
  5ea928: e58d2014     	str	r2, [sp, #0x14]
  5ea92c: e5cd2026     	strb	r2, [sp, #0x26]
  5ea930: e58d2008     	str	r2, [sp, #0x8]
  5ea934: e58d2010     	str	r2, [sp, #0x10]
  5ea938: e58d5020     	str	r5, [sp, #0x20]
  5ea93c: e5cd2025     	strb	r2, [sp, #0x25]
  5ea940: e59c2088     	ldr	r2, [r12, #0x88]
  5ea944: e591e074     	ldr	lr, [r1, #0x74]
  5ea948: e1a04000     	mov	r4, r0
  5ea94c: e7e02252     	ubfx	r2, r2, #0x4, #0x1
  5ea950: e31e0020     	tst	lr, #32
  5ea954: e5cd2024     	strb	r2, [sp, #0x24]
  5ea958: 13a02003     	movne	r2, #3
  5ea95c: e5ddc03c     	ldrb	r12, [sp, #0x3c]
  5ea960: 158d2014     	strne	r2, [sp, #0x14]
  5ea964: 1a000001     	bne	0x5ea970 <glitch::video::CTextureManager::addTexture(glitch::core::dimension2d<int> const&, char const*, glitch::video::E_PIXEL_FORMAT, bool)+0x78> @ imm = #0x4
  5ea968: e31e0010     	tst	lr, #16
  5ea96c: 158d5014     	strne	r5, [sp, #0x14]
  5ea970: e1a02003     	mov	r2, r3
  5ea974: e1a00004     	mov	r0, r4
  5ea978: e28d3008     	add	r3, sp, #8
  5ea97c: e58dc000     	str	r12, [sp]
  5ea980: ebffff9c     	bl	0x5ea7f8 <glitch::video::CTextureManager::addTexture(char const*, glitch::video::STextureDesc const&, bool)> @ imm = #-0x190
  5ea984: e1a00004     	mov	r0, r4
  5ea988: e28dd02c     	add	sp, sp, #44
  5ea98c: e8bd8030     	pop	{r4, r5, pc}

; RANGE texture_desc_placeholder_builder: CTextureManager::getPlaceHolder(...) 
; ELF_VA=0x005ec1b8 size=652 file_offset=0x005ec1b8 sha256=ec6c1468aa8cfebc0590dd86a2d68a796ab2aa6525efabfe7409e549da4da9b5

005ec1b8 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)>:
  5ec1b8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  5ec1bc: e59f5280     	ldr	r5, [pc, #0x280]        @ 0x5ec444 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x28c>
  5ec1c0: e59f6280     	ldr	r6, [pc, #0x280]        @ 0x5ec448 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x290>
  5ec1c4: e1a0a101     	lsl	r10, r1, #2
  5ec1c8: e08f5005     	add	r5, pc, r5
  5ec1cc: e1a08002     	mov	r8, r2
  5ec1d0: e7953006     	ldr	r3, [r5, r6]
  5ec1d4: e08a2002     	add	r2, r10, r2
  5ec1d8: e2822012     	add	r2, r2, #18
  5ec1dc: e7904102     	ldr	r4, [r0, r2, lsl #2]
  5ec1e0: e5933000     	ldr	r3, [r3]
  5ec1e4: e24dd084     	sub	sp, sp, #132
  5ec1e8: e3540000     	cmp	r4, #0
  5ec1ec: e1a07000     	mov	r7, r0
  5ec1f0: e58d307c     	str	r3, [sp, #0x7c]
  5ec1f4: 0a000007     	beq	0x5ec218 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x60> @ imm = #0x1c
  5ec1f8: e7953006     	ldr	r3, [r5, r6]
  5ec1fc: e59d207c     	ldr	r2, [sp, #0x7c]
  5ec200: e1a00004     	mov	r0, r4
  5ec204: e5933000     	ldr	r3, [r3]
  5ec208: e1520003     	cmp	r2, r3
  5ec20c: 1a00008b     	bne	0x5ec440 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x288> @ imm = #0x22c
  5ec210: e28dd084     	add	sp, sp, #132
  5ec214: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  5ec218: e58d100c     	str	r1, [sp, #0xc]
  5ec21c: eb007ae7     	bl	0x60adc0 <glitch::os::Printer::getLogLevel()> @ imm = #0x1eb9c
  5ec220: e58d0010     	str	r0, [sp, #0x10]
  5ec224: e3a00004     	mov	r0, #4
  5ec228: eb007ad4     	bl	0x60ad80 <glitch::os::Printer::setLogLevel(glitch::ELOG_LEVEL)> @ imm = #0x1eb50
  5ec22c: e59f2218     	ldr	r2, [pc, #0x218]        @ 0x5ec44c <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x294>
  5ec230: e59d100c     	ldr	r1, [sp, #0xc]
  5ec234: e6ff3078     	uxth	r3, r8
  5ec238: e35300ff     	cmp	r3, #255
  5ec23c: e08f2002     	add	r2, pc, r2
  5ec240: e3a03001     	mov	r3, #1
  5ec244: e3a0000e     	mov	r0, #14
  5ec248: e58d3030     	str	r3, [sp, #0x30]
  5ec24c: e58d001c     	str	r0, [sp, #0x1c]
  5ec250: e7929101     	ldr	r9, [r2, r1, lsl #2]
  5ec254: e58d4020     	str	r4, [sp, #0x20]
  5ec258: e58d4024     	str	r4, [sp, #0x24]
  5ec25c: e58d3028     	str	r3, [sp, #0x28]
  5ec260: e58d302c     	str	r3, [sp, #0x2c]
  5ec264: e5cd4034     	strb	r4, [sp, #0x34]
  5ec268: e5cd4035     	strb	r4, [sp, #0x35]
  5ec26c: e5cd4036     	strb	r4, [sp, #0x36]
  5ec270: e58d8018     	str	r8, [sp, #0x18]
  5ec274: 0a00006e     	beq	0x5ec434 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x27c> @ imm = #0x1b8
  5ec278: e1a00004     	mov	r0, r4
  5ec27c: eb0045f9     	bl	0x5fda68 <glitch::video::getStringsInternal(glitch::video::E_TEXTURE_TYPE*)> @ imm = #0x117e4
  5ec280: e7903108     	ldr	r3, [r0, r8, lsl #2]
  5ec284: e59f11c4     	ldr	r1, [pc, #0x1c4]        @ 0x5ec450 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x298>
  5ec288: e28d403c     	add	r4, sp, #60
  5ec28c: e1a02009     	mov	r2, r9
  5ec290: e08f1001     	add	r1, pc, r1
  5ec294: e1a00004     	mov	r0, r4
  5ec298: ebf48a11     	bl	0x30eae4 <sprintf@plt>  @ imm = #-0x2dd7bc
  5ec29c: e59f01b0     	ldr	r0, [pc, #0x1b0]        @ 0x5ec454 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x29c>
  5ec2a0: e3a03000     	mov	r3, #0
  5ec2a4: e3a0c02d     	mov	r12, #45
  5ec2a8: e19420d3     	ldrsb	r2, [r4, r3]
  5ec2ac: e3520020     	cmp	r2, #32
  5ec2b0: 07c4c003     	strbeq	r12, [r4, r3]
  5ec2b4: 0a000005     	beq	0x5ec2d0 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x118> @ imm = #0x14
  5ec2b8: e35200ff     	cmp	r2, #255
  5ec2bc: 97951000     	ldrls	r1, [r5, r0]
  5ec2c0: 95911000     	ldrls	r1, [r1]
  5ec2c4: 90812082     	addls	r2, r1, r2, lsl #1
  5ec2c8: 91d220f2     	ldrshls	r2, [r2, #2]
  5ec2cc: e7c42003     	strb	r2, [r4, r3]
  5ec2d0: e2833001     	add	r3, r3, #1
  5ec2d4: e353003f     	cmp	r3, #63
  5ec2d8: 1afffff2     	bne	0x5ec2a8 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0xf0> @ imm = #-0x38
  5ec2dc: e3a09001     	mov	r9, #1
  5ec2e0: e1a02004     	mov	r2, r4
  5ec2e4: e58d9000     	str	r9, [sp]
  5ec2e8: e28d0038     	add	r0, sp, #56
  5ec2ec: e1a01007     	mov	r1, r7
  5ec2f0: e28d3018     	add	r3, sp, #24
  5ec2f4: e1d7b2b6     	ldrh	r11, [r7, #38]
  5ec2f8: ebfff93e     	bl	0x5ea7f8 <glitch::video::CTextureManager::addTexture(char const*, glitch::video::STextureDesc const&, bool)> @ imm = #-0x1b08
  5ec2fc: e59d4038     	ldr	r4, [sp, #0x38]
  5ec300: e3540000     	cmp	r4, #0
  5ec304: 0a00003e     	beq	0x5ec404 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x24c> @ imm = #0xf8
  5ec308: e1d732b6     	ldrh	r3, [r7, #38]
  5ec30c: e153000b     	cmp	r3, r11
  5ec310: 9a00003b     	bls	0x5ec404 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x24c> @ imm = #0xec
  5ec314: e59f313c     	ldr	r3, [pc, #0x13c]        @ 0x5ec458 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x2a0>
  5ec318: e594b038     	ldr	r11, [r4, #0x38]
  5ec31c: e3a02000     	mov	r2, #0
  5ec320: e08f3003     	add	r3, pc, r3
  5ec324: e20bb003     	and	r11, r11, #3
  5ec328: e083300a     	add	r3, r3, r10
  5ec32c: e35b0002     	cmp	r11, #2
  5ec330: e283300c     	add	r3, r3, #12
  5ec334: e58d7014     	str	r7, [sp, #0x14]
  5ec338: 03a0b006     	moveq	r11, #6
  5ec33c: e1a07005     	mov	r7, r5
  5ec340: 11a0b009     	movne	r11, r9
  5ec344: e1a05003     	mov	r5, r3
  5ec348: ea000016     	b	0x5ec3a8 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x1f0> @ imm = #0x58
  5ec34c: e5943004     	ldr	r3, [r4, #0x4]
  5ec350: e2833001     	add	r3, r3, #1
  5ec354: e5843004     	str	r3, [r4, #0x4]
  5ec358: e59d0038     	ldr	r0, [sp, #0x38]
  5ec35c: e3500000     	cmp	r0, #0
  5ec360: 0a000012     	beq	0x5ec3b0 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x1f8> @ imm = #0x48
  5ec364: e3a01004     	mov	r1, #4
  5ec368: e3a03000     	mov	r3, #0
  5ec36c: eb004758     	bl	0x5fe0d4 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)> @ imm = #0x11d60
  5ec370: e1a01005     	mov	r1, r5
  5ec374: e3a02004     	mov	r2, #4
  5ec378: ebf4893a     	bl	0x30e868 <memcpy@plt>   @ imm = #-0x2ddb18
  5ec37c: e1a00004     	mov	r0, r4
  5ec380: eb004621     	bl	0x5fdc0c <glitch::video::ITexture::unmap() const> @ imm = #0x11884
  5ec384: e3540000     	cmp	r4, #0
  5ec388: 0a000001     	beq	0x5ec394 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x1dc> @ imm = #0x4
  5ec38c: e1a00004     	mov	r0, r4
  5ec390: ebf4c47b     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cee14
  5ec394: e15b0009     	cmp	r11, r9
  5ec398: da000006     	ble	0x5ec3b8 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x200> @ imm = #0x18
  5ec39c: e59d4038     	ldr	r4, [sp, #0x38]
  5ec3a0: e1a02009     	mov	r2, r9
  5ec3a4: e2899001     	add	r9, r9, #1
  5ec3a8: e3540000     	cmp	r4, #0
  5ec3ac: 1affffe6     	bne	0x5ec34c <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x194> @ imm = #-0x68
  5ec3b0: e3a00000     	mov	r0, #0
  5ec3b4: eaffffed     	b	0x5ec370 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x1b8> @ imm = #-0x4c
  5ec3b8: e59d3038     	ldr	r3, [sp, #0x38]
  5ec3bc: e1a05007     	mov	r5, r7
  5ec3c0: e59d7014     	ldr	r7, [sp, #0x14]
  5ec3c4: e5932038     	ldr	r2, [r3, #0x38]
  5ec3c8: e3120a07     	tst	r2, #28672
  5ec3cc: 0a000006     	beq	0x5ec3ec <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x234> @ imm = #0x18
  5ec3d0: e1d314b0     	ldrh	r1, [r3, #64]
  5ec3d4: e3c22a07     	bic	r2, r2, #28672
  5ec3d8: e5832038     	str	r2, [r3, #0x38]
  5ec3dc: e3812004     	orr	r2, r1, #4
  5ec3e0: e1c324b0     	strh	r2, [r3, #64]
  5ec3e4: e59d3038     	ldr	r3, [sp, #0x38]
  5ec3e8: e5932038     	ldr	r2, [r3, #0x38]
  5ec3ec: e312090e     	tst	r2, #229376
  5ec3f0: 11d314b0     	ldrhne	r1, [r3, #64]
  5ec3f4: 13c2290e     	bicne	r2, r2, #229376
  5ec3f8: 15832038     	strne	r2, [r3, #0x38]
  5ec3fc: 13812008     	orrne	r2, r1, #8
  5ec400: 11c324b0     	strhne	r2, [r3, #64]
  5ec404: e59d0010     	ldr	r0, [sp, #0x10]
  5ec408: eb007a5c     	bl	0x60ad80 <glitch::os::Printer::setLogLevel(glitch::ELOG_LEVEL)> @ imm = #0x1e970
  5ec40c: e59d4038     	ldr	r4, [sp, #0x38]
  5ec410: e08a8008     	add	r8, r10, r8
  5ec414: e2888012     	add	r8, r8, #18
  5ec418: e3540000     	cmp	r4, #0
  5ec41c: e7874108     	str	r4, [r7, r8, lsl #2]
  5ec420: 0affff74     	beq	0x5ec1f8 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x40> @ imm = #-0x230
  5ec424: e1a00004     	mov	r0, r4
  5ec428: ebf4c455     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2ceeac
  5ec42c: e7974108     	ldr	r4, [r7, r8, lsl #2]
  5ec430: eaffff70     	b	0x5ec1f8 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x40> @ imm = #-0x240
  5ec434: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x5ec45c <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0x2a4>
  5ec438: e08f3003     	add	r3, pc, r3
  5ec43c: eaffff90     	b	0x5ec284 <glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)+0xcc> @ imm = #-0x1c0
  5ec440: ebf487b2     	bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x2de138

; RANGE texture_file_desc_init_excerpt: CTextureManager::loadTextureFromFile descriptor initialization (excerpt)
; ELF_VA=0x005ecc00 size=64 file_offset=0x005ecc00 sha256=12e9c2ba092020cdc050b79ece071b4ee32f1de1e0b14de125fb20c291b23eef

005ecba4 <glitch::video::CTextureManager::loadTextureFromFile(glitch::io::IReadFile*, char const*, glitch::video::E_PIXEL_FORMAT&, bool)>:
  5ecc00: e59d3030     	ldr	r3, [sp, #0x30]
  5ecc04: e3a02001     	mov	r2, #1
  5ecc08: e3a0100c     	mov	r1, #12
  5ecc0c: e58d100c     	str	r1, [sp, #0xc]
  5ecc10: e58d2020     	str	r2, [sp, #0x20]
  5ecc14: e5cd4026     	strb	r4, [sp, #0x26]
  5ecc18: e58d4008     	str	r4, [sp, #0x8]
  5ecc1c: e58d4010     	str	r4, [sp, #0x10]
  5ecc20: e58d4014     	str	r4, [sp, #0x14]
  5ecc24: e58d2018     	str	r2, [sp, #0x18]
  5ecc28: e58d201c     	str	r2, [sp, #0x1c]
  5ecc2c: e5cd4024     	strb	r4, [sp, #0x24]
  5ecc30: e5cd4025     	strb	r4, [sp, #0x25]
  5ecc34: e28d4008     	add	r4, sp, #8
  5ecc38: e1a00003     	mov	r0, r3
  5ecc3c: e1a01007     	mov	r1, r7

; RANGE driver_set_texture_slot: CCommonGLDriver::setTexture(unit, ITexture*, type)
; ELF_VA=0x005b26f0 size=284 file_offset=0x005b26f0 sha256=85d6ebbdbc330b962a3201f760cfa8e6ea8d3f350b99f8cf1e328055266dbd2f

005b26f0 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(unsigned int, glitch::video::ITexture*, glitch::video::E_TEXTURE_TYPE)>:
  5b26f0: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5b26f4: e1a04000     	mov	r4, r0
  5b26f8: e590004c     	ldr	r0, [r0, #0x4c]
  5b26fc: e1a05001     	mov	r5, r1
  5b2700: e1a06002     	mov	r6, r2
  5b2704: e1510000     	cmp	r1, r0
  5b2708: e1a07003     	mov	r7, r3
  5b270c: 2a00001a     	bhs	0x5b277c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(unsigned int, glitch::video::ITexture*, glitch::video::E_TEXTURE_TYPE)+0x8c> @ imm = #0x68
  5b2710: e2833021     	add	r3, r3, #33
  5b2714: e0843283     	add	r3, r4, r3, lsl #5
  5b2718: e7938101     	ldr	r8, [r3, r1, lsl #2]
  5b271c: e1580002     	cmp	r8, r2
  5b2720: 0a000017     	beq	0x5b2784 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(unsigned int, glitch::video::ITexture*, glitch::video::E_TEXTURE_TYPE)+0x94> @ imm = #0x5c
  5b2724: e3520000     	cmp	r2, #0
  5b2728: e7832105     	str	r2, [r3, r5, lsl #2]
  5b272c: 0a00001c     	beq	0x5b27a4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(unsigned int, glitch::video::ITexture*, glitch::video::E_TEXTURE_TYPE)+0xb4> @ imm = #0x70
  5b2730: e5943084     	ldr	r3, [r4, #0x84]
  5b2734: e5942268     	ldr	r2, [r4, #0x268]
  5b2738: e2833001     	add	r3, r3, #1
  5b273c: e1510002     	cmp	r1, r2
  5b2740: e5843084     	str	r3, [r4, #0x84]
  5b2744: 0a000003     	beq	0x5b2758 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(unsigned int, glitch::video::ITexture*, glitch::video::E_TEXTURE_TYPE)+0x68> @ imm = #0xc
  5b2748: e2810b21     	add	r0, r1, #33792
  5b274c: e28000c0     	add	r0, r0, #192
  5b2750: ebf56ea3     	bl	0x30e1e4 <glActiveTexture@plt> @ imm = #-0x2a4574
  5b2754: e5845268     	str	r5, [r4, #0x268]
  5b2758: e5d6103f     	ldrb	r1, [r6, #0x3f]
  5b275c: e2011008     	and	r1, r1, #8
  5b2760: e6ef1071     	uxtb	r1, r1
  5b2764: e3510000     	cmp	r1, #0
  5b2768: 1a00000f     	bne	0x5b27ac <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(unsigned int, glitch::video::ITexture*, glitch::video::E_TEXTURE_TYPE)+0xbc> @ imm = #0x3c
  5b276c: e1a00006     	mov	r0, r6
  5b2770: eb012dc9     	bl	0x5fde9c <glitch::video::ITexture::bind(bool)> @ imm = #0x4b724
  5b2774: e3a00001     	mov	r0, #1
  5b2778: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5b277c: e3a00000     	mov	r0, #0
  5b2780: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5b2784: e3580000     	cmp	r8, #0
  5b2788: 0a000005     	beq	0x5b27a4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(unsigned int, glitch::video::ITexture*, glitch::video::E_TEXTURE_TYPE)+0xb4> @ imm = #0x14
  5b278c: e1d834b0     	ldrh	r3, [r8, #64]
  5b2790: e3c33002     	bic	r3, r3, #2
  5b2794: e1a03983     	lsl	r3, r3, #19
  5b2798: e1a039a3     	lsr	r3, r3, #19
  5b279c: e3530000     	cmp	r3, #0
  5b27a0: 1a00000c     	bne	0x5b27d8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(unsigned int, glitch::video::ITexture*, glitch::video::E_TEXTURE_TYPE)+0xe8> @ imm = #0x30
  5b27a4: e3a00001     	mov	r0, #1
  5b27a8: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5b27ac: e59f3054     	ldr	r3, [pc, #0x54]         @ 0x5b2808 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(unsigned int, glitch::video::ITexture*, glitch::video::E_TEXTURE_TYPE)+0x118>
  5b27b0: e5961054     	ldr	r1, [r6, #0x54]
  5b27b4: e08f3003     	add	r3, pc, r3
  5b27b8: e28330a4     	add	r3, r3, #164
  5b27bc: e7930107     	ldr	r0, [r3, r7, lsl #2]
  5b27c0: ebf56ffe     	bl	0x30e7c0 <glBindTexture@plt> @ imm = #-0x2a4008
  5b27c4: e1a00006     	mov	r0, r6
  5b27c8: e3a01000     	mov	r1, #0
  5b27cc: ebfff71e     	bl	0x5b044c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(bool) const> @ imm = #-0x2388
  5b27d0: e3a00001     	mov	r0, #1
  5b27d4: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5b27d8: e5943268     	ldr	r3, [r4, #0x268]
  5b27dc: e1510003     	cmp	r1, r3
  5b27e0: 0a000003     	beq	0x5b27f4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(unsigned int, glitch::video::ITexture*, glitch::video::E_TEXTURE_TYPE)+0x104> @ imm = #0xc
  5b27e4: e2810b21     	add	r0, r1, #33792
  5b27e8: e28000c0     	add	r0, r0, #192
  5b27ec: ebf56e7c     	bl	0x30e1e4 <glActiveTexture@plt> @ imm = #-0x2a4610
  5b27f0: e5845268     	str	r5, [r4, #0x268]
  5b27f4: e1a00008     	mov	r0, r8
  5b27f8: e3a01000     	mov	r1, #0
  5b27fc: ebfff712     	bl	0x5b044c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(bool) const> @ imm = #-0x23b8
  5b2800: e3a00001     	mov	r0, #1
  5b2804: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5b2808: 80 d8 32 00  	.word	0x0032d880

; RANGE texture_clear_driver_resources: CTextureManager::clearDriverSpecificResources()
; ELF_VA=0x005e97e0 size=244 file_offset=0x005e97e0 sha256=1b3921bfd1e0b460237b074933f7bd6ebab6c1cc5bf8eb0ffc4bf1e4377a9d4c

005e97e0 <glitch::video::CTextureManager::clearDriverSpecificResources()>:
  5e97e0: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5e97e4: e5904008     	ldr	r4, [r0, #0x8]
  5e97e8: e59f70dc     	ldr	r7, [pc, #0xdc]         @ 0x5e98cc <glitch::video::CTextureManager::clearDriverSpecificResources()+0xec>
  5e97ec: e1a06000     	mov	r6, r0
  5e97f0: e1540000     	cmp	r4, r0
  5e97f4: e08f7007     	add	r7, pc, r7
  5e97f8: 0a00001c     	beq	0x5e9870 <glitch::video::CTextureManager::clearDriverSpecificResources()+0x90> @ imm = #0x70
  5e97fc: e59f80cc     	ldr	r8, [pc, #0xcc]         @ 0x5e98d0 <glitch::video::CTextureManager::clearDriverSpecificResources()+0xf0>
  5e9800: e5963018     	ldr	r3, [r6, #0x18]
  5e9804: e596101c     	ldr	r1, [r6, #0x1c]
  5e9808: e1d423b4     	ldrh	r2, [r4, #52]
  5e980c: e0631001     	rsb	r1, r3, r1
  5e9810: e15201c1     	cmp	r2, r1, asr #3
  5e9814: 27973008     	ldrhs	r3, [r7, r8]
  5e9818: 30833182     	addlo	r3, r3, r2, lsl #3
  5e981c: e5935000     	ldr	r5, [r3]
  5e9820: e3550000     	cmp	r5, #0
  5e9824: 15953004     	ldrne	r3, [r5, #0x4]
  5e9828: 12833001     	addne	r3, r3, #1
  5e982c: 15853004     	strne	r3, [r5, #0x4]
  5e9830: e5d5303f     	ldrb	r3, [r5, #0x3f]
  5e9834: e3130008     	tst	r3, #8
  5e9838: 1a00000d     	bne	0x5e9874 <glitch::video::CTextureManager::clearDriverSpecificResources()+0x94> @ imm = #0x34
  5e983c: e1a00005     	mov	r0, r5
  5e9840: ebf4cf4f     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cc2c4
  5e9844: e594200c     	ldr	r2, [r4, #0xc]
  5e9848: e3520000     	cmp	r2, #0
  5e984c: 1a000001     	bne	0x5e9858 <glitch::video::CTextureManager::clearDriverSpecificResources()+0x78> @ imm = #0x4
  5e9850: ea000010     	b	0x5e9898 <glitch::video::CTextureManager::clearDriverSpecificResources()+0xb8> @ imm = #0x40
  5e9854: e1a02003     	mov	r2, r3
  5e9858: e5923008     	ldr	r3, [r2, #0x8]
  5e985c: e3530000     	cmp	r3, #0
  5e9860: 1afffffb     	bne	0x5e9854 <glitch::video::CTextureManager::clearDriverSpecificResources()+0x74> @ imm = #-0x14
  5e9864: e1a04002     	mov	r4, r2
  5e9868: e1560004     	cmp	r6, r4
  5e986c: 1affffe3     	bne	0x5e9800 <glitch::video::CTextureManager::clearDriverSpecificResources()+0x20> @ imm = #-0x74
  5e9870: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5e9874: e5953000     	ldr	r3, [r5]
  5e9878: e1a00005     	mov	r0, r5
  5e987c: e1a0e00f     	mov	lr, pc
  5e9880: e593f010     	ldr	pc, [r3, #0x10]
  5e9884: e1a00005     	mov	r0, r5
  5e9888: ebf4cf3d     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cc30c
  5e988c: e594200c     	ldr	r2, [r4, #0xc]
  5e9890: e3520000     	cmp	r2, #0
  5e9894: 1affffef     	bne	0x5e9858 <glitch::video::CTextureManager::clearDriverSpecificResources()+0x78> @ imm = #-0x44
  5e9898: e5943004     	ldr	r3, [r4, #0x4]
  5e989c: e593100c     	ldr	r1, [r3, #0xc]
  5e98a0: e1510004     	cmp	r1, r4
  5e98a4: 1a000005     	bne	0x5e98c0 <glitch::video::CTextureManager::clearDriverSpecificResources()+0xe0> @ imm = #0x14
  5e98a8: e1a04003     	mov	r4, r3
  5e98ac: e5933004     	ldr	r3, [r3, #0x4]
  5e98b0: e593200c     	ldr	r2, [r3, #0xc]
  5e98b4: e1520004     	cmp	r2, r4
  5e98b8: 0afffffa     	beq	0x5e98a8 <glitch::video::CTextureManager::clearDriverSpecificResources()+0xc8> @ imm = #-0x18
  5e98bc: e594200c     	ldr	r2, [r4, #0xc]
  5e98c0: e1520003     	cmp	r2, r3
  5e98c4: 11a04003     	movne	r4, r3
  5e98c8: eaffffe6     	b	0x5e9868 <glitch::video::CTextureManager::clearDriverSpecificResources()+0x88> @ imm = #-0x68
  5e98cc: 9c b2 3a 00  	.word	0x003ab29c
  5e98d0: e8 10 00 00  	.word	0x000010e8

; RANGE gl_texture_unbind: CCommonGLDriver::CTexture::unbindImpl()
; ELF_VA=0x005b28dc size=340 file_offset=0x005b28dc sha256=b99488f7c3180c602928e577f73c0059cbfbc288f254c4db61706b3753875420

005b28dc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl()>:
  5b28dc: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5b28e0: e5903034     	ldr	r3, [r0, #0x34]
  5b28e4: e5907038     	ldr	r7, [r0, #0x38]
  5b28e8: e1a05000     	mov	r5, r0
  5b28ec: e593604c     	ldr	r6, [r3, #0x4c]
  5b28f0: e2077003     	and	r7, r7, #3
  5b28f4: e2833e42     	add	r3, r3, #1056
  5b28f8: e3560000     	cmp	r6, #0
  5b28fc: e0837287     	add	r7, r3, r7, lsl #5
  5b2900: 0a000006     	beq	0x5b2920 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl()+0x44> @ imm = #0x18
  5b2904: e3a04000     	mov	r4, #0
  5b2908: e7973104     	ldr	r3, [r7, r4, lsl #2]
  5b290c: e1530005     	cmp	r3, r5
  5b2910: 0a000029     	beq	0x5b29bc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl()+0xe0> @ imm = #0xa4
  5b2914: e2844001     	add	r4, r4, #1
  5b2918: e1540006     	cmp	r4, r6
  5b291c: 1afffff9     	bne	0x5b2908 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl()+0x2c> @ imm = #-0x1c
  5b2920: e3a00001     	mov	r0, #1
  5b2924: e2851054     	add	r1, r5, #84
  5b2928: ebf56fef     	bl	0x30e8ec <glDeleteTextures@plt> @ imm = #-0x2a4044
  5b292c: e1d504b0     	ldrh	r0, [r5, #64]
  5b2930: e5d5303f     	ldrb	r3, [r5, #0x3f]
  5b2934: e3a02000     	mov	r2, #0
  5b2938: e3c00002     	bic	r0, r0, #2
  5b293c: e20330e7     	and	r3, r3, #231
  5b2940: e3800d7f     	orr	r0, r0, #8128
  5b2944: e380003c     	orr	r0, r0, #60
  5b2948: e3130002     	tst	r3, #2
  5b294c: e5852054     	str	r2, [r5, #0x54]
  5b2950: e5c5303f     	strb	r3, [r5, #0x3f]
  5b2954: e1c504b0     	strh	r0, [r5, #64]
  5b2958: 0a00001e     	beq	0x5b29d8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl()+0xfc> @ imm = #0x78
  5b295c: e5957038     	ldr	r7, [r5, #0x38]
  5b2960: e5d5103e     	ldrb	r1, [r5, #0x3e]
  5b2964: e3800001     	orr	r0, r0, #1
  5b2968: e2077003     	and	r7, r7, #3
  5b296c: e3570002     	cmp	r7, #2
  5b2970: e1c504b0     	strh	r0, [r5, #64]
  5b2974: 03a07006     	moveq	r7, #6
  5b2978: 13a07001     	movne	r7, #1
  5b297c: e1a03002     	mov	r3, r2
  5b2980: e3a06001     	mov	r6, #1
  5b2984: e595c030     	ldr	r12, [r5, #0x30]
  5b2988: e2811001     	add	r1, r1, #1
  5b298c: e1a002a3     	lsr	r0, r3, #5
  5b2990: e08c1101     	add	r1, r12, r1, lsl #2
  5b2994: e791c100     	ldr	r12, [r1, r0, lsl #2]
  5b2998: e203401f     	and	r4, r3, #31
  5b299c: e2822001     	add	r2, r2, #1
  5b29a0: e18cc416     	orr	r12, r12, r6, lsl r4
  5b29a4: e781c100     	str	r12, [r1, r0, lsl #2]
  5b29a8: e5d5103e     	ldrb	r1, [r5, #0x3e]
  5b29ac: e1520007     	cmp	r2, r7
  5b29b0: e0833001     	add	r3, r3, r1
  5b29b4: bafffff2     	blt	0x5b2984 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl()+0xa8> @ imm = #-0x38
  5b29b8: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5b29bc: e5953038     	ldr	r3, [r5, #0x38]
  5b29c0: e1a01004     	mov	r1, r4
  5b29c4: e5950034     	ldr	r0, [r5, #0x34]
  5b29c8: e2033003     	and	r3, r3, #3
  5b29cc: e3a02000     	mov	r2, #0
  5b29d0: ebffff46     	bl	0x5b26f0 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(unsigned int, glitch::video::ITexture*, glitch::video::E_TEXTURE_TYPE)> @ imm = #-0x2e8
  5b29d4: eaffffce     	b	0x5b2914 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl()+0x38> @ imm = #-0xc8
  5b29d8: e595c038     	ldr	r12, [r5, #0x38]
  5b29dc: e5d5203e     	ldrb	r2, [r5, #0x3e]
  5b29e0: e5953030     	ldr	r3, [r5, #0x30]
  5b29e4: e20cc003     	and	r12, r12, #3
  5b29e8: e35c0002     	cmp	r12, #2
  5b29ec: 03a0c006     	moveq	r12, #6
  5b29f0: 13a0c001     	movne	r12, #1
  5b29f4: e00c0c92     	mul	r12, r2, r12
  5b29f8: e2821001     	add	r1, r2, #1
  5b29fc: e28c201f     	add	r2, r12, #31
  5b2a00: e1a022a2     	lsr	r2, r2, #5
  5b2a04: e0833101     	add	r3, r3, r1, lsl #2
  5b2a08: e0832102     	add	r2, r3, r2, lsl #2
  5b2a0c: e3800001     	orr	r0, r0, #1
  5b2a10: e1530002     	cmp	r3, r2
  5b2a14: e1c504b0     	strh	r0, [r5, #64]
  5b2a18: 0a000003     	beq	0x5b2a2c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl()+0x150> @ imm = #0xc
  5b2a1c: e3e01000     	mvn	r1, #0
  5b2a20: e4831004     	str	r1, [r3], #4
  5b2a24: e1520003     	cmp	r2, r3
  5b2a28: 1afffffc     	bne	0x5b2a20 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl()+0x144> @ imm = #-0x10
  5b2a2c: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}

; RANGE gl_texture_destructor: CCommonGLDriver::CTexture::~CTexture() [D2]
; ELF_VA=0x005b2a30 size=116 file_offset=0x005b2a30 sha256=3a65be36d24ca668b798f550ce2e52f9c18166f7ab32c6d0e01362c63bc22aa9

005b2a30 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture()>:
  5b2a30: e92d4070     	push	{r4, r5, r6, lr}
  5b2a34: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x5b2a98 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture()+0x68>
  5b2a38: e59f305c     	ldr	r3, [pc, #0x5c]         @ 0x5b2a9c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture()+0x6c>
  5b2a3c: e5d0203f     	ldrb	r2, [r0, #0x3f]
  5b2a40: e08f5005     	add	r5, pc, r5
  5b2a44: e7953003     	ldr	r3, [r5, r3]
  5b2a48: e3120020     	tst	r2, #32
  5b2a4c: e1a04000     	mov	r4, r0
  5b2a50: e2833008     	add	r3, r3, #8
  5b2a54: e5803000     	str	r3, [r0]
  5b2a58: 1a00000b     	bne	0x5b2a8c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture()+0x5c> @ imm = #0x2c
  5b2a5c: e3120008     	tst	r2, #8
  5b2a60: 0a000001     	beq	0x5b2a6c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture()+0x3c> @ imm = #0x4
  5b2a64: e1a00004     	mov	r0, r4
  5b2a68: ebffff9b     	bl	0x5b28dc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl()> @ imm = #-0x194
  5b2a6c: e59f302c     	ldr	r3, [pc, #0x2c]         @ 0x5b2aa0 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture()+0x70>
  5b2a70: e1a00004     	mov	r0, r4
  5b2a74: e7953003     	ldr	r3, [r5, r3]
  5b2a78: e2833008     	add	r3, r3, #8
  5b2a7c: e5843000     	str	r3, [r4]
  5b2a80: eb012e44     	bl	0x5fe398 <glitch::video::ITexture::~ITexture()> @ imm = #0x4b910
  5b2a84: e1a00004     	mov	r0, r4
  5b2a88: e8bd8070     	pop	{r4, r5, r6, pc}
  5b2a8c: eb04a858     	bl	0x6dcbf4 <glitch::video::CCommonGLDriverBase::CTextureBase::unmapImpl() const> @ imm = #0x12a160
  5b2a90: e5d4203f     	ldrb	r2, [r4, #0x3f]
  5b2a94: eafffff0     	b	0x5b2a5c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture()+0x2c> @ imm = #-0x40
  5b2a98: 50 20 3e 00  	.word	0x003e2050
  5b2a9c: 68 09 00 00  	.word	0x00000968
  5b2aa0: 10 3c 00 00  	.word	0x00003c10

; RANGE texture_base_destructor: ITexture::~ITexture() [D2]
; ELF_VA=0x005fe310 size=108 file_offset=0x005fe310 sha256=af5d9db20b7ac9c2fac6d78f4f5aa57b1f02e521e26b84605353fc49f67b057c

005fe310 <glitch::video::ITexture::~ITexture()>:
  5fe310: e59fc05c     	ldr	r12, [pc, #0x5c]        @ 0x5fe374 <glitch::video::ITexture::~ITexture()+0x64>
  5fe314: e59f305c     	ldr	r3, [pc, #0x5c]         @ 0x5fe378 <glitch::video::ITexture::~ITexture()+0x68>
  5fe318: e3a01000     	mov	r1, #0
  5fe31c: e08fc00c     	add	r12, pc, r12
  5fe320: e79c3003     	ldr	r3, [r12, r3]
  5fe324: e92d4010     	push	{r4, lr}
  5fe328: e2833008     	add	r3, r3, #8
  5fe32c: e5803000     	str	r3, [r0]
  5fe330: e1a04000     	mov	r4, r0
  5fe334: e3a02001     	mov	r2, #1
  5fe338: e1a03001     	mov	r3, r1
  5fe33c: ebffff0c     	bl	0x5fdf74 <glitch::video::ITexture::setData(void*, bool, bool)> @ imm = #-0x3d0
  5fe340: e5940030     	ldr	r0, [r4, #0x30]
  5fe344: e3500000     	cmp	r0, #0
  5fe348: 0a000000     	beq	0x5fe350 <glitch::video::ITexture::~ITexture()+0x40> @ imm = #0x0
  5fe34c: ebf43f59     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2f029c
  5fe350: e2843008     	add	r3, r4, #8
  5fe354: e5930014     	ldr	r0, [r3, #0x14]
  5fe358: e1500003     	cmp	r0, r3
  5fe35c: 0a000002     	beq	0x5fe36c <glitch::video::ITexture::~ITexture()+0x5c> @ imm = #0x8
  5fe360: e3500000     	cmp	r0, #0
  5fe364: 0a000000     	beq	0x5fe36c <glitch::video::ITexture::~ITexture()+0x5c> @ imm = #0x0
  5fe368: ebf44838     	bl	0x310450 <GlitchFree(void*)> @ imm = #-0x2edf20
  5fe36c: e1a00004     	mov	r0, r4
  5fe370: e8bd8010     	pop	{r4, pc}
  5fe374: 74 67 39 00  	.word	0x00396774
  5fe378: 04 35 00 00  	.word	0x00003504
