; Exact ARM-mode instruction excerpts decoded from the APK ELF member.
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF member: lib/armeabi-v7a/libDungeonHunter2.so
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Each row's bytes are little-endian and were compared with the PT_LOAD-mapped ELF slice.
; Excerpts preserve only selected route instructions; complete function ranges and hashes are in the JSON manifest.

; EXCERPT material-table offsets and raw effect-index check
; function=CResFileManager::postLoadProcess; function_sha256=e85095e743755648b2ca68999ddaca7fa1155ab335ee435b585ad2b7a1b13ad2
; VA=0x00658f1c..0x00658f34 (end-exclusive); file_offset=0x00658f1c; PT_LOAD program header=1
00658f1c  60 50 94 e5  ldr	r5, [r4, #0x60]
00658f20  54 20 94 e5  ldr	r2, [r4, #0x54]
00658f24  07 50 85 e0  add	r5, r5, r7
00658f28  18 30 95 e5  ldr	r3, [r5, #0x18]
00658f2c  02 00 53 e1  cmp	r3, r2
00658f30  18 b0 85 c5  strgt	r11, [r5, #0x18]

; EXCERPT local effect-index to pointer relocation
; function=CResFileManager::postLoadProcess; function_sha256=e85095e743755648b2ca68999ddaca7fa1155ab335ee435b585ad2b7a1b13ad2
; VA=0x00658f98..0x00658fb4 (end-exclusive); file_offset=0x00658f98; PT_LOAD program header=1
00658f98  18 30 95 e5  ldr	r3, [r5, #0x18]
00658f9c  01 00 73 e3  cmn	r3, #1
00658fa0  af 00 00 0a  beq	0x659264 <glitch::collada::CResFileManager::postLoadProcess(glitch::collada::CResFile*, glitch::io::IReadFile*)+0x5d4> @ imm = #0x2bc
00658fa4  58 20 94 e5  ldr	r2, [r4, #0x58]
00658fa8  74 e0 a0 e3  mov	lr, #116
00658fac  9e 23 23 e0  mla	r3, lr, r3, r2
00658fb0  18 30 85 e5  str	r3, [r5, #0x18]

; EXCERPT external sentinel database and effect lookup
; function=CResFileManager::postLoadProcess; function_sha256=e85095e743755648b2ca68999ddaca7fa1155ab335ee435b585ad2b7a1b13ad2
; VA=0x00659264..0x006592b0 (end-exclusive); file_offset=0x00659264; PT_LOAD program header=1
00659264  08 10 95 e5  ldr	r1, [r5, #0x8]
00659268  00 00 51 e3  cmp	r1, #0
0065926c  18 10 85 05  streq	r1, [r5, #0x18]
00659270  4f ff ff 0a  beq	0x658fb4 <glitch::collada::CResFileManager::postLoadProcess(glitch::collada::CResFile*, glitch::io::IReadFile*)+0x324> @ imm = #-0x2c4
00659274  14 c0 9d e5  ldr	r12, [sp, #0x14]
00659278  30 30 9d e5  ldr	r3, [sp, #0x30]
0065927c  18 00 9d e5  ldr	r0, [sp, #0x18]
00659280  03 20 9c e7  ldr	r2, [r12, r3]
00659284  f4 d7 fe eb  bl	0x60f25c <glitch::collada::CColladaDatabase::CColladaDatabase(char const*, glitch::collada::CColladaFactory*)> @ imm = #-0x4a030
00659288  38 60 9d e5  ldr	r6, [sp, #0x38]
0065928c  00 00 56 e3  cmp	r6, #0
00659290  71 00 00 0a  beq	0x65945c <glitch::collada::CResFileManager::postLoadProcess(glitch::collada::CResFile*, glitch::io::IReadFile*)+0x7cc> @ imm = #0x1c4
00659294  0c 10 95 e5  ldr	r1, [r5, #0xc]
00659298  18 00 9d e5  ldr	r0, [sp, #0x18]
0065929c  01 10 81 e2  add	r1, r1, #1
006592a0  81 07 ff eb  bl	0x61b0ac <glitch::collada::CColladaDatabase::getEffect(char const*) const> @ imm = #-0x3e1fc
006592a4  18 00 85 e5  str	r0, [r5, #0x18]
006592a8  18 00 9d e5  ldr	r0, [sp, #0x18]
006592ac  70 00 ff eb  bl	0x619474 <glitch::collada::CColladaDatabase::~CColladaDatabase()> @ imm = #-0x3fe40

; EXCERPT SMaterial effect argument forwarding
; function=CColladaFactory::createMaterial; function_sha256=dc3090658f74e4ff70633a92030aab1b739e3b836e2ed704418ca6af4aed0b51
; VA=0x00632420..0x00632454 (end-exclusive); file_offset=0x00632420; PT_LOAD program header=1
00632420  0c 20 96 e5  ldr	r2, [r6, #0xc]
00632424  18 10 96 e5  ldr	r1, [r6, #0x18]
00632428  08 30 96 e5  ldr	r3, [r6, #0x8]
0063242c  01 20 82 e2  add	r2, r2, #1
00632430  1e 00 8d e8  stm	sp, {r1, r2, r3, r4}
00632434  1c 90 8d e2  add	r9, sp, #28
00632438  0a 30 a0 e1  mov	r3, r10
0063243c  07 10 a0 e1  mov	r1, r7
00632440  00 c0 97 e5  ldr	r12, [r7]
00632444  09 00 a0 e1  mov	r0, r9
00632448  08 20 a0 e1  mov	r2, r8
0063244c  0f e0 a0 e1  mov	lr, pc
00632450  1c f0 9c e5  ldr	pc, [r12, #0x1c]

; EXCERPT enum 20 comparison, technique lookup, and runtime byte store
; function=collada::createMaterial; function_sha256=85623a86cab3a537b4b865cd201292198524a9033ce9a266fed7713c3c138e4b
; VA=0x00631e44..0x00631ea4 (end-exclusive); file_offset=0x00631e44; PT_LOAD program header=1
00631e44  04 10 97 e7  ldr	r1, [r7, r4]
00631e48  00 00 9c e5  ldr	r0, [r12]
00631e4c  8e 84 fe eb  bl	0x5d308c <glitch::video::CMaterialRenderer::getParameterID(char const*, unsigned short) const> @ imm = #-0x5edc8
00631e50  ff 3f 0f e3  movw	r3, #0xffff
00631e54  03 00 50 e1  cmp	r0, r3
00631e58  04 70 87 e0  add	r7, r7, r4
00631e5c  00 50 a0 e1  mov	r5, r0
00631e60  d7 ff ff 1a  bne	0x631dc4 <glitch::collada::createMaterial(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, glitch::collada::SMaterial&, glitch::collada::CRootSceneNode*)+0xdc> @ imm = #-0xa4
00631e64  08 30 97 e5  ldr	r3, [r7, #0x8]
00631e68  14 00 53 e3  cmp	r3, #20
00631e6c  ec ff ff 1a  bne	0x631e24 <glitch::collada::createMaterial(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, glitch::collada::SMaterial&, glitch::collada::CRootSceneNode*)+0x13c> @ imm = #-0x50
00631e70  14 30 97 e5  ldr	r3, [r7, #0x14]
00631e74  18 10 9d e5  ldr	r1, [sp, #0x18]
00631e78  01 60 86 e2  add	r6, r6, #1
00631e7c  18 40 84 e2  add	r4, r4, #24
00631e80  00 00 91 e5  ldr	r0, [r1]
00631e84  04 10 93 e5  ldr	r1, [r3, #0x4]
00631e88  21 8a fe eb  bl	0x5d4714 <glitch::video::CMaterialRenderer::getTechniqueID(char const*) const> @ imm = #-0x5d77c
00631e8c  ff 00 50 e3  cmp	r0, #255
00631e90  1c 20 9d 15  ldrne	r2, [sp, #0x1c]
00631e94  00 30 92 15  ldrne	r3, [r2]
00631e98  08 00 c3 15  strbne	r0, [r3, #0x8]
00631e9c  20 30 9d e5  ldr	r3, [sp, #0x20]
00631ea0  03 00 56 e1  cmp	r6, r3

; EXCERPT technique name intern and ID lookup
; function=CMaterialRenderer::getTechniqueID; function_sha256=984f068cc2459e9915caef91dfaa2c13c36c0ff38d4b5ac576e65dfa75193142
; VA=0x005d4714..0x005d47b4 (end-exclusive); file_offset=0x005d4714; PT_LOAD program header=1
005d4714  f0 41 2d e9  push	{r4, r5, r6, r7, r8, lr}
005d4718  00 40 a0 e1  mov	r4, r0
005d471c  01 00 a0 e1  mov	r0, r1
005d4720  00 10 a0 e3  mov	r1, #0
005d4724  52 42 03 eb  bl	0x6a5074 <glitch::core::detail::SSharedStringHeapEntry::SData::get(char const*, bool)> @ imm = #0xd0948
005d4728  00 00 50 e3  cmp	r0, #0
005d472c  ff 40 a0 03  moveq	r4, #255
005d4730  18 00 00 0a  beq	0x5d4798 <glitch::video::CMaterialRenderer::getTechniqueID(char const*) const+0x84> @ imm = #0x60
005d4734  00 70 90 e5  ldr	r7, [r0]
005d4738  00 c0 a0 e1  mov	r12, r0
005d473c  01 70 87 e2  add	r7, r7, #1
005d4740  04 70 8c e4  str	r7, [r12], #4
005d4744  10 50 d4 e5  ldrb	r5, [r4, #0x10]
005d4748  00 00 55 e3  cmp	r5, #0
005d474c  16 00 00 0a  beq	0x5d47ac <glitch::video::CMaterialRenderer::getTechniqueID(char const*) const+0x98> @ imm = #0x58
005d4750  00 30 a0 e3  mov	r3, #0
005d4754  18 60 94 e5  ldr	r6, [r4, #0x18]
005d4758  03 40 a0 e1  mov	r4, r3
005d475c  03 00 00 ea  b	0x5d4770 <glitch::video::CMaterialRenderer::getTechniqueID(char const*) const+0x5c> @ imm = #0xc
005d4760  71 40 ef e6  uxtb	r4, r1
005d4764  05 00 54 e1  cmp	r4, r5
005d4768  0c 30 83 e2  add	r3, r3, #12
005d476c  0e 00 00 0a  beq	0x5d47ac <glitch::video::CMaterialRenderer::getTechniqueID(char const*) const+0x98> @ imm = #0x38
005d4770  03 20 96 e7  ldr	r2, [r6, r3]
005d4774  01 10 84 e2  add	r1, r4, #1
005d4778  00 00 52 e3  cmp	r2, #0
005d477c  04 20 82 12  addne	r2, r2, #4
005d4780  02 00 5c e1  cmp	r12, r2
005d4784  f5 ff ff 1a  bne	0x5d4760 <glitch::video::CMaterialRenderer::getTechniqueID(char const*) const+0x4c> @ imm = #-0x2c
005d4788  01 70 47 e2  sub	r7, r7, #1
005d478c  00 00 57 e3  cmp	r7, #0
005d4790  00 70 80 e5  str	r7, [r0]
005d4794  01 00 00 0a  beq	0x5d47a0 <glitch::video::CMaterialRenderer::getTechniqueID(char const*) const+0x8c> @ imm = #0x4
005d4798  04 00 a0 e1  mov	r0, r4
005d479c  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
005d47a0  7d 41 03 eb  bl	0x6a4d9c <glitch::core::detail::SSharedStringHeapEntry::SData::release(glitch::core::detail::SSharedStringHeapEntry::SData*)> @ imm = #0xd05f4
005d47a4  04 00 a0 e1  mov	r0, r4
005d47a8  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
005d47ac  ff 40 a0 e3  mov	r4, #255
005d47b0  f4 ff ff ea  b	0x5d4788 <glitch::video::CMaterialRenderer::getTechniqueID(char const*) const+0x74> @ imm = #-0x30

; EXCERPT effect table lookup by integer index
; function=CColladaDatabase::getEffect(int) const; function_sha256=86a8341de135e486dd3b6514c947eb84cd62abb5c53398b3ebd8a142f725029b
; VA=0x0060e3e4..0x0060e400 (end-exclusive); file_offset=0x0060e3e4; PT_LOAD program header=1
0060e3e4  00 30 90 e5  ldr	r3, [r0]
0060e3e8  74 00 a0 e3  mov	r0, #116
0060e3ec  24 30 93 e5  ldr	r3, [r3, #0x24]
0060e3f0  20 30 93 e5  ldr	r3, [r3, #0x20]
0060e3f4  58 30 93 e5  ldr	r3, [r3, #0x58]
0060e3f8  90 31 20 e0  mla	r0, r0, r1, r3
0060e3fc  1e ff 2f e1  bx	lr

; EXCERPT effect table lookup by name
; function=CColladaDatabase::getEffect(char const*) const; function_sha256=433cb8967a341bf0226ed5b0c5126ffd5afcf191ab8d2c2a6392eead19e371c7
; VA=0x0061b0ac..0x0061b10c (end-exclusive); file_offset=0x0061b0ac; PT_LOAD program header=1
0061b0ac  f0 41 2d e9  push	{r4, r5, r6, r7, r8, lr}
0061b0b0  00 30 90 e5  ldr	r3, [r0]
0061b0b4  01 70 a0 e1  mov	r7, r1
0061b0b8  24 30 93 e5  ldr	r3, [r3, #0x24]
0061b0bc  20 30 93 e5  ldr	r3, [r3, #0x20]
0061b0c0  54 60 93 e5  ldr	r6, [r3, #0x54]
0061b0c4  00 00 56 e3  cmp	r6, #0
0061b0c8  0d 00 00 da  ble	0x61b104 <glitch::collada::CColladaDatabase::getEffect(char const*) const+0x58> @ imm = #0x34
0061b0cc  58 40 93 e5  ldr	r4, [r3, #0x58]
0061b0d0  00 50 a0 e3  mov	r5, #0
0061b0d4  02 00 00 ea  b	0x61b0e4 <glitch::collada::CColladaDatabase::getEffect(char const*) const+0x38> @ imm = #0x8
0061b0d8  06 00 55 e1  cmp	r5, r6
0061b0dc  74 40 84 e2  add	r4, r4, #116
0061b0e0  07 00 00 0a  beq	0x61b104 <glitch::collada::CColladaDatabase::getEffect(char const*) const+0x58> @ imm = #0x1c
0061b0e4  00 00 94 e5  ldr	r0, [r4]
0061b0e8  07 10 a0 e1  mov	r1, r7
0061b0ec  8a cc f3 eb  bl	0x30e31c <strcmp@plt>   @ imm = #-0x30cdd8
0061b0f0  00 00 50 e3  cmp	r0, #0
0061b0f4  01 50 85 e2  add	r5, r5, #1
0061b0f8  f6 ff ff 1a  bne	0x61b0d8 <glitch::collada::CColladaDatabase::getEffect(char const*) const+0x2c> @ imm = #-0x28
0061b0fc  04 00 a0 e1  mov	r0, r4
0061b100  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
0061b104  00 00 a0 e3  mov	r0, #0
0061b108  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}

; EXCERPT temporary database constructor and retained CResFile
; function=CColladaDatabase::CColladaDatabase(char const*, CColladaFactory*); function_sha256=8c3c3ac060641caf088f0f3f103889456804ae41790bebc09907a87314d3c4b0
; VA=0x0060f25c..0x0060f2a4 (end-exclusive); file_offset=0x0060f25c; PT_LOAD program header=1
0060f25c  44 c0 9f e5  ldr	r12, [pc, #0x44]        @ 0x60f2a8 <glitch::collada::CColladaDatabase::CColladaDatabase(char const*, glitch::collada::CColladaFactory*)+0x4c>
0060f260  44 30 9f e5  ldr	r3, [pc, #0x44]         @ 0x60f2ac <glitch::collada::CColladaDatabase::CColladaDatabase(char const*, glitch::collada::CColladaFactory*)+0x50>
0060f264  70 40 2d e9  push	{r4, r5, r6, lr}
0060f268  0c c0 8f e0  add	r12, pc, r12
0060f26c  03 30 9c e7  ldr	r3, [r12, r3]
0060f270  02 50 a0 e1  mov	r5, r2
0060f274  00 20 a0 e3  mov	r2, #0
0060f278  00 40 a0 e1  mov	r4, r0
0060f27c  00 00 93 e5  ldr	r0, [r3]
0060f280  02 30 a0 e1  mov	r3, r2
0060f284  74 2e 01 eb  bl	0x65ac5c <glitch::collada::CResFileManager::load(char const*, bool, void (*)(char const*, glitch::collada::SCollada const*))> @ imm = #0x4b9d0
0060f288  04 50 84 e5  str	r5, [r4, #0x4]
0060f28c  00 00 50 e3  cmp	r0, #0
0060f290  00 00 84 e5  str	r0, [r4]
0060f294  04 30 90 15  ldrne	r3, [r0, #0x4]
0060f298  01 30 83 12  addne	r3, r3, #1
0060f29c  04 30 80 15  strne	r3, [r0, #0x4]
0060f2a0  04 00 a0 e1  mov	r0, r4

; EXCERPT temporary database destructor and conditional unload
; function=CColladaDatabase::~CColladaDatabase(); function_sha256=904f118210ad7546534e55e2616334274f6c7ce667820e4c03cf277bc93cc5a9
; VA=0x00619474..0x00619500 (end-exclusive); file_offset=0x00619474; PT_LOAD program header=1
00619474  70 40 2d e9  push	{r4, r5, r6, lr}
00619478  00 40 a0 e1  mov	r4, r0
0061947c  00 00 90 e5  ldr	r0, [r0]
00619480  7c 50 9f e5  ldr	r5, [pc, #0x7c]         @ 0x619504 <glitch::collada::CColladaDatabase::~CColladaDatabase()+0x90>
00619484  00 00 50 e3  cmp	r0, #0
00619488  05 50 8f e0  add	r5, pc, r5
0061948c  0d 00 00 0a  beq	0x6194c8 <glitch::collada::CColladaDatabase::~CColladaDatabase()+0x54> @ imm = #0x34
00619490  04 30 90 e5  ldr	r3, [r0, #0x4]
00619494  00 00 53 e3  cmp	r3, #0
00619498  0a 00 00 0a  beq	0x6194c8 <glitch::collada::CColladaDatabase::~CColladaDatabase()+0x54> @ imm = #0x28
0061949c  38 10 f4 eb  bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2fbf20
006194a0  60 30 9f e5  ldr	r3, [pc, #0x60]         @ 0x619508 <glitch::collada::CColladaDatabase::~CColladaDatabase()+0x94>
006194a4  03 60 95 e7  ldr	r6, [r5, r3]
006194a8  00 30 96 e5  ldr	r3, [r6]
006194ac  28 30 d3 e5  ldrb	r3, [r3, #0x28]
006194b0  00 00 53 e3  cmp	r3, #0
006194b4  03 00 00 0a  beq	0x6194c8 <glitch::collada::CColladaDatabase::~CColladaDatabase()+0x54> @ imm = #0xc
006194b8  00 30 94 e5  ldr	r3, [r4]
006194bc  04 30 93 e5  ldr	r3, [r3, #0x4]
006194c0  01 00 53 e3  cmp	r3, #1
006194c4  03 00 00 0a  beq	0x6194d8 <glitch::collada::CColladaDatabase::~CColladaDatabase()+0x64> @ imm = #0xc
006194c8  00 30 a0 e3  mov	r3, #0
006194cc  00 30 84 e5  str	r3, [r4]
006194d0  04 00 a0 e1  mov	r0, r4
006194d4  70 80 bd e8  pop	{r4, r5, r6, pc}
006194d8  2c 30 9f e5  ldr	r3, [pc, #0x2c]         @ 0x61950c <glitch::collada::CColladaDatabase::~CColladaDatabase()+0x98>
006194dc  04 10 a0 e1  mov	r1, r4
006194e0  03 30 95 e7  ldr	r3, [r5, r3]
006194e4  00 00 93 e5  ldr	r0, [r3]
006194e8  0a c9 ff eb  bl	0x60b918 <glitch::collada::CAnimationStreamingManager::release(glitch::collada::CColladaDatabase*)> @ imm = #-0xdbd8
006194ec  00 30 94 e5  ldr	r3, [r4]
006194f0  00 00 96 e5  ldr	r0, [r6]
006194f4  00 20 a0 e3  mov	r2, #0
006194f8  20 10 93 e5  ldr	r1, [r3, #0x20]
006194fc  97 01 01 eb  bl	0x659b60 <glitch::collada::CResFileManager::unload(char const*, bool)> @ imm = #0x4065c

; EXCERPT manager default unload flags
; function=CResFileManager::CResFileManager(IDevice*); function_sha256=d4fdb3614ec2ce867f1fc0904f98fdaa95457d10c782b4e9d599d7e5b0538cc5
; VA=0x00657948..0x0065797c (end-exclusive); file_offset=0x00657948; PT_LOAD program header=1
00657948  00 11 80 e8  stm	r0, {r8, r12}
0065794c  0c 40 80 e5  str	r4, [r0, #0xc]
00657950  08 40 e5 e5  strb	r4, [r5, #0x8]!
00657954  14 50 80 e5  str	r5, [r0, #0x14]
00657958  20 10 80 e5  str	r1, [r0, #0x20]
0065795c  24 70 80 e5  str	r7, [r0, #0x24]
00657960  29 40 c0 e5  strb	r4, [r0, #0x29]
00657964  2b c0 c0 e5  strb	r12, [r0, #0x2b]
00657968  10 50 80 e5  str	r5, [r0, #0x10]
0065796c  18 40 80 e5  str	r4, [r0, #0x18]
00657970  28 c0 c0 e5  strb	r12, [r0, #0x28]
00657974  2a c0 c0 e5  strb	r12, [r0, #0x2a]
00657978  00 00 86 e5  str	r0, [r6]

; EXCERPT CResFile initial manager reference
; function=CResFile::CResFile(char const*, IReadFile*, bool); function_sha256=889c7e4a506d6531f257be9aaa4306a9d6c5e640e078c86c23935394c4fd0008
; VA=0x00658068..0x00658080 (end-exclusive); file_offset=0x00658068; PT_LOAD program header=1
00658068  08 c0 8c e2  add	r12, r12, #8
0065806c  01 00 a0 e3  mov	r0, #1
00658070  04 00 84 e5  str	r0, [r4, #0x4]
00658074  03 80 a0 e1  mov	r8, r3
00658078  00 c0 84 e5  str	r12, [r4]
0065807c  02 70 a0 e1  mov	r7, r2

; EXCERPT stream-based get disables auto-unload
; function=CResFileManager::get(IReadFile*, bool, bool); function_sha256=c0dd305b36a44df95c95e9d5655973254019f42bbff0f192de117015959288ed
; VA=0x0065a770..0x0065a790 (end-exclusive); file_offset=0x0065a770; PT_LOAD program header=1
0065a770  00 80 a0 e1  mov	r8, r0
0065a774  4c e0 8d e5  str	lr, [sp, #0x4c]
0065a778  28 00 dc e5  ldrb	r0, [r12, #0x28]
0065a77c  01 70 a0 e1  mov	r7, r1
0065a780  1c a0 8d e2  add	r10, sp, #28
0065a784  04 00 8d e5  str	r0, [sp, #0x4]
0065a788  00 00 a0 e3  mov	r0, #0
0065a78c  28 00 cc e5  strb	r0, [r12, #0x28]

; EXCERPT stream-based get restores flag after post-load
; function=CResFileManager::get(IReadFile*, bool, bool); function_sha256=c0dd305b36a44df95c95e9d5655973254019f42bbff0f192de117015959288ed
; VA=0x0065a8a4..0x0065a8d0 (end-exclusive); file_offset=0x0065a8a4; PT_LOAD program header=1
0065a8a4  09 20 94 e7  ldr	r2, [r4, r9]
0065a8a8  04 10 9d e5  ldr	r1, [sp, #0x4]
0065a8ac  0b 30 94 e7  ldr	r3, [r4, r11]
0065a8b0  00 20 92 e5  ldr	r2, [r2]
0065a8b4  06 00 a0 e1  mov	r0, r6
0065a8b8  28 10 c2 e5  strb	r1, [r2, #0x28]
0065a8bc  4c 20 9d e5  ldr	r2, [sp, #0x4c]
0065a8c0  00 30 93 e5  ldr	r3, [r3]
0065a8c4  03 00 52 e1  cmp	r2, r3
0065a8c8  28 00 00 1a  bne	0x65a970 <glitch::collada::CResFileManager::get(glitch::io::IReadFile*, bool, bool)+0x228> @ imm = #0xa0
0065a8cc  54 d0 8d e2  add	sp, sp, #84

; EXCERPT stream-based get invokes post-load
; function=CResFileManager::get(IReadFile*, bool, bool); function_sha256=c0dd305b36a44df95c95e9d5655973254019f42bbff0f192de117015959288ed
; VA=0x0065a944..0x0065a970 (end-exclusive); file_offset=0x0065a944; PT_LOAD program header=1
0065a944  00 70 a0 e1  mov	r7, r0
0065a948  06 10 a0 e1  mov	r1, r6
0065a94c  08 00 a0 e1  mov	r0, r8
0065a950  07 20 a0 e1  mov	r2, r7
0065a954  cd f8 ff eb  bl	0x658c90 <glitch::collada::CResFileManager::postLoadProcess(glitch::collada::CResFile*, glitch::io::IReadFile*)> @ imm = #-0x1ccc
0065a958  00 80 a0 e1  mov	r8, r0
0065a95c  07 00 a0 e1  mov	r0, r7
0065a960  07 0b f3 eb  bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x33d3e4
0065a964  00 00 58 e3  cmp	r8, #0
0065a968  00 60 a0 13  movne	r6, #0
0065a96c  c6 ff ff ea  b	0x65a88c <glitch::collada::CResFileManager::get(glitch::io::IReadFile*, bool, bool)+0x144> @ imm = #-0xe8

; EXCERPT stream-based get stores the CResFile in the manager map
; function=CResFileManager::get(IReadFile*, bool, bool); function_sha256=c0dd305b36a44df95c95e9d5655973254019f42bbff0f192de117015959288ed
; VA=0x0065a90c..0x0065a928 (end-exclusive); file_offset=0x0065a90c; PT_LOAD program header=1
0065a90c  cd f5 ff eb  bl	0x658048 <glitch::collada::CResFile::CResFile(char const*, glitch::io::IReadFile*, bool)> @ imm = #-0x28cc
0065a910  48 30 9d e5  ldr	r3, [sp, #0x48]
0065a914  50 10 8d e2  add	r1, sp, #80
0065a918  0a 00 a0 e1  mov	r0, r10
0065a91c  3c 30 21 e5  str	r3, [r1, #-0x3c]!
0065a920  29 ff ff eb  bl	0x65a5cc <glitch::collada::CResFile*& std::map<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>, glitch::collada::CResFile*, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>>, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0>>::operator[]<char const*>(char const* const&)> @ imm = #-0x35c
0065a924  00 60 80 e5  str	r6, [r0]

; EXCERPT path-based get disables auto-unload
; function=CResFileManager::get(char const*, bool); function_sha256=62a918d472da5807ba14390942d578cd99130a7929117f900cb0bbc0b5060854
; VA=0x0065a9d8..0x0065a9f0 (end-exclusive); file_offset=0x0065a9d8; PT_LOAD program header=1
0065a9d8  28 00 d3 e5  ldrb	r0, [r3, #0x28]
0065a9dc  24 50 8d e2  add	r5, sp, #36
0065a9e0  3c 70 8d e2  add	r7, sp, #60
0065a9e4  04 00 8d e5  str	r0, [sp, #0x4]
0065a9e8  00 00 a0 e3  mov	r0, #0
0065a9ec  28 00 c3 e5  strb	r0, [r3, #0x28]

; EXCERPT path-based get restores flag
; function=CResFileManager::get(char const*, bool); function_sha256=62a918d472da5807ba14390942d578cd99130a7929117f900cb0bbc0b5060854
; VA=0x0065aae0..0x0065ab0c (end-exclusive); file_offset=0x0065aae0; PT_LOAD program header=1
0065aae0  09 20 94 e7  ldr	r2, [r4, r9]
0065aae4  04 10 9d e5  ldr	r1, [sp, #0x4]
0065aae8  0b 30 94 e7  ldr	r3, [r4, r11]
0065aaec  00 20 92 e5  ldr	r2, [r2]
0065aaf0  05 00 a0 e1  mov	r0, r5
0065aaf4  28 10 c2 e5  strb	r1, [r2, #0x28]
0065aaf8  54 20 9d e5  ldr	r2, [sp, #0x54]
0065aafc  00 30 93 e5  ldr	r3, [r3]
0065ab00  03 00 52 e1  cmp	r2, r3
0065ab04  41 00 00 1a  bne	0x65ac10 <glitch::collada::CResFileManager::get(char const*, bool)+0x268> @ imm = #0x104
0065ab08  5c d0 8d e2  add	sp, sp, #92

; EXCERPT path-based get stores the CResFile in the manager map
; function=CResFileManager::get(char const*, bool); function_sha256=62a918d472da5807ba14390942d578cd99130a7929117f900cb0bbc0b5060854
; VA=0x0065ab78..0x0065ab9c (end-exclusive); file_offset=0x0065ab78; PT_LOAD program header=1
0065ab78  50 30 9d e5  ldr	r3, [sp, #0x50]
0065ab7c  58 10 8d e2  add	r1, sp, #88
0065ab80  08 00 a0 e1  mov	r0, r8
0065ab84  40 30 21 e5  str	r3, [r1, #-0x40]!
0065ab88  8f fe ff eb  bl	0x65a5cc <glitch::collada::CResFile*& std::map<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>, glitch::collada::CResFile*, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>>, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0>>::operator[]<char const*>(char const* const&)> @ imm = #-0x5c4
0065ab8c  00 50 80 e5  str	r5, [r0]
0065ab90  24 30 95 e5  ldr	r3, [r5, #0x24]
0065ab94  14 80 93 e5  ldr	r8, [r3, #0x14]
0065ab98  00 00 58 e3  cmp	r8, #0

; EXCERPT path-based get invokes post-load
; function=CResFileManager::get(char const*, bool); function_sha256=62a918d472da5807ba14390942d578cd99130a7929117f900cb0bbc0b5060854
; VA=0x0065abc4..0x0065ac0c (end-exclusive); file_offset=0x0065abc4; PT_LOAD program header=1
0065abc4  06 00 a0 e1  mov	r0, r6
0065abc8  00 c0 8d e5  str	r12, [sp]
0065abcc  2f f8 ff eb  bl	0x658c90 <glitch::collada::CResFileManager::postLoadProcess(glitch::collada::CResFile*, glitch::io::IReadFile*)> @ imm = #-0x1f44
0065abd0  00 c0 9d e5  ldr	r12, [sp]
0065abd4  00 30 a0 e1  mov	r3, r0
0065abd8  00 30 8d e5  str	r3, [sp]
0065abdc  0c 00 a0 e1  mov	r0, r12
0065abe0  67 0a f3 eb  bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x33d664
0065abe4  00 30 9d e5  ldr	r3, [sp]
0065abe8  00 00 53 e3  cmp	r3, #0
0065abec  eb ff ff 0a  beq	0x65aba0 <glitch::collada::CResFileManager::get(char const*, bool)+0x1f8> @ imm = #-0x54
0065abf0  06 00 a0 e1  mov	r0, r6
0065abf4  50 10 9d e5  ldr	r1, [sp, #0x50]
0065abf8  08 20 a0 e1  mov	r2, r8
0065abfc  d7 fb ff eb  bl	0x659b60 <glitch::collada::CResFileManager::unload(char const*, bool)> @ imm = #-0x10a4
0065ac00  0a 00 a0 e1  mov	r0, r10
0065ac04  08 50 a0 e1  mov	r5, r8
0065ac08  5d 0a f3 eb  bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x33d68c

; EXCERPT load delegates to path-based get
; function=CResFileManager::load(char const*, bool, callback); function_sha256=6999a177b9b37d5f6d411e9c792dc7b5b5ea8e8bd5ce2e8ada7e7e24567b551a
; VA=0x0065ac5c..0x0065ac74 (end-exclusive); file_offset=0x0065ac5c; PT_LOAD program header=1
0065ac5c  00 00 52 e3  cmp	r2, #0
0065ac60  01 00 00 0a  beq	0x65ac6c <glitch::collada::CResFileManager::load(char const*, bool, void (*)(char const*, glitch::collada::SCollada const*))+0x10> @ imm = #0x4
0065ac64  00 00 a0 e3  mov	r0, #0
0065ac68  1e ff 2f e1  bx	lr
0065ac6c  01 20 a0 e3  mov	r2, #1
0065ac70  4c ff ff ea  b	0x65a9a8 <glitch::collada::CResFileManager::get(char const*, bool)> @ imm = #-0x2d0

; EXCERPT name-based unload dispatch
; function=CResFileManager::unload(char const*, bool); function_sha256=0e54c0532f165bf9df45849c0fc14258e513f29616c5773d08fcda44d2ca26e6
; VA=0x00659bc4..0x00659bdc (end-exclusive); file_offset=0x00659bc4; PT_LOAD program header=1
00659bc4  b0 ff ff eb  bl	0x659a8c <std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>>, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0>>::_M_find<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>>(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const&) const> @ imm = #-0x140
00659bc8  40 10 8d e2  add	r1, sp, #64
00659bcc  3c 00 21 e5  str	r0, [r1, #-0x3c]!
00659bd0  0b 20 a0 e1  mov	r2, r11
00659bd4  07 00 a0 e1  mov	r0, r7
00659bd8  47 fa ff eb  bl	0x6584fc <glitch::collada::CResFileManager::unload(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>>, bool)> @ imm = #-0x16e4

; EXCERPT unload erases only when refcount permits
; function=CResFileManager::unload(iterator, bool); function_sha256=c6e00ba7814a823bbbb372a03ceccae912560564fa63d83af0cf9a16b719aaef
; VA=0x0065851c..0x00658560 (end-exclusive); file_offset=0x0065851c; PT_LOAD program header=1
0065851c  28 00 93 e5  ldr	r0, [r3, #0x28]
00658520  04 30 90 e5  ldr	r3, [r0, #0x4]
00658524  01 00 53 e3  cmp	r3, #1
00658528  00 60 a0 93  movls	r6, #0
0065852c  03 00 00 9a  bls	0x658540 <glitch::collada::CResFileManager::unload(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>>, bool)+0x44> @ imm = #0xc
00658530  00 00 52 e3  cmp	r2, #0
00658534  02 60 a0 03  moveq	r6, #2
00658538  06 00 00 0a  beq	0x658558 <glitch::collada::CResFileManager::unload(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>>, bool)+0x5c> @ imm = #0x18
0065853c  01 60 a0 e3  mov	r6, #1
00658540  0f 14 f3 eb  bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x33afc4
00658544  00 30 95 e5  ldr	r3, [r5]
00658548  08 10 8d e2  add	r1, sp, #8
0065854c  04 00 a0 e1  mov	r0, r4
00658550  04 30 21 e5  str	r3, [r1, #-0x4]!
00658554  d3 ff ff eb  bl	0x6584a8 <std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>>, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0>>::erase(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>>)> @ imm = #-0xb4
00658558  06 00 a0 e1  mov	r0, r6
0065855c  08 d0 8d e2  add	sp, sp, #8

; EXCERPT manager destruction drops cached CResFile entries
; function=CResFileManager::~CResFileManager(); function_sha256=47dbdb518f6635318dc1ab62a6e2d17c889246496672439e749222ebe9ac7810
; VA=0x006582ec..0x0065835c (end-exclusive); file_offset=0x006582ec; PT_LOAD program header=1
006582ec  06 00 54 e1  cmp	r4, r6
006582f0  0c 00 00 0a  beq	0x658328 <glitch::collada::CResFileManager::~CResFileManager()+0x64> @ imm = #0x30
006582f4  28 00 96 e5  ldr	r0, [r6, #0x28]
006582f8  a1 14 f3 eb  bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x33ad7c
006582fc  0c 20 96 e5  ldr	r2, [r6, #0xc]
00658300  00 00 52 e3  cmp	r2, #0
00658304  01 00 00 1a  bne	0x658310 <glitch::collada::CResFileManager::~CResFileManager()+0x4c> @ imm = #0x4
00658308  16 00 00 ea  b	0x658368 <glitch::collada::CResFileManager::~CResFileManager()+0xa4> @ imm = #0x58
0065830c  03 20 a0 e1  mov	r2, r3
00658310  08 30 92 e5  ldr	r3, [r2, #0x8]
00658314  00 00 53 e3  cmp	r3, #0
00658318  fb ff ff 1a  bne	0x65830c <glitch::collada::CResFileManager::~CResFileManager()+0x48> @ imm = #-0x14
0065831c  02 60 a0 e1  mov	r6, r2
00658320  06 00 54 e1  cmp	r4, r6
00658324  f2 ff ff 1a  bne	0x6582f4 <glitch::collada::CResFileManager::~CResFileManager()+0x30> @ imm = #-0x38
00658328  74 30 9f e5  ldr	r3, [pc, #0x74]         @ 0x6583a4 <glitch::collada::CResFileManager::~CResFileManager()+0xe0>
0065832c  00 60 a0 e3  mov	r6, #0
00658330  03 30 97 e7  ldr	r3, [r7, r3]
00658334  00 60 83 e5  str	r6, [r3]
00658338  18 30 95 e5  ldr	r3, [r5, #0x18]
0065833c  06 00 53 e1  cmp	r3, r6
00658340  06 00 00 0a  beq	0x658360 <glitch::collada::CResFileManager::~CResFileManager()+0x9c> @ imm = #0x18
00658344  04 00 a0 e1  mov	r0, r4
00658348  0c 10 95 e5  ldr	r1, [r5, #0xc]
0065834c  c7 ff ff eb  bl	0x658270 <std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>>>, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>>, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base*)> @ imm = #-0xe4
00658350  14 40 85 e5  str	r4, [r5, #0x14]
00658354  18 60 85 e5  str	r6, [r5, #0x18]
00658358  10 40 85 e5  str	r4, [r5, #0x10]

; EXCERPT effect-list retains database/factory and stores raw effect
; function=SEffectList::SEffectList(CColladaDatabase const&, SEffect*); function_sha256=8d99a67a34b516ce7d46844975e5b8f69d3b62ecb3a05ee67a5bfb40314a7496
; VA=0x006319e8..0x00631a68 (end-exclusive); file_offset=0x006319e8; PT_LOAD program header=1
006319e8  00 30 91 e5  ldr	r3, [r1]
006319ec  04 10 91 e5  ldr	r1, [r1, #0x4]
006319f0  10 d0 4d e2  sub	sp, sp, #16
006319f4  00 00 53 e3  cmp	r3, #0
006319f8  08 10 8d e5  str	r1, [sp, #0x8]
006319fc  04 30 8d e5  str	r3, [sp, #0x4]
00631a00  03 00 00 0a  beq	0x631a14 <glitch::collada::SEffectList::SEffectList(glitch::collada::CColladaDatabase const&, glitch::collada::SEffect*)+0x3c> @ imm = #0xc
00631a04  04 10 93 e5  ldr	r1, [r3, #0x4]
00631a08  00 00 51 e3  cmp	r1, #0
00631a0c  01 10 81 12  addne	r1, r1, #1
00631a10  04 10 83 15  strne	r1, [r3, #0x4]
00631a14  14 00 a0 e3  mov	r0, #20
00631a18  0c 20 8d e5  str	r2, [sp, #0xc]
00631a1c  f4 0a fc eb  bl	0x5345f4 <glitch::core::allocProcessBuffer(int)> @ imm = #-0xfd430
00631a20  04 20 9d e5  ldr	r2, [sp, #0x4]
00631a24  00 30 a0 e1  mov	r3, r0
00631a28  08 20 80 e5  str	r2, [r0, #0x8]
00631a2c  08 10 9d e5  ldr	r1, [sp, #0x8]
00631a30  00 00 52 e3  cmp	r2, #0
00631a34  0c 10 80 e5  str	r1, [r0, #0xc]
00631a38  03 00 00 0a  beq	0x631a4c <glitch::collada::SEffectList::SEffectList(glitch::collada::CColladaDatabase const&, glitch::collada::SEffect*)+0x74> @ imm = #0xc
00631a3c  04 10 92 e5  ldr	r1, [r2, #0x4]
00631a40  00 00 51 e3  cmp	r1, #0
00631a44  01 10 81 12  addne	r1, r1, #1
00631a48  04 10 82 15  strne	r1, [r2, #0x4]
00631a4c  0c 20 9d e5  ldr	r2, [sp, #0xc]
00631a50  04 00 8d e2  add	r0, sp, #4
00631a54  10 20 83 e5  str	r2, [r3, #0x10]
00631a58  04 20 94 e5  ldr	r2, [r4, #0x4]
00631a5c  00 40 83 e5  str	r4, [r3]
00631a60  04 20 83 e5  str	r2, [r3, #0x4]
00631a64  00 30 82 e5  str	r3, [r2]

; EXCERPT effect-list clear releases entry database references
; function=SEffectList list clear; function_sha256=ce7e2ce857b0f11c585fb0023bab6ed239d9ad0ef70cfa4de9fac95331749717
; VA=0x00631a98..0x00631ab0 (end-exclusive); file_offset=0x00631a98; PT_LOAD program header=1
00631a98  04 00 a0 e1  mov	r0, r4
00631a9c  08 50 90 e4  ldr	r5, [r0], #8
00631aa0  73 9e ff eb  bl	0x619474 <glitch::collada::CColladaDatabase::~CColladaDatabase()> @ imm = #-0x18634
00631aa4  04 00 a0 e1  mov	r0, r4
00631aa8  f6 0a fc eb  bl	0x534688 <glitch::core::releaseProcessBuffer(void*)> @ imm = #-0xfd428
00631aac  06 00 55 e1  cmp	r5, r6

; EXCERPT factory seeds effect list then clears it
; function=CColladaFactory::createMaterialRenderer(effect overload); function_sha256=0fc31372fb7aa16156c948b5f666b3d54bc155f8dba05407c55f6d597fb8a8ee
; VA=0x00636d84..0x00636de4 (end-exclusive); file_offset=0x00636d84; PT_LOAD program header=1
00636d84  14 30 8d e2  add	r3, sp, #20
00636d88  0b 10 a0 e1  mov	r1, r11
00636d8c  09 20 a0 e1  mov	r2, r9
00636d90  03 00 a0 e1  mov	r0, r3
00636d94  0c 30 8d e5  str	r3, [sp, #0xc]
00636d98  0e eb ff eb  bl	0x6319d8 <glitch::collada::SEffectList::SEffectList(glitch::collada::CColladaDatabase const&, glitch::collada::SEffect*)> @ imm = #-0x53c8
00636d9c  06 00 a0 e1  mov	r0, r6
00636da0  09 20 a0 e1  mov	r2, r9
00636da4  0b 10 a0 e1  mov	r1, r11
00636da8  0c 30 9d e5  ldr	r3, [sp, #0xc]
00636dac  00 c0 96 e5  ldr	r12, [r6]
00636db0  0f e0 a0 e1  mov	lr, pc
00636db4  10 f0 9c e5  ldr	pc, [r12, #0x10]
00636db8  08 c0 9d e5  ldr	r12, [sp, #0x8]
00636dbc  07 00 a0 e1  mov	r0, r7
00636dc0  0b 10 a0 e1  mov	r1, r11
00636dc4  04 c0 8d e5  str	r12, [sp, #0x4]
00636dc8  0c c0 9d e5  ldr	r12, [sp, #0xc]
00636dcc  08 20 a0 e1  mov	r2, r8
00636dd0  30 30 9d e5  ldr	r3, [sp, #0x30]
00636dd4  00 c0 8d e5  str	r12, [sp]
00636dd8  63 ff ff eb  bl	0x636b6c <glitch::collada::createMaterialRenderer(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)> @ imm = #-0x274
00636ddc  0c 00 9d e5  ldr	r0, [sp, #0xc]
00636de0  25 eb ff eb  bl	0x631a7c <std::priv::_List_base<glitch::collada::SEffectList::SEntry, glitch::core::SProcessBufferAllocator<glitch::collada::SEffectList::SEntry>>::clear()> @ imm = #-0x536c

