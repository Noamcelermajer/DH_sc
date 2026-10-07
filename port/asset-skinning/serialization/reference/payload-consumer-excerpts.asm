; APK-backed skin payload consumer excerpts.
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Selected ranges are in PT_LOAD p_offset=0, p_vaddr=0, so file offsets equal VAs.
; Complete ARM disassembly with raw instruction bytes; hashes cover exact ELF slices.

; CSkinnedMesh::init
; ELF VA 0x00665678, size 0x150, file offset 0x665678, SHA-256 cb574ddb550f010ada6ed82c61cb39324b3221b59d1a5519ebddb5c83da54176

work\DH_sc\work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00665678 <glitch::collada::CSkinnedMesh::init(glitch::video::IVideoDriver*, bool)>:
  665678: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  66567c: e5903068     	ldr	r3, [r0, #0x68]
  665680: e24dd024     	sub	sp, sp, #36
  665684: e1a04000     	mov	r4, r0
  665688: e1a0b002     	mov	r11, r2
  66568c: e1a00003     	mov	r0, r3
  665690: e3a02000     	mov	r2, #0
  665694: e5933000     	ldr	r3, [r3]
  665698: e58d1010     	str	r1, [sp, #0x10]
  66569c: e1a0e00f     	mov	lr, pc
  6656a0: e593f040     	ldr	pc, [r3, #0x40]
  6656a4: e5943068     	ldr	r3, [r4, #0x68]
  6656a8: e5c4b020     	strb	r11, [r4, #0x20]
  6656ac: e1a00003     	mov	r0, r3
  6656b0: e5933000     	ldr	r3, [r3]
  6656b4: e1a0e00f     	mov	lr, pc
  6656b8: e593f010     	ldr	pc, [r3, #0x10]
  6656bc: e3500000     	cmp	r0, #0
  6656c0: e58d000c     	str	r0, [sp, #0xc]
  6656c4: 0a00002d     	beq	0x665780 <glitch::collada::CSkinnedMesh::init(glitch::video::IVideoDriver*, bool)+0x108> @ imm = #0xb4
  6656c8: e3a05000     	mov	r5, #0
  6656cc: e28d301c     	add	r3, sp, #28
  6656d0: e1a06005     	mov	r6, r5
  6656d4: e58d3014     	str	r3, [sp, #0x14]
  6656d8: e594105c     	ldr	r1, [r4, #0x5c]
  6656dc: e1a00004     	mov	r0, r4
  6656e0: e206901f     	and	r9, r6, #31
  6656e4: e0811005     	add	r1, r1, r5
  6656e8: ebfff853     	bl	0x66383c <glitch::collada::CSkinnedMesh::reverifySkinTechnique(glitch::collada::SSkinBuffer const&) const> @ imm = #-0x1eb4
  6656ec: e594a05c     	ldr	r10, [r4, #0x5c]
  6656f0: e5943068     	ldr	r3, [r4, #0x68]
  6656f4: e1a02006     	mov	r2, r6
  6656f8: e08aa005     	add	r10, r10, r5
  6656fc: e59a800c     	ldr	r8, [r10, #0xc]
  665700: e1a01003     	mov	r1, r3
  665704: e59d0014     	ldr	r0, [sp, #0x14]
  665708: e598c000     	ldr	r12, [r8]
  66570c: e5933000     	ldr	r3, [r3]
  665710: e2866001     	add	r6, r6, #1
  665714: e59c7014     	ldr	r7, [r12, #0x14]
  665718: e1a0e00f     	mov	lr, pc
  66571c: e593f014     	ldr	pc, [r3, #0x14]
  665720: e59d201c     	ldr	r2, [sp, #0x1c]
  665724: e59d3010     	ldr	r3, [sp, #0x10]
  665728: e1a0100a     	mov	r1, r10
  66572c: e58db000     	str	r11, [sp]
  665730: e1a00008     	mov	r0, r8
  665734: e12fff37     	blx	r7
  665738: e5943014     	ldr	r3, [r4, #0x14]
  66573c: e3500000     	cmp	r0, #0
  665740: e3a02001     	mov	r2, #1
  665744: 11839912     	orrne	r9, r3, r2, lsl r9
  665748: 01c39912     	biceq	r9, r3, r2, lsl r9
  66574c: e5849014     	str	r9, [r4, #0x14]
  665750: e59d001c     	ldr	r0, [sp, #0x1c]
  665754: e3500000     	cmp	r0, #0
  665758: 0a000000     	beq	0x665760 <glitch::collada::CSkinnedMesh::init(glitch::video::IVideoDriver*, bool)+0xe8> @ imm = #0x0
  66575c: ebf2df88     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x3481e0
  665760: e594305c     	ldr	r3, [r4, #0x5c]
  665764: e59d200c     	ldr	r2, [sp, #0xc]
  665768: e0833005     	add	r3, r3, r5
  66576c: e1560002     	cmp	r6, r2
  665770: e5d32010     	ldrb	r2, [r3, #0x10]
  665774: e2855014     	add	r5, r5, #20
  665778: e5c32011     	strb	r2, [r3, #0x11]
  66577c: 1affffd5     	bne	0x6656d8 <glitch::collada::CSkinnedMesh::init(glitch::video::IVideoDriver*, bool)+0x60> @ imm = #-0xac
  665780: e594504c     	ldr	r5, [r4, #0x4c]
  665784: e3550000     	cmp	r5, #0
  665788: 0a00000c     	beq	0x6657c0 <glitch::collada::CSkinnedMesh::init(glitch::video::IVideoDriver*, bool)+0x148> @ imm = #0x30
  66578c: e5953000     	ldr	r3, [r5]
  665790: e2433001     	sub	r3, r3, #1
  665794: e3530000     	cmp	r3, #0
  665798: e5853000     	str	r3, [r5]
  66579c: 1a000005     	bne	0x6657b8 <glitch::collada::CSkinnedMesh::init(glitch::video::IVideoDriver*, bool)+0x140> @ imm = #0x14
  6657a0: e595000c     	ldr	r0, [r5, #0xc]
  6657a4: e3500000     	cmp	r0, #0
  6657a8: 0a000000     	beq	0x6657b0 <glitch::collada::CSkinnedMesh::init(glitch::video::IVideoDriver*, bool)+0x138> @ imm = #0x0
  6657ac: ebf2a241     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x3576fc
  6657b0: e3a03000     	mov	r3, #0
  6657b4: e585300c     	str	r3, [r5, #0xc]
  6657b8: e3a03000     	mov	r3, #0
  6657bc: e584304c     	str	r3, [r4, #0x4c]
  6657c0: e28dd024     	add	sp, sp, #36
  6657c4: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

; CColladaSoftwareSkinTechnique::CColladaSoftwareSkinTechnique(C1)
; ELF VA 0x0066f658, size 0x60, file offset 0x66f658, SHA-256 96911a244758287de396bc81083724da44af58c89bf8feb633cc606590142414

work\DH_sc\work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0066f658 <glitch::collada::detail::CColladaSoftwareSkinTechnique::CColladaSoftwareSkinTechnique(glitch::collada::SSkin&, glitch::collada::SSkinCache&, bool)>:
  66f658: e92d00f0     	push	{r4, r5, r6, r7}
  66f65c: e59f704c     	ldr	r7, [pc, #0x4c]         @ 0x66f6b0 <glitch::collada::detail::CColladaSoftwareSkinTechnique::CColladaSoftwareSkinTechnique(glitch::collada::SSkin&, glitch::collada::SSkinCache&, bool)+0x58>
  66f660: e59f604c     	ldr	r6, [pc, #0x4c]         @ 0x66f6b4 <glitch::collada::detail::CColladaSoftwareSkinTechnique::CColladaSoftwareSkinTechnique(glitch::collada::SSkin&, glitch::collada::SSkinCache&, bool)+0x5c>
  66f664: e3a04000     	mov	r4, #0
  66f668: e08f7007     	add	r7, pc, r7
  66f66c: e7976006     	ldr	r6, [r7, r6]
  66f670: e1a05000     	mov	r5, r0
  66f674: e580100c     	str	r1, [r0, #0xc]
  66f678: e2866008     	add	r6, r6, #8
  66f67c: e5806000     	str	r6, [r0]
  66f680: e5802010     	str	r2, [r0, #0x10]
  66f684: e5804008     	str	r4, [r0, #0x8]
  66f688: e5804014     	str	r4, [r0, #0x14]
  66f68c: e5c04018     	strb	r4, [r0, #0x18]
  66f690: e5804020     	str	r4, [r0, #0x20]
  66f694: e5e5401c     	strb	r4, [r5, #0x1c]!
  66f698: e5805028     	str	r5, [r0, #0x28]
  66f69c: e5c03004     	strb	r3, [r0, #0x4]
  66f6a0: e580402c     	str	r4, [r0, #0x2c]
  66f6a4: e5805024     	str	r5, [r0, #0x24]
  66f6a8: e8bd00f0     	pop	{r4, r5, r6, r7}
  66f6ac: e12fff1e     	bx	lr
  66f6b0: 28 54 32 00  	.word	0x00325428
  66f6b4: a8 42 00 00  	.word	0x000042a8

; CColladaHardwareMatrixSkinTechnique::init
; ELF VA 0x0066c8a4, size 0x84, file offset 0x66c8a4, SHA-256 c329f97018e6c1b8ce878b5bb6fc09c21e5ffed20c18c03e5259ce7a827806c5

work\DH_sc\work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0066c8a4 <glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)>:
  66c8a4: e92d4010     	push	{r4, lr}
  66c8a8: e590e00c     	ldr	lr, [r0, #0xc]
  66c8ac: e1a0c001     	mov	r12, r1
  66c8b0: e24dd008     	sub	sp, sp, #8
  66c8b4: e1a04000     	mov	r4, r0
  66c8b8: e58d3000     	str	r3, [sp]
  66c8bc: e1a01002     	mov	r1, r2
  66c8c0: e1a0300e     	mov	r3, lr
  66c8c4: e1a0200c     	mov	r2, r12
  66c8c8: eb00117e     	bl	0x670ec8 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)> @ imm = #0x45f8
  66c8cc: e594300c     	ldr	r3, [r4, #0xc]
  66c8d0: e5934094     	ldr	r4, [r3, #0x94]
  66c8d4: e5d43011     	ldrb	r3, [r4, #0x11]
  66c8d8: e3530000     	cmp	r3, #0
  66c8dc: 0a000009     	beq	0x66c908 <glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x64> @ imm = #0x24
  66c8e0: e5d43012     	ldrb	r3, [r4, #0x12]
  66c8e4: e3130008     	tst	r3, #8
  66c8e8: 1a000009     	bne	0x66c914 <glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x70> @ imm = #0x24
  66c8ec: e5943008     	ldr	r3, [r4, #0x8]
  66c8f0: e3a02000     	mov	r2, #0
  66c8f4: e5c42011     	strb	r2, [r4, #0x11]
  66c8f8: e1530002     	cmp	r3, r2
  66c8fc: 15d43012     	ldrbne	r3, [r4, #0x12]
  66c900: 13833002     	orrne	r3, r3, #2
  66c904: 15c43012     	strbne	r3, [r4, #0x12]
  66c908: e3a00000     	mov	r0, #0
  66c90c: e28dd008     	add	sp, sp, #8
  66c910: e8bd8010     	pop	{r4, pc}
  66c914: e5943000     	ldr	r3, [r4]
  66c918: e1a00004     	mov	r0, r4
  66c91c: e1a0e00f     	mov	lr, pc
  66c920: e593f010     	ldr	pc, [r3, #0x10]
  66c924: eafffff0     	b	0x66c8ec <glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x48> @ imm = #-0x40

; CColladaHardwareQuatSkinTechnique::init
; ELF VA 0x0066e634, size 0x84, file offset 0x66e634, SHA-256 aaa7776cebf987492f99ca25167e00b63477686b470e9071e8ab50a5d70eeabb

work\DH_sc\work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0066e634 <glitch::collada::detail::CColladaHardwareQuatSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)>:
  66e634: e92d4010     	push	{r4, lr}
  66e638: e590e00c     	ldr	lr, [r0, #0xc]
  66e63c: e1a0c001     	mov	r12, r1
  66e640: e24dd008     	sub	sp, sp, #8
  66e644: e1a04000     	mov	r4, r0
  66e648: e58d3000     	str	r3, [sp]
  66e64c: e1a01002     	mov	r1, r2
  66e650: e1a0300e     	mov	r3, lr
  66e654: e1a0200c     	mov	r2, r12
  66e658: eb000a1a     	bl	0x670ec8 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)> @ imm = #0x2868
  66e65c: e594300c     	ldr	r3, [r4, #0xc]
  66e660: e5934094     	ldr	r4, [r3, #0x94]
  66e664: e5d43011     	ldrb	r3, [r4, #0x11]
  66e668: e3530000     	cmp	r3, #0
  66e66c: 0a000009     	beq	0x66e698 <glitch::collada::detail::CColladaHardwareQuatSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x64> @ imm = #0x24
  66e670: e5d43012     	ldrb	r3, [r4, #0x12]
  66e674: e3130008     	tst	r3, #8
  66e678: 1a000009     	bne	0x66e6a4 <glitch::collada::detail::CColladaHardwareQuatSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x70> @ imm = #0x24
  66e67c: e5943008     	ldr	r3, [r4, #0x8]
  66e680: e3a02000     	mov	r2, #0
  66e684: e5c42011     	strb	r2, [r4, #0x11]
  66e688: e1530002     	cmp	r3, r2
  66e68c: 15d43012     	ldrbne	r3, [r4, #0x12]
  66e690: 13833002     	orrne	r3, r3, #2
  66e694: 15c43012     	strbne	r3, [r4, #0x12]
  66e698: e3a00000     	mov	r0, #0
  66e69c: e28dd008     	add	sp, sp, #8
  66e6a0: e8bd8010     	pop	{r4, pc}
  66e6a4: e5943000     	ldr	r3, [r4]
  66e6a8: e1a00004     	mov	r0, r4
  66e6ac: e1a0e00f     	mov	lr, pc
  66e6b0: e593f010     	ldr	pc, [r3, #0x10]
  66e6b4: eafffff0     	b	0x66e67c <glitch::collada::detail::CColladaHardwareQuatSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x48> @ imm = #-0x40

; CColladaHardwareTextureSkinTechnique::init
; ELF VA 0x0066f1f4, size 0x8c, file offset 0x66f1f4, SHA-256 1ec71aaa48c1d4ca15c41f0763bab1e0ccde62591d9117f44553550b03ee24ef

work\DH_sc\work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0066f1f4 <glitch::collada::detail::CColladaHardwareTextureSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)>:
  66f1f4: e92d4030     	push	{r4, r5, lr}
  66f1f8: e590500c     	ldr	r5, [r0, #0xc]
  66f1fc: e1a04000     	mov	r4, r0
  66f200: e1a0e001     	mov	lr, r1
  66f204: e5843018     	str	r3, [r4, #0x18]
  66f208: e1a0c003     	mov	r12, r3
  66f20c: e24dd00c     	sub	sp, sp, #12
  66f210: e1a01002     	mov	r1, r2
  66f214: e1a03005     	mov	r3, r5
  66f218: e1a0200e     	mov	r2, lr
  66f21c: e58dc000     	str	r12, [sp]
  66f220: eb000728     	bl	0x670ec8 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)> @ imm = #0x1ca0
  66f224: e594300c     	ldr	r3, [r4, #0xc]
  66f228: e5934094     	ldr	r4, [r3, #0x94]
  66f22c: e5d43011     	ldrb	r3, [r4, #0x11]
  66f230: e3530000     	cmp	r3, #0
  66f234: 0a000009     	beq	0x66f260 <glitch::collada::detail::CColladaHardwareTextureSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x6c> @ imm = #0x24
  66f238: e5d43012     	ldrb	r3, [r4, #0x12]
  66f23c: e3130008     	tst	r3, #8
  66f240: 1a000009     	bne	0x66f26c <glitch::collada::detail::CColladaHardwareTextureSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x78> @ imm = #0x24
  66f244: e5943008     	ldr	r3, [r4, #0x8]
  66f248: e3a02000     	mov	r2, #0
  66f24c: e5c42011     	strb	r2, [r4, #0x11]
  66f250: e1530002     	cmp	r3, r2
  66f254: 15d43012     	ldrbne	r3, [r4, #0x12]
  66f258: 13833002     	orrne	r3, r3, #2
  66f25c: 15c43012     	strbne	r3, [r4, #0x12]
  66f260: e3a00000     	mov	r0, #0
  66f264: e28dd00c     	add	sp, sp, #12
  66f268: e8bd8030     	pop	{r4, r5, pc}
  66f26c: e5943000     	ldr	r3, [r4]
  66f270: e1a00004     	mov	r0, r4
  66f274: e1a0e00f     	mov	lr, pc
  66f278: e593f010     	ldr	pc, [r3, #0x10]
  66f27c: eafffff0     	b	0x66f244 <glitch::collada::detail::CColladaHardwareTextureSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x50> @ imm = #-0x40

; CColladaSoftwareSkinTechnique::init
; ELF VA 0x0066f8ec, size 0x1c8, file offset 0x66f8ec, SHA-256 6aac68d39894bf94151f0276e4f0e820a25f28e3bbce58ccdd9b0e5e54965093

work\DH_sc\work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0066f8ec <glitch::collada::detail::CColladaSoftwareSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)>:
  66f8ec: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  66f8f0: e590c00c     	ldr	r12, [r0, #0xc]
  66f8f4: e1a07001     	mov	r7, r1
  66f8f8: e24dd040     	sub	sp, sp, #64
  66f8fc: e1a01002     	mov	r1, r2
  66f900: e1a06003     	mov	r6, r3
  66f904: e1a02007     	mov	r2, r7
  66f908: e1a0300c     	mov	r3, r12
  66f90c: e1a05000     	mov	r5, r0
  66f910: e58d6000     	str	r6, [sp]
  66f914: e5dd9060     	ldrb	r9, [sp, #0x60]
  66f918: eb00056a     	bl	0x670ec8 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)> @ imm = #0x15a8
  66f91c: e5908014     	ldr	r8, [r0, #0x14]
  66f920: e3a03000     	mov	r3, #0
  66f924: e3a0c006     	mov	r12, #6
  66f928: e288a014     	add	r10, r8, #20
  66f92c: e1cd33ba     	strh	r3, [sp, #58]
  66f930: e58d302c     	str	r3, [sp, #0x2c]
  66f934: e58d3030     	str	r3, [sp, #0x30]
  66f938: e1a04000     	mov	r4, r0
  66f93c: e3a03003     	mov	r3, #3
  66f940: e1a00008     	mov	r0, r8
  66f944: e1a0100a     	mov	r1, r10
  66f948: e28d202c     	add	r2, sp, #44
  66f94c: e58dc034     	str	r12, [sp, #0x34]
  66f950: e1cd33b8     	strh	r3, [sp, #56]
  66f954: ebffffca     	bl	0x66f884 <glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool) (.clone.1)> @ imm = #-0xd8
  66f958: e59d002c     	ldr	r0, [sp, #0x2c]
  66f95c: e3500000     	cmp	r0, #0
  66f960: 0a000000     	beq	0x66f968 <glitch::collada::detail::CColladaSoftwareSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x7c> @ imm = #0x0
  66f964: ebf2b706     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x3523e8
  66f968: e5983004     	ldr	r3, [r8, #0x4]
  66f96c: e3130802     	tst	r3, #131072
  66f970: 03a02001     	moveq	r2, #1
  66f974: 0a000012     	beq	0x66f9c4 <glitch::collada::detail::CColladaSoftwareSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0xd8> @ imm = #0x48
  66f978: e3a03000     	mov	r3, #0
  66f97c: e1cd32ba     	strh	r3, [sp, #42]
  66f980: e58d301c     	str	r3, [sp, #0x1c]
  66f984: e58d3020     	str	r3, [sp, #0x20]
  66f988: e3a02006     	mov	r2, #6
  66f98c: e3a03003     	mov	r3, #3
  66f990: e58d2024     	str	r2, [sp, #0x24]
  66f994: e1cd32b8     	strh	r3, [sp, #40]
  66f998: e5d8100c     	ldrb	r1, [r8, #0xc]
  66f99c: e1a00008     	mov	r0, r8
  66f9a0: e28d201c     	add	r2, sp, #28
  66f9a4: e2811001     	add	r1, r1, #1
  66f9a8: e08a1201     	add	r1, r10, r1, lsl #4
  66f9ac: ebffffb4     	bl	0x66f884 <glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool) (.clone.1)> @ imm = #-0x130
  66f9b0: e59d001c     	ldr	r0, [sp, #0x1c]
  66f9b4: e3500000     	cmp	r0, #0
  66f9b8: 0a000000     	beq	0x66f9c0 <glitch::collada::detail::CColladaSoftwareSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0xd4> @ imm = #0x0
  66f9bc: ebf2b6f0     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x352440
  66f9c0: e3a02002     	mov	r2, #2
  66f9c4: e5d53018     	ldrb	r3, [r5, #0x18]
  66f9c8: e3530000     	cmp	r3, #0
  66f9cc: 0a000011     	beq	0x66fa18 <glitch::collada::detail::CColladaSoftwareSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x12c> @ imm = #0x44
  66f9d0: e5d8100c     	ldrb	r1, [r8, #0xc]
  66f9d4: e3a03000     	mov	r3, #0
  66f9d8: e1a00008     	mov	r0, r8
  66f9dc: e0822001     	add	r2, r2, r1
  66f9e0: e08a1202     	add	r1, r10, r2, lsl #4
  66f9e4: e3a0c006     	mov	r12, #6
  66f9e8: e1cd31ba     	strh	r3, [sp, #26]
  66f9ec: e58d300c     	str	r3, [sp, #0xc]
  66f9f0: e58d3010     	str	r3, [sp, #0x10]
  66f9f4: e28d200c     	add	r2, sp, #12
  66f9f8: e3a03004     	mov	r3, #4
  66f9fc: e58dc014     	str	r12, [sp, #0x14]
  66fa00: e1cd31b8     	strh	r3, [sp, #24]
  66fa04: ebffff9e     	bl	0x66f884 <glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool) (.clone.1)> @ imm = #-0x188
  66fa08: e59d000c     	ldr	r0, [sp, #0xc]
  66fa0c: e3500000     	cmp	r0, #0
  66fa10: 0a000000     	beq	0x66fa18 <glitch::collada::detail::CColladaSoftwareSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x12c> @ imm = #0x0
  66fa14: ebf2b6da     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x352498
  66fa18: e3590000     	cmp	r9, #0
  66fa1c: 13a00000     	movne	r0, #0
  66fa20: 1a000021     	bne	0x66faac <glitch::collada::detail::CColladaSoftwareSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x1c0> @ imm = #0x84
  66fa24: e5971004     	ldr	r1, [r7, #0x4]
  66fa28: e5d57018     	ldrb	r7, [r5, #0x18]
  66fa2c: e3a02802     	mov	r2, #131072
  66fa30: e3a03806     	mov	r3, #393216
  66fa34: e3570000     	cmp	r7, #0
  66fa38: e2822001     	add	r2, r2, #1
  66fa3c: e2833001     	add	r3, r3, #1
  66fa40: e1a00001     	mov	r0, r1
  66fa44: 01a07002     	moveq	r7, r2
  66fa48: 11a07003     	movne	r7, r3
  66fa4c: e5915004     	ldr	r5, [r1, #0x4]
  66fa50: ebfd58b7     	bl	0x5c5d34 <glitch::video::CMaterial::getTechnique() const> @ imm = #-0xa9d24
  66fa54: e5952018     	ldr	r2, [r5, #0x18]
  66fa58: e3a0100c     	mov	r1, #12
  66fa5c: e28d3040     	add	r3, sp, #64
  66fa60: e0222091     	mla	r2, r1, r0, r2
  66fa64: e3a05001     	mov	r5, #1
  66fa68: e5922008     	ldr	r2, [r2, #0x8]
  66fa6c: e1a00006     	mov	r0, r6
  66fa70: e1a01005     	mov	r1, r5
  66fa74: e5922020     	ldr	r2, [r2, #0x20]
  66fa78: e5922038     	ldr	r2, [r2, #0x38]
  66fa7c: e5234004     	str	r4, [r3, #-0x4]!
  66fa80: e594c004     	ldr	r12, [r4, #0x4]
  66fa84: e0072002     	and	r2, r7, r2
  66fa88: e08cc005     	add	r12, r12, r5
  66fa8c: e584c004     	str	r12, [r4, #0x4]
  66fa90: e58d5000     	str	r5, [sp]
  66fa94: ebff6781     	bl	0x6498a0 <glitch::video::IVideoDriver::getProcessBuffer(glitch::video::E_PROCESS_BUFFER_TYPE, unsigned int, boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&, bool)> @ imm = #-0x261fc
  66fa98: e59d003c     	ldr	r0, [sp, #0x3c]
  66fa9c: e3500000     	cmp	r0, #0
  66faa0: 0a000000     	beq	0x66faa8 <glitch::collada::detail::CColladaSoftwareSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)+0x1bc> @ imm = #0x0
  66faa4: ebf2b6b6     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x352528
  66faa8: e1a00005     	mov	r0, r5
  66faac: e28dd040     	add	sp, sp, #64
  66fab0: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}

; IColladaSkinTechnique::initProxyBuffer
; ELF VA 0x00670ec8, size 0x560, file offset 0x670ec8, SHA-256 bbf565c2b9a3e619eb5de395f0b0046b661db3efaa7dbdafb1f26ce06896e2c1

work\DH_sc\work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00670ec8 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)>:
  670ec8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  670ecc: e24dd05c     	sub	sp, sp, #92
  670ed0: e58d2018     	str	r2, [sp, #0x18]
  670ed4: e5922000     	ldr	r2, [r2]
  670ed8: e59f4540     	ldr	r4, [pc, #0x540]        @ 0x671420 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x558>
  670edc: e58d001c     	str	r0, [sp, #0x1c]
  670ee0: e3520000     	cmp	r2, #0
  670ee4: e08f4004     	add	r4, pc, r4
  670ee8: e58d2014     	str	r2, [sp, #0x14]
  670eec: e1a06001     	mov	r6, r1
  670ef0: e1a05003     	mov	r5, r3
  670ef4: 0a000104     	beq	0x67130c <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x444> @ imm = #0x410
  670ef8: e5960014     	ldr	r0, [r6, #0x14]
  670efc: e59d2014     	ldr	r2, [sp, #0x14]
  670f00: e5d0800c     	ldrb	r8, [r0, #0xc]
  670f04: e5924014     	ldr	r4, [r2, #0x14]
  670f08: e3580000     	cmp	r8, #0
  670f0c: 0a00002d     	beq	0x670fc8 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x100> @ imm = #0xb4
  670f10: e3a03024     	mov	r3, #36
  670f14: e3a02000     	mov	r2, #0
  670f18: e3a0a008     	mov	r10, #8
  670f1c: ea00001b     	b	0x670f90 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0xc8> @ imm = #0x6c
  670f20: e1d470be     	ldrh	r7, [r4, #14]
  670f24: e594e010     	ldr	lr, [r4, #0x10]
  670f28: e2822001     	add	r2, r2, #1
  670f2c: e18cc007     	orr	r12, r12, r7
  670f30: e1c4c0be     	strh	r12, [r4, #14]
  670f34: e5909010     	ldr	r9, [r0, #0x10]
  670f38: e08ec003     	add	r12, lr, r3
  670f3c: e0897003     	add	r7, r9, r3
  670f40: e799b003     	ldr	r11, [r9, r3]
  670f44: e5979008     	ldr	r9, [r7, #0x8]
  670f48: e5977004     	ldr	r7, [r7, #0x4]
  670f4c: e78eb003     	str	r11, [lr, r3]
  670f50: e58c9008     	str	r9, [r12, #0x8]
  670f54: e58c7004     	str	r7, [r12, #0x4]
  670f58: e5907010     	ldr	r7, [r0, #0x10]
  670f5c: e594e010     	ldr	lr, [r4, #0x10]
  670f60: e2833018     	add	r3, r3, #24
  670f64: e797b001     	ldr	r11, [r7, r1]
  670f68: e087c001     	add	r12, r7, r1
  670f6c: e59c9008     	ldr	r9, [r12, #0x8]
  670f70: e59c7004     	ldr	r7, [r12, #0x4]
  670f74: e08ec001     	add	r12, lr, r1
  670f78: e78eb001     	str	r11, [lr, r1]
  670f7c: e6ef1072     	uxtb	r1, r2
  670f80: e1580001     	cmp	r8, r1
  670f84: e58c9008     	str	r9, [r12, #0x8]
  670f88: e58c7004     	str	r7, [r12, #0x4]
  670f8c: 9a00000c     	bls	0x670fc4 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0xfc> @ imm = #0x30
  670f90: e1a0c21a     	lsl	r12, r10, r2
  670f94: e1d0e0be     	ldrh	lr, [r0, #14]
  670f98: e243100c     	sub	r1, r3, #12
  670f9c: e11c000e     	tst	r12, lr
  670fa0: 1affffde     	bne	0x670f20 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x58> @ imm = #-0x88
  670fa4: e1d410be     	ldrh	r1, [r4, #14]
  670fa8: e2822001     	add	r2, r2, #1
  670fac: e2833018     	add	r3, r3, #24
  670fb0: e1c1c00c     	bic	r12, r1, r12
  670fb4: e6ef1072     	uxtb	r1, r2
  670fb8: e1580001     	cmp	r8, r1
  670fbc: e1c4c0be     	strh	r12, [r4, #14]
  670fc0: 8afffff2     	bhi	0x670f90 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0xc8> @ imm = #-0x38
  670fc4: e5960014     	ldr	r0, [r6, #0x14]
  670fc8: e3500000     	cmp	r0, #0
  670fcc: e58d004c     	str	r0, [sp, #0x4c]
  670fd0: 15903000     	ldrne	r3, [r0]
  670fd4: 12833001     	addne	r3, r3, #1
  670fd8: 15803000     	strne	r3, [r0]
  670fdc: 159d004c     	ldrne	r0, [sp, #0x4c]
  670fe0: e5907008     	ldr	r7, [r0, #0x8]
  670fe4: e28d004c     	add	r0, sp, #76
  670fe8: ebf3b6e8     	bl	0x35eb90 <boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr()> @ imm = #-0x312460
  670fec: e5847008     	str	r7, [r4, #0x8]
  670ff0: e3e02203     	mvn	r2, #805306368
  670ff4: e3a03000     	mov	r3, #0
  670ff8: e3a0c001     	mov	r12, #1
  670ffc: e1a00004     	mov	r0, r4
  671000: e2861014     	add	r1, r6, #20
  671004: e58dc000     	str	r12, [sp]
  671008: ebfcbf14     	bl	0x5a0c60 <glitch::video::CVertexStreams::setStreams(boost::intrusive_ptr<glitch::video::CVertexStreams> const&, unsigned int, int, bool)> @ imm = #-0xd03b0
  67100c: e59d3018     	ldr	r3, [sp, #0x18]
  671010: e5d57098     	ldrb	r7, [r5, #0x98]
  671014: e5952094     	ldr	r2, [r5, #0x94]
  671018: e5d38012     	ldrb	r8, [r3, #0x12]
  67101c: e2877001     	add	r7, r7, #1
  671020: e2843014     	add	r3, r4, #20
  671024: e3520000     	cmp	r2, #0
  671028: e0838208     	add	r8, r3, r8, lsl #4
  67102c: e1a07107     	lsl	r7, r7, #2
  671030: 0a000014     	beq	0x671088 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x1c0> @ imm = #0x50
  671034: e5963014     	ldr	r3, [r6, #0x14]
  671038: e592a00c     	ldr	r10, [r2, #0xc]
  67103c: e28d0048     	add	r0, sp, #72
  671040: e3530000     	cmp	r3, #0
  671044: e58d3048     	str	r3, [sp, #0x48]
  671048: 15932000     	ldrne	r2, [r3]
  67104c: 12822001     	addne	r2, r2, #1
  671050: 15832000     	strne	r2, [r3]
  671054: 159d3048     	ldrne	r3, [sp, #0x48]
  671058: e5939008     	ldr	r9, [r3, #0x8]
  67105c: ebf3b6cb     	bl	0x35eb90 <boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr()> @ imm = #-0x3124d4
  671060: e0090799     	mul	r9, r9, r7
  671064: e159000a     	cmp	r9, r10
  671068: 8a000006     	bhi	0x671088 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x1c0> @ imm = #0x18
  67106c: e59d101c     	ldr	r1, [sp, #0x1c]
  671070: e5913008     	ldr	r3, [r1, #0x8]
  671074: e3530000     	cmp	r3, #0
  671078: 0a000002     	beq	0x671088 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x1c0> @ imm = #0x8
  67107c: e5933000     	ldr	r3, [r3]
  671080: e3530000     	cmp	r3, #0
  671084: 1a00004d     	bne	0x6711c0 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x2f8> @ imm = #0x134
  671088: e59d201c     	ldr	r2, [sp, #0x1c]
  67108c: e5d23004     	ldrb	r3, [r2, #0x4]
  671090: e3530000     	cmp	r3, #0
  671094: 0a000077     	beq	0x671278 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x3b0> @ imm = #0x1dc
  671098: e595a080     	ldr	r10, [r5, #0x80]
  67109c: e35a0000     	cmp	r10, #0
  6710a0: 159a3000     	ldrne	r3, [r10]
  6710a4: 12833002     	addne	r3, r3, #2
  6710a8: 158a3000     	strne	r3, [r10]
  6710ac: e59d301c     	ldr	r3, [sp, #0x1c]
  6710b0: e5939008     	ldr	r9, [r3, #0x8]
  6710b4: e3590000     	cmp	r9, #0
  6710b8: 0a00000a     	beq	0x6710e8 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x220> @ imm = #0x28
  6710bc: e5993000     	ldr	r3, [r9]
  6710c0: e2433001     	sub	r3, r3, #1
  6710c4: e3530000     	cmp	r3, #0
  6710c8: e5893000     	str	r3, [r9]
  6710cc: 1a000005     	bne	0x6710e8 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x220> @ imm = #0x14
  6710d0: e599000c     	ldr	r0, [r9, #0xc]
  6710d4: e3500000     	cmp	r0, #0
  6710d8: 0a000000     	beq	0x6710e0 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x218> @ imm = #0x0
  6710dc: ebf273f5     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x36302c
  6710e0: e3a03000     	mov	r3, #0
  6710e4: e589300c     	str	r3, [r9, #0xc]
  6710e8: e59d101c     	ldr	r1, [sp, #0x1c]
  6710ec: e35a0000     	cmp	r10, #0
  6710f0: e581a008     	str	r10, [r1, #0x8]
  6710f4: 0a00000a     	beq	0x671124 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x25c> @ imm = #0x28
  6710f8: e59a3000     	ldr	r3, [r10]
  6710fc: e2433001     	sub	r3, r3, #1
  671100: e3530000     	cmp	r3, #0
  671104: e58a3000     	str	r3, [r10]
  671108: 1a000005     	bne	0x671124 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x25c> @ imm = #0x14
  67110c: e59a000c     	ldr	r0, [r10, #0xc]
  671110: e3500000     	cmp	r0, #0
  671114: 0a000000     	beq	0x67111c <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x254> @ imm = #0x0
  671118: ebf273e6     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x363068
  67111c: e3a03000     	mov	r3, #0
  671120: e58a300c     	str	r3, [r10, #0xc]
  671124: e59d1080     	ldr	r1, [sp, #0x80]
  671128: e5963014     	ldr	r3, [r6, #0x14]
  67112c: e28d0044     	add	r0, sp, #68
  671130: e5912000     	ldr	r2, [r1]
  671134: e3530000     	cmp	r3, #0
  671138: e5926078     	ldr	r6, [r2, #0x78]
  67113c: e58d3044     	str	r3, [sp, #0x44]
  671140: 15932000     	ldrne	r2, [r3]
  671144: 12822001     	addne	r2, r2, #1
  671148: 15832000     	strne	r2, [r3]
  67114c: 159d3044     	ldrne	r3, [sp, #0x44]
  671150: e593a008     	ldr	r10, [r3, #0x8]
  671154: ebf3b68d     	bl	0x35eb90 <boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr()> @ imm = #-0x3125cc
  671158: e59d201c     	ldr	r2, [sp, #0x1c]
  67115c: e00a079a     	mul	r10, r10, r7
  671160: e5923008     	ldr	r3, [r2, #0x8]
  671164: e58da000     	str	r10, [sp]
  671168: e3a02000     	mov	r2, #0
  67116c: e593300c     	ldr	r3, [r3, #0xc]
  671170: e28d0054     	add	r0, sp, #84
  671174: e58d2008     	str	r2, [sp, #0x8]
  671178: e58d3004     	str	r3, [sp, #0x4]
  67117c: e59d1080     	ldr	r1, [sp, #0x80]
  671180: e3a03004     	mov	r3, #4
  671184: e12fff36     	blx	r6
  671188: e59d3054     	ldr	r3, [sp, #0x54]
  67118c: e3530000     	cmp	r3, #0
  671190: 15932004     	ldrne	r2, [r3, #0x4]
  671194: 12822001     	addne	r2, r2, #1
  671198: 15832004     	strne	r2, [r3, #0x4]
  67119c: e5950094     	ldr	r0, [r5, #0x94]
  6711a0: e5853094     	str	r3, [r5, #0x94]
  6711a4: e3500000     	cmp	r0, #0
  6711a8: 0a000000     	beq	0x6711b0 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x2e8> @ imm = #0x0
  6711ac: ebf2b0f4     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x353c30
  6711b0: e59d0054     	ldr	r0, [sp, #0x54]
  6711b4: e3500000     	cmp	r0, #0
  6711b8: 0a000000     	beq	0x6711c0 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x2f8> @ imm = #0x0
  6711bc: ebf2b0f0     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x353c40
  6711c0: e5953094     	ldr	r3, [r5, #0x94]
  6711c4: e1a00004     	mov	r0, r4
  6711c8: e6ff7077     	uxth	r7, r7
  6711cc: e3530000     	cmp	r3, #0
  6711d0: e58d3030     	str	r3, [sp, #0x30]
  6711d4: 15932004     	ldrne	r2, [r3, #0x4]
  6711d8: e1a01008     	mov	r1, r8
  6711dc: 12822001     	addne	r2, r2, #1
  6711e0: 15832004     	strne	r2, [r3, #0x4]
  6711e4: e3a03000     	mov	r3, #0
  6711e8: e58d3034     	str	r3, [sp, #0x34]
  6711ec: e3a03001     	mov	r3, #1
  6711f0: e58d3038     	str	r3, [sp, #0x38]
  6711f4: e28d2030     	add	r2, sp, #48
  6711f8: e3a03004     	mov	r3, #4
  6711fc: e1cd33bc     	strh	r3, [sp, #60]
  671200: e1cd73be     	strh	r7, [sp, #62]
  671204: ebfffed6     	bl	0x670d64 <glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool) (.clone.1)> @ imm = #-0x4a8
  671208: e59d0030     	ldr	r0, [sp, #0x30]
  67120c: e3500000     	cmp	r0, #0
  671210: 0a000000     	beq	0x671218 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x350> @ imm = #0x0
  671214: ebf2b0da     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x353c98
  671218: e5952094     	ldr	r2, [r5, #0x94]
  67121c: e5d53098     	ldrb	r3, [r5, #0x98]
  671220: e3a0c004     	mov	r12, #4
  671224: e3520000     	cmp	r2, #0
  671228: e58d2020     	str	r2, [sp, #0x20]
  67122c: 15920004     	ldrne	r0, [r2, #0x4]
  671230: e2481010     	sub	r1, r8, #16
  671234: 12800001     	addne	r0, r0, #1
  671238: 15820004     	strne	r0, [r2, #0x4]
  67123c: e1a00004     	mov	r0, r4
  671240: e58dc024     	str	r12, [sp, #0x24]
  671244: e28d2020     	add	r2, sp, #32
  671248: e3a0c006     	mov	r12, #6
  67124c: e58dc028     	str	r12, [sp, #0x28]
  671250: e1cd32bc     	strh	r3, [sp, #44]
  671254: e1cd72be     	strh	r7, [sp, #46]
  671258: ebfffec1     	bl	0x670d64 <glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool) (.clone.1)> @ imm = #-0x4fc
  67125c: e59d0020     	ldr	r0, [sp, #0x20]
  671260: e3500000     	cmp	r0, #0
  671264: 0a000000     	beq	0x67126c <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x3a4> @ imm = #0x0
  671268: ebf2b0c5     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x353cec
  67126c: e59d0014     	ldr	r0, [sp, #0x14]
  671270: e28dd05c     	add	sp, sp, #92
  671274: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  671278: e59d1080     	ldr	r1, [sp, #0x80]
  67127c: e5963014     	ldr	r3, [r6, #0x14]
  671280: e28d0040     	add	r0, sp, #64
  671284: e5912000     	ldr	r2, [r1]
  671288: e3530000     	cmp	r3, #0
  67128c: e5926078     	ldr	r6, [r2, #0x78]
  671290: e58d3040     	str	r3, [sp, #0x40]
  671294: 15932000     	ldrne	r2, [r3]
  671298: 12822001     	addne	r2, r2, #1
  67129c: 15832000     	strne	r2, [r3]
  6712a0: 159d3040     	ldrne	r3, [sp, #0x40]
  6712a4: e593a008     	ldr	r10, [r3, #0x8]
  6712a8: ebf3b638     	bl	0x35eb90 <boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr()> @ imm = #-0x312720
  6712ac: e00a079a     	mul	r10, r10, r7
  6712b0: e5953080     	ldr	r3, [r5, #0x80]
  6712b4: e3a02000     	mov	r2, #0
  6712b8: e58d2008     	str	r2, [sp, #0x8]
  6712bc: e58d3004     	str	r3, [sp, #0x4]
  6712c0: e28d0050     	add	r0, sp, #80
  6712c4: e3a03004     	mov	r3, #4
  6712c8: e58da000     	str	r10, [sp]
  6712cc: e59d1080     	ldr	r1, [sp, #0x80]
  6712d0: e12fff36     	blx	r6
  6712d4: e59d3050     	ldr	r3, [sp, #0x50]
  6712d8: e3530000     	cmp	r3, #0
  6712dc: 15932004     	ldrne	r2, [r3, #0x4]
  6712e0: 12822001     	addne	r2, r2, #1
  6712e4: 15832004     	strne	r2, [r3, #0x4]
  6712e8: e5950094     	ldr	r0, [r5, #0x94]
  6712ec: e5853094     	str	r3, [r5, #0x94]
  6712f0: e3500000     	cmp	r0, #0
  6712f4: 0a000000     	beq	0x6712fc <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x434> @ imm = #0x0
  6712f8: ebf2b0a1     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x353d7c
  6712fc: e59d0050     	ldr	r0, [sp, #0x50]
  671300: e3500000     	cmp	r0, #0
  671304: 1affffac     	bne	0x6711bc <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x2f4> @ imm = #-0x150
  671308: eaffffac     	b	0x6711c0 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x2f8> @ imm = #-0x150
  67130c: e5913014     	ldr	r3, [r1, #0x14]
  671310: e3a00038     	mov	r0, #56
  671314: e1a01002     	mov	r1, r2
  671318: e5937004     	ldr	r7, [r3, #0x4]
  67131c: ebfb0ba2     	bl	0x5341ac <operator new(unsigned int, glitch::memory::E_MEMORY_HINT)> @ imm = #-0x13d178
  671320: e59f20fc     	ldr	r2, [pc, #0xfc]         @ 0x671424 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x55c>
  671324: e3a03000     	mov	r3, #0
  671328: e58d0014     	str	r0, [sp, #0x14]
  67132c: e7942002     	ldr	r2, [r4, r2]
  671330: e5803010     	str	r3, [r0, #0x10]
  671334: e59d1014     	ldr	r1, [sp, #0x14]
  671338: e2822008     	add	r2, r2, #8
  67133c: e3877203     	orr	r7, r7, #805306368
  671340: e5813004     	str	r3, [r1, #0x4]
  671344: e5813008     	str	r3, [r1, #0x8]
  671348: e581300c     	str	r3, [r1, #0xc]
  67134c: e5812000     	str	r2, [r1]
  671350: e59d2014     	ldr	r2, [sp, #0x14]
  671354: e3877701     	orr	r7, r7, #262144
  671358: e1a01007     	mov	r1, r7
  67135c: e2820014     	add	r0, r2, #20
  671360: ebfcbffd     	bl	0x5a135c <glitch::video::CVertexStreams::allocate(unsigned int)> @ imm = #-0xd000c
  671364: e5963018     	ldr	r3, [r6, #0x18]
  671368: e59d1014     	ldr	r1, [sp, #0x14]
  67136c: e3530000     	cmp	r3, #0
  671370: e5813018     	str	r3, [r1, #0x18]
  671374: 15932004     	ldrne	r2, [r3, #0x4]
  671378: 12822001     	addne	r2, r2, #1
  67137c: 15832004     	strne	r2, [r3, #0x4]
  671380: e596201c     	ldr	r2, [r6, #0x1c]
  671384: e59d1014     	ldr	r1, [sp, #0x14]
  671388: e581201c     	str	r2, [r1, #0x1c]
  67138c: e5962020     	ldr	r2, [r6, #0x20]
  671390: e5913004     	ldr	r3, [r1, #0x4]
  671394: e5812020     	str	r2, [r1, #0x20]
  671398: e5962024     	ldr	r2, [r6, #0x24]
  67139c: e2833001     	add	r3, r3, #1
  6713a0: e5812024     	str	r2, [r1, #0x24]
  6713a4: e5962028     	ldr	r2, [r6, #0x28]
  6713a8: e5812028     	str	r2, [r1, #0x28]
  6713ac: e1d622bc     	ldrh	r2, [r6, #44]
  6713b0: e1c122bc     	strh	r2, [r1, #44]
  6713b4: e1d622be     	ldrh	r2, [r6, #46]
  6713b8: e5813004     	str	r3, [r1, #0x4]
  6713bc: e1c122be     	strh	r2, [r1, #46]
  6713c0: e3a02000     	mov	r2, #0
  6713c4: e5812030     	str	r2, [r1, #0x30]
  6713c8: e3a02001     	mov	r2, #1
  6713cc: e5c12034     	strb	r2, [r1, #0x34]
  6713d0: e59d3018     	ldr	r3, [sp, #0x18]
  6713d4: e5930000     	ldr	r0, [r3]
  6713d8: e5831000     	str	r1, [r3]
  6713dc: e3500000     	cmp	r0, #0
  6713e0: 0a000000     	beq	0x6713e8 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x520> @ imm = #0x0
  6713e4: ebf2b066     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x353e68
  6713e8: e59d1014     	ldr	r1, [sp, #0x14]
  6713ec: e5910014     	ldr	r0, [r1, #0x14]
  6713f0: e3a0101d     	mov	r1, #29
  6713f4: e2802014     	add	r2, r0, #20
  6713f8: e5903010     	ldr	r3, [r0, #0x10]
  6713fc: ebfcbdbb     	bl	0x5a0af0 <glitch::video::CVertexStreams::getStream(glitch::video::E_VERTEX_ATTRIBUTE, glitch::video::SVertexStream*, glitch::video::SVertexStream*)> @ imm = #-0xd0914
  671400: e59d2014     	ldr	r2, [sp, #0x14]
  671404: e59d1018     	ldr	r1, [sp, #0x18]
  671408: e5923014     	ldr	r3, [r2, #0x14]
  67140c: e2833014     	add	r3, r3, #20
  671410: e0633000     	rsb	r3, r3, r0
  671414: e1a03243     	asr	r3, r3, #4
  671418: e5c13012     	strb	r3, [r1, #0x12]
  67141c: eafffeb5     	b	0x670ef8 <glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)+0x30> @ imm = #-0x52c
  671420: ac 3b 32 00  	.word	0x00323bac
  671424: 54 0c 00 00  	.word	0x00000c54

; CVertexStreams::getStream(E_VERTEX_ATTRIBUTE, SVertexStream*, SVertexStream*)
; ELF VA 0x005a0af0, size 0x44, file offset 0x5a0af0, SHA-256 325770b6c97267f20d014c5740327d74c5e3249f07bd4ef982b45547c310d718

work\DH_sc\work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

005a0af0 <glitch::video::CVertexStreams::getStream(glitch::video::E_VERTEX_ATTRIBUTE, glitch::video::SVertexStream*, glitch::video::SVertexStream*)>:
  5a0af0: e1520003     	cmp	r2, r3
  5a0af4: 0a000009     	beq	0x5a0b20 <glitch::video::CVertexStreams::getStream(glitch::video::E_VERTEX_ATTRIBUTE, glitch::video::SVertexStream*, glitch::video::SVertexStream*)+0x30> @ imm = #0x24
  5a0af8: e1d2c0b8     	ldrh	r12, [r2, #8]
  5a0afc: e15c0001     	cmp	r12, r1
  5a0b00: ba000003     	blt	0x5a0b14 <glitch::video::CVertexStreams::getStream(glitch::video::E_VERTEX_ATTRIBUTE, glitch::video::SVertexStream*, glitch::video::SVertexStream*)+0x24> @ imm = #0xc
  5a0b04: e151000c     	cmp	r1, r12
  5a0b08: 15902010     	ldrne	r2, [r0, #0x10]
  5a0b0c: e1a00002     	mov	r0, r2
  5a0b10: e12fff1e     	bx	lr
  5a0b14: e2822010     	add	r2, r2, #16
  5a0b18: e1530002     	cmp	r3, r2
  5a0b1c: 1afffff5     	bne	0x5a0af8 <glitch::video::CVertexStreams::getStream(glitch::video::E_VERTEX_ATTRIBUTE, glitch::video::SVertexStream*, glitch::video::SVertexStream*)+0x8> @ imm = #-0x2c
  5a0b20: e1d2c0b8     	ldrh	r12, [r2, #8]
  5a0b24: e151000c     	cmp	r1, r12
  5a0b28: 15902010     	ldrne	r2, [r0, #0x10]
  5a0b2c: e1a00002     	mov	r0, r2
  5a0b30: e12fff1e     	bx	lr
