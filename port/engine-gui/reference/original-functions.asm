; Exact disassembly excerpts copied from lib/armeabi-v7a/libDungeonHunter2.so in the supplied APK.
; Each range is mapped through the stated PT_LOAD segment and byte-hash indexed in ../original-functions.json.

; range: 0x00533f28 .. 0x00533f60 (56 bytes)
; sha256: a99224548575a6d45b867ebc8f0f32194eeaf0ab281bd797a7203dbe7382d79f
port\engine-gui\.work-libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00533f28 <glitch::CIrrFactory::createGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::video::IVideoDriver*, glitch::IOSOperator*)>:
  533f28: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  533f2c: e3a00f76     	mov	r0, #472
  533f30: e1a05001     	mov	r5, r1
  533f34: e3a01000     	mov	r1, #0
  533f38: e1a07002     	mov	r7, r2
  533f3c: e1a06003     	mov	r6, r3
  533f40: eb000099     	bl	0x5341ac <operator new(unsigned int, glitch::memory::E_MEMORY_HINT)> @ imm = #0x264
  533f44: e1a01005     	mov	r1, r5
  533f48: e1a04000     	mov	r4, r0
  533f4c: e1a02007     	mov	r2, r7
  533f50: e1a03006     	mov	r3, r6
  533f54: eb001859     	bl	0x53a0c0 <glitch::gui::CGUIEnvironment::CGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::video::IVideoDriver*, glitch::IOSOperator*)> @ imm = #0x6164
  533f58: e1a00004     	mov	r0, r4
  533f5c: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}

