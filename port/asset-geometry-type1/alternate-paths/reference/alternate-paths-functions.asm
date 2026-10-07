
work/libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006b9458 <glitch::scene::CColladaBinaryFileLoader::createMesh(glitch::io::IReadFile*)>:
  6b9458: e92d40f0     	push	{r4, r5, r6, r7, lr}
  6b945c: e59f40c8     	ldr	r4, [pc, #0xc8] <glitch::scene::CColladaBinaryFileLoader::createMesh(glitch::io::IReadFile*)+0xd4>
  6b9460: e59f30c8     	ldr	r3, [pc, #0xc8] <glitch::scene::CColladaBinaryFileLoader::createMesh(glitch::io::IReadFile*)+0xd8>
  6b9464: e3a0c000     	mov	r12, #0
  6b9468: e08f4004     	add	r4, pc, r4
  6b946c: e7943003     	ldr	r3, [r4, r3]
  6b9470: e24dd014     	sub	sp, sp, #20
  6b9474: e1a06001     	mov	r6, r1
  6b9478: e5933000     	ldr	r3, [r3]
  6b947c: e1a01002     	mov	r1, r2
  6b9480: e1a05000     	mov	r5, r0
  6b9484: e1a0200c     	mov	r2, r12
  6b9488: e1a00003     	mov	r0, r3
  6b948c: e1a0300c     	mov	r3, r12
  6b9490: e58dc000     	str	r12, [sp]
  6b9494: ebfe853c     	bl	0x65a98c <glitch::collada::CResFileManager::load(glitch::io::IReadFile*, bool, void (*)(char const*, glitch::collada::SCollada const*), bool)> @ imm = #-0x5eb10
  6b9498: e59f3094     	ldr	r3, [pc, #0x94] <glitch::scene::CColladaBinaryFileLoader::createMesh(glitch::io::IReadFile*)+0xdc>
  6b949c: e3500000     	cmp	r0, #0
  6b94a0: e58d0008     	str	r0, [sp, #0x8]
  6b94a4: e7943003     	ldr	r3, [r4, r3]
  6b94a8: e58d300c     	str	r3, [sp, #0xc]
  6b94ac: 0a000003     	beq	0x6b94c0 <glitch::scene::CColladaBinaryFileLoader::createMesh(glitch::io::IReadFile*)+0x68> @ imm = #0xc
  6b94b0: e5903004     	ldr	r3, [r0, #0x4]
  6b94b4: e3530000     	cmp	r3, #0
  6b94b8: 12833001     	addne	r3, r3, #1
  6b94bc: 15803004     	strne	r3, [r0, #0x4]
  6b94c0: e5963008     	ldr	r3, [r6, #0x8]
  6b94c4: e28d4008     	add	r4, sp, #8
  6b94c8: e1a00004     	mov	r0, r4
  6b94cc: e5931014     	ldr	r1, [r3, #0x14]
  6b94d0: ebfd8944     	bl	0x61b9e8 <glitch::collada::CColladaDatabase::constructScene(glitch::video::IVideoDriver*) const> @ imm = #-0x9daf0
  6b94d4: e1a07000     	mov	r7, r0
  6b94d8: e1a00004     	mov	r0, r4
  6b94dc: ebfd599c     	bl	0x60fb54 <glitch::collada::CColladaDatabase::constructAnimator() const> @ imm = #-0xa9990
  6b94e0: e5973000     	ldr	r3, [r7]
  6b94e4: e1a01000     	mov	r1, r0
  6b94e8: e1a00007     	mov	r0, r7
  6b94ec: e1a0e00f     	mov	lr, pc
  6b94f0: e593f06c     	ldr	pc, [r3, #0x6c]
  6b94f4: e5963008     	ldr	r3, [r6, #0x8]
  6b94f8: e1a01007     	mov	r1, r7
  6b94fc: e5933004     	ldr	r3, [r3, #0x4]
  6b9500: e1a00003     	mov	r0, r3
  6b9504: e5933000     	ldr	r3, [r3]
  6b9508: e1a0e00f     	mov	lr, pc
  6b950c: e593f05c     	ldr	pc, [r3, #0x5c]
  6b9510: e3a03000     	mov	r3, #0
  6b9514: e5853000     	str	r3, [r5]
  6b9518: e1a00004     	mov	r0, r4
  6b951c: ebfd7fd4     	bl	0x619474 <glitch::collada::CColladaDatabase::~CColladaDatabase()> @ imm = #-0xa00b0
  6b9520: e1a00005     	mov	r0, r5
  6b9524: e28dd014     	add	sp, sp, #20
  6b9528: e8bd80f0     	pop	{r4, r5, r6, r7, pc}
  6b952c: 28 b6 2d 00  	.word	0x002db628
  6b9530: 48 44 00 00  	.word	0x00004448
  6b9534: 10 47 00 00  	.word	0x00004710



work/libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0057db94 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)>:
  57db94: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  57db98: e24ddf4b     	sub	sp, sp, #300
  57db9c: e58d2040     	str	r2, [sp, #0x40]
  57dba0: e28d20a8     	add	r2, sp, #168
  57dba4: e58d201c     	str	r2, [sp, #0x1c]
  57dba8: e3a02000     	mov	r2, #0
  57dbac: e1a03002     	mov	r3, r2
  57dbb0: e58d0014     	str	r0, [sp, #0x14]
  57dbb4: e59d001c     	ldr	r0, [sp, #0x1c]
  57dbb8: e59d4154     	ldr	r4, [sp, #0x154]
  57dbbc: ebffe8f8     	bl	0x577fa4 <glitch::io::CZipReader::CZipReader(glitch::io::IReadFile*, bool, bool)> @ imm = #-0x5c20
  57dbc0: e59f1938     	ldr	r1, [pc, #0x938] <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x96c>
  57dbc4: e59f3938     	ldr	r3, [pc, #0x938] <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x970>
  57dbc8: e59d001c     	ldr	r0, [sp, #0x1c]
  57dbcc: e08f1001     	add	r1, pc, r1
  57dbd0: e58d302c     	str	r3, [sp, #0x2c]
  57dbd4: ebffea92     	bl	0x578624 <glitch::io::CZipReader::openFile(char const*)> @ imm = #-0x55b8
  57dbd8: e59d502c     	ldr	r5, [sp, #0x2c]
  57dbdc: e2506000     	subs	r6, r0, #0
  57dbe0: 058d6024     	streq	r6, [sp, #0x24]
  57dbe4: e08f5005     	add	r5, pc, r5
  57dbe8: e58d502c     	str	r5, [sp, #0x2c]
  57dbec: 058d6038     	streq	r6, [sp, #0x38]
  57dbf0: 0a00000b     	beq	0x57dc24 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x90> @ imm = #0x2c
  57dbf4: e3540000     	cmp	r4, #0
  57dbf8: 0a000234     	beq	0x57e4d0 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x93c> @ imm = #0x8d0
  57dbfc: e3a01000     	mov	r1, #0
  57dc00: e3a00008     	mov	r0, #8
  57dc04: ebfed968     	bl	0x5341ac <operator new(unsigned int, glitch::memory::E_MEMORY_HINT)> @ imm = #-0x49a60
  57dc08: e1a01006     	mov	r1, r6
  57dc0c: e1a02004     	mov	r2, r4
  57dc10: e1a05000     	mov	r5, r0
  57dc14: eb0245ea     	bl	0x60f3c4 <glitch::collada::CColladaDatabase::CColladaDatabase(glitch::io::IReadFile*, glitch::collada::CColladaFactory*)> @ imm = #0x917a8
  57dc18: e3a0c001     	mov	r12, #1
  57dc1c: e58d5024     	str	r5, [sp, #0x24]
  57dc20: e58dc038     	str	r12, [sp, #0x38]
  57dc24: e59f18dc     	ldr	r1, [pc, #0x8dc] <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x974>
  57dc28: e59d001c     	ldr	r0, [sp, #0x1c]
  57dc2c: e28d407c     	add	r4, sp, #124
  57dc30: e08f1001     	add	r1, pc, r1
  57dc34: ebffea7a     	bl	0x578624 <glitch::io::CZipReader::openFile(char const*)> @ imm = #-0x5618
  57dc38: e3a024bf     	mov	r2, #-1090519040
  57dc3c: e2822502     	add	r2, r2, #8388608
  57dc40: e3a035fe     	mov	r3, #1065353216
  57dc44: e58d2088     	str	r2, [sp, #0x88]
  57dc48: e58d2080     	str	r2, [sp, #0x80]
  57dc4c: e58d2084     	str	r2, [sp, #0x84]
  57dc50: e58d3094     	str	r3, [sp, #0x94]
  57dc54: e58d308c     	str	r3, [sp, #0x8c]
  57dc58: e58d3090     	str	r3, [sp, #0x90]
  57dc5c: e5903000     	ldr	r3, [r0]
  57dc60: e1a01004     	mov	r1, r4
  57dc64: e3a0202c     	mov	r2, #44
  57dc68: e1a0e00f     	mov	lr, pc
  57dc6c: e593f00c     	ldr	pc, [r3, #0xc]
  57dc70: e5dd307f     	ldrb	r3, [sp, #0x7f]
  57dc74: e3530001     	cmp	r3, #1
  57dc78: 13a03000     	movne	r3, #0
  57dc7c: 03a03001     	moveq	r3, #1
  57dc80: e3530000     	cmp	r3, #0
  57dc84: e58d3018     	str	r3, [sp, #0x18]
  57dc88: 0a00003a     	beq	0x57dd78 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x1e4> @ imm = #0xe8
  57dc8c: e2841004     	add	r1, r4, #4
  57dc90: e28d00c8     	add	r0, sp, #200
  57dc94: ebffec79     	bl	0x578e80 <glitch::core::aabbox3d<float> glitch::os::byteswap<float>(glitch::core::aabbox3d<float> const&)> @ imm = #-0x4e1c
  57dc98: e284301c     	add	r3, r4, #28
  57dc9c: e5d3e001     	ldrb	lr, [r3, #0x1]
  57dca0: e5d35002     	ldrb	r5, [r3, #0x2]
  57dca4: e5d36003     	ldrb	r6, [r3, #0x3]
  57dca8: e5ddc098     	ldrb	r12, [sp, #0x98]
  57dcac: e2843020     	add	r3, r4, #32
  57dcb0: e5d31002     	ldrb	r1, [r3, #0x2]
  57dcb4: e5d32001     	ldrb	r2, [r3, #0x1]
  57dcb8: e5d30003     	ldrb	r0, [r3, #0x3]
  57dcbc: e5cd5051     	strb	r5, [sp, #0x51]
  57dcc0: e5cde052     	strb	lr, [sp, #0x52]
  57dcc4: e5cd6050     	strb	r6, [sp, #0x50]
  57dcc8: e5cdc053     	strb	r12, [sp, #0x53]
  57dccc: e5dd309c     	ldrb	r3, [sp, #0x9c]
  57dcd0: e59dc050     	ldr	r12, [sp, #0x50]
  57dcd4: e5cd1051     	strb	r1, [sp, #0x51]
  57dcd8: e59d10c8     	ldr	r1, [sp, #0xc8]
  57dcdc: e5cd0050     	strb	r0, [sp, #0x50]
  57dce0: e5cd3053     	strb	r3, [sp, #0x53]
  57dce4: e5cd2052     	strb	r2, [sp, #0x52]
  57dce8: e2843024     	add	r3, r4, #36
  57dcec: e5d32003     	ldrb	r2, [r3, #0x3]
  57dcf0: e58d1080     	str	r1, [sp, #0x80]
  57dcf4: e59d10cc     	ldr	r1, [sp, #0xcc]
  57dcf8: e2844028     	add	r4, r4, #40
  57dcfc: e58dc098     	str	r12, [sp, #0x98]
  57dd00: e58d1084     	str	r1, [sp, #0x84]
  57dd04: e59d10d0     	ldr	r1, [sp, #0xd0]
  57dd08: e58d1088     	str	r1, [sp, #0x88]
  57dd0c: e59d10d4     	ldr	r1, [sp, #0xd4]
  57dd10: e58d108c     	str	r1, [sp, #0x8c]
  57dd14: e59d10d8     	ldr	r1, [sp, #0xd8]
  57dd18: e58d1090     	str	r1, [sp, #0x90]
  57dd1c: e59d10dc     	ldr	r1, [sp, #0xdc]
  57dd20: e58d1094     	str	r1, [sp, #0x94]
  57dd24: e59d1050     	ldr	r1, [sp, #0x50]
  57dd28: e58d109c     	str	r1, [sp, #0x9c]
  57dd2c: e5cd2050     	strb	r2, [sp, #0x50]
  57dd30: e5d3e001     	ldrb	lr, [r3, #0x1]
  57dd34: e5d35002     	ldrb	r5, [r3, #0x2]
  57dd38: e5ddc0a0     	ldrb	r12, [sp, #0xa0]
  57dd3c: e5d42001     	ldrb	r2, [r4, #0x1]
  57dd40: e5d40003     	ldrb	r0, [r4, #0x3]
  57dd44: e5d41002     	ldrb	r1, [r4, #0x2]
  57dd48: e5dd30a4     	ldrb	r3, [sp, #0xa4]
  57dd4c: e5cd5051     	strb	r5, [sp, #0x51]
  57dd50: e5cde052     	strb	lr, [sp, #0x52]
  57dd54: e5cdc053     	strb	r12, [sp, #0x53]
  57dd58: e59dc050     	ldr	r12, [sp, #0x50]
  57dd5c: e5cd0050     	strb	r0, [sp, #0x50]
  57dd60: e5cd1051     	strb	r1, [sp, #0x51]
  57dd64: e5cd2052     	strb	r2, [sp, #0x52]
  57dd68: e5cd3053     	strb	r3, [sp, #0x53]
  57dd6c: e59d3050     	ldr	r3, [sp, #0x50]
  57dd70: e58dc0a0     	str	r12, [sp, #0xa0]
  57dd74: e58d30a4     	str	r3, [sp, #0xa4]
  57dd78: e59d1090     	ldr	r1, [sp, #0x90]
  57dd7c: e59d5014     	ldr	r5, [sp, #0x14]
  57dd80: e59dc088     	ldr	r12, [sp, #0x88]
  57dd84: e59d008c     	ldr	r0, [sp, #0x8c]
  57dd88: e59de084     	ldr	lr, [sp, #0x84]
  57dd8c: e59d2094     	ldr	r2, [sp, #0x94]
  57dd90: e59d3098     	ldr	r3, [sp, #0x98]
  57dd94: e59d4080     	ldr	r4, [sp, #0x80]
  57dd98: e5851048     	str	r1, [r5, #0x48]
  57dd9c: e59f1768     	ldr	r1, [pc, #0x768] <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x978>
  57dda0: e3a07000     	mov	r7, #0
  57dda4: e585c040     	str	r12, [r5, #0x40]
  57dda8: e5854038     	str	r4, [r5, #0x38]
  57ddac: e585e03c     	str	lr, [r5, #0x3c]
  57ddb0: e5850044     	str	r0, [r5, #0x44]
  57ddb4: e585204c     	str	r2, [r5, #0x4c]
  57ddb8: e5853068     	str	r3, [r5, #0x68]
  57ddbc: e5c57074     	strb	r7, [r5, #0x74]
  57ddc0: e08f1001     	add	r1, pc, r1
  57ddc4: e59d001c     	ldr	r0, [sp, #0x1c]
  57ddc8: ebffea15     	bl	0x578624 <glitch::io::CZipReader::openFile(char const*)> @ imm = #-0x57ac
  57ddcc: e59dc018     	ldr	r12, [sp, #0x18]
  57ddd0: e1a05000     	mov	r5, r0
  57ddd4: e15c0007     	cmp	r12, r7
  57ddd8: 0a00003b     	beq	0x57decc <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x338> @ imm = #0xec
  57dddc: e59de014     	ldr	lr, [sp, #0x14]
  57dde0: e28d40f4     	add	r4, sp, #244
  57dde4: e28d0f49     	add	r0, sp, #292
  57dde8: e28ee014     	add	lr, lr, #20
  57ddec: e58de030     	str	lr, [sp, #0x30]
  57ddf0: e28d8050     	add	r8, sp, #80
  57ddf4: e2846004     	add	r6, r4, #4
  57ddf8: e58d0008     	str	r0, [sp, #0x8]
  57ddfc: e3a0a001     	mov	r10, #1
  57de00: e59d30a0     	ldr	r3, [sp, #0xa0]
  57de04: e1a01004     	mov	r1, r4
  57de08: e3a02008     	mov	r2, #8
  57de0c: e1570003     	cmp	r7, r3
  57de10: e1a00005     	mov	r0, r5
  57de14: 2a00003f     	bhs	0x57df18 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x384> @ imm = #0xfc
  57de18: e5953000     	ldr	r3, [r5]
  57de1c: e1a0e00f     	mov	lr, pc
  57de20: e593f00c     	ldr	pc, [r3, #0xc]
  57de24: e5d4c000     	ldrb	r12, [r4]
  57de28: e5d4b003     	ldrb	r11, [r4, #0x3]
  57de2c: e5d49002     	ldrb	r9, [r4, #0x2]
  57de30: e5d4e001     	ldrb	lr, [r4, #0x1]
  57de34: e5d62001     	ldrb	r2, [r6, #0x1]
  57de38: e5d61002     	ldrb	r1, [r6, #0x2]
  57de3c: e5d63000     	ldrb	r3, [r6]
  57de40: e5d60003     	ldrb	r0, [r6, #0x3]
  57de44: e5cdb050     	strb	r11, [sp, #0x50]
  57de48: e5cd9051     	strb	r9, [sp, #0x51]
  57de4c: e5cde052     	strb	lr, [sp, #0x52]
  57de50: e5cdc053     	strb	r12, [sp, #0x53]
  57de54: e598c000     	ldr	r12, [r8]
  57de58: e5cd2052     	strb	r2, [sp, #0x52]
  57de5c: e59d2014     	ldr	r2, [sp, #0x14]
  57de60: e5cd0050     	strb	r0, [sp, #0x50]
  57de64: e5cd1051     	strb	r1, [sp, #0x51]
  57de68: e5cd3053     	strb	r3, [sp, #0x53]
  57de6c: e5921018     	ldr	r1, [r2, #0x18]
  57de70: e592201c     	ldr	r2, [r2, #0x1c]
  57de74: e5983000     	ldr	r3, [r8]
  57de78: e58dc0f4     	str	r12, [sp, #0xf4]
  57de7c: e1510002     	cmp	r1, r2
  57de80: e58d30f8     	str	r3, [sp, #0xf8]
  57de84: 0a000008     	beq	0x57deac <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x318> @ imm = #0x20
  57de88: e581c000     	str	r12, [r1]
  57de8c: e59d30f8     	ldr	r3, [sp, #0xf8]
  57de90: e2877001     	add	r7, r7, #1
  57de94: e5813004     	str	r3, [r1, #0x4]
  57de98: e59dc014     	ldr	r12, [sp, #0x14]
  57de9c: e59c3018     	ldr	r3, [r12, #0x18]
  57dea0: e2833008     	add	r3, r3, #8
  57dea4: e58c3018     	str	r3, [r12, #0x18]
  57dea8: eaffffd4     	b	0x57de00 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x26c> @ imm = #-0xb0
  57deac: e59d0030     	ldr	r0, [sp, #0x30]
  57deb0: e1a02004     	mov	r2, r4
  57deb4: e59d3008     	ldr	r3, [sp, #0x8]
  57deb8: e58da000     	str	r10, [sp]
  57debc: e58da004     	str	r10, [sp, #0x4]
  57dec0: e2877001     	add	r7, r7, #1
  57dec4: ebffef3f     	bl	0x579bc8 <std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::CBatchMesh::SSegmentInfo*, glitch::scene::CBatchMesh::SSegmentInfo const&, std::__false_type const&, unsigned int, bool)> @ imm = #-0x4304
  57dec8: eaffffcc     	b	0x57de00 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x26c> @ imm = #-0xd0
  57decc: e59de014     	ldr	lr, [sp, #0x14]
  57ded0: e59d3018     	ldr	r3, [sp, #0x18]
  57ded4: e59d10a0     	ldr	r1, [sp, #0xa0]
  57ded8: e28ee014     	add	lr, lr, #20
  57dedc: e1a0000e     	mov	r0, lr
  57dee0: e28d2c01     	add	r2, sp, #256
  57dee4: e58de030     	str	lr, [sp, #0x30]
  57dee8: e58d3100     	str	r3, [sp, #0x100]
  57deec: e58d3104     	str	r3, [sp, #0x104]
  57def0: ebffef9c     	bl	0x579d68 <std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0>>::resize(unsigned int, glitch::scene::CBatchMesh::SSegmentInfo const&)> @ imm = #-0x4190
  57def4: e59d20a0     	ldr	r2, [sp, #0xa0]
  57def8: e59d4014     	ldr	r4, [sp, #0x14]
  57defc: e5953000     	ldr	r3, [r5]
  57df00: e1a00005     	mov	r0, r5
  57df04: e1a02182     	lsl	r2, r2, #3
  57df08: e5941014     	ldr	r1, [r4, #0x14]
  57df0c: e1a0e00f     	mov	lr, pc
  57df10: e593f00c     	ldr	pc, [r3, #0xc]
  57df14: e59d30a0     	ldr	r3, [sp, #0xa0]
  57df18: e59d5014     	ldr	r5, [sp, #0x14]
  57df1c: e28d2f4a     	add	r2, sp, #296
  57df20: e3a04000     	mov	r4, #0
  57df24: e5951070     	ldr	r1, [r5, #0x70]
  57df28: e2850008     	add	r0, r5, #8
  57df2c: e5624001     	strb	r4, [r2, #-0x1]!
  57df30: e0010193     	mul	r1, r3, r1
  57df34: ebfffe84     	bl	0x57d94c <std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0>>::resize(unsigned int, unsigned char const&)> @ imm = #-0x5f0
  57df38: e59f15d0     	ldr	r1, [pc, #0x5d0] <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x97c>
  57df3c: e59d001c     	ldr	r0, [sp, #0x1c]
  57df40: e58d4028     	str	r4, [sp, #0x28]
  57df44: e08f1001     	add	r1, pc, r1
  57df48: ebffe9b5     	bl	0x578624 <glitch::io::CZipReader::openFile(char const*)> @ imm = #-0x592c
  57df4c: e59f15c0     	ldr	r1, [pc, #0x5c0] <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x980>
  57df50: e28dc0f4     	add	r12, sp, #244
  57df54: e1a04000     	mov	r4, r0
  57df58: e08f1001     	add	r1, pc, r1
  57df5c: e59d001c     	ldr	r0, [sp, #0x1c]
  57df60: e58dc020     	str	r12, [sp, #0x20]
  57df64: ebffe9ae     	bl	0x578624 <glitch::io::CZipReader::openFile(char const*)> @ imm = #-0x5948
  57df68: e59f15a8     	ldr	r1, [pc, #0x5a8] <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x984>
  57df6c: e58d0034     	str	r0, [sp, #0x34]
  57df70: e59d001c     	ldr	r0, [sp, #0x1c]
  57df74: e08f1001     	add	r1, pc, r1
  57df78: ebffe9a9     	bl	0x578624 <glitch::io::CZipReader::openFile(char const*)> @ imm = #-0x595c
  57df7c: e58d0048     	str	r0, [sp, #0x48]
  57df80: e59d0020     	ldr	r0, [sp, #0x20]
  57df84: e3046ec5     	movw	r6, #0x4ec5
  57df88: e59db028     	ldr	r11, [sp, #0x28]
  57df8c: e34c64ec     	movt	r6, #0xc4ec
  57df90: e285e020     	add	lr, r5, #32
  57df94: e2800006     	add	r0, r0, #6
  57df98: e58de04c     	str	lr, [sp, #0x4c]
  57df9c: e58d0044     	str	r0, [sp, #0x44]
  57dfa0: e1a08006     	mov	r8, r6
  57dfa4: e59d309c     	ldr	r3, [sp, #0x9c]
  57dfa8: e59d0028     	ldr	r0, [sp, #0x28]
  57dfac: e1500003     	cmp	r0, r3
  57dfb0: 2a00013b     	bhs	0x57e4a4 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x910> @ imm = #0x4ec
  57dfb4: e59d1020     	ldr	r1, [sp, #0x20]
  57dfb8: e5943000     	ldr	r3, [r4]
  57dfbc: e1a00004     	mov	r0, r4
  57dfc0: e3a0200c     	mov	r2, #12
  57dfc4: e1a0e00f     	mov	lr, pc
  57dfc8: e593f00c     	ldr	pc, [r3, #0xc]
  57dfcc: e59d1018     	ldr	r1, [sp, #0x18]
  57dfd0: e3510000     	cmp	r1, #0
  57dfd4: 0a000019     	beq	0x57e040 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x4ac> @ imm = #0x64
  57dfd8: e59d3044     	ldr	r3, [sp, #0x44]
  57dfdc: e59d5020     	ldr	r5, [sp, #0x20]
  57dfe0: e5d32001     	ldrb	r2, [r3, #0x1]
  57dfe4: e5d33000     	ldrb	r3, [r3]
  57dfe8: e5d5e005     	ldrb	lr, [r5, #0x5]
  57dfec: e5d5c004     	ldrb	r12, [r5, #0x4]
  57dff0: e5d50009     	ldrb	r0, [r5, #0x9]
  57dff4: e5d51008     	ldrb	r1, [r5, #0x8]
  57dff8: e5cd2050     	strb	r2, [sp, #0x50]
  57dffc: e5cd3051     	strb	r3, [sp, #0x51]
  57e000: e5d5200b     	ldrb	r2, [r5, #0xb]
  57e004: e5d5300a     	ldrb	r3, [r5, #0xa]
  57e008: e1dd55b0     	ldrh	r5, [sp, #80]
  57e00c: e5cde050     	strb	lr, [sp, #0x50]
  57e010: e5cdc051     	strb	r12, [sp, #0x51]
  57e014: e1ddc5b0     	ldrh	r12, [sp, #80]
  57e018: e5cd0050     	strb	r0, [sp, #0x50]
  57e01c: e5cd1051     	strb	r1, [sp, #0x51]
  57e020: e1dde5b0     	ldrh	lr, [sp, #80]
  57e024: e5cd2050     	strb	r2, [sp, #0x50]
  57e028: e5cd3051     	strb	r3, [sp, #0x51]
  57e02c: e1dd05b0     	ldrh	r0, [sp, #80]
  57e030: e1cd5fba     	strh	r5, [sp, #250]
  57e034: e1cdcfb8     	strh	r12, [sp, #248]
  57e038: e1cdefbc     	strh	lr, [sp, #252]
  57e03c: e1cd0fbe     	strh	r0, [sp, #254]
  57e040: e28d10e0     	add	r1, sp, #224
  57e044: e1a00001     	mov	r0, r1
  57e048: e58d103c     	str	r1, [sp, #0x3c]
  57e04c: ebffeb3a     	bl	0x578d3c <glitch::scene::CBatchMesh::SBatch::SBatch()> @ imm = #-0x5318
  57e050: e59d5014     	ldr	r5, [sp, #0x14]
  57e054: e3a03001     	mov	r3, #1
  57e058: e59d2038     	ldr	r2, [sp, #0x38]
  57e05c: e5c53074     	strb	r3, [r5, #0x74]
  57e060: e1ddcfba     	ldrh	r12, [sp, #250]
  57e064: e3520000     	cmp	r2, #0
  57e068: e1cdcfb0     	strh	r12, [sp, #240]
  57e06c: 0a000015     	beq	0x57e0c8 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x534> @ imm = #0x54
  57e070: e59de150     	ldr	lr, [sp, #0x150]
  57e074: e28d5e12     	add	r5, sp, #288
  57e078: e59d2040     	ldr	r2, [sp, #0x40]
  57e07c: e1dd3fbe     	ldrh	r3, [sp, #254]
  57e080: e1a00005     	mov	r0, r5
  57e084: e59d1024     	ldr	r1, [sp, #0x24]
  57e088: e58de000     	str	lr, [sp]
  57e08c: eb027bac     	bl	0x61cf44 <glitch::collada::CColladaDatabase::constructMaterial(glitch::video::IVideoDriver*, int, glitch::collada::CRootSceneNode*) const> @ imm = #0x9eeb0
  57e090: e59d3120     	ldr	r3, [sp, #0x120]
  57e094: e28d0f43     	add	r0, sp, #268
  57e098: e58d310c     	str	r3, [sp, #0x10c]
  57e09c: e3530000     	cmp	r3, #0
  57e0a0: 15932000     	ldrne	r2, [r3]
  57e0a4: 12822001     	addne	r2, r2, #1
  57e0a8: 15832000     	strne	r2, [r3]
  57e0ac: e59d30e4     	ldr	r3, [sp, #0xe4]
  57e0b0: e59d210c     	ldr	r2, [sp, #0x10c]
  57e0b4: e58d310c     	str	r3, [sp, #0x10c]
  57e0b8: e58d20e4     	str	r2, [sp, #0xe4]
  57e0bc: ebf64ac9     	bl	0x310be8 <boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr()> @ imm = #-0x26d4dc
  57e0c0: e1a00005     	mov	r0, r5
  57e0c4: ebf64ac7     	bl	0x310be8 <boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr()> @ imm = #-0x26d4e4
  57e0c8: e59d10e4     	ldr	r1, [sp, #0xe4]
  57e0cc: e28d5f47     	add	r5, sp, #284
  57e0d0: e1a00005     	mov	r0, r5
  57e0d4: e2811004     	add	r1, r1, #4
  57e0d8: eb018497     	bl	0x5df33c <glitch::video::CMaterialVertexAttributeMap::allocate(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&)> @ imm = #0x6125c
  57e0dc: e59d311c     	ldr	r3, [sp, #0x11c]
  57e0e0: e28d0f42     	add	r0, sp, #264
  57e0e4: e3530000     	cmp	r3, #0
  57e0e8: e58d3108     	str	r3, [sp, #0x108]
  57e0ec: 15932000     	ldrne	r2, [r3]
  57e0f0: 12822001     	addne	r2, r2, #1
  57e0f4: 15832000     	strne	r2, [r3]
  57e0f8: e59d30e8     	ldr	r3, [sp, #0xe8]
  57e0fc: e59d2108     	ldr	r2, [sp, #0x108]
  57e100: e58d3108     	str	r3, [sp, #0x108]
  57e104: e58d20e8     	str	r2, [sp, #0xe8]
  57e108: ebfff057     	bl	0x57a26c <boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr()> @ imm = #-0x3ea4
  57e10c: e1a00005     	mov	r0, r5
  57e110: ebfff055     	bl	0x57a26c <boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr()> @ imm = #-0x3eac
  57e114: e59d70e8     	ldr	r7, [sp, #0xe8]
  57e118: e5973004     	ldr	r3, [r7, #0x4]
  57e11c: e5d32010     	ldrb	r2, [r3, #0x10]
  57e120: e3520000     	cmp	r2, #0
  57e124: 13a00000     	movne	r0, #0
  57e128: 15933018     	ldrne	r3, [r3, #0x18]
  57e12c: 158d0008     	strne	r0, [sp, #0x8]
  57e130: 0a000054     	beq	0x57e288 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x6f4> @ imm = #0x150
  57e134: e59dc008     	ldr	r12, [sp, #0x8]
  57e138: e3a0500c     	mov	r5, #12
  57e13c: e0050c95     	mul	r5, r5, r12
  57e140: e0831005     	add	r1, r3, r5
  57e144: e5d11004     	ldrb	r1, [r1, #0x4]
  57e148: e3510000     	cmp	r1, #0
  57e14c: 0a000047     	beq	0x57e270 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x6dc> @ imm = #0x11c
  57e150: e28d1f46     	add	r1, sp, #280
  57e154: e28d2f45     	add	r2, sp, #276
  57e158: e28daf49     	add	r10, sp, #292
  57e15c: e3a09000     	mov	r9, #0
  57e160: e58d100c     	str	r1, [sp, #0xc]
  57e164: e58d2010     	str	r2, [sp, #0x10]
  57e168: e28aa002     	add	r10, r10, #2
  57e16c: e1a0100b     	mov	r1, r11
  57e170: e3a00024     	mov	r0, #36
  57e174: e58db118     	str	r11, [sp, #0x118]
  57e178: ebfed80b     	bl	0x5341ac <operator new(unsigned int, glitch::memory::E_MEMORY_HINT)> @ imm = #-0x49fd4
  57e17c: e59d100c     	ldr	r1, [sp, #0xc]
  57e180: e1a06000     	mov	r6, r0
  57e184: eb0089f3     	bl	0x5a0958 <glitch::video::CVertexAttributeMap::CVertexAttributeMap(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&)> @ imm = #0x227cc
  57e188: e3560000     	cmp	r6, #0
  57e18c: e58d6114     	str	r6, [sp, #0x114]
  57e190: 15963000     	ldrne	r3, [r6]
  57e194: e1a00007     	mov	r0, r7
  57e198: e1a02009     	mov	r2, r9
  57e19c: 12833001     	addne	r3, r3, #1
  57e1a0: 15863000     	strne	r3, [r6]
  57e1a4: e59d1008     	ldr	r1, [sp, #0x8]
  57e1a8: e59d3010     	ldr	r3, [sp, #0x10]
  57e1ac: eb018598     	bl	0x5df814 <glitch::video::CMaterialVertexAttributeMap::set(unsigned char, unsigned char, boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const&)> @ imm = #0x61660
  57e1b0: e59d0114     	ldr	r0, [sp, #0x114]
  57e1b4: e3500000     	cmp	r0, #0
  57e1b8: 0a000005     	beq	0x57e1d4 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x640> @ imm = #0x14
  57e1bc: e5903000     	ldr	r3, [r0]
  57e1c0: e2433001     	sub	r3, r3, #1
  57e1c4: e3530000     	cmp	r3, #0
  57e1c8: e5803000     	str	r3, [r0]
  57e1cc: 1a000000     	bne	0x57e1d4 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x640> @ imm = #0x0
  57e1d0: ebf64036     	bl	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x26ff28
  57e1d4: e59d000c     	ldr	r0, [sp, #0xc]
  57e1d8: ebf7826c     	bl	0x35eb90 <boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr()> @ imm = #-0x21f650
  57e1dc: e3a03034     	mov	r3, #52
  57e1e0: e0070993     	mul	r7, r3, r9
  57e1e4: e3a06000     	mov	r6, #0
  57e1e8: e5943000     	ldr	r3, [r4]
  57e1ec: e1a0100a     	mov	r1, r10
  57e1f0: e3a02001     	mov	r2, #1
  57e1f4: e1a00004     	mov	r0, r4
  57e1f8: e1a0e00f     	mov	lr, pc
  57e1fc: e593f00c     	ldr	pc, [r3, #0xc]
  57e200: e59d30e8     	ldr	r3, [sp, #0xe8]
  57e204: e5dd1126     	ldrb	r1, [sp, #0x126]
  57e208: e5932004     	ldr	r2, [r3, #0x4]
  57e20c: e5920018     	ldr	r0, [r2, #0x18]
  57e210: e592201c     	ldr	r2, [r2, #0x1c]
  57e214: e0800005     	add	r0, r0, r5
  57e218: e5900008     	ldr	r0, [r0, #0x8]
  57e21c: e0800007     	add	r0, r0, r7
  57e220: e0622000     	rsb	r2, r2, r0
  57e224: e1a02142     	asr	r2, r2, #2
  57e228: e0020298     	mul	r2, r8, r2
  57e22c: e0833102     	add	r3, r3, r2, lsl #2
  57e230: e5933008     	ldr	r3, [r3, #0x8]
  57e234: e0833006     	add	r3, r3, r6
  57e238: e2866001     	add	r6, r6, #1
  57e23c: e356001e     	cmp	r6, #30
  57e240: e5c31004     	strb	r1, [r3, #0x4]
  57e244: 1affffe7     	bne	0x57e1e8 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x654> @ imm = #-0x64
  57e248: e59d70e8     	ldr	r7, [sp, #0xe8]
  57e24c: e2899001     	add	r9, r9, #1
  57e250: e6ef9079     	uxtb	r9, r9
  57e254: e5972004     	ldr	r2, [r7, #0x4]
  57e258: e5923018     	ldr	r3, [r2, #0x18]
  57e25c: e0831005     	add	r1, r3, r5
  57e260: e5d11004     	ldrb	r1, [r1, #0x4]
  57e264: e1510009     	cmp	r1, r9
  57e268: 8affffbf     	bhi	0x57e16c <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x5d8> @ imm = #-0x104
  57e26c: e5d22010     	ldrb	r2, [r2, #0x10]
  57e270: e59d5008     	ldr	r5, [sp, #0x8]
  57e274: e2851001     	add	r1, r5, #1
  57e278: e6ef1071     	uxtb	r1, r1
  57e27c: e1520001     	cmp	r2, r1
  57e280: e58d1008     	str	r1, [sp, #0x8]
  57e284: 8affffaa     	bhi	0x57e134 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x5a0> @ imm = #-0x158
  57e288: e1dd3fb8     	ldrh	r3, [sp, #248]
  57e28c: e3530000     	cmp	r3, #0
  57e290: 0a00005a     	beq	0x57e400 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x86c> @ imm = #0x168
  57e294: e28d7050     	add	r7, sp, #80
  57e298: e3a0e000     	mov	lr, #0
  57e29c: e3a05000     	mov	r5, #0
  57e2a0: e3a03000     	mov	r3, #0
  57e2a4: e59d2018     	ldr	r2, [sp, #0x18]
  57e2a8: e1a00007     	mov	r0, r7
  57e2ac: e59d1034     	ldr	r1, [sp, #0x34]
  57e2b0: e3a06001     	mov	r6, #1
  57e2b4: e58de050     	str	lr, [sp, #0x50]
  57e2b8: e58de054     	str	lr, [sp, #0x54]
  57e2bc: e58de058     	str	lr, [sp, #0x58]
  57e2c0: e58de05c     	str	lr, [sp, #0x5c]
  57e2c4: e58de060     	str	lr, [sp, #0x60]
  57e2c8: e58de064     	str	lr, [sp, #0x64]
  57e2cc: e58de068     	str	lr, [sp, #0x68]
  57e2d0: e58de06c     	str	lr, [sp, #0x6c]
  57e2d4: e5cd3071     	strb	r3, [sp, #0x71]
  57e2d8: e1cde7b2     	strh	lr, [sp, #114]
  57e2dc: e1cd57b4     	strh	r5, [sp, #116]
  57e2e0: e1cd57b6     	strh	r5, [sp, #118]
  57e2e4: e1cd57b8     	strh	r5, [sp, #120]
  57e2e8: e5cd6070     	strb	r6, [sp, #0x70]
  57e2ec: ebfff439     	bl	0x57b3d8 <glitch::scene::CBatchMesh::SSegment::load(glitch::io::IReadFile*, bool)> @ imm = #-0x2f1c
  57e2f0: e59dc014     	ldr	r12, [sp, #0x14]
  57e2f4: e59d3054     	ldr	r3, [sp, #0x54]
  57e2f8: e59de030     	ldr	lr, [sp, #0x30]
  57e2fc: e59c2008     	ldr	r2, [r12, #0x8]
  57e300: e59c5070     	ldr	r5, [r12, #0x70]
  57e304: e3a00000     	mov	r0, #0
  57e308: e1a01007     	mov	r1, r7
  57e30c: e0252395     	mla	r5, r5, r3, r2
  57e310: e58d0058     	str	r0, [sp, #0x58]
  57e314: e1a00005     	mov	r0, r5
  57e318: e58de050     	str	lr, [sp, #0x50]
  57e31c: e1cd3ebc     	strh	r3, [sp, #236]
  57e320: ebfff4d5     	bl	0x57b67c <glitch::scene::CBatchMesh::SSegment::clone(glitch::scene::CBatchMesh::SSegment const&)> @ imm = #-0x2cac
  57e324: e59d1014     	ldr	r1, [sp, #0x14]
  57e328: e59d2034     	ldr	r2, [sp, #0x34]
  57e32c: e59d3018     	ldr	r3, [sp, #0x18]
  57e330: e591c000     	ldr	r12, [r1]
  57e334: e1a00001     	mov	r0, r1
  57e338: e285102c     	add	r1, r5, #44
  57e33c: e1a0e00f     	mov	lr, pc
  57e340: e59cf044     	ldr	pc, [r12, #0x44]
  57e344: e1dd3fb8     	ldrh	r3, [sp, #248]
  57e348: e59dc014     	ldr	r12, [sp, #0x14]
  57e34c: e1530006     	cmp	r3, r6
  57e350: e59c2070     	ldr	r2, [r12, #0x70]
  57e354: 9a000018     	bls	0x57e3bc <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x828> @ imm = #0x60
  57e358: e59d9034     	ldr	r9, [sp, #0x34]
  57e35c: e59da018     	ldr	r10, [sp, #0x18]
  57e360: e0855002     	add	r5, r5, r2
  57e364: e1a0700c     	mov	r7, r12
  57e368: e1a00005     	mov	r0, r5
  57e36c: e1a01009     	mov	r1, r9
  57e370: e1a0200a     	mov	r2, r10
  57e374: ebfff417     	bl	0x57b3d8 <glitch::scene::CBatchMesh::SSegment::load(glitch::io::IReadFile*, bool)> @ imm = #-0x2fa4
  57e378: e59de030     	ldr	lr, [sp, #0x30]
  57e37c: e3a00000     	mov	r0, #0
  57e380: e5850008     	str	r0, [r5, #0x8]
  57e384: e585e000     	str	lr, [r5]
  57e388: e285102c     	add	r1, r5, #44
  57e38c: e1a02009     	mov	r2, r9
  57e390: e1a0300a     	mov	r3, r10
  57e394: e597c000     	ldr	r12, [r7]
  57e398: e1a00007     	mov	r0, r7
  57e39c: e1a0e00f     	mov	lr, pc
  57e3a0: e59cf044     	ldr	pc, [r12, #0x44]
  57e3a4: e1dd3fb8     	ldrh	r3, [sp, #248]
  57e3a8: e5972070     	ldr	r2, [r7, #0x70]
  57e3ac: e2866001     	add	r6, r6, #1
  57e3b0: e1530006     	cmp	r3, r6
  57e3b4: e0855002     	add	r5, r5, r2
  57e3b8: 8affffea     	bhi	0x57e368 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x7d4> @ imm = #-0x58
  57e3bc: e5dd2071     	ldrb	r2, [sp, #0x71]
  57e3c0: e3520000     	cmp	r2, #0
  57e3c4: 0a00000d     	beq	0x57e400 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x86c> @ imm = #0x34
  57e3c8: e59f114c     	ldr	r1, [pc, #0x14c] <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x988>
  57e3cc: e59d502c     	ldr	r5, [sp, #0x2c]
  57e3d0: e59d205c     	ldr	r2, [sp, #0x5c]
  57e3d4: e7953001     	ldr	r3, [r5, r1]
  57e3d8: e5933000     	ldr	r3, [r3]
  57e3dc: e3530000     	cmp	r3, #0
  57e3e0: 0a000001     	beq	0x57e3ec <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x858> @ imm = #0x4
  57e3e4: e1520003     	cmp	r2, r3
  57e3e8: 2a000023     	bhs	0x57e47c <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x8e8> @ imm = #0x8c
  57e3ec: e5823000     	str	r3, [r2]
  57e3f0: e59dc02c     	ldr	r12, [sp, #0x2c]
  57e3f4: e1dd3fb8     	ldrh	r3, [sp, #248]
  57e3f8: e79c1001     	ldr	r1, [r12, r1]
  57e3fc: e5812000     	str	r2, [r1]
  57e400: e1ddcebc     	ldrh	r12, [sp, #236]
  57e404: e59d2018     	ldr	r2, [sp, #0x18]
  57e408: e28d0e11     	add	r0, sp, #272
  57e40c: e083c00c     	add	r12, r3, r12
  57e410: e59d1048     	ldr	r1, [sp, #0x48]
  57e414: e59d3040     	ldr	r3, [sp, #0x40]
  57e418: e1cdcebe     	strh	r12, [sp, #238]
  57e41c: eb04e5fe     	bl	0x6b7c1c <glitch::io::loadMB(glitch::io::IReadFile*, bool, glitch::video::IVideoDriver*)> @ imm = #0x1397f8
  57e420: e59d3110     	ldr	r3, [sp, #0x110]
  57e424: e3530000     	cmp	r3, #0
  57e428: 15932004     	ldrne	r2, [r3, #0x4]
  57e42c: 12822001     	addne	r2, r2, #1
  57e430: 15832004     	strne	r2, [r3, #0x4]
  57e434: e59d00e0     	ldr	r0, [sp, #0xe0]
  57e438: e58d30e0     	str	r3, [sp, #0xe0]
  57e43c: e3500000     	cmp	r0, #0
  57e440: 0a000000     	beq	0x57e448 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x8b4> @ imm = #0x0
  57e444: ebf67c4e     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x260ec8
  57e448: e59d0110     	ldr	r0, [sp, #0x110]
  57e44c: e3500000     	cmp	r0, #0
  57e450: 0a000000     	beq	0x57e458 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x8c4> @ imm = #0x0
  57e454: ebf67c4a     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x260ed8
  57e458: e59d103c     	ldr	r1, [sp, #0x3c]
  57e45c: e59d004c     	ldr	r0, [sp, #0x4c]
  57e460: ebfff4b8     	bl	0x57b748 <std::vector<glitch::scene::CBatchMesh::SBatch, glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch, (glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::scene::CBatchMesh::SBatch const&)> @ imm = #-0x2d20
  57e464: e59d003c     	ldr	r0, [sp, #0x3c]
  57e468: ebffefbe     	bl	0x57a368 <glitch::scene::CBatchMesh::SBatch::~SBatch()> @ imm = #-0x4108
  57e46c: e59de028     	ldr	lr, [sp, #0x28]
  57e470: e28ee001     	add	lr, lr, #1
  57e474: e58de028     	str	lr, [sp, #0x28]
  57e478: eafffec9     	b	0x57dfa4 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x410> @ imm = #-0x4dc
  57e47c: e1a01003     	mov	r1, r3
  57e480: e5933000     	ldr	r3, [r3]
  57e484: e3530000     	cmp	r3, #0
  57e488: 0a000001     	beq	0x57e494 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x900> @ imm = #0x4
  57e48c: e1520003     	cmp	r2, r3
  57e490: 2afffff9     	bhs	0x57e47c <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x8e8> @ imm = #-0x1c
  57e494: e5823000     	str	r3, [r2]
  57e498: e5812000     	str	r2, [r1]
  57e49c: e1dd3fb8     	ldrh	r3, [sp, #248]
  57e4a0: eaffffd6     	b	0x57e400 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x86c> @ imm = #-0xa8
  57e4a4: e59d1024     	ldr	r1, [sp, #0x24]
  57e4a8: e3510000     	cmp	r1, #0
  57e4ac: 0a000003     	beq	0x57e4c0 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x92c> @ imm = #0xc
  57e4b0: e1a00001     	mov	r0, r1
  57e4b4: eb026bee     	bl	0x619474 <glitch::collada::CColladaDatabase::~CColladaDatabase()> @ imm = #0x9afb8
  57e4b8: e59d0024     	ldr	r0, [sp, #0x24]
  57e4bc: ebf63f7b     	bl	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x270214
  57e4c0: e59d001c     	ldr	r0, [sp, #0x1c]
  57e4c4: ebffe3ef     	bl	0x577488 <glitch::io::CZipReader::~CZipReader()> @ imm = #-0x7044
  57e4c8: e28ddf4b     	add	sp, sp, #300
  57e4cc: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  57e4d0: e1a01004     	mov	r1, r4
  57e4d4: e3a00008     	mov	r0, #8
  57e4d8: ebfed733     	bl	0x5341ac <operator new(unsigned int, glitch::memory::E_MEMORY_HINT)> @ imm = #-0x4a334
  57e4dc: e59f303c     	ldr	r3, [pc, #0x3c] <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x98c>
  57e4e0: e59de02c     	ldr	lr, [sp, #0x2c]
  57e4e4: e1a01006     	mov	r1, r6
  57e4e8: e58d0024     	str	r0, [sp, #0x24]
  57e4ec: e79e2003     	ldr	r2, [lr, r3]
  57e4f0: eb0243b3     	bl	0x60f3c4 <glitch::collada::CColladaDatabase::CColladaDatabase(glitch::io::IReadFile*, glitch::collada::CColladaFactory*)> @ imm = #0x90ecc
  57e4f4: e3a00001     	mov	r0, #1
  57e4f8: e58d0038     	str	r0, [sp, #0x38]
  57e4fc: eafffdc8     	b	0x57dc24 <glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)+0x90> @ imm = #-0x8e0
  57e500: a4 16 36 00  	.word	0x003616a4
  57e504: ac 6e 41 00  	.word	0x00416eac
  57e508: c0 15 36 00  	.word	0x003615c0
  57e50c: 40 14 36 00  	.word	0x00361440
  57e510: f4 12 36 00  	.word	0x003612f4
  57e514: f0 12 36 00  	.word	0x003612f0
  57e518: ec 12 36 00  	.word	0x003612ec
  57e51c: 60 20 00 00  	.word	0x00002060
  57e520: 10 47 00 00  	.word	0x00004710
