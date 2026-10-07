; Texture cache, CPU backing, and driver resource lifetime: exact ARM-mode bytes
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Each function hash covers exactly its recorded bytes; offsets are PT_LOAD mapped.

; PACKAGE FUNCTION texture_get_by_file
; SYMBOL glitch::video::CTextureManager::getTexture(IReadFile*, char const*, bool)
; ELF_VA 0x005ed0c4 size=332 file_offset=0x005ed0c4 PT_LOAD=0 (program header 1)
; SHA-256 aab786f07a1ab7e8c172ac1b4ea856c503a2cf53ef73f95a2245f462d1086677
005ed0c4 <glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)>:
  5ed0c4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  5ed0c8: e59f4138     	ldr	r4, [pc, #0x138]        @ 0x5ed208 <glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)+0x144>
  5ed0cc: e59f6138     	ldr	r6, [pc, #0x138]        @ 0x5ed20c <glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)+0x148>
  5ed0d0: e1a05000     	mov	r5, r0
  5ed0d4: e08f4004     	add	r4, pc, r4
  5ed0d8: e7940006     	ldr	r0, [r4, r6]
  5ed0dc: e2529000     	subs	r9, r2, #0
  5ed0e0: e24dd034     	sub	sp, sp, #52
  5ed0e4: e5902000     	ldr	r2, [r0]
  5ed0e8: e3a00000     	mov	r0, #0
  5ed0ec: e5850000     	str	r0, [r5]
  5ed0f0: e1a0a001     	mov	r10, r1
  5ed0f4: e58d202c     	str	r2, [sp, #0x2c]
  5ed0f8: e5ddb058     	ldrb	r11, [sp, #0x58]
  5ed0fc: 0a000021     	beq	0x5ed188 <glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)+0xc4> @ imm = #0x84
  5ed100: e1530000     	cmp	r3, r0
  5ed104: 0a000027     	beq	0x5ed1a8 <glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)+0xe4> @ imm = #0x9c
  5ed108: e28d8014     	add	r8, sp, #20
  5ed10c: e1a01003     	mov	r1, r3
  5ed110: e1a00008     	mov	r0, r8
  5ed114: e28d2010     	add	r2, sp, #16
  5ed118: ebf4e3c7     	bl	0x32603c <std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>::basic_string(char const*, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> const&)> @ imm = #-0x2c70e4
  5ed11c: e59d2028     	ldr	r2, [sp, #0x28]
  5ed120: e28d000c     	add	r0, sp, #12
  5ed124: e1a0100a     	mov	r1, r10
  5ed128: ebffef7f     	bl	0x5e8f2c <glitch::video::CTextureManager::findTexture(char const*) const> @ imm = #-0x4204
  5ed12c: e59d300c     	ldr	r3, [sp, #0xc]
  5ed130: e3530000     	cmp	r3, #0
  5ed134: 15932004     	ldrne	r2, [r3, #0x4]
  5ed138: 12822001     	addne	r2, r2, #1
  5ed13c: 15832004     	strne	r2, [r3, #0x4]
  5ed140: e5950000     	ldr	r0, [r5]
  5ed144: e5853000     	str	r3, [r5]
  5ed148: e3500000     	cmp	r0, #0
  5ed14c: 0a000000     	beq	0x5ed154 <glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)+0x90> @ imm = #0x0
  5ed150: ebf4c10b     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cfbd4
  5ed154: e59d000c     	ldr	r0, [sp, #0xc]
  5ed158: e3500000     	cmp	r0, #0
  5ed15c: 0a000000     	beq	0x5ed164 <glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)+0xa0> @ imm = #0x0
  5ed160: ebf4c107     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cfbe4
  5ed164: e5953000     	ldr	r3, [r5]
  5ed168: e3530000     	cmp	r3, #0
  5ed16c: 0a000017     	beq	0x5ed1d0 <glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)+0x10c> @ imm = #0x5c
  5ed170: e59d0028     	ldr	r0, [sp, #0x28]
  5ed174: e1500008     	cmp	r0, r8
  5ed178: 0a000002     	beq	0x5ed188 <glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)+0xc4> @ imm = #0x8
  5ed17c: e3500000     	cmp	r0, #0
  5ed180: 0a000000     	beq	0x5ed188 <glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)+0xc4> @ imm = #0x0
  5ed184: ebf48cb1     	bl	0x310450 <GlitchFree(void*)> @ imm = #-0x2dcd3c
  5ed188: e7943006     	ldr	r3, [r4, r6]
  5ed18c: e59d202c     	ldr	r2, [sp, #0x2c]
  5ed190: e1a00005     	mov	r0, r5
  5ed194: e5933000     	ldr	r3, [r3]
  5ed198: e1520003     	cmp	r2, r3
  5ed19c: 1a000018     	bne	0x5ed204 <glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)+0x140> @ imm = #0x60
  5ed1a0: e28dd034     	add	sp, sp, #52
  5ed1a4: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  5ed1a8: e5993000     	ldr	r3, [r9]
  5ed1ac: e1a00009     	mov	r0, r9
  5ed1b0: e1a0e00f     	mov	lr, pc
  5ed1b4: e593f028     	ldr	pc, [r3, #0x28]
  5ed1b8: e28d8014     	add	r8, sp, #20
  5ed1bc: e1a02000     	mov	r2, r0
  5ed1c0: e1a0100a     	mov	r1, r10
  5ed1c4: e1a00008     	mov	r0, r8
  5ed1c8: ebfff1ce     	bl	0x5e9908 <glitch::video::CTextureManager::getHashName(char const*) const> @ imm = #-0x38c8
  5ed1cc: eaffffd2     	b	0x5ed11c <glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)+0x58> @ imm = #-0xb8
  5ed1d0: e28d7008     	add	r7, sp, #8
  5ed1d4: e1a02009     	mov	r2, r9
  5ed1d8: e1a0100a     	mov	r1, r10
  5ed1dc: e1a03008     	mov	r3, r8
  5ed1e0: e1a00007     	mov	r0, r7
  5ed1e4: e58db000     	str	r11, [sp]
  5ed1e8: ebffff51     	bl	0x5ecf34 <glitch::video::CTextureManager::getTextureInternal(glitch::io::IReadFile*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const&, bool)> @ imm = #-0x2bc
  5ed1ec: e1a00005     	mov	r0, r5
  5ed1f0: e1a01007     	mov	r1, r7
  5ed1f4: ebf65eff     	bl	0x384df8 <boost::intrusive_ptr<glitch::video::ITexture>::operator=(boost::intrusive_ptr<glitch::video::ITexture> const&)> @ imm = #-0x268404
  5ed1f8: e1a00007     	mov	r0, r7
  5ed1fc: ebf8a88a     	bl	0x41742c <boost::intrusive_ptr<glitch::video::ITexture>::~intrusive_ptr()> @ imm = #-0x1d5dd8
  5ed200: eaffffda     	b	0x5ed170 <glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)+0xac> @ imm = #-0x98
  5ed204: ebf48441     	bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x2deefc
  5ed208: bc 79 3a 00  	.word	0x003a79bc
  5ed20c: ac 40 00 00  	.word	0x000040ac

; PACKAGE FUNCTION texture_get_internal
; SYMBOL glitch::video::CTextureManager::getTextureInternal(IReadFile*, string const&, bool)
; ELF_VA 0x005ecf34 size=400 file_offset=0x005ecf34 PT_LOAD=0 (program header 1)
; SHA-256 18ceba6026c05b18ff075d96992cff3ef33818faee50839917606fcba5ebf3e2
005ecf34 <glitch::video::CTextureManager::getTextureInternal(glitch::io::IReadFile*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const&, bool)>:
  5ecf34: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  5ecf38: e1a04002     	mov	r4, r2
  5ecf3c: e59f2174     	ldr	r2, [pc, #0x174]        @ 0x5ed0b8 <glitch::video::CTextureManager::getTextureInternal(glitch::io::IReadFile*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const&, bool)+0x184>
  5ecf40: e24dd038     	sub	sp, sp, #56
  5ecf44: e1a06000     	mov	r6, r0
  5ecf48: e79f2002     	ldr	r2, [pc, r2]
  5ecf4c: e58d2034     	str	r2, [sp, #0x34]
  5ecf50: e1a07001     	mov	r7, r1
  5ecf54: e3a02004     	mov	r2, #4
  5ecf58: e594c000     	ldr	r12, [r4]
  5ecf5c: e1a00004     	mov	r0, r4
  5ecf60: e28d1030     	add	r1, sp, #48
  5ecf64: e1a08003     	mov	r8, r3
  5ecf68: e5dda058     	ldrb	r10, [sp, #0x58]
  5ecf6c: e1a0e00f     	mov	lr, pc
  5ecf70: e59cf00c     	ldr	pc, [r12, #0xc]
  5ecf74: e59d3034     	ldr	r3, [sp, #0x34]
  5ecf78: e59d2030     	ldr	r2, [sp, #0x30]
  5ecf7c: e1520003     	cmp	r2, r3
  5ecf80: 0a00002b     	beq	0x5ed034 <glitch::video::CTextureManager::getTextureInternal(glitch::io::IReadFile*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const&, bool)+0x100> @ imm = #0xac
  5ecf84: e3a01000     	mov	r1, #0
  5ecf88: e5943000     	ldr	r3, [r4]
  5ecf8c: e1a00004     	mov	r0, r4
  5ecf90: e1a02001     	mov	r2, r1
  5ecf94: e1a0e00f     	mov	lr, pc
  5ecf98: e593f018     	ldr	pc, [r3, #0x18]
  5ecf9c: e1a05004     	mov	r5, r4
  5ecfa0: e5983014     	ldr	r3, [r8, #0x14]
  5ecfa4: e28dc02c     	add	r12, sp, #44
  5ecfa8: e1a00006     	mov	r0, r6
  5ecfac: e1a01007     	mov	r1, r7
  5ecfb0: e1a02005     	mov	r2, r5
  5ecfb4: e58dc000     	str	r12, [sp]
  5ecfb8: e58da004     	str	r10, [sp, #0x4]
  5ecfbc: ebfffef8     	bl	0x5ecba4 <glitch::video::CTextureManager::loadTextureFromFile(glitch::io::IReadFile*, char const*, glitch::video::E_PIXEL_FORMAT&, bool)> @ imm = #-0x420
  5ecfc0: e5963000     	ldr	r3, [r6]
  5ecfc4: e3530000     	cmp	r3, #0
  5ecfc8: 0a000030     	beq	0x5ed090 <glitch::video::CTextureManager::getTextureInternal(glitch::io::IReadFile*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const&, bool)+0x15c> @ imm = #0xc0
  5ecfcc: e5943000     	ldr	r3, [r4]
  5ecfd0: e1a00004     	mov	r0, r4
  5ecfd4: e1a0e00f     	mov	lr, pc
  5ecfd8: e593f028     	ldr	pc, [r3, #0x28]
  5ecfdc: e1a01000     	mov	r1, r0
  5ecfe0: e59f00d4     	ldr	r0, [pc, #0xd4]         @ 0x5ed0bc <glitch::video::CTextureManager::getTextureInternal(glitch::io::IReadFile*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const&, bool)+0x188>
  5ecfe4: e3a02001     	mov	r2, #1
  5ecfe8: e08f0000     	add	r0, pc, r0
  5ecfec: eb00773d     	bl	0x60ace8 <glitch::os::Printer::log(char const*, char const*, glitch::ELOG_LEVEL)> @ imm = #0x1dcf4
  5ecff0: e5953000     	ldr	r3, [r5]
  5ecff4: e1a00005     	mov	r0, r5
  5ecff8: e59d802c     	ldr	r8, [sp, #0x2c]
  5ecffc: e1a0e00f     	mov	lr, pc
  5ed000: e593f028     	ldr	pc, [r3, #0x28]
  5ed004: e1a01006     	mov	r1, r6
  5ed008: e1a03000     	mov	r3, r0
  5ed00c: e1a02008     	mov	r2, r8
  5ed010: e1a00007     	mov	r0, r7
  5ed014: ebfff5d2     	bl	0x5ea764 <glitch::video::CTextureManager::addTexture(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_PIXEL_FORMAT, char const*)> @ imm = #-0x28b8
  5ed018: e1550004     	cmp	r5, r4
  5ed01c: 0a000001     	beq	0x5ed028 <glitch::video::CTextureManager::getTextureInternal(glitch::io::IReadFile*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const&, bool)+0xf4> @ imm = #0x4
  5ed020: e1a00005     	mov	r0, r5
  5ed024: ebf4c156     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cfaa8
  5ed028: e1a00006     	mov	r0, r6
  5ed02c: e28dd038     	add	sp, sp, #56
  5ed030: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  5ed034: e3a01000     	mov	r1, #0
  5ed038: e1a02001     	mov	r2, r1
  5ed03c: e5943000     	ldr	r3, [r4]
  5ed040: e1a00004     	mov	r0, r4
  5ed044: e1a0e00f     	mov	lr, pc
  5ed048: e593f018     	ldr	pc, [r3, #0x18]
  5ed04c: e28d900c     	add	r9, sp, #12
  5ed050: e3a02001     	mov	r2, #1
  5ed054: e1a03002     	mov	r3, r2
  5ed058: e1a01004     	mov	r1, r4
  5ed05c: e1a00009     	mov	r0, r9
  5ed060: ebfe2bcf     	bl	0x577fa4 <glitch::io::CZipReader::CZipReader(glitch::io::IReadFile*, bool, bool)> @ imm = #-0x750c4
  5ed064: e5943000     	ldr	r3, [r4]
  5ed068: e1a00004     	mov	r0, r4
  5ed06c: e1a0e00f     	mov	lr, pc
  5ed070: e593f028     	ldr	pc, [r3, #0x28]
  5ed074: e1a01000     	mov	r1, r0
  5ed078: e1a00009     	mov	r0, r9
  5ed07c: ebfe2d68     	bl	0x578624 <glitch::io::CZipReader::openFile(char const*)> @ imm = #-0x74a60
  5ed080: e1a05000     	mov	r5, r0
  5ed084: e1a00009     	mov	r0, r9
  5ed088: ebfe28fe     	bl	0x577488 <glitch::io::CZipReader::~CZipReader()> @ imm = #-0x75c08
  5ed08c: eaffffc3     	b	0x5ecfa0 <glitch::video::CTextureManager::getTextureInternal(glitch::io::IReadFile*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const&, bool)+0x6c> @ imm = #-0xf4
  5ed090: e5943000     	ldr	r3, [r4]
  5ed094: e1a00004     	mov	r0, r4
  5ed098: e1a0e00f     	mov	lr, pc
  5ed09c: e593f028     	ldr	pc, [r3, #0x28]
  5ed0a0: e1a01000     	mov	r1, r0
  5ed0a4: e59f0014     	ldr	r0, [pc, #0x14]         @ 0x5ed0c0 <glitch::video::CTextureManager::getTextureInternal(glitch::io::IReadFile*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const&, bool)+0x18c>
  5ed0a8: e3a02003     	mov	r2, #3
  5ed0ac: e08f0000     	add	r0, pc, r0
  5ed0b0: eb00770c     	bl	0x60ace8 <glitch::os::Printer::log(char const*, char const*, glitch::ELOG_LEVEL)> @ imm = #0x1dc30
  5ed0b4: eaffffd7     	b	0x5ed018 <glitch::video::CTextureManager::getTextureInternal(glitch::io::IReadFile*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const&, bool)+0xe4> @ imm = #-0xa4
  5ed0b8: 8c 63 2f 00  	.word	0x002f638c
  5ed0bc: e8 65 2f 00  	.word	0x002f65e8
  5ed0c0: 34 65 2f 00  	.word	0x002f6534

; PACKAGE FUNCTION texture_cache_find
; SYMBOL glitch::video::CTextureManager::findTexture(char const*) const
; ELF_VA 0x005e8f2c size=100 file_offset=0x005e8f2c PT_LOAD=0 (program header 1)
; SHA-256 bc8e3b36d847e0892b0838e7411bdbae1a40f0e8ee4672fc562c8e058e4317fd
005e8f2c <glitch::video::CTextureManager::findTexture(char const*) const>:
  5e8f2c: e92d4070     	push	{r4, r5, r6, lr}
  5e8f30: e1a04001     	mov	r4, r1
  5e8f34: e1a05000     	mov	r5, r0
  5e8f38: e1a01002     	mov	r1, r2
  5e8f3c: e1a00004     	mov	r0, r4
  5e8f40: ebffffe4     	bl	0x5e8ed8 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::getId(char const*) const> @ imm = #-0x70
  5e8f44: e5942018     	ldr	r2, [r4, #0x18]
  5e8f48: e594101c     	ldr	r1, [r4, #0x1c]
  5e8f4c: e59f3034     	ldr	r3, [pc, #0x34]         @ 0x5e8f88 <glitch::video::CTextureManager::findTexture(char const*) const+0x5c>
  5e8f50: e0621001     	rsb	r1, r2, r1
  5e8f54: e15001c1     	cmp	r0, r1, asr #3
  5e8f58: e08f3003     	add	r3, pc, r3
  5e8f5c: 30822180     	addlo	r2, r2, r0, lsl #3
  5e8f60: 259f2024     	ldrhs	r2, [pc, #0x24]         @ 0x5e8f8c <glitch::video::CTextureManager::findTexture(char const*) const+0x60>
  5e8f64: 27932002     	ldrhs	r2, [r3, r2]
  5e8f68: e5923000     	ldr	r3, [r2]
  5e8f6c: e1a00005     	mov	r0, r5
  5e8f70: e3530000     	cmp	r3, #0
  5e8f74: e5853000     	str	r3, [r5]
  5e8f78: 15932004     	ldrne	r2, [r3, #0x4]
  5e8f7c: 12822001     	addne	r2, r2, #1
  5e8f80: 15832004     	strne	r2, [r3, #0x4]
  5e8f84: e8bd8070     	pop	{r4, r5, r6, pc}
  5e8f88: 38 bb 3a 00  	.word	0x003abb38
  5e8f8c: e8 10 00 00  	.word	0x000010e8

; PACKAGE FUNCTION texture_cache_insert
; SYMBOL SIDedCollection<ITexture>::insert(char const*, intrusive_ptr<ITexture> const&, bool)
; ELF_VA 0x005ea53c size=552 file_offset=0x005ea53c PT_LOAD=0 (program header 1)
; SHA-256 af6efe729ba84272db3a27dd59c6c620d7f6c5e51161830a72136b39b5c671f1
005ea53c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)>:
  5ea53c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  5ea540: e59f5214     	ldr	r5, [pc, #0x214]        @ 0x5ea75c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)+0x220>
  5ea544: e59f7214     	ldr	r7, [pc, #0x214]        @ 0x5ea760 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)+0x224>
  5ea548: e1a04000     	mov	r4, r0
  5ea54c: e08f5005     	add	r5, pc, r5
  5ea550: e795c007     	ldr	r12, [r5, r7]
  5ea554: e1d002b6     	ldrh	r0, [r0, #38]
  5ea558: e24dd074     	sub	sp, sp, #116
  5ea55c: e59cc000     	ldr	r12, [r12]
  5ea560: e28d804c     	add	r8, sp, #76
  5ea564: e2800001     	add	r0, r0, #1
  5ea568: e58d1010     	str	r1, [sp, #0x10]
  5ea56c: e1c402b6     	strh	r0, [r4, #38]
  5ea570: e3a01010     	mov	r1, #16
  5ea574: e58dc06c     	str	r12, [sp, #0x6c]
  5ea578: e1a00008     	mov	r0, r8
  5ea57c: e58d805c     	str	r8, [sp, #0x5c]
  5ea580: e58d8060     	str	r8, [sp, #0x60]
  5ea584: e1a09003     	mov	r9, r3
  5ea588: e1a0b002     	mov	r11, r2
  5ea58c: e1d462b4     	ldrh	r6, [r4, #36]
  5ea590: ebf4d904     	bl	0x3209a8 <std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(unsigned int)> @ imm = #-0x2c9bf0
  5ea594: e59d305c     	ldr	r3, [sp, #0x5c]
  5ea598: e3a0c000     	mov	r12, #0
  5ea59c: e3a0e027     	mov	lr, #39
  5ea5a0: e5c3c000     	strb	r12, [r3]
  5ea5a4: e28da024     	add	r10, sp, #36
  5ea5a8: e58de064     	str	lr, [sp, #0x64]
  5ea5ac: e59de010     	ldr	lr, [sp, #0x10]
  5ea5b0: e28a3008     	add	r3, r10, #8
  5ea5b4: e1a00003     	mov	r0, r3
  5ea5b8: e59d1060     	ldr	r1, [sp, #0x60]
  5ea5bc: e59d205c     	ldr	r2, [sp, #0x5c]
  5ea5c0: e58de024     	str	lr, [sp, #0x24]
  5ea5c4: e5cdc028     	strb	r12, [sp, #0x28]
  5ea5c8: e5cdc014     	strb	r12, [sp, #0x14]
  5ea5cc: e58d303c     	str	r3, [sp, #0x3c]
  5ea5d0: e58d3040     	str	r3, [sp, #0x40]
  5ea5d4: e1cd66b8     	strh	r6, [sp, #104]
  5ea5d8: ebf4ee85     	bl	0x325ff4 <std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(char const*, char const*)> @ imm = #-0x2c45ec
  5ea5dc: e59d3064     	ldr	r3, [sp, #0x64]
  5ea5e0: e1a01004     	mov	r1, r4
  5ea5e4: e1a0200a     	mov	r2, r10
  5ea5e8: e58d3044     	str	r3, [sp, #0x44]
  5ea5ec: e1dd36b8     	ldrh	r3, [sp, #104]
  5ea5f0: e28d0018     	add	r0, sp, #24
  5ea5f4: e1cd34b8     	strh	r3, [sp, #72]
  5ea5f8: ebfff987     	bl	0x5e8c1c <std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> const&)> @ imm = #-0x19e4
  5ea5fc: e1a0000a     	mov	r0, r10
  5ea600: ebfffb2e     	bl	0x5e92c0 <std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>::~pair()> @ imm = #-0x1348
  5ea604: e59d0060     	ldr	r0, [sp, #0x60]
  5ea608: e1500008     	cmp	r0, r8
  5ea60c: 0a000002     	beq	0x5ea61c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)+0xe0> @ imm = #0x8
  5ea610: e3500000     	cmp	r0, #0
  5ea614: 0a000000     	beq	0x5ea61c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)+0xe0> @ imm = #0x0
  5ea618: ebf4978c     	bl	0x310450 <GlitchFree(void*)> @ imm = #-0x2da1d0
  5ea61c: e3590000     	cmp	r9, #0
  5ea620: 159d3018     	ldrne	r3, [sp, #0x18]
  5ea624: 13a02001     	movne	r2, #1
  5ea628: 15c32014     	strbne	r2, [r3, #0x14]
  5ea62c: e5943018     	ldr	r3, [r4, #0x18]
  5ea630: e594101c     	ldr	r1, [r4, #0x1c]
  5ea634: e0632001     	rsb	r2, r3, r1
  5ea638: e15601c2     	cmp	r6, r2, asr #3
  5ea63c: 3a00001b     	blo	0x5ea6b0 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)+0x174> @ imm = #0x6c
  5ea640: e59b3000     	ldr	r3, [r11]
  5ea644: e59d2018     	ldr	r2, [sp, #0x18]
  5ea648: e3530000     	cmp	r3, #0
  5ea64c: e58d3008     	str	r3, [sp, #0x8]
  5ea650: 15931004     	ldrne	r1, [r3, #0x4]
  5ea654: 12811001     	addne	r1, r1, #1
  5ea658: 15831004     	strne	r1, [r3, #0x4]
  5ea65c: 1594101c     	ldrne	r1, [r4, #0x1c]
  5ea660: e5943020     	ldr	r3, [r4, #0x20]
  5ea664: e58d200c     	str	r2, [sp, #0xc]
  5ea668: e1510003     	cmp	r1, r3
  5ea66c: 0a000031     	beq	0x5ea738 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)+0x1fc> @ imm = #0xc4
  5ea670: e59d3008     	ldr	r3, [sp, #0x8]
  5ea674: e5813000     	str	r3, [r1]
  5ea678: e3530000     	cmp	r3, #0
  5ea67c: 15932004     	ldrne	r2, [r3, #0x4]
  5ea680: 12822001     	addne	r2, r2, #1
  5ea684: 15832004     	strne	r2, [r3, #0x4]
  5ea688: e59d300c     	ldr	r3, [sp, #0xc]
  5ea68c: e5813004     	str	r3, [r1, #0x4]
  5ea690: e594301c     	ldr	r3, [r4, #0x1c]
  5ea694: e2833008     	add	r3, r3, #8
  5ea698: e584301c     	str	r3, [r4, #0x1c]
  5ea69c: e59d0008     	ldr	r0, [sp, #0x8]
  5ea6a0: e3500000     	cmp	r0, #0
  5ea6a4: 0a00000e     	beq	0x5ea6e4 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)+0x1a8> @ imm = #0x38
  5ea6a8: ebf4cbb5     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cd12c
  5ea6ac: ea00000c     	b	0x5ea6e4 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)+0x1a8> @ imm = #0x30
  5ea6b0: e59b2000     	ldr	r2, [r11]
  5ea6b4: e59da018     	ldr	r10, [sp, #0x18]
  5ea6b8: e0838186     	add	r8, r3, r6, lsl #3
  5ea6bc: e3520000     	cmp	r2, #0
  5ea6c0: 15921004     	ldrne	r1, [r2, #0x4]
  5ea6c4: 12811001     	addne	r1, r1, #1
  5ea6c8: 15821004     	strne	r1, [r2, #0x4]
  5ea6cc: e7930186     	ldr	r0, [r3, r6, lsl #3]
  5ea6d0: e7832186     	str	r2, [r3, r6, lsl #3]
  5ea6d4: e3500000     	cmp	r0, #0
  5ea6d8: 0a000000     	beq	0x5ea6e0 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)+0x1a4> @ imm = #0x0
  5ea6dc: ebf4cba8     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2cd160
  5ea6e0: e588a004     	str	r10, [r8, #0x4]
  5ea6e4: e594201c     	ldr	r2, [r4, #0x1c]
  5ea6e8: e5940018     	ldr	r0, [r4, #0x18]
  5ea6ec: e1d432b4     	ldrh	r3, [r4, #36]
  5ea6f0: e0602002     	rsb	r2, r0, r2
  5ea6f4: e1a021c2     	asr	r2, r2, #3
  5ea6f8: e2833001     	add	r3, r3, #1
  5ea6fc: e6ff3073     	uxth	r3, r3
  5ea700: e1530002     	cmp	r3, r2
  5ea704: e1c432b4     	strh	r3, [r4, #36]
  5ea708: 2a000002     	bhs	0x5ea718 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)+0x1dc> @ imm = #0x8
  5ea70c: e7901183     	ldr	r1, [r0, r3, lsl #3]
  5ea710: e3510000     	cmp	r1, #0
  5ea714: 1afffff7     	bne	0x5ea6f8 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)+0x1bc> @ imm = #-0x24
  5ea718: e7953007     	ldr	r3, [r5, r7]
  5ea71c: e59d206c     	ldr	r2, [sp, #0x6c]
  5ea720: e1a00006     	mov	r0, r6
  5ea724: e5933000     	ldr	r3, [r3]
  5ea728: e1520003     	cmp	r2, r3
  5ea72c: 1a000009     	bne	0x5ea758 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)+0x21c> @ imm = #0x24
  5ea730: e28dd074     	add	sp, sp, #116
  5ea734: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  5ea738: e3a0c001     	mov	r12, #1
  5ea73c: e2840018     	add	r0, r4, #24
  5ea740: e28d2008     	add	r2, sp, #8
  5ea744: e28d3020     	add	r3, sp, #32
  5ea748: e58dc004     	str	r12, [sp, #0x4]
  5ea74c: e58dc000     	str	r12, [sp]
  5ea750: ebfffb91     	bl	0x5e959c <std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&, std::__false_type const&, unsigned int, bool)> @ imm = #-0x11bc
  5ea754: eaffffd0     	b	0x5ea69c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)+0x160> @ imm = #-0xc0
  5ea758: ebf48eec     	bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x2dc450
  5ea75c: 44 a5 3a 00  	.word	0x003aa544
  5ea760: ac 40 00 00  	.word	0x000040ac

; PACKAGE FUNCTION texture_manager_add_texture
; SYMBOL CTextureManager::addTexture(intrusive_ptr<ITexture> const&, E_PIXEL_FORMAT, char const*)
; ELF_VA 0x005ea764 size=148 file_offset=0x005ea764 PT_LOAD=0 (program header 1)
; SHA-256 17086be97403ae906787ad2f5f4be51f2c9f227960d73d0b9a3c4a1ca251de1f
005ea764 <glitch::video::CTextureManager::addTexture(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_PIXEL_FORMAT, char const*)>:
  5ea764: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  5ea768: e1a04001     	mov	r4, r1
  5ea76c: e5911000     	ldr	r1, [r1]
  5ea770: e1a07002     	mov	r7, r2
  5ea774: e1a05003     	mov	r5, r3
  5ea778: e3510000     	cmp	r1, #0
  5ea77c: e1a06000     	mov	r6, r0
  5ea780: 030f8fff     	movweq	r8, #0xffff
  5ea784: 0a000019     	beq	0x5ea7f0 <glitch::video::CTextureManager::addTexture(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_PIXEL_FORMAT, char const*)+0x8c> @ imm = #0x64
  5ea788: e3a03000     	mov	r3, #0
  5ea78c: e591101c     	ldr	r1, [r1, #0x1c]
  5ea790: e1a02004     	mov	r2, r4
  5ea794: ebffff68     	bl	0x5ea53c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)> @ imm = #-0x260
  5ea798: e30f3fff     	movw	r3, #0xffff
  5ea79c: e1500003     	cmp	r0, r3
  5ea7a0: e1a08000     	mov	r8, r0
  5ea7a4: 0a00000f     	beq	0x5ea7e8 <glitch::video::CTextureManager::addTexture(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_PIXEL_FORMAT, char const*)+0x84> @ imm = #0x3c
  5ea7a8: e5963018     	ldr	r3, [r6, #0x18]
  5ea7ac: e1a0a180     	lsl	r10, r0, #3
  5ea7b0: e3550000     	cmp	r5, #0
  5ea7b4: e083300a     	add	r3, r3, r10
  5ea7b8: e5933004     	ldr	r3, [r3, #0x4]
  5ea7bc: e5837030     	str	r7, [r3, #0x30]
  5ea7c0: 0a000008     	beq	0x5ea7e8 <glitch::video::CTextureManager::addTexture(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_PIXEL_FORMAT, char const*)+0x84> @ imm = #0x20
  5ea7c4: e1a00005     	mov	r0, r5
  5ea7c8: ebf48da1     	bl	0x30de54 <strlen@plt>   @ imm = #-0x2dc97c
  5ea7cc: e5963018     	ldr	r3, [r6, #0x18]
  5ea7d0: e0852000     	add	r2, r5, r0
  5ea7d4: e1a01005     	mov	r1, r5
  5ea7d8: e083a00a     	add	r10, r3, r10
  5ea7dc: e59a3004     	ldr	r3, [r10, #0x4]
  5ea7e0: e2830018     	add	r0, r3, #24
  5ea7e4: ebf4d8e7     	bl	0x320b88 <std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>::_M_assign(char const*, char const*)> @ imm = #-0x2c9c64
  5ea7e8: e5943000     	ldr	r3, [r4]
  5ea7ec: e1c383bc     	strh	r8, [r3, #60]
  5ea7f0: e1a00008     	mov	r0, r8
  5ea7f4: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}

; PACKAGE FUNCTION texture_collection_remove_unused
; SYMBOL SIDedCollection<ITexture>::removeUnused()
; ELF_VA 0x005ea048 size=8 file_offset=0x005ea048 PT_LOAD=0 (program header 1)
; SHA-256 a477d45f4317d62888dce9cca0dbdbd28222460318f7a5506921cdbe6f43c7f7
005ea048 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeUnused()>:
  5ea048: e3a01000     	mov	r1, #0
  5ea04c: eaffffc9     	b	0x5e9f78 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)> @ imm = #-0xdc

; PACKAGE FUNCTION texture_collection_remove_all
; SYMBOL SIDedCollection<ITexture>::removeAll(bool)
; ELF_VA 0x005e9f78 size=200 file_offset=0x005e9f78 PT_LOAD=0 (program header 1)
; SHA-256 e1307b79e88d639881560040de854e060f5e83ad28c59fbe41f1e201a193acf2
005e9f78 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)>:
  5e9f78: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5e9f7c: e5903008     	ldr	r3, [r0, #0x8]
  5e9f80: e1a05000     	mov	r5, r0
  5e9f84: e1a07001     	mov	r7, r1
  5e9f88: e1550003     	cmp	r5, r3
  5e9f8c: e3a06000     	mov	r6, #0
  5e9f90: 0a000011     	beq	0x5e9fdc <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)+0x64> @ imm = #0x44
  5e9f94: e593400c     	ldr	r4, [r3, #0xc]
  5e9f98: e3540000     	cmp	r4, #0
  5e9f9c: 1a000001     	bne	0x5e9fa8 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)+0x30> @ imm = #0x4
  5e9fa0: ea00000f     	b	0x5e9fe4 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)+0x6c> @ imm = #0x3c
  5e9fa4: e1a04002     	mov	r4, r2
  5e9fa8: e5942008     	ldr	r2, [r4, #0x8]
  5e9fac: e3520000     	cmp	r2, #0
  5e9fb0: 1afffffb     	bne	0x5e9fa4 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)+0x2c> @ imm = #-0x14
  5e9fb4: e1d313b4     	ldrh	r1, [r3, #52]
  5e9fb8: e1a00005     	mov	r0, r5
  5e9fbc: e1a02007     	mov	r2, r7
  5e9fc0: ebffffad     	bl	0x5e9e7c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)> @ imm = #-0x14c
  5e9fc4: e3500000     	cmp	r0, #0
  5e9fc8: 12866001     	addne	r6, r6, #1
  5e9fcc: 16ff6076     	uxthne	r6, r6
  5e9fd0: e1a03004     	mov	r3, r4
  5e9fd4: e1550003     	cmp	r5, r3
  5e9fd8: 1affffed     	bne	0x5e9f94 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)+0x1c> @ imm = #-0x4c
  5e9fdc: e1a00006     	mov	r0, r6
  5e9fe0: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5e9fe4: e5932004     	ldr	r2, [r3, #0x4]
  5e9fe8: e592100c     	ldr	r1, [r2, #0xc]
  5e9fec: e1530001     	cmp	r3, r1
  5e9ff0: 11a04003     	movne	r4, r3
  5e9ff4: 13a01000     	movne	r1, #0
  5e9ff8: 1a000005     	bne	0x5ea014 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)+0x9c> @ imm = #0x14
  5e9ffc: e1a04002     	mov	r4, r2
  5ea000: e5922004     	ldr	r2, [r2, #0x4]
  5ea004: e592100c     	ldr	r1, [r2, #0xc]
  5ea008: e1510004     	cmp	r1, r4
  5ea00c: 0afffffa     	beq	0x5e9ffc <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)+0x84> @ imm = #-0x18
  5ea010: e594100c     	ldr	r1, [r4, #0xc]
  5ea014: e1510002     	cmp	r1, r2
  5ea018: 11a04002     	movne	r4, r2
  5ea01c: e1d313b4     	ldrh	r1, [r3, #52]
  5ea020: e1a00005     	mov	r0, r5
  5ea024: e1a02007     	mov	r2, r7
  5ea028: ebffff93     	bl	0x5e9e7c <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)> @ imm = #-0x1b4
  5ea02c: e3500000     	cmp	r0, #0
  5ea030: 12866001     	addne	r6, r6, #1
  5ea034: 16ff6076     	uxthne	r6, r6
  5ea038: e1a03004     	mov	r3, r4
  5ea03c: eaffffe4     	b	0x5e9fd4 <glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)+0x5c> @ imm = #-0x70

; PACKAGE FUNCTION texture_collection_remove
; SYMBOL SIDedCollection<ITexture>::remove(unsigned short, bool)
; ELF_VA 0x005e9e7c size=252 file_offset=0x005e9e7c PT_LOAD=0 (program header 1)
; SHA-256 61f268406b3778415efc5989bebcb0893c262582054e436a9345628590a39072
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

; PACKAGE FUNCTION texture_collection_entry_reset
; SYMBOL SIDedCollection<ITexture>::SEntry::reset()
; ELF_VA 0x005e9e50 size=44 file_offset=0x005e9e50 PT_LOAD=0 (program header 1)
; SHA-256 44a9c593634f86cc4abbe79dd962a118aa3d169c45e6d1039432f02aba09bfbd
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

; PACKAGE FUNCTION texture_manager_destructor
; SYMBOL CTextureManager::~CTextureManager()
; ELF_VA 0x005ea050 size=232 file_offset=0x005ea050 PT_LOAD=0 (program header 1)
; SHA-256 725f60ffd2b439539ded98733b4cd73ecc4852b753fbb7d2a731c60751626ab8
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

; PACKAGE FUNCTION texture_mark_unloadable
; SYMBOL CTextureManager::markTextureAsUnloadable(intrusive_ptr<ITexture> const&)
; ELF_VA 0x005e8dd4 size=260 file_offset=0x005e8dd4 PT_LOAD=0 (program header 1)
; SHA-256 b777e3c30f46ce3a639a952f32087faa76ac65346290868d81f49d032c7afcfa
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

; PACKAGE FUNCTION texture_add_from_desc
; SYMBOL CTextureManager::addTexture(char const*, STextureDesc const&, bool)
; ELF_VA 0x005ea7f8 size=256 file_offset=0x005ea7f8 PT_LOAD=0 (program header 1)
; SHA-256 dddb7835951dcd2247d3b179c80522cf20c13d0b0f5743445123e86f3f074fbe
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

; PACKAGE FUNCTION texture_clear_driver_resources
; SYMBOL CTextureManager::clearDriverSpecificResources()
; ELF_VA 0x005e97e0 size=244 file_offset=0x005e97e0 PT_LOAD=0 (program header 1)
; SHA-256 1b3921bfd1e0b460237b074933f7bd6ebab6c1cc5bf8eb0ffc4bf1e4377a9d4c
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

; PACKAGE FUNCTION reference_counted_drop
; SYMBOL glitch::IReferenceCounted::drop() const
; ELF_VA 0x0031d584 size=72 file_offset=0x0031d584 PT_LOAD=0 (program header 1)
; SHA-256 031bcb422bbf342aaf77d522ed55d90a7e23c759e1df0ae80d63a2966541a4d2
0031d584 <glitch::IReferenceCounted::drop() const>:
  31d584: e92d4010     	push	{r4, lr}
  31d588: e5903004     	ldr	r3, [r0, #0x4]
  31d58c: e1a04000     	mov	r4, r0
  31d590: e2433001     	sub	r3, r3, #1
  31d594: e3530000     	cmp	r3, #0
  31d598: e5803004     	str	r3, [r0, #0x4]
  31d59c: 0a000001     	beq	0x31d5a8 <glitch::IReferenceCounted::drop() const+0x24> @ imm = #0x4
  31d5a0: e3a00000     	mov	r0, #0
  31d5a4: e8bd8010     	pop	{r4, pc}
  31d5a8: e5903000     	ldr	r3, [r0]
  31d5ac: e1a0e00f     	mov	lr, pc
  31d5b0: e593f008     	ldr	pc, [r3, #0x8]
  31d5b4: e1a00004     	mov	r0, r4
  31d5b8: e5943000     	ldr	r3, [r4]
  31d5bc: e1a0e00f     	mov	lr, pc
  31d5c0: e593f004     	ldr	pc, [r3, #0x4]
  31d5c4: e3a00001     	mov	r0, #1
  31d5c8: e8bd8010     	pop	{r4, pc}

; PACKAGE FUNCTION gl_texture_bind
; SYMBOL CCommonGLDriver::CTexture::bindImpl(bool)
; ELF_VA 0x005b5610 size=768 file_offset=0x005b5610 PT_LOAD=0 (program header 1)
; SHA-256 f686f404818da4866c94754a34882a1c5eb299e3f03959314317261ea7b496f0
005b5610 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)>:
  5b5610: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  5b5614: e5903054     	ldr	r3, [r0, #0x54]
  5b5618: e5904034     	ldr	r4, [r0, #0x34]
  5b561c: e5907038     	ldr	r7, [r0, #0x38]
  5b5620: e59f62d8     	ldr	r6, [pc, #0x2d8]        @ 0x5b5900 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x2f0>
  5b5624: e3530000     	cmp	r3, #0
  5b5628: e2077003     	and	r7, r7, #3
  5b562c: e2843e42     	add	r3, r4, #1056
  5b5630: e1a05000     	mov	r5, r0
  5b5634: e0837287     	add	r7, r3, r7, lsl #5
  5b5638: e08f6006     	add	r6, pc, r6
  5b563c: e1a08001     	mov	r8, r1
  5b5640: 0a000035     	beq	0x5b571c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x10c> @ imm = #0xd4
  5b5644: e5943268     	ldr	r3, [r4, #0x268]
  5b5648: e7972103     	ldr	r2, [r7, r3, lsl #2]
  5b564c: e1520000     	cmp	r2, r0
  5b5650: 0a000013     	beq	0x5b56a4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x94> @ imm = #0x4c
  5b5654: e594604c     	ldr	r6, [r4, #0x4c]
  5b5658: e2466001     	sub	r6, r6, #1
  5b565c: e1530006     	cmp	r3, r6
  5b5660: 0a000003     	beq	0x5b5674 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x64> @ imm = #0xc
  5b5664: e2860b21     	add	r0, r6, #33792
  5b5668: e28000c0     	add	r0, r0, #192
  5b566c: ebf562dc     	bl	0x30e1e4 <glActiveTexture@plt> @ imm = #-0x2a7490
  5b5670: e5846268     	str	r6, [r4, #0x268]
  5b5674: e7973106     	ldr	r3, [r7, r6, lsl #2]
  5b5678: e1550003     	cmp	r5, r3
  5b567c: 0a000008     	beq	0x5b56a4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x94> @ imm = #0x20
  5b5680: e59f327c     	ldr	r3, [pc, #0x27c]        @ 0x5b5904 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x2f4>
  5b5684: e5952038     	ldr	r2, [r5, #0x38]
  5b5688: e5951054     	ldr	r1, [r5, #0x54]
  5b568c: e08f3003     	add	r3, pc, r3
  5b5690: e28330a4     	add	r3, r3, #164
  5b5694: e2022003     	and	r2, r2, #3
  5b5698: e7930102     	ldr	r0, [r3, r2, lsl #2]
  5b569c: ebf56447     	bl	0x30e7c0 <glBindTexture@plt> @ imm = #-0x2a6ee4
  5b56a0: e7875106     	str	r5, [r7, r6, lsl #2]
  5b56a4: e5d51058     	ldrb	r1, [r5, #0x58]
  5b56a8: e3510000     	cmp	r1, #0
  5b56ac: 1a00005d     	bne	0x5b5828 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x218> @ imm = #0x174
  5b56b0: e1d544b0     	ldrh	r4, [r5, #64]
  5b56b4: e3c44002     	bic	r4, r4, #2
  5b56b8: e1a04984     	lsl	r4, r4, #19
  5b56bc: e1a049a4     	lsr	r4, r4, #19
  5b56c0: e3540000     	cmp	r4, #0
  5b56c4: 1a00005c     	bne	0x5b583c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x22c> @ imm = #0x170
  5b56c8: e5d5303f     	ldrb	r3, [r5, #0x3f]
  5b56cc: e2031010     	and	r1, r3, #16
  5b56d0: e6ef1071     	uxtb	r1, r1
  5b56d4: e3510000     	cmp	r1, #0
  5b56d8: 0a000004     	beq	0x5b56f0 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0xe0> @ imm = #0x10
  5b56dc: e5953054     	ldr	r3, [r5, #0x54]
  5b56e0: e3530000     	cmp	r3, #0
  5b56e4: 1a00005e     	bne	0x5b5864 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x254> @ imm = #0x178
  5b56e8: e1a00004     	mov	r0, r4
  5b56ec: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  5b56f0: e3580000     	cmp	r8, #0
  5b56f4: 0afffffb     	beq	0x5b56e8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0xd8> @ imm = #-0x14
  5b56f8: e595202c     	ldr	r2, [r5, #0x2c]
  5b56fc: e3520000     	cmp	r2, #0
  5b5700: 0afffff8     	beq	0x5b56e8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0xd8> @ imm = #-0x20
  5b5704: e1a00005     	mov	r0, r5
  5b5708: e7e030d3     	ubfx	r3, r3, #0x1, #0x1
  5b570c: e3a02001     	mov	r2, #1
  5b5710: eb012217     	bl	0x5fdf74 <glitch::video::ITexture::setData(void*, bool, bool)> @ imm = #0x4885c
  5b5714: e1a00004     	mov	r0, r4
  5b5718: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  5b571c: e5d0303f     	ldrb	r3, [r0, #0x3f]
  5b5720: e2851054     	add	r1, r5, #84
  5b5724: e3a00001     	mov	r0, #1
  5b5728: e3c33010     	bic	r3, r3, #16
  5b572c: e5c5303f     	strb	r3, [r5, #0x3f]
  5b5730: ebf5647f     	bl	0x30e934 <glGenTextures@plt> @ imm = #-0x2a6e04
  5b5734: e5951054     	ldr	r1, [r5, #0x54]
  5b5738: e3510000     	cmp	r1, #0
  5b573c: 0a000043     	beq	0x5b5850 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x240> @ imm = #0x10c
  5b5740: e595a034     	ldr	r10, [r5, #0x34]
  5b5744: e59a3268     	ldr	r3, [r10, #0x268]
  5b5748: e7972103     	ldr	r2, [r7, r3, lsl #2]
  5b574c: e1520005     	cmp	r2, r5
  5b5750: 0a000009     	beq	0x5b577c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x16c> @ imm = #0x24
  5b5754: e59a404c     	ldr	r4, [r10, #0x4c]
  5b5758: e2444001     	sub	r4, r4, #1
  5b575c: e1530004     	cmp	r3, r4
  5b5760: 0a000003     	beq	0x5b5774 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x164> @ imm = #0xc
  5b5764: e2840b21     	add	r0, r4, #33792
  5b5768: e28000c0     	add	r0, r0, #192
  5b576c: ebf5629c     	bl	0x30e1e4 <glActiveTexture@plt> @ imm = #-0x2a7590
  5b5770: e58a4268     	str	r4, [r10, #0x268]
  5b5774: e7875104     	str	r5, [r7, r4, lsl #2]
  5b5778: e5951054     	ldr	r1, [r5, #0x54]
  5b577c: e59f3184     	ldr	r3, [pc, #0x184]        @ 0x5b5908 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x2f8>
  5b5780: e5952038     	ldr	r2, [r5, #0x38]
  5b5784: e08f3003     	add	r3, pc, r3
  5b5788: e28330a4     	add	r3, r3, #164
  5b578c: e2022003     	and	r2, r2, #3
  5b5790: e7930102     	ldr	r0, [r3, r2, lsl #2]
  5b5794: ebf56409     	bl	0x30e7c0 <glBindTexture@plt> @ imm = #-0x2a6fdc
  5b5798: e5d5303e     	ldrb	r3, [r5, #0x3e]
  5b579c: e5952038     	ldr	r2, [r5, #0x38]
  5b57a0: e3530001     	cmp	r3, #1
  5b57a4: 9a00001c     	bls	0x5b581c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x20c> @ imm = #0x70
  5b57a8: e5d5303f     	ldrb	r3, [r5, #0x3f]
  5b57ac: e3130002     	tst	r3, #2
  5b57b0: e1a01003     	mov	r1, r3
  5b57b4: 1a000033     	bne	0x5b5888 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x278> @ imm = #0xcc
  5b57b8: e7e26652     	ubfx	r6, r2, #0xc, #0x3
  5b57bc: e3560001     	cmp	r6, #1
  5b57c0: da000039     	ble	0x5b58ac <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x29c> @ imm = #0xe4
  5b57c4: e3833008     	orr	r3, r3, #8
  5b57c8: e5c5303f     	strb	r3, [r5, #0x3f]
  5b57cc: e1a00005     	mov	r0, r5
  5b57d0: e3a01001     	mov	r1, #1
  5b57d4: ebffeb1c     	bl	0x5b044c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(bool) const> @ imm = #-0x5390
  5b57d8: e3560002     	cmp	r6, #2
  5b57dc: e1a04000     	mov	r4, r0
  5b57e0: 0affffb8     	beq	0x5b56c8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0xb8> @ imm = #-0x120
  5b57e4: e5953038     	ldr	r3, [r5, #0x38]
  5b57e8: e7e22653     	ubfx	r2, r3, #0xc, #0x3
  5b57ec: e1560002     	cmp	r6, r2
  5b57f0: 0affffb4     	beq	0x5b56c8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0xb8> @ imm = #-0x130
  5b57f4: e5d5203e     	ldrb	r2, [r5, #0x3e]
  5b57f8: e3520001     	cmp	r2, #1
  5b57fc: 9a000039     	bls	0x5b58e8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x2d8> @ imm = #0xe4
  5b5800: e1d524b0     	ldrh	r2, [r5, #64]
  5b5804: e3c33a07     	bic	r3, r3, #28672
  5b5808: e1836606     	orr	r6, r3, r6, lsl #12
  5b580c: e3822004     	orr	r2, r2, #4
  5b5810: e5856038     	str	r6, [r5, #0x38]
  5b5814: e1c524b0     	strh	r2, [r5, #64]
  5b5818: eaffffaa     	b	0x5b56c8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0xb8> @ imm = #-0x158
  5b581c: e5d5103f     	ldrb	r1, [r5, #0x3f]
  5b5820: e3811008     	orr	r1, r1, #8
  5b5824: e5c5103f     	strb	r1, [r5, #0x3f]
  5b5828: e1a00005     	mov	r0, r5
  5b582c: e3a01001     	mov	r1, #1
  5b5830: ebffeb05     	bl	0x5b044c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(bool) const> @ imm = #-0x53ec
  5b5834: e1a04000     	mov	r4, r0
  5b5838: eaffffa2     	b	0x5b56c8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0xb8> @ imm = #-0x178
  5b583c: e1a00005     	mov	r0, r5
  5b5840: ebffeb01     	bl	0x5b044c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(bool) const> @ imm = #-0x53fc
  5b5844: e5d5303f     	ldrb	r3, [r5, #0x3f]
  5b5848: e1a04000     	mov	r4, r0
  5b584c: eaffff9e     	b	0x5b56cc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0xbc> @ imm = #-0x188
  5b5850: e5d5303f     	ldrb	r3, [r5, #0x3f]
  5b5854: e1a04001     	mov	r4, r1
  5b5858: e3833010     	orr	r3, r3, #16
  5b585c: e5c5303f     	strb	r3, [r5, #0x3f]
  5b5860: eaffff99     	b	0x5b56cc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0xbc> @ imm = #-0x19c
  5b5864: e5953000     	ldr	r3, [r5]
  5b5868: e1a00005     	mov	r0, r5
  5b586c: e1a0e00f     	mov	lr, pc
  5b5870: e593f010     	ldr	pc, [r3, #0x10]
  5b5874: e5d5303f     	ldrb	r3, [r5, #0x3f]
  5b5878: e1a00004     	mov	r0, r4
  5b587c: e3833010     	orr	r3, r3, #16
  5b5880: e5c5303f     	strb	r3, [r5, #0x3f]
  5b5884: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  5b5888: e59fc07c     	ldr	r12, [pc, #0x7c]        @ 0x5b590c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x2fc>
  5b588c: e7e50252     	ubfx	r0, r2, #0x4, #0x6
  5b5890: e3a0e028     	mov	lr, #40
  5b5894: e796c00c     	ldr	r12, [r6, r12]
  5b5898: e000009e     	mul	r0, lr, r0
  5b589c: e79c0000     	ldr	r0, [r12, r0]
  5b58a0: e3100008     	tst	r0, #8
  5b58a4: 1affffdd     	bne	0x5b5820 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x210> @ imm = #-0x8c
  5b58a8: eaffffc2     	b	0x5b57b8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x1a8> @ imm = #-0xf8
  5b58ac: e3560002     	cmp	r6, #2
  5b58b0: 0a00000f     	beq	0x5b58f4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x2e4> @ imm = #0x3c
  5b58b4: e1d504b0     	ldrh	r0, [r5, #64]
  5b58b8: e3c22a07     	bic	r2, r2, #28672
  5b58bc: e3821a02     	orr	r1, r2, #8192
  5b58c0: e3833008     	orr	r3, r3, #8
  5b58c4: e3802004     	orr	r2, r0, #4
  5b58c8: e5851038     	str	r1, [r5, #0x38]
  5b58cc: e1c524b0     	strh	r2, [r5, #64]
  5b58d0: e5c5303f     	strb	r3, [r5, #0x3f]
  5b58d4: e1a00005     	mov	r0, r5
  5b58d8: e3a01001     	mov	r1, #1
  5b58dc: ebffeada     	bl	0x5b044c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(bool) const> @ imm = #-0x5498
  5b58e0: e1a04000     	mov	r4, r0
  5b58e4: eaffffbe     	b	0x5b57e4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x1d4> @ imm = #-0x108
  5b58e8: e3560001     	cmp	r6, #1
  5b58ec: caffff75     	bgt	0x5b56c8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0xb8> @ imm = #-0x22c
  5b58f0: eaffffc2     	b	0x5b5800 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x1f0> @ imm = #-0xf8
  5b58f4: e3833008     	orr	r3, r3, #8
  5b58f8: e5c5303f     	strb	r3, [r5, #0x3f]
  5b58fc: eaffffc9     	b	0x5b5828 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)+0x218> @ imm = #-0xdc
  5b5900: 58 f4 3d 00  	.word	0x003df458
  5b5904: a8 a9 32 00  	.word	0x0032a9a8
  5b5908: b0 a8 32 00  	.word	0x0032a8b0
  5b590c: 34 1f 00 00  	.word	0x00001f34

; PACKAGE FUNCTION texture_map
; SYMBOL glitch::video::ITexture::map(E_BUFFER_MAP_ACCESS, E_TEXTURE_CUBE_MAP_FACE, unsigned char)
; ELF_VA 0x005fe0d4 size=556 file_offset=0x005fe0d4 PT_LOAD=0 (program header 1)
; SHA-256 ac52c10e043e82d964e28cf6271600220138cb5b1c6905fa30a032be22d3866f
005fe0d4 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)>:
  5fe0d4: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5fe0d8: e5d0c042     	ldrb	r12, [r0, #0x42]
  5fe0dc: e1a04000     	mov	r4, r0
  5fe0e0: e1a07001     	mov	r7, r1
  5fe0e4: e35c0000     	cmp	r12, #0
  5fe0e8: e1a05002     	mov	r5, r2
  5fe0ec: e1a06003     	mov	r6, r3
  5fe0f0: 1a000038     	bne	0x5fe1d8 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0x104> @ imm = #0xe0
  5fe0f4: e5d0303f     	ldrb	r3, [r0, #0x3f]
  5fe0f8: e3130008     	tst	r3, #8
  5fe0fc: 0a00000a     	beq	0x5fe12c <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0x58> @ imm = #0x28
  5fe100: e3510003     	cmp	r1, #3
  5fe104: ca00002f     	bgt	0x5fe1c8 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0xf4> @ imm = #0xbc
  5fe108: e2071001     	and	r1, r7, #1
  5fe10c: e1a00004     	mov	r0, r4
  5fe110: e3811002     	orr	r1, r1, #2
  5fe114: e1a02005     	mov	r2, r5
  5fe118: e1a03006     	mov	r3, r6
  5fe11c: e594c000     	ldr	r12, [r4]
  5fe120: e1a0e00f     	mov	lr, pc
  5fe124: e59cf014     	ldr	pc, [r12, #0x14]
  5fe128: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5fe12c: e590002c     	ldr	r0, [r0, #0x2c]
  5fe130: e3500000     	cmp	r0, #0
  5fe134: 0a000055     	beq	0x5fe290 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0x1bc> @ imm = #0x154
  5fe138: e3560000     	cmp	r6, #0
  5fe13c: 03550000     	cmpeq	r5, #0
  5fe140: e1853186     	orr	r3, r5, r6, lsl #3
  5fe144: e5c43043     	strb	r3, [r4, #0x43]
  5fe148: 05d4303f     	ldrbeq	r3, [r4, #0x3f]
  5fe14c: e1a07287     	lsl	r7, r7, #5
  5fe150: e3877001     	orr	r7, r7, #1
  5fe154: 03833040     	orreq	r3, r3, #64
  5fe158: 05c4303f     	strbeq	r3, [r4, #0x3f]
  5fe15c: e3500000     	cmp	r0, #0
  5fe160: e5c47042     	strb	r7, [r4, #0x42]
  5fe164: 0a00000e     	beq	0x5fe1a4 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0xd0> @ imm = #0x38
  5fe168: e5d4203e     	ldrb	r2, [r4, #0x3e]
  5fe16c: e1d4c4b0     	ldrh	r12, [r4, #64]
  5fe170: e5940030     	ldr	r0, [r4, #0x30]
  5fe174: e0216592     	mla	r1, r2, r5, r6
  5fe178: e38cc001     	orr	r12, r12, #1
  5fe17c: e2823001     	add	r3, r2, #1
  5fe180: e1c4c4b0     	strh	r12, [r4, #64]
  5fe184: e1a022a1     	lsr	r2, r1, #5
  5fe188: e0803103     	add	r3, r0, r3, lsl #2
  5fe18c: e7930102     	ldr	r0, [r3, r2, lsl #2]
  5fe190: e201101f     	and	r1, r1, #31
  5fe194: e3a0c001     	mov	r12, #1
  5fe198: e180111c     	orr	r1, r0, r12, lsl r1
  5fe19c: e7831102     	str	r1, [r3, r2, lsl #2]
  5fe1a0: e594002c     	ldr	r0, [r4, #0x2c]
  5fe1a4: e5d4303f     	ldrb	r3, [r4, #0x3f]
  5fe1a8: e3130002     	tst	r3, #2
  5fe1ac: 0a00000f     	beq	0x5fe1f0 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0x11c> @ imm = #0x3c
  5fe1b0: e5943030     	ldr	r3, [r4, #0x30]
  5fe1b4: e893000c     	ldm	r3, {r2, r3}
  5fe1b8: e0623003     	rsb	r3, r2, r3
  5fe1bc: e0050593     	mul	r5, r3, r5
  5fe1c0: e0800005     	add	r0, r0, r5
  5fe1c4: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5fe1c8: e590002c     	ldr	r0, [r0, #0x2c]
  5fe1cc: e3500000     	cmp	r0, #0
  5fe1d0: 1affffd8     	bne	0x5fe138 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0x64> @ imm = #-0xa0
  5fe1d4: eaffffcb     	b	0x5fe108 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0x34> @ imm = #-0xd4
  5fe1d8: e5d03043     	ldrb	r3, [r0, #0x43]
  5fe1dc: e2032007     	and	r2, r3, #7
  5fe1e0: e1550002     	cmp	r5, r2
  5fe1e4: 0a000009     	beq	0x5fe210 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0x13c> @ imm = #0x24
  5fe1e8: e3a00000     	mov	r0, #0
  5fe1ec: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5fe1f0: e5943030     	ldr	r3, [r4, #0x30]
  5fe1f4: e5d4203e     	ldrb	r2, [r4, #0x3e]
  5fe1f8: e7932102     	ldr	r2, [r3, r2, lsl #2]
  5fe1fc: e7933106     	ldr	r3, [r3, r6, lsl #2]
  5fe200: e282207f     	add	r2, r2, #127
  5fe204: e3c2207f     	bic	r2, r2, #127
  5fe208: e0253592     	mla	r5, r2, r5, r3
  5fe20c: eaffffeb     	b	0x5fe1c0 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0xec> @ imm = #-0x54
  5fe210: e15601a3     	cmp	r6, r3, lsr #3
  5fe214: 1afffff3     	bne	0x5fe1e8 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0x114> @ imm = #-0x34
  5fe218: e5d0303f     	ldrb	r3, [r0, #0x3f]
  5fe21c: e20c201f     	and	r2, r12, #31
  5fe220: e2822001     	add	r2, r2, #1
  5fe224: e3ccc01f     	bic	r12, r12, #31
  5fe228: e182200c     	orr	r2, r2, r12
  5fe22c: e3130020     	tst	r3, #32
  5fe230: e5c02042     	strb	r2, [r0, #0x42]
  5fe234: 1a000011     	bne	0x5fe280 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0x1ac> @ imm = #0x44
  5fe238: e3130002     	tst	r3, #2
  5fe23c: e590302c     	ldr	r3, [r0, #0x2c]
  5fe240: 0a000006     	beq	0x5fe260 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0x18c> @ imm = #0x18
  5fe244: e5902030     	ldr	r2, [r0, #0x30]
  5fe248: e5921000     	ldr	r1, [r2]
  5fe24c: e5920004     	ldr	r0, [r2, #0x4]
  5fe250: e0610000     	rsb	r0, r1, r0
  5fe254: e0000590     	mul	r0, r0, r5
  5fe258: e0830000     	add	r0, r3, r0
  5fe25c: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5fe260: e5902030     	ldr	r2, [r0, #0x30]
  5fe264: e5d0103e     	ldrb	r1, [r0, #0x3e]
  5fe268: e7920101     	ldr	r0, [r2, r1, lsl #2]
  5fe26c: e7922106     	ldr	r2, [r2, r6, lsl #2]
  5fe270: e280007f     	add	r0, r0, #127
  5fe274: e3c0007f     	bic	r0, r0, #127
  5fe278: e0202095     	mla	r0, r5, r0, r2
  5fe27c: eafffff5     	b	0x5fe258 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0x184> @ imm = #-0x2c
  5fe280: e5903000     	ldr	r3, [r0]
  5fe284: e1a0e00f     	mov	lr, pc
  5fe288: e593f01c     	ldr	pc, [r3, #0x1c]
  5fe28c: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5fe290: e5942038     	ldr	r2, [r4, #0x38]
  5fe294: e2022003     	and	r2, r2, #3
  5fe298: e3520002     	cmp	r2, #2
  5fe29c: 03a02005     	moveq	r2, #5
  5fe2a0: 13a02000     	movne	r2, #0
  5fe2a4: e3130002     	tst	r3, #2
  5fe2a8: 15941030     	ldrne	r1, [r4, #0x30]
  5fe2ac: 05943030     	ldreq	r3, [r4, #0x30]
  5fe2b0: 05d4103e     	ldrbeq	r1, [r4, #0x3e]
  5fe2b4: 15913000     	ldrne	r3, [r1]
  5fe2b8: 15911004     	ldrne	r1, [r1, #0x4]
  5fe2bc: 07933101     	ldreq	r3, [r3, r1, lsl #2]
  5fe2c0: 10633001     	rsbne	r3, r3, r1
  5fe2c4: e283007f     	add	r0, r3, #127
  5fe2c8: e3c0007f     	bic	r0, r0, #127
  5fe2cc: e0203290     	mla	r0, r0, r2, r3
  5fe2d0: e3a01000     	mov	r1, #0
  5fe2d4: ebfcd7b3     	bl	0x5341a8 <operator new[](unsigned int, glitch::memory::E_MEMORY_HINT)> @ imm = #-0xca134
  5fe2d8: e5d4303f     	ldrb	r3, [r4, #0x3f]
  5fe2dc: e1a01000     	mov	r1, r0
  5fe2e0: e3a02001     	mov	r2, #1
  5fe2e4: e1a00004     	mov	r0, r4
  5fe2e8: e7e030d3     	ubfx	r3, r3, #0x1, #0x1
  5fe2ec: ebffff20     	bl	0x5fdf74 <glitch::video::ITexture::setData(void*, bool, bool)> @ imm = #-0x380
  5fe2f0: e594002c     	ldr	r0, [r4, #0x2c]
  5fe2f4: e3500000     	cmp	r0, #0
  5fe2f8: 0affffba     	beq	0x5fe1e8 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0x114> @ imm = #-0x118
  5fe2fc: eaffff8d     	b	0x5fe138 <glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)+0x64> @ imm = #-0x1cc

; PACKAGE FUNCTION texture_set_data
; SYMBOL glitch::video::ITexture::setData(void*, bool, bool)
; ELF_VA 0x005fdf74 size=352 file_offset=0x005fdf74 PT_LOAD=0 (program header 1)
; SHA-256 468bfa81cdb8773035af3ad1d745c9395aa81d3a5bfd74d94ddbe25850387f42
005fdf74 <glitch::video::ITexture::setData(void*, bool, bool)>:
  5fdf74: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5fdf78: e1a04000     	mov	r4, r0
  5fdf7c: e590002c     	ldr	r0, [r0, #0x2c]
  5fdf80: e1a05001     	mov	r5, r1
  5fdf84: e1a06002     	mov	r6, r2
  5fdf88: e1510000     	cmp	r1, r0
  5fdf8c: e1a07003     	mov	r7, r3
  5fdf90: 0a00003b     	beq	0x5fe084 <glitch::video::ITexture::setData(void*, bool, bool)+0x110> @ imm = #0xec
  5fdf94: e3500000     	cmp	r0, #0
  5fdf98: 0a000019     	beq	0x5fe004 <glitch::video::ITexture::setData(void*, bool, bool)+0x90> @ imm = #0x64
  5fdf9c: e5d4303f     	ldrb	r3, [r4, #0x3f]
  5fdfa0: e3130001     	tst	r3, #1
  5fdfa4: 1a000015     	bne	0x5fe000 <glitch::video::ITexture::setData(void*, bool, bool)+0x8c> @ imm = #0x54
  5fdfa8: e3550000     	cmp	r5, #0
  5fdfac: e584502c     	str	r5, [r4, #0x2c]
  5fdfb0: 13a05001     	movne	r5, #1
  5fdfb4: 0a000017     	beq	0x5fe018 <glitch::video::ITexture::setData(void*, bool, bool)+0xa4> @ imm = #0x5c
  5fdfb8: e5d4c03e     	ldrb	r12, [r4, #0x3e]
  5fdfbc: e3560000     	cmp	r6, #0
  5fdfc0: 13833001     	orrne	r3, r3, #1
  5fdfc4: 020330fe     	andeq	r3, r3, #254
  5fdfc8: e35c0001     	cmp	r12, #1
  5fdfcc: e5c4303f     	strb	r3, [r4, #0x3f]
  5fdfd0: 9a000023     	bls	0x5fe064 <glitch::video::ITexture::setData(void*, bool, bool)+0xf0> @ imm = #0x8c
  5fdfd4: e3570000     	cmp	r7, #0
  5fdfd8: 0a000021     	beq	0x5fe064 <glitch::video::ITexture::setData(void*, bool, bool)+0xf0> @ imm = #0x84
  5fdfdc: e2031002     	and	r1, r3, #2
  5fdfe0: e6ef1071     	uxtb	r1, r1
  5fdfe4: e3510000     	cmp	r1, #0
  5fdfe8: 0a00002a     	beq	0x5fe098 <glitch::video::ITexture::setData(void*, bool, bool)+0x124> @ imm = #0xa8
  5fdfec: e3833002     	orr	r3, r3, #2
  5fdff0: e3550000     	cmp	r5, #0
  5fdff4: e5c4303f     	strb	r3, [r4, #0x3f]
  5fdff8: 1a00001d     	bne	0x5fe074 <glitch::video::ITexture::setData(void*, bool, bool)+0x100> @ imm = #0x74
  5fdffc: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5fe000: ebf4402c     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2eff50
  5fe004: e3550000     	cmp	r5, #0
  5fe008: e584502c     	str	r5, [r4, #0x2c]
  5fe00c: e5d4303f     	ldrb	r3, [r4, #0x3f]
  5fe010: 13a05001     	movne	r5, #1
  5fe014: 1affffe7     	bne	0x5fdfb8 <glitch::video::ITexture::setData(void*, bool, bool)+0x44> @ imm = #-0x64
  5fe018: e3833001     	orr	r3, r3, #1
  5fe01c: e3130008     	tst	r3, #8
  5fe020: e5c4303f     	strb	r3, [r4, #0x3f]
  5fe024: e1d434b0     	ldrh	r3, [r4, #64]
  5fe028: e5d4203e     	ldrb	r2, [r4, #0x3e]
  5fe02c: 13c33001     	bicne	r3, r3, #1
  5fe030: 11a03803     	lslne	r3, r3, #16
  5fe034: 11a03823     	lsrne	r3, r3, #16
  5fe038: 11c434b0     	strhne	r3, [r4, #64]
  5fe03c: e3c33002     	bic	r3, r3, #2
  5fe040: e3520001     	cmp	r2, #1
  5fe044: e1c434b0     	strh	r3, [r4, #64]
  5fe048: 9a00001b     	bls	0x5fe0bc <glitch::video::ITexture::setData(void*, bool, bool)+0x148> @ imm = #0x6c
  5fe04c: e3570000     	cmp	r7, #0
  5fe050: 0a000019     	beq	0x5fe0bc <glitch::video::ITexture::setData(void*, bool, bool)+0x148> @ imm = #0x64
  5fe054: e5d4303f     	ldrb	r3, [r4, #0x3f]
  5fe058: e3833002     	orr	r3, r3, #2
  5fe05c: e5c4303f     	strb	r3, [r4, #0x3f]
  5fe060: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5fe064: e3c33002     	bic	r3, r3, #2
  5fe068: e3550000     	cmp	r5, #0
  5fe06c: e5c4303f     	strb	r3, [r4, #0x3f]
  5fe070: 0affffe1     	beq	0x5fdffc <glitch::video::ITexture::setData(void*, bool, bool)+0x88> @ imm = #-0x7c
  5fe074: e1a00004     	mov	r0, r4
  5fe078: e3a01000     	mov	r1, #0
  5fe07c: e8bd41f0     	pop	{r4, r5, r6, r7, r8, lr}
  5fe080: eafffe98     	b	0x5fdae8 <glitch::video::ITexture::setDataDirty(bool) const> @ imm = #-0x5a0
  5fe084: e3510000     	cmp	r1, #0
  5fe088: 0a00000f     	beq	0x5fe0cc <glitch::video::ITexture::setData(void*, bool, bool)+0x158> @ imm = #0x3c
  5fe08c: e5d4303f     	ldrb	r3, [r4, #0x3f]
  5fe090: e3a05000     	mov	r5, #0
  5fe094: eaffffc7     	b	0x5fdfb8 <glitch::video::ITexture::setData(void*, bool, bool)+0x44> @ imm = #-0xe4
  5fe098: e5943030     	ldr	r3, [r4, #0x30]
  5fe09c: e28c201f     	add	r2, r12, #31
  5fe0a0: e1a022c2     	asr	r2, r2, #5
  5fe0a4: e28c0001     	add	r0, r12, #1
  5fe0a8: e0830100     	add	r0, r3, r0, lsl #2
  5fe0ac: e1a02102     	lsl	r2, r2, #2
  5fe0b0: ebf440ea     	bl	0x30e460 <memset@plt>   @ imm = #-0x2efc58
  5fe0b4: e5d4303f     	ldrb	r3, [r4, #0x3f]
  5fe0b8: eaffffcb     	b	0x5fdfec <glitch::video::ITexture::setData(void*, bool, bool)+0x78> @ imm = #-0xd4
  5fe0bc: e5d4303f     	ldrb	r3, [r4, #0x3f]
  5fe0c0: e3c33002     	bic	r3, r3, #2
  5fe0c4: e5c4303f     	strb	r3, [r4, #0x3f]
  5fe0c8: eaffffcb     	b	0x5fdffc <glitch::video::ITexture::setData(void*, bool, bool)+0x88> @ imm = #-0xd4
  5fe0cc: e5d4303f     	ldrb	r3, [r4, #0x3f]
  5fe0d0: eaffffd0     	b	0x5fe018 <glitch::video::ITexture::setData(void*, bool, bool)+0xa4> @ imm = #-0xc0

; PACKAGE FUNCTION texture_unmap
; SYMBOL glitch::video::ITexture::unmap() const
; ELF_VA 0x005fdc0c size=120 file_offset=0x005fdc0c PT_LOAD=0 (program header 1)
; SHA-256 0a9855ff43450e273ae1c701067b4a9ab1917327c5f93669ac37f415ececf553
005fdc0c <glitch::video::ITexture::unmap() const>:
  5fdc0c: e5d03042     	ldrb	r3, [r0, #0x42]
  5fdc10: e92d4010     	push	{r4, lr}
  5fdc14: e203201f     	and	r2, r3, #31
  5fdc18: e3520001     	cmp	r2, #1
  5fdc1c: e1a04000     	mov	r4, r0
  5fdc20: 9a000004     	bls	0x5fdc38 <glitch::video::ITexture::unmap() const+0x2c> @ imm = #0x10
  5fdc24: e2422001     	sub	r2, r2, #1
  5fdc28: e3c3301f     	bic	r3, r3, #31
  5fdc2c: e1823003     	orr	r3, r2, r3
  5fdc30: e5c03042     	strb	r3, [r0, #0x42]
  5fdc34: e8bd8010     	pop	{r4, pc}
  5fdc38: e5d0303f     	ldrb	r3, [r0, #0x3f]
  5fdc3c: e3130020     	tst	r3, #32
  5fdc40: 1a000005     	bne	0x5fdc5c <glitch::video::ITexture::unmap() const+0x50> @ imm = #0x14
  5fdc44: e3a02000     	mov	r2, #0
  5fdc48: e3c33040     	bic	r3, r3, #64
  5fdc4c: e5c4303f     	strb	r3, [r4, #0x3f]
  5fdc50: e5c42042     	strb	r2, [r4, #0x42]
  5fdc54: e5c42043     	strb	r2, [r4, #0x43]
  5fdc58: e8bd8010     	pop	{r4, pc}
  5fdc5c: e5903000     	ldr	r3, [r0]
  5fdc60: e1a0e00f     	mov	lr, pc
  5fdc64: e593f018     	ldr	pc, [r3, #0x18]
  5fdc68: e5d4303f     	ldrb	r3, [r4, #0x3f]
  5fdc6c: e3a02000     	mov	r2, #0
  5fdc70: e5c42042     	strb	r2, [r4, #0x42]
  5fdc74: e3c33040     	bic	r3, r3, #64
  5fdc78: e5c4303f     	strb	r3, [r4, #0x3f]
  5fdc7c: e5c42043     	strb	r2, [r4, #0x43]
  5fdc80: e8bd8010     	pop	{r4, pc}

; PACKAGE FUNCTION texture_base_destructor
; SYMBOL glitch::video::ITexture::~ITexture()
; ELF_VA 0x005fe310 size=108 file_offset=0x005fe310 PT_LOAD=0 (program header 1)
; SHA-256 af5d9db20b7ac9c2fac6d78f4f5aa57b1f02e521e26b84605353fc49f67b057c
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

; PACKAGE FUNCTION gl_texture_destructor
; SYMBOL CCommonGLDriver::CTexture::~CTexture()
; ELF_VA 0x005b2a30 size=116 file_offset=0x005b2a30 PT_LOAD=0 (program header 1)
; SHA-256 3a65be36d24ca668b798f550ce2e52f9c18166f7ab32c6d0e01362c63bc22aa9
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

; PACKAGE FUNCTION gl_texture_unbind
; SYMBOL CCommonGLDriver::CTexture::unbindImpl()
; ELF_VA 0x005b28dc size=340 file_offset=0x005b28dc PT_LOAD=0 (program header 1)
; SHA-256 b99488f7c3180c602928e577f73c0059cbfbc288f254c4db61706b3753875420
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

; DATA WORD gl_texture_clear_driver_slot_0x10
; CTexture vtable address point +0x10; ELF_VA 0x009777a8 file_offset=0x009767a8 PT_LOAD=1 (program header 2)
; SHA-256 08397a49829b5599077ccc69e6773eab6b0d99e9b888703efff781756bccf6df
009777a8  dc 28 5b 00  .word 0x005b28dc ; resolves to CTexture::unbindImpl