; range: 0x0053a0c0 .. 0x0053a2d0 (528 bytes)
; sha256: d10e52599a79b5d22511bc20ba9c44805db9c6096d2d0bb7f5693fbf036ec0de
port\engine-gui\.work-libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0053a0c0 <glitch::gui::CGUIEnvironment::CGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::video::IVideoDriver*, glitch::IOSOperator*)>:
  53a0c0: e92d45f0     	push	{r4, r5, r6, r7, r8, r10, lr}
  53a0c4: e59f51f0     	ldr	r5, [pc, #0x1f0]        @ 0x53a2bc <glitch::gui::CGUIEnvironment::CGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::video::IVideoDriver*, glitch::IOSOperator*)+0x1fc>
  53a0c8: e59f61f0     	ldr	r6, [pc, #0x1f0]        @ 0x53a2c0 <glitch::gui::CGUIEnvironment::CGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::video::IVideoDriver*, glitch::IOSOperator*)+0x200>
  53a0cc: e59fe1f0     	ldr	lr, [pc, #0x1f0]        @ 0x53a2c4 <glitch::gui::CGUIEnvironment::CGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::video::IVideoDriver*, glitch::IOSOperator*)+0x204>
  53a0d0: e08f5005     	add	r5, pc, r5
  53a0d4: e7957006     	ldr	r7, [r5, r6]
  53a0d8: e795e00e     	ldr	lr, [r5, lr]
  53a0dc: e59fc1e4     	ldr	r12, [pc, #0x1e4]       @ 0x53a2c8 <glitch::gui::CGUIEnvironment::CGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::video::IVideoDriver*, glitch::IOSOperator*)+0x208>
  53a0e0: e597801c     	ldr	r8, [r7, #0x1c]
  53a0e4: e3a0a001     	mov	r10, #1
  53a0e8: e28ee008     	add	lr, lr, #8
  53a0ec: e580a1d4     	str	r10, [r0, #0x1d4]
  53a0f0: e58081cc     	str	r8, [r0, #0x1cc]
  53a0f4: e580e1d0     	str	lr, [r0, #0x1d0]
  53a0f8: e795c00c     	ldr	r12, [r5, r12]
  53a0fc: e518e00c     	ldr	lr, [r8, #-0xc]
  53a100: e5978020     	ldr	r8, [r7, #0x20]
  53a104: e1a04000     	mov	r4, r0
  53a108: e28cc008     	add	r12, r12, #8
  53a10c: e2527000     	subs	r7, r2, #0
  53a110: e2802f73     	add	r2, r0, #460
  53a114: e782800e     	str	r8, [r2, lr]
  53a118: e584a004     	str	r10, [r4, #0x4]
  53a11c: e480c008     	str	r12, [r0], #8
  53a120: e1a08003     	mov	r8, r3
  53a124: 159730cc     	ldrne	r3, [r7, #0xcc]
  53a128: e1a0a001     	mov	r10, r1
  53a12c: e7951006     	ldr	r1, [r5, r6]
  53a130: 15133004     	ldrne	r3, [r3, #-0x4]
  53a134: e24dd014     	sub	sp, sp, #20
  53a138: e3a06000     	mov	r6, #0
  53a13c: 1593c00c     	ldrne	r12, [r3, #0xc]
  53a140: 15933010     	ldrne	r3, [r3, #0x10]
  53a144: 01a0c007     	moveq	r12, r7
  53a148: 01a03007     	moveq	r3, r7
  53a14c: e1a0200d     	mov	r2, sp
  53a150: e2811004     	add	r1, r1, #4
  53a154: e58dc008     	str	r12, [sp, #0x8]
  53a158: e58d300c     	str	r3, [sp, #0xc]
  53a15c: e58d6000     	str	r6, [sp]
  53a160: e58d6004     	str	r6, [sp, #0x4]
  53a164: ebfff56e     	bl	0x537724 <glitch::gui::IGUIElement::IGUIElement(glitch::gui::EGUI_ELEMENT_TYPE, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>) (.clone.1)> @ imm = #-0x2a48
  53a168: e59f315c     	ldr	r3, [pc, #0x15c]        @ 0x53a2cc <glitch::gui::CGUIEnvironment::CGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::video::IVideoDriver*, glitch::IOSOperator*)+0x20c>
  53a16c: e58471a8     	str	r7, [r4, #0x1a8]
  53a170: e58461bc     	str	r6, [r4, #0x1bc]
  53a174: e7953003     	ldr	r3, [r5, r3]
  53a178: e584616c     	str	r6, [r4, #0x16c]
  53a17c: e5846170     	str	r6, [r4, #0x170]
  53a180: e2832f79     	add	r2, r3, #484
  53a184: e2830010     	add	r0, r3, #16
  53a188: e2831e13     	add	r1, r3, #304
  53a18c: e2833f71     	add	r3, r3, #452
  53a190: e58421d0     	str	r2, [r4, #0x1d0]
  53a194: e5840000     	str	r0, [r4]
  53a198: e5841008     	str	r1, [r4, #0x8]
  53a19c: e58431cc     	str	r3, [r4, #0x1cc]
  53a1a0: e5846174     	str	r6, [r4, #0x174]
  53a1a4: e5846178     	str	r6, [r4, #0x178]
  53a1a8: e584617c     	str	r6, [r4, #0x17c]
  53a1ac: e5846180     	str	r6, [r4, #0x180]
  53a1b0: e5846184     	str	r6, [r4, #0x184]
  53a1b4: e5846188     	str	r6, [r4, #0x188]
  53a1b8: e584618c     	str	r6, [r4, #0x18c]
  53a1bc: e5846190     	str	r6, [r4, #0x190]
  53a1c0: e5846194     	str	r6, [r4, #0x194]
  53a1c4: e5846198     	str	r6, [r4, #0x198]
  53a1c8: e584619c     	str	r6, [r4, #0x19c]
  53a1cc: e58461a0     	str	r6, [r4, #0x1a0]
  53a1d0: e58461a4     	str	r6, [r4, #0x1a4]
  53a1d4: e58461ac     	str	r6, [r4, #0x1ac]
  53a1d8: e58461b0     	str	r6, [r4, #0x1b0]
  53a1dc: e58461b4     	str	r6, [r4, #0x1b4]
  53a1e0: e58461b8     	str	r6, [r4, #0x1b8]
  53a1e4: e59a3000     	ldr	r3, [r10]
  53a1e8: e3a01000     	mov	r1, #0
  53a1ec: e3a0000c     	mov	r0, #12
  53a1f0: e1530006     	cmp	r3, r6
  53a1f4: e58431c0     	str	r3, [r4, #0x1c0]
  53a1f8: 15932004     	ldrne	r2, [r3, #0x4]
  53a1fc: 12822001     	addne	r2, r2, #1
  53a200: 15832004     	strne	r2, [r3, #0x4]
  53a204: e59431a8     	ldr	r3, [r4, #0x1a8]
  53a208: e3a02000     	mov	r2, #0
  53a20c: e58421c4     	str	r2, [r4, #0x1c4]
  53a210: e1530002     	cmp	r3, r2
  53a214: e58481c8     	str	r8, [r4, #0x1c8]
  53a218: 15932004     	ldrne	r2, [r3, #0x4]
  53a21c: 12822001     	addne	r2, r2, #1
  53a220: 15832004     	strne	r2, [r3, #0x4]
  53a224: 159481c8     	ldrne	r8, [r4, #0x1c8]
  53a228: e3580000     	cmp	r8, #0
  53a22c: 15983004     	ldrne	r3, [r8, #0x4]
  53a230: 12833001     	addne	r3, r3, #1
  53a234: 15883004     	strne	r3, [r8, #0x4]
  53a238: ebffe7db     	bl	0x5341ac <operator new(unsigned int, glitch::memory::E_MEMORY_HINT)> @ imm = #-0x6094
  53a23c: e1a01004     	mov	r1, r4
  53a240: e1a05000     	mov	r5, r0
  53a244: eb05ad34     	bl	0x6a571c <glitch::gui::CDefaultGUIElementFactory::CDefaultGUIElementFactory(glitch::gui::IGUIEnvironment*)> @ imm = #0x16b4d0
  53a248: e1a01005     	mov	r1, r5
  53a24c: e1a00004     	mov	r0, r4
  53a250: ebfff6d5     	bl	0x537dac <glitch::gui::CGUIEnvironment::registerGUIElementFactory(glitch::gui::IGUIElementFactory*)> @ imm = #-0x24ac
  53a254: e1a00005     	mov	r0, r5
  53a258: ebf78cc9     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21ccdc
  53a25c: e1a00004     	mov	r0, r4
  53a260: ebffff22     	bl	0x539ef0 <glitch::gui::CGUIEnvironment::loadBuiltInFont()> @ imm = #-0x378
  53a264: e1a00004     	mov	r0, r4
  53a268: e3a01001     	mov	r1, #1
  53a26c: ebfff473     	bl	0x537440 <glitch::gui::CGUIEnvironment::createSkin(glitch::gui::EGUI_SKIN_TYPE)> @ imm = #-0x2e34
  53a270: e1a05000     	mov	r5, r0
  53a274: e1a01005     	mov	r1, r5
  53a278: e1a00004     	mov	r0, r4
  53a27c: ebffed3d     	bl	0x535778 <glitch::gui::CGUIEnvironment::setSkin(glitch::gui::IGUISkin*)> @ imm = #-0x4b0c
  53a280: e5953000     	ldr	r3, [r5]
  53a284: e513000c     	ldr	r0, [r3, #-0xc]
  53a288: e0850000     	add	r0, r5, r0
  53a28c: ebf78cbc     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21cd10
  53a290: e3a02ffa     	mov	r2, #1000
  53a294: e3a03000     	mov	r3, #0
  53a298: e5842164     	str	r2, [r4, #0x164]
  53a29c: e3a02001     	mov	r2, #1
  53a2a0: e5843168     	str	r3, [r4, #0x168]
  53a2a4: e5c42144     	strb	r2, [r4, #0x144]
  53a2a8: e5843160     	str	r3, [r4, #0x160]
  53a2ac: e5844158     	str	r4, [r4, #0x158]
  53a2b0: e1a00004     	mov	r0, r4
  53a2b4: e28dd014     	add	sp, sp, #20
  53a2b8: e8bd85f0     	pop	{r4, r5, r6, r7, r8, r10, pc}
  53a2bc: c0 a9 45 00  	.word	0x0045a9c0
  53a2c0: e4 1f 00 00  	.word	0x00001fe4
  53a2c4: 44 2b 00 00  	.word	0x00002b44
  53a2c8: e0 26 00 00  	.word	0x000026e0
  53a2cc: ec 33 00 00  	.word	0x000033ec

; range: 0x00539118 .. 0x0053946c (852 bytes)
; sha256: b0cfd71762771c67a094c7b3b083e617a161736f9514f2f797f83a29f8e72729
port\engine-gui\.work-libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00539118 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()>:
  539118: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  53911c: e59f733c     	ldr	r7, [pc, #0x33c]        @ 0x539460 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x348>
  539120: e59f333c     	ldr	r3, [pc, #0x33c]        @ 0x539464 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x34c>
  539124: e59021ac     	ldr	r2, [r0, #0x1ac]
  539128: e08f7007     	add	r7, pc, r7
  53912c: e7973003     	ldr	r3, [r7, r3]
  539130: e1a04000     	mov	r4, r0
  539134: e3520000     	cmp	r2, #0
  539138: e2831f79     	add	r1, r3, #484
  53913c: e283c010     	add	r12, r3, #16
  539140: e2830e13     	add	r0, r3, #304
  539144: e2833f71     	add	r3, r3, #452
  539148: e584c000     	str	r12, [r4]
  53914c: e5840008     	str	r0, [r4, #0x8]
  539150: e58431cc     	str	r3, [r4, #0x1cc]
  539154: e58411d0     	str	r1, [r4, #0x1d0]
  539158: 02848008     	addeq	r8, r4, #8
  53915c: 0a000008     	beq	0x539184 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x6c> @ imm = #0x20
  539160: e2848008     	add	r8, r4, #8
  539164: e1520008     	cmp	r2, r8
  539168: 0a000005     	beq	0x539184 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x6c> @ imm = #0x14
  53916c: e5923000     	ldr	r3, [r2]
  539170: e5130010     	ldr	r0, [r3, #-0x10]
  539174: e0820000     	add	r0, r2, r0
  539178: ebf79101     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21bbfc
  53917c: e3a03000     	mov	r3, #0
  539180: e58431ac     	str	r3, [r4, #0x1ac]
  539184: e59401a8     	ldr	r0, [r4, #0x1a8]
  539188: e3500000     	cmp	r0, #0
  53918c: 0a000002     	beq	0x53919c <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x84> @ imm = #0x8
  539190: ebf790fb     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21bc14
  539194: e3a03000     	mov	r3, #0
  539198: e58431a8     	str	r3, [r4, #0x1a8]
  53919c: e59431b0     	ldr	r3, [r4, #0x1b0]
  5391a0: e3530000     	cmp	r3, #0
  5391a4: 0a000005     	beq	0x5391c0 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0xa8> @ imm = #0x14
  5391a8: e5932000     	ldr	r2, [r3]
  5391ac: e5120010     	ldr	r0, [r2, #-0x10]
  5391b0: e0830000     	add	r0, r3, r0
  5391b4: ebf790f2     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21bc38
  5391b8: e3a03000     	mov	r3, #0
  5391bc: e58431b0     	str	r3, [r4, #0x1b0]
  5391c0: e5943168     	ldr	r3, [r4, #0x168]
  5391c4: e3530000     	cmp	r3, #0
  5391c8: 0a000005     	beq	0x5391e4 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0xcc> @ imm = #0x14
  5391cc: e5932000     	ldr	r2, [r3]
  5391d0: e5120010     	ldr	r0, [r2, #-0x10]
  5391d4: e0830000     	add	r0, r3, r0
  5391d8: ebf790e9     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21bc5c
  5391dc: e3a03000     	mov	r3, #0
  5391e0: e5843168     	str	r3, [r4, #0x168]
  5391e4: e59401c8     	ldr	r0, [r4, #0x1c8]
  5391e8: e3500000     	cmp	r0, #0
  5391ec: 0a000002     	beq	0x5391fc <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0xe4> @ imm = #0x8
  5391f0: ebf790e3     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21bc74
  5391f4: e3a03000     	mov	r3, #0
  5391f8: e58431c8     	str	r3, [r4, #0x1c8]
  5391fc: e59431bc     	ldr	r3, [r4, #0x1bc]
  539200: e3530000     	cmp	r3, #0
  539204: 0a000005     	beq	0x539220 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x108> @ imm = #0x14
  539208: e5932000     	ldr	r2, [r3]
  53920c: e512000c     	ldr	r0, [r2, #-0xc]
  539210: e0830000     	add	r0, r3, r0
  539214: ebf790da     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21bc98
  539218: e3a03000     	mov	r3, #0
  53921c: e58431bc     	str	r3, [r4, #0x1bc]
  539220: e594119c     	ldr	r1, [r4, #0x19c]
  539224: e594c1a0     	ldr	r12, [r4, #0x1a0]
  539228: e061300c     	rsb	r3, r1, r12
  53922c: e1a03143     	asr	r3, r3, #2
  539230: e0832183     	add	r2, r3, r3, lsl #3
  539234: e0822302     	add	r2, r2, r2, lsl #6
  539238: e0832182     	add	r2, r3, r2, lsl #3
  53923c: e0822782     	add	r2, r2, r2, lsl #15
  539240: e0833182     	add	r3, r3, r2, lsl #3
  539244: e3530000     	cmp	r3, #0
  539248: 0a000014     	beq	0x5392a0 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x188> @ imm = #0x50
  53924c: e3a05000     	mov	r5, #0
  539250: e1a06005     	mov	r6, r5
  539254: e0813005     	add	r3, r1, r5
  539258: e5930018     	ldr	r0, [r3, #0x18]
  53925c: e2866001     	add	r6, r6, #1
  539260: e285501c     	add	r5, r5, #28
  539264: e3500000     	cmp	r0, #0
  539268: 0a000002     	beq	0x539278 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x160> @ imm = #0x8
  53926c: ebf790c4     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21bcf0
  539270: e594119c     	ldr	r1, [r4, #0x19c]
  539274: e594c1a0     	ldr	r12, [r4, #0x1a0]
  539278: e061300c     	rsb	r3, r1, r12
  53927c: e1a03143     	asr	r3, r3, #2
  539280: e0832183     	add	r2, r3, r3, lsl #3
  539284: e0822302     	add	r2, r2, r2, lsl #6
  539288: e0832182     	add	r2, r3, r2, lsl #3
  53928c: e0822782     	add	r2, r2, r2, lsl #15
  539290: e0833182     	add	r3, r3, r2, lsl #3
  539294: e2633000     	rsb	r3, r3, #0
  539298: e1560003     	cmp	r6, r3
  53929c: 3affffec     	blo	0x539254 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x13c> @ imm = #-0x50
  5392a0: e5942178     	ldr	r2, [r4, #0x178]
  5392a4: e594317c     	ldr	r3, [r4, #0x17c]
  5392a8: e0623003     	rsb	r3, r2, r3
  5392ac: e1a03143     	asr	r3, r3, #2
  5392b0: e0831183     	add	r1, r3, r3, lsl #3
  5392b4: e0811301     	add	r1, r1, r1, lsl #6
  5392b8: e0831181     	add	r1, r3, r1, lsl #3
  5392bc: e0811781     	add	r1, r1, r1, lsl #15
  5392c0: e0833181     	add	r3, r3, r1, lsl #3
  5392c4: e3530000     	cmp	r3, #0
  5392c8: 0a000012     	beq	0x539318 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x200> @ imm = #0x48
  5392cc: e3a05000     	mov	r5, #0
  5392d0: e1a06005     	mov	r6, r5
  5392d4: e0822005     	add	r2, r2, r5
  5392d8: e5920018     	ldr	r0, [r2, #0x18]
  5392dc: ebf790a8     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21bd60
  5392e0: e5942178     	ldr	r2, [r4, #0x178]
  5392e4: e594317c     	ldr	r3, [r4, #0x17c]
  5392e8: e2866001     	add	r6, r6, #1
  5392ec: e285501c     	add	r5, r5, #28
  5392f0: e0623003     	rsb	r3, r2, r3
  5392f4: e1a03143     	asr	r3, r3, #2
  5392f8: e0831183     	add	r1, r3, r3, lsl #3
  5392fc: e0811301     	add	r1, r1, r1, lsl #6
  539300: e0831181     	add	r1, r3, r1, lsl #3
  539304: e0811781     	add	r1, r1, r1, lsl #15
  539308: e0833181     	add	r3, r3, r1, lsl #3
  53930c: e2633000     	rsb	r3, r3, #0
  539310: e1560003     	cmp	r6, r3
  539314: 3affffee     	blo	0x5392d4 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x1bc> @ imm = #-0x48
  539318: e5942190     	ldr	r2, [r4, #0x190]
  53931c: e5943194     	ldr	r3, [r4, #0x194]
  539320: e0623003     	rsb	r3, r2, r3
  539324: e1a03143     	asr	r3, r3, #2
  539328: e0831183     	add	r1, r3, r3, lsl #3
  53932c: e0811301     	add	r1, r1, r1, lsl #6
  539330: e0831181     	add	r1, r3, r1, lsl #3
  539334: e0811781     	add	r1, r1, r1, lsl #15
  539338: e0833181     	add	r3, r3, r1, lsl #3
  53933c: e3530000     	cmp	r3, #0
  539340: 0a000012     	beq	0x539390 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x278> @ imm = #0x48
  539344: e3a05000     	mov	r5, #0
  539348: e1a06005     	mov	r6, r5
  53934c: e0822005     	add	r2, r2, r5
  539350: e5920018     	ldr	r0, [r2, #0x18]
  539354: ebf7908a     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21bdd8
  539358: e5942190     	ldr	r2, [r4, #0x190]
  53935c: e5943194     	ldr	r3, [r4, #0x194]
  539360: e2866001     	add	r6, r6, #1
  539364: e285501c     	add	r5, r5, #28
  539368: e0623003     	rsb	r3, r2, r3
  53936c: e1a03143     	asr	r3, r3, #2
  539370: e0831183     	add	r1, r3, r3, lsl #3
  539374: e0811301     	add	r1, r1, r1, lsl #6
  539378: e0831181     	add	r1, r3, r1, lsl #3
  53937c: e0811781     	add	r1, r1, r1, lsl #15
  539380: e0833181     	add	r3, r3, r1, lsl #3
  539384: e2633000     	rsb	r3, r3, #0
  539388: e1560003     	cmp	r6, r3
  53938c: 3affffee     	blo	0x53934c <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x234> @ imm = #-0x48
  539390: e5943184     	ldr	r3, [r4, #0x184]
  539394: e5942188     	ldr	r2, [r4, #0x188]
  539398: e0632002     	rsb	r2, r3, r2
  53939c: e1b022a2     	lsrs	r2, r2, #5
  5393a0: 0a000009     	beq	0x5393cc <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x2b4> @ imm = #0x24
  5393a4: e3a05000     	mov	r5, #0
  5393a8: e0833285     	add	r3, r3, r5, lsl #5
  5393ac: e593001c     	ldr	r0, [r3, #0x1c]
  5393b0: ebf79073     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21be34
  5393b4: e5943184     	ldr	r3, [r4, #0x184]
  5393b8: e5942188     	ldr	r2, [r4, #0x188]
  5393bc: e2855001     	add	r5, r5, #1
  5393c0: e0632002     	rsb	r2, r3, r2
  5393c4: e15502c2     	cmp	r5, r2, asr #5
  5393c8: 3afffff6     	blo	0x5393a8 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x290> @ imm = #-0x28
  5393cc: e594316c     	ldr	r3, [r4, #0x16c]
  5393d0: e5942170     	ldr	r2, [r4, #0x170]
  5393d4: e0632002     	rsb	r2, r3, r2
  5393d8: e1b02122     	lsrs	r2, r2, #2
  5393dc: 0a000008     	beq	0x539404 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x2ec> @ imm = #0x20
  5393e0: e3a05000     	mov	r5, #0
  5393e4: e7930105     	ldr	r0, [r3, r5, lsl #2]
  5393e8: ebf79065     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21be6c
  5393ec: e594316c     	ldr	r3, [r4, #0x16c]
  5393f0: e5942170     	ldr	r2, [r4, #0x170]
  5393f4: e2855001     	add	r5, r5, #1
  5393f8: e0632002     	rsb	r2, r3, r2
  5393fc: e1550142     	cmp	r5, r2, asr #2
  539400: 3afffff7     	blo	0x5393e4 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x2cc> @ imm = #-0x24
  539404: e59401c0     	ldr	r0, [r4, #0x1c0]
  539408: e3500000     	cmp	r0, #0
  53940c: 0a000000     	beq	0x539414 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x2fc> @ imm = #0x0
  539410: ebf7905b     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21be94
  539414: e2840f67     	add	r0, r4, #412
  539418: ebfffd43     	bl	0x53892c <std::vector<glitch::gui::CGUIEnvironment::SSpriteBank, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank, (glitch::memory::E_MEMORY_HINT)0>>::~vector()> @ imm = #-0xaf4
  53941c: e2840e19     	add	r0, r4, #400
  539420: ebfffd57     	bl	0x538984 <std::vector<glitch::gui::CGUIEnvironment::SFace, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace, (glitch::memory::E_MEMORY_HINT)0>>::~vector()> @ imm = #-0xaa4
  539424: e2840f61     	add	r0, r4, #388
  539428: ebfffd6b     	bl	0x5389dc <std::vector<glitch::gui::CGUIEnvironment::STTFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont, (glitch::memory::E_MEMORY_HINT)0>>::~vector()> @ imm = #-0xa54
  53942c: e2840f5e     	add	r0, r4, #376
  539430: ebfffd7f     	bl	0x538a34 <std::vector<glitch::gui::CGUIEnvironment::SFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont, (glitch::memory::E_MEMORY_HINT)0>>::~vector()> @ imm = #-0xa04
  539434: e594016c     	ldr	r0, [r4, #0x16c]
  539438: e3500000     	cmp	r0, #0
  53943c: 0a000000     	beq	0x539444 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x32c> @ imm = #0x0
  539440: ebf75c02     	bl	0x310450 <GlitchFree(void*)> @ imm = #-0x228ff8
  539444: e59f101c     	ldr	r1, [pc, #0x1c]         @ 0x539468 <glitch::gui::CGUIEnvironment::~CGUIEnvironment()+0x350>
  539448: e1a00008     	mov	r0, r8
  53944c: e7971001     	ldr	r1, [r7, r1]
  539450: e2811004     	add	r1, r1, #4
  539454: ebfffef1     	bl	0x539020 <glitch::gui::IGUIElement::~IGUIElement()> @ imm = #-0x43c
  539458: e1a00004     	mov	r0, r4
  53945c: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  539460: 68 b9 45 00  	.word	0x0045b968
  539464: ec 33 00 00  	.word	0x000033ec
  539468: e4 1f 00 00  	.word	0x00001fe4

; range: 0x00535658 .. 0x00535708 (176 bytes)
; sha256: 55fa327247ef74c071033f2bfefe3ac6ccff052b0f5b0c2455aa9e7a5ad321c2
port\engine-gui\.work-libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00535658 <glitch::gui::CGUIEnvironment::clear()>:
  535658: e92d4010     	push	{r4, lr}
  53565c: e59031b0     	ldr	r3, [r0, #0x1b0]
  535660: e1a04000     	mov	r4, r0
  535664: e3530000     	cmp	r3, #0
  535668: 0a000005     	beq	0x535684 <glitch::gui::CGUIEnvironment::clear()+0x2c> @ imm = #0x14
  53566c: e5932000     	ldr	r2, [r3]
  535670: e5120010     	ldr	r0, [r2, #-0x10]
  535674: e0830000     	add	r0, r3, r0
  535678: ebf79fc1     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2180fc
  53567c: e3a03000     	mov	r3, #0
  535680: e58431b0     	str	r3, [r4, #0x1b0]
  535684: e59431ac     	ldr	r3, [r4, #0x1ac]
  535688: e3530000     	cmp	r3, #0
  53568c: 0a000008     	beq	0x5356b4 <glitch::gui::CGUIEnvironment::clear()+0x5c> @ imm = #0x20
  535690: e2842008     	add	r2, r4, #8
  535694: e1530002     	cmp	r3, r2
  535698: 0a000005     	beq	0x5356b4 <glitch::gui::CGUIEnvironment::clear()+0x5c> @ imm = #0x14
  53569c: e5932000     	ldr	r2, [r3]
  5356a0: e5120010     	ldr	r0, [r2, #-0x10]
  5356a4: e0830000     	add	r0, r3, r0
  5356a8: ebf79fb5     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21812c
  5356ac: e3a03000     	mov	r3, #0
  5356b0: e58431ac     	str	r3, [r4, #0x1ac]
  5356b4: e5943000     	ldr	r3, [r4]
  5356b8: e1a00004     	mov	r0, r4
  5356bc: e1a0e00f     	mov	lr, pc
  5356c0: e593f074     	ldr	pc, [r3, #0x74]
  5356c4: e5903000     	ldr	r3, [r0]
  5356c8: e1a0e00f     	mov	lr, pc
  5356cc: e593f068     	ldr	pc, [r3, #0x68]
  5356d0: e5903000     	ldr	r3, [r0]
  5356d4: e1a04000     	mov	r4, r0
  5356d8: e1530000     	cmp	r3, r0
  5356dc: 0a000008     	beq	0x535704 <glitch::gui::CGUIEnvironment::clear()+0xac> @ imm = #0x20
  5356e0: e5943004     	ldr	r3, [r4, #0x4]
  5356e4: e5933008     	ldr	r3, [r3, #0x8]
  5356e8: e1a00003     	mov	r0, r3
  5356ec: e5933000     	ldr	r3, [r3]
  5356f0: e1a0e00f     	mov	lr, pc
  5356f4: e593f01c     	ldr	pc, [r3, #0x1c]
  5356f8: e5943000     	ldr	r3, [r4]
  5356fc: e1530004     	cmp	r3, r4
  535700: 1afffff6     	bne	0x5356e0 <glitch::gui::CGUIEnvironment::clear()+0x88> @ imm = #-0x28
  535704: e8bd8010     	pop	{r4, pc}

; range: 0x00535c10 .. 0x00535c18 (8 bytes)
; sha256: 730161b65050ad4134b938e30095e89ed181a5df29da40c544b8b17d1b656ba1
port\engine-gui\.work-libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00535c10 <glitch::gui::CGUIEnvironment::getRootGUIElement()>:
  535c10: e2800008     	add	r0, r0, #8
  535c14: e12fff1e     	bx	lr

; range: 0x00535598 .. 0x005355a0 (8 bytes)
; sha256: 569523262c267bad0c57adba763e5f68550d0fd8176dade9f3b8f3abb29f3570
port\engine-gui\.work-libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00535598 <glitch::gui::CGUIEnvironment::getFocus() const>:
  535598: e59001b0     	ldr	r0, [r0, #0x1b0]
  53559c: e12fff1e     	bx	lr

; range: 0x005374f4 .. 0x00537648 (340 bytes)
; sha256: df1279522c86a4e3a3dcbb545284315fbe25b2b8c7ab0c400a2cd363fac2c6f3
port\engine-gui\.work-libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

005374f4 <glitch::gui::CGUIEnvironment::updateHoveredElement(glitch::core::position2d<int>)>:
  5374f4: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5374f8: e5912000     	ldr	r2, [r1]
  5374fc: e1a04000     	mov	r4, r0
  537500: e2806008     	add	r6, r0, #8
  537504: e58021b4     	str	r2, [r0, #0x1b4]
  537508: e5913004     	ldr	r3, [r1, #0x4]
  53750c: e24dd018     	sub	sp, sp, #24
  537510: e1a00006     	mov	r0, r6
  537514: e58431b8     	str	r3, [r4, #0x1b8]
  537518: e59451ac     	ldr	r5, [r4, #0x1ac]
  53751c: ebfff62b     	bl	0x534dd0 <glitch::gui::IGUIElement::getElementFromPoint(glitch::core::position2d<int> const&)> @ imm = #-0x2754
  537520: e3500000     	cmp	r0, #0
  537524: e58401ac     	str	r0, [r4, #0x1ac]
  537528: 0a000035     	beq	0x537604 <glitch::gui::CGUIEnvironment::updateHoveredElement(glitch::core::position2d<int>)+0x110> @ imm = #0xd4
  53752c: eb034e6c     	bl	0x60aee4 <glitch::os::Timer::getTime()> @ imm = #0xd39b0
  537530: e59431ac     	ldr	r3, [r4, #0x1ac]
  537534: e1a08000     	mov	r8, r0
  537538: e1560003     	cmp	r6, r3
  53753c: 15932000     	ldrne	r2, [r3]
  537540: 01a03006     	moveq	r3, r6
  537544: 15122010     	ldrne	r2, [r2, #-0x10]
  537548: 10833002     	addne	r3, r3, r2
  53754c: 15932004     	ldrne	r2, [r3, #0x4]
  537550: 12822001     	addne	r2, r2, #1
  537554: 15832004     	strne	r2, [r3, #0x4]
  537558: 159431ac     	ldrne	r3, [r4, #0x1ac]
  53755c: e1550003     	cmp	r5, r3
  537560: 0a000027     	beq	0x537604 <glitch::gui::CGUIEnvironment::updateHoveredElement(glitch::core::position2d<int>)+0x110> @ imm = #0x9c
  537564: e3550000     	cmp	r5, #0
  537568: e3a03000     	mov	r3, #0
  53756c: e58d3000     	str	r3, [sp]
  537570: 01a0700d     	moveq	r7, sp
  537574: 0a000008     	beq	0x53759c <glitch::gui::CGUIEnvironment::updateHoveredElement(glitch::core::position2d<int>)+0xa8> @ imm = #0x20
  537578: e3a03003     	mov	r3, #3
  53757c: e58d3010     	str	r3, [sp, #0x10]
  537580: e58d5008     	str	r5, [sp, #0x8]
  537584: e5953000     	ldr	r3, [r5]
  537588: e1a00005     	mov	r0, r5
  53758c: e1a0100d     	mov	r1, sp
  537590: e1a0700d     	mov	r7, sp
  537594: e1a0e00f     	mov	lr, pc
  537598: e593f008     	ldr	pc, [r3, #0x8]
  53759c: e5943168     	ldr	r3, [r4, #0x168]
  5375a0: e3530000     	cmp	r3, #0
  5375a4: 0a000020     	beq	0x53762c <glitch::gui::CGUIEnvironment::updateHoveredElement(glitch::core::position2d<int>)+0x138> @ imm = #0x80
  5375a8: e1a00003     	mov	r0, r3
  5375ac: e5933000     	ldr	r3, [r3]
  5375b0: e1a0e00f     	mov	lr, pc
  5375b4: e593f01c     	ldr	pc, [r3, #0x1c]
  5375b8: e5943168     	ldr	r3, [r4, #0x168]
  5375bc: e5932000     	ldr	r2, [r3]
  5375c0: e5120010     	ldr	r0, [r2, #-0x10]
  5375c4: e0830000     	add	r0, r3, r0
  5375c8: ebf797ed     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21a04c
  5375cc: e5943160     	ldr	r3, [r4, #0x160]
  5375d0: e3a02000     	mov	r2, #0
  5375d4: e5842168     	str	r2, [r4, #0x168]
  5375d8: e2833f7d     	add	r3, r3, #500
  5375dc: e5843160     	str	r3, [r4, #0x160]
  5375e0: e59431ac     	ldr	r3, [r4, #0x1ac]
  5375e4: e3a02002     	mov	r2, #2
  5375e8: e58d2010     	str	r2, [sp, #0x10]
  5375ec: e58d3008     	str	r3, [sp, #0x8]
  5375f0: e1a00003     	mov	r0, r3
  5375f4: e1a0100d     	mov	r1, sp
  5375f8: e5933000     	ldr	r3, [r3]
  5375fc: e1a0e00f     	mov	lr, pc
  537600: e593f008     	ldr	pc, [r3, #0x8]
  537604: e3550000     	cmp	r5, #0
  537608: 0a000005     	beq	0x537624 <glitch::gui::CGUIEnvironment::updateHoveredElement(glitch::core::position2d<int>)+0x130> @ imm = #0x14
  53760c: e1550006     	cmp	r5, r6
  537610: 0a000003     	beq	0x537624 <glitch::gui::CGUIEnvironment::updateHoveredElement(glitch::core::position2d<int>)+0x130> @ imm = #0xc
  537614: e5953000     	ldr	r3, [r5]
  537618: e5130010     	ldr	r0, [r3, #-0x10]
  53761c: e0850000     	add	r0, r5, r0
  537620: ebf797d7     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x21a0a4
  537624: e28dd018     	add	sp, sp, #24
  537628: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  53762c: e5943160     	ldr	r3, [r4, #0x160]
  537630: e0632008     	rsb	r2, r3, r8
  537634: e1530002     	cmp	r3, r2
  537638: 82833f7d     	addhi	r3, r3, #500
  53763c: 85843160     	strhi	r3, [r4, #0x160]
  537640: 95848160     	strls	r8, [r4, #0x160]
  537644: eaffffe5     	b	0x5375e0 <glitch::gui::CGUIEnvironment::updateHoveredElement(glitch::core::position2d<int>)+0xec> @ imm = #-0x6c

; range: 0x00537c5c .. 0x00537dac (336 bytes)
; sha256: f9d6962684a1d7db9077caf8450846771c1e6191a050f9ea82da75060fcba22e
port\engine-gui\.work-libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00537c5c <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)>:
  537c5c: e92d4030     	push	{r4, r5, lr}
  537c60: e5913000     	ldr	r3, [r1]
  537c64: e24dd00c     	sub	sp, sp, #12
  537c68: e1a04001     	mov	r4, r1
  537c6c: e3530001     	cmp	r3, #1
  537c70: e1a05000     	mov	r5, r0
  537c74: 0a000004     	beq	0x537c8c <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x30> @ imm = #0x10
  537c78: e3530002     	cmp	r3, #2
  537c7c: 0a000022     	beq	0x537d0c <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0xb0> @ imm = #0x88
  537c80: e3a00000     	mov	r0, #0
  537c84: e28dd00c     	add	sp, sp, #12
  537c88: e8bd8030     	pop	{r4, r5, pc}
  537c8c: e5913008     	ldr	r3, [r1, #0x8]
  537c90: e591200c     	ldr	r2, [r1, #0xc]
  537c94: e1a0100d     	mov	r1, sp
  537c98: e58d3000     	str	r3, [sp]
  537c9c: e58d2004     	str	r2, [sp, #0x4]
  537ca0: ebfffe13     	bl	0x5374f4 <glitch::gui::CGUIEnvironment::updateHoveredElement(glitch::core::position2d<int>)> @ imm = #-0x7b4
  537ca4: e5943014     	ldr	r3, [r4, #0x14]
  537ca8: e3530000     	cmp	r3, #0
  537cac: 1a00000a     	bne	0x537cdc <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x80> @ imm = #0x28
  537cb0: e59511ac     	ldr	r1, [r5, #0x1ac]
  537cb4: e3510000     	cmp	r1, #0
  537cb8: 059531b0     	ldreq	r3, [r5, #0x1b0]
  537cbc: 0a000037     	beq	0x537da0 <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x144> @ imm = #0xdc
  537cc0: e59531b0     	ldr	r3, [r5, #0x1b0]
  537cc4: e1510003     	cmp	r1, r3
  537cc8: 0a000033     	beq	0x537d9c <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x140> @ imm = #0xcc
  537ccc: e5953000     	ldr	r3, [r5]
  537cd0: e1a00005     	mov	r0, r5
  537cd4: e1a0e00f     	mov	lr, pc
  537cd8: e593f010     	ldr	pc, [r3, #0x10]
  537cdc: e59531b0     	ldr	r3, [r5, #0x1b0]
  537ce0: e3530000     	cmp	r3, #0
  537ce4: 0a000028     	beq	0x537d8c <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x130> @ imm = #0xa0
  537ce8: e1a00003     	mov	r0, r3
  537cec: e1a01004     	mov	r1, r4
  537cf0: e5933000     	ldr	r3, [r3]
  537cf4: e1a0e00f     	mov	lr, pc
  537cf8: e593f008     	ldr	pc, [r3, #0x8]
  537cfc: e3500000     	cmp	r0, #0
  537d00: 0a00001e     	beq	0x537d80 <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x124> @ imm = #0x78
  537d04: e3a00001     	mov	r0, #1
  537d08: eaffffdd     	b	0x537c84 <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x28> @ imm = #-0x8c
  537d0c: e5d13010     	ldrb	r3, [r1, #0x10]
  537d10: e3530000     	cmp	r3, #0
  537d14: 0a000010     	beq	0x537d5c <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x100> @ imm = #0x40
  537d18: e591300c     	ldr	r3, [r1, #0xc]
  537d1c: e3530009     	cmp	r3, #9
  537d20: 1a00000d     	bne	0x537d5c <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x100> @ imm = #0x34
  537d24: e5d11011     	ldrb	r1, [r1, #0x11]
  537d28: e5d42012     	ldrb	r2, [r4, #0x12]
  537d2c: ebffff84     	bl	0x537b44 <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)> @ imm = #-0x1f0
  537d30: e2501000     	subs	r1, r0, #0
  537d34: 0a000008     	beq	0x537d5c <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x100> @ imm = #0x20
  537d38: e59531b0     	ldr	r3, [r5, #0x1b0]
  537d3c: e1510003     	cmp	r1, r3
  537d40: 0a000006     	beq	0x537d60 <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x104> @ imm = #0x18
  537d44: e5953000     	ldr	r3, [r5]
  537d48: e1a00005     	mov	r0, r5
  537d4c: e1a0e00f     	mov	lr, pc
  537d50: e593f010     	ldr	pc, [r3, #0x10]
  537d54: e3500000     	cmp	r0, #0
  537d58: 1affffe9     	bne	0x537d04 <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0xa8> @ imm = #-0x5c
  537d5c: e59531b0     	ldr	r3, [r5, #0x1b0]
  537d60: e3530000     	cmp	r3, #0
  537d64: 0affffc5     	beq	0x537c80 <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x24> @ imm = #-0xec
  537d68: e1a00003     	mov	r0, r3
  537d6c: e1a01004     	mov	r1, r4
  537d70: e5933000     	ldr	r3, [r3]
  537d74: e1a0e00f     	mov	lr, pc
  537d78: e593f008     	ldr	pc, [r3, #0x8]
  537d7c: eaffffc0     	b	0x537c84 <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x28> @ imm = #-0x100
  537d80: e59531b0     	ldr	r3, [r5, #0x1b0]
  537d84: e3530000     	cmp	r3, #0
  537d88: 1affffbc     	bne	0x537c80 <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x24> @ imm = #-0x110
  537d8c: e59531ac     	ldr	r3, [r5, #0x1ac]
  537d90: e3530000     	cmp	r3, #0
  537d94: 1afffff3     	bne	0x537d68 <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x10c> @ imm = #-0x34
  537d98: eaffffb8     	b	0x537c80 <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x24> @ imm = #-0x120
  537d9c: e1a03001     	mov	r3, r1
  537da0: e3530000     	cmp	r3, #0
  537da4: 1affffcf     	bne	0x537ce8 <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x8c> @ imm = #-0xc4
  537da8: eaffffc7     	b	0x537ccc <glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)+0x70> @ imm = #-0xe4

; range: 0x00537648 .. 0x00537724 (220 bytes)
; sha256: 639db0e9d2c75058155f69de4a185f8b9be159e42dc77a88851f372a98baaf8f
port\engine-gui\.work-libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00537648 <glitch::gui::CGUIEnvironment::drawAll()>:
  537648: e92d4070     	push	{r4, r5, r6, lr}
  53764c: e59031a8     	ldr	r3, [r0, #0x1a8]
  537650: e1a04000     	mov	r4, r0
  537654: e3530000     	cmp	r3, #0
  537658: 0a00002f     	beq	0x53771c <glitch::gui::CGUIEnvironment::drawAll()+0xd4> @ imm = #0xbc
  53765c: e59320cc     	ldr	r2, [r3, #0xcc]
  537660: e5900048     	ldr	r0, [r0, #0x48]
  537664: e5121004     	ldr	r1, [r2, #-0x4]
  537668: e591200c     	ldr	r2, [r1, #0xc]
  53766c: e5911010     	ldr	r1, [r1, #0x10]
  537670: e1500002     	cmp	r0, r2
  537674: 0a000025     	beq	0x537710 <glitch::gui::CGUIEnvironment::drawAll()+0xc8> @ imm = #0x94
  537678: e5842068     	str	r2, [r4, #0x68]
  53767c: e59330cc     	ldr	r3, [r3, #0xcc]
  537680: e5940064     	ldr	r0, [r4, #0x64]
  537684: e594c060     	ldr	r12, [r4, #0x60]
  537688: e5131004     	ldr	r1, [r3, #-0x4]
  53768c: e2845008     	add	r5, r4, #8
  537690: e5943008     	ldr	r3, [r4, #0x8]
  537694: e5911010     	ldr	r1, [r1, #0x10]
  537698: e5840044     	str	r0, [r4, #0x44]
  53769c: e5840054     	str	r0, [r4, #0x54]
  5376a0: e584c040     	str	r12, [r4, #0x40]
  5376a4: e5842048     	str	r2, [r4, #0x48]
  5376a8: e584104c     	str	r1, [r4, #0x4c]
  5376ac: e584106c     	str	r1, [r4, #0x6c]
  5376b0: e584c050     	str	r12, [r4, #0x50]
  5376b4: e5842058     	str	r2, [r4, #0x58]
  5376b8: e584105c     	str	r1, [r4, #0x5c]
  5376bc: e1a00005     	mov	r0, r5
  5376c0: e1a0e00f     	mov	lr, pc
  5376c4: e593f00c     	ldr	pc, [r3, #0xc]
  5376c8: e5941168     	ldr	r1, [r4, #0x168]
  5376cc: e3510000     	cmp	r1, #0
  5376d0: 0a000003     	beq	0x5376e4 <glitch::gui::CGUIEnvironment::drawAll()+0x9c> @ imm = #0xc
  5376d4: e5943008     	ldr	r3, [r4, #0x8]
  5376d8: e1a00005     	mov	r0, r5
  5376dc: e1a0e00f     	mov	lr, pc
  5376e0: e593f064     	ldr	pc, [r3, #0x64]
  5376e4: e1a00005     	mov	r0, r5
  5376e8: e5943008     	ldr	r3, [r4, #0x8]
  5376ec: e1a0e00f     	mov	lr, pc
  5376f0: e593f020     	ldr	pc, [r3, #0x20]
  5376f4: e5943000     	ldr	r3, [r4]
  5376f8: e593510c     	ldr	r5, [r3, #0x10c]
  5376fc: eb034df8     	bl	0x60aee4 <glitch::os::Timer::getTime()> @ imm = #0xd37e0
  537700: e1a01000     	mov	r1, r0
  537704: e1a00004     	mov	r0, r4
  537708: e12fff35     	blx	r5
  53770c: e8bd8070     	pop	{r4, r5, r6, pc}
  537710: e594004c     	ldr	r0, [r4, #0x4c]
  537714: e1500001     	cmp	r0, r1
  537718: 1affffd6     	bne	0x537678 <glitch::gui::CGUIEnvironment::drawAll()+0x30> @ imm = #-0xa8
  53771c: e2845008     	add	r5, r4, #8
  537720: eaffffe8     	b	0x5376c8 <glitch::gui::CGUIEnvironment::drawAll()+0x80> @ imm = #-0x60

; range: 0x00534eb8 .. 0x00534ef8 (64 bytes)
; sha256: 6b11d68abfb226ed6acf9a5c5701ccb39c51d7519f21957cbca3e4a44a60c052
port\engine-gui\.work-libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00534eb8 <glitch::gui::IGUIElement::draw()>:
  534eb8: e92d4070     	push	{r4, r5, r6, lr}
  534ebc: e5d03098     	ldrb	r3, [r0, #0x98]
  534ec0: e3530000     	cmp	r3, #0
  534ec4: 0a00000a     	beq	0x534ef4 <glitch::gui::IGUIElement::draw()+0x3c> @ imm = #0x28
  534ec8: e1a05000     	mov	r5, r0
  534ecc: e5b54004     	ldr	r4, [r5, #0x4]!
  534ed0: ea000005     	b	0x534eec <glitch::gui::IGUIElement::draw()+0x34> @ imm = #0x14
  534ed4: e5943008     	ldr	r3, [r4, #0x8]
  534ed8: e1a00003     	mov	r0, r3
  534edc: e5933000     	ldr	r3, [r3]
  534ee0: e1a0e00f     	mov	lr, pc
  534ee4: e593f020     	ldr	pc, [r3, #0x20]
  534ee8: e5944000     	ldr	r4, [r4]
  534eec: e1550004     	cmp	r5, r4
  534ef0: 1afffff7     	bne	0x534ed4 <glitch::gui::IGUIElement::draw()+0x1c> @ imm = #-0x24
  534ef4: e8bd8070     	pop	{r4, r5, r6, pc}
