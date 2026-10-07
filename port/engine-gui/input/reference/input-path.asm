; Exact ARM disassembly excerpts from lib/armeabi-v7a/libDungeonHunter2.so in the supplied APK.
; Each function range is mapped through PT_LOAD segment 1 and hash-indexed in ../input-functions.json.

; range: 0x00537c5c .. 0x00537dac (336 bytes)
; sha256: f9d6962684a1d7db9077caf8450846771c1e6191a050f9ea82da75060fcba22e
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

; range: 0x005353c8 .. 0x00535598 (464 bytes)
; sha256: f53ca5d717233a475e6597656d66006b4991c9986ebdc339b182d1307032f136
  5353c8: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5353cc: e59041b0     	ldr	r4, [r0, #0x1b0]
  5353d0: e24dd030     	sub	sp, sp, #48
  5353d4: e1a06000     	mov	r6, r0
  5353d8: e1540001     	cmp	r4, r1
  5353dc: e1a05001     	mov	r5, r1
  5353e0: e1a07004     	mov	r7, r4
  5353e4: 0a000069     	beq	0x535590 <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0x1c8> @ imm = #0x1a4
  5353e8: e2803008     	add	r3, r0, #8
  5353ec: e1510003     	cmp	r1, r3
  5353f0: 03a05000     	moveq	r5, #0
  5353f4: 0a000009     	beq	0x535420 <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0x58> @ imm = #0x24
  5353f8: e3550000     	cmp	r5, #0
  5353fc: 0a000007     	beq	0x535420 <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0x58> @ imm = #0x1c
  535400: e5953000     	ldr	r3, [r5]
  535404: e5133010     	ldr	r3, [r3, #-0x10]
  535408: e0853003     	add	r3, r5, r3
  53540c: e5932004     	ldr	r2, [r3, #0x4]
  535410: e2822001     	add	r2, r2, #1
  535414: e5832004     	str	r2, [r3, #0x4]
  535418: e59041b0     	ldr	r4, [r0, #0x1b0]
  53541c: e1a07004     	mov	r7, r4
  535420: e3540000     	cmp	r4, #0
  535424: 0a000025     	beq	0x5354c0 <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0xf8> @ imm = #0x94
  535428: e5943000     	ldr	r3, [r4]
  53542c: e3a02000     	mov	r2, #0
  535430: e28d1018     	add	r1, sp, #24
  535434: e5133010     	ldr	r3, [r3, #-0x10]
  535438: e0843003     	add	r3, r4, r3
  53543c: e5930004     	ldr	r0, [r3, #0x4]
  535440: e2800001     	add	r0, r0, #1
  535444: e5830004     	str	r0, [r3, #0x4]
  535448: e59631b0     	ldr	r3, [r6, #0x1b0]
  53544c: e58d2028     	str	r2, [sp, #0x28]
  535450: e58d2018     	str	r2, [sp, #0x18]
  535454: e58d3020     	str	r3, [sp, #0x20]
  535458: e58d5024     	str	r5, [sp, #0x24]
  53545c: e1a00003     	mov	r0, r3
  535460: e5933000     	ldr	r3, [r3]
  535464: e1a0e00f     	mov	lr, pc
  535468: e593f008     	ldr	pc, [r3, #0x8]
  53546c: e3500000     	cmp	r0, #0
  535470: 0a00000c     	beq	0x5354a8 <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0xe0> @ imm = #0x30
  535474: e3550000     	cmp	r5, #0
  535478: 0a000003     	beq	0x53548c <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0xc4> @ imm = #0xc
  53547c: e5953000     	ldr	r3, [r5]
  535480: e5130010     	ldr	r0, [r3, #-0x10]
  535484: e0850000     	add	r0, r5, r0
  535488: ebf7a03d     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x217f0c
  53548c: e5943000     	ldr	r3, [r4]
  535490: e5130010     	ldr	r0, [r3, #-0x10]
  535494: e0840000     	add	r0, r4, r0
  535498: ebf7a039     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x217f1c
  53549c: e3a00000     	mov	r0, #0
  5354a0: e28dd030     	add	sp, sp, #48
  5354a4: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5354a8: e5943000     	ldr	r3, [r4]
  5354ac: e5130010     	ldr	r0, [r3, #-0x10]
  5354b0: e0840000     	add	r0, r4, r0
  5354b4: ebf7a032     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x217f38
  5354b8: e59641b0     	ldr	r4, [r6, #0x1b0]
  5354bc: e1a07004     	mov	r7, r4
  5354c0: e3550000     	cmp	r5, #0
  5354c4: 0a000028     	beq	0x53556c <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0x1a4> @ imm = #0xa0
  5354c8: e3540000     	cmp	r4, #0
  5354cc: 0a000006     	beq	0x5354ec <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0x124> @ imm = #0x18
  5354d0: e5943000     	ldr	r3, [r4]
  5354d4: e5133010     	ldr	r3, [r3, #-0x10]
  5354d8: e0844003     	add	r4, r4, r3
  5354dc: e5943004     	ldr	r3, [r4, #0x4]
  5354e0: e2833001     	add	r3, r3, #1
  5354e4: e5843004     	str	r3, [r4, #0x4]
  5354e8: e59641b0     	ldr	r4, [r6, #0x1b0]
  5354ec: e3a08000     	mov	r8, #0
  5354f0: e3a03001     	mov	r3, #1
  5354f4: e58d400c     	str	r4, [sp, #0xc]
  5354f8: e58d3010     	str	r3, [sp, #0x10]
  5354fc: e58d8000     	str	r8, [sp]
  535500: e58d5008     	str	r5, [sp, #0x8]
  535504: e5953000     	ldr	r3, [r5]
  535508: e1a00005     	mov	r0, r5
  53550c: e1a0100d     	mov	r1, sp
  535510: e1a0e00f     	mov	lr, pc
  535514: e593f008     	ldr	pc, [r3, #0x8]
  535518: e1500008     	cmp	r0, r8
  53551c: 0a00000b     	beq	0x535550 <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0x188> @ imm = #0x2c
  535520: e5953000     	ldr	r3, [r5]
  535524: e5130010     	ldr	r0, [r3, #-0x10]
  535528: e0850000     	add	r0, r5, r0
  53552c: ebf7a014     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x217fb0
  535530: e1570008     	cmp	r7, r8
  535534: 0a000015     	beq	0x535590 <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0x1c8> @ imm = #0x54
  535538: e5973000     	ldr	r3, [r7]
  53553c: e5130010     	ldr	r0, [r3, #-0x10]
  535540: e0870000     	add	r0, r7, r0
  535544: ebf7a00e     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x217fc8
  535548: e1a00008     	mov	r0, r8
  53554c: eaffffd3     	b	0x5354a0 <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0xd8> @ imm = #-0xb4
  535550: e3570000     	cmp	r7, #0
  535554: 0a000003     	beq	0x535568 <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0x1a0> @ imm = #0xc
  535558: e5973000     	ldr	r3, [r7]
  53555c: e5130010     	ldr	r0, [r3, #-0x10]
  535560: e0870000     	add	r0, r7, r0
  535564: ebf7a006     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x217fe8
  535568: e59671b0     	ldr	r7, [r6, #0x1b0]
  53556c: e3570000     	cmp	r7, #0
  535570: 0a000003     	beq	0x535584 <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0x1bc> @ imm = #0xc
  535574: e5973000     	ldr	r3, [r7]
  535578: e5130010     	ldr	r0, [r3, #-0x10]
  53557c: e0870000     	add	r0, r7, r0
  535580: ebf79fff     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x218004
  535584: e58651b0     	str	r5, [r6, #0x1b0]
  535588: e3a00001     	mov	r0, #1
  53558c: eaffffc3     	b	0x5354a0 <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0xd8> @ imm = #-0xf4
  535590: e3a00000     	mov	r0, #0
  535594: eaffffc1     	b	0x5354a0 <glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)+0xd8> @ imm = #-0xfc

; range: 0x005355a0 .. 0x0053562c (140 bytes)
; sha256: aa130d53fed0b3107ca9ce2f03a837d9ef3ff2eb379e905bf4f9b0798614423a
  5355a0: e92d4030     	push	{r4, r5, lr}
  5355a4: e59031b0     	ldr	r3, [r0, #0x1b0]
  5355a8: e24dd01c     	sub	sp, sp, #28
  5355ac: e1a04000     	mov	r4, r0
  5355b0: e3530000     	cmp	r3, #0
  5355b4: 0a00001a     	beq	0x535624 <glitch::gui::CGUIEnvironment::removeFocus(glitch::gui::IGUIElement*)+0x84> @ imm = #0x68
  5355b8: e1530001     	cmp	r3, r1
  5355bc: 0a000008     	beq	0x5355e4 <glitch::gui::CGUIEnvironment::removeFocus(glitch::gui::IGUIElement*)+0x44> @ imm = #0x20
  5355c0: e5932000     	ldr	r2, [r3]
  5355c4: e5120010     	ldr	r0, [r2, #-0x10]
  5355c8: e0830000     	add	r0, r3, r0
  5355cc: ebf79fec     	bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x218050
  5355d0: e3a03000     	mov	r3, #0
  5355d4: e58431b0     	str	r3, [r4, #0x1b0]
  5355d8: e3a00001     	mov	r0, #1
  5355dc: e28dd01c     	add	sp, sp, #28
  5355e0: e8bd8030     	pop	{r4, r5, pc}
  5355e4: e3a05000     	mov	r5, #0
  5355e8: e58d5000     	str	r5, [sp]
  5355ec: e58d3008     	str	r3, [sp, #0x8]
  5355f0: e58d500c     	str	r5, [sp, #0xc]
  5355f4: e58d5010     	str	r5, [sp, #0x10]
  5355f8: e1a00003     	mov	r0, r3
  5355fc: e1a0100d     	mov	r1, sp
  535600: e5933000     	ldr	r3, [r3]
  535604: e1a0e00f     	mov	lr, pc
  535608: e593f008     	ldr	pc, [r3, #0x8]
  53560c: e1500005     	cmp	r0, r5
  535610: 11a00005     	movne	r0, r5
  535614: 1afffff0     	bne	0x5355dc <glitch::gui::CGUIEnvironment::removeFocus(glitch::gui::IGUIElement*)+0x3c> @ imm = #-0x40
  535618: e59431b0     	ldr	r3, [r4, #0x1b0]
  53561c: e3530000     	cmp	r3, #0
  535620: 1affffe6     	bne	0x5355c0 <glitch::gui::CGUIEnvironment::removeFocus(glitch::gui::IGUIElement*)+0x20> @ imm = #-0x68
  535624: e3a00001     	mov	r0, #1
  535628: eaffffeb     	b	0x5355dc <glitch::gui::CGUIEnvironment::removeFocus(glitch::gui::IGUIElement*)+0x3c> @ imm = #-0x54

; range: 0x00537b44 .. 0x00537c5c (280 bytes)
; sha256: 8e24df20d891f1f24d91c023262dc43c26858cc8308b7469255e8707bf6d5c27
  537b44: e92d4030     	push	{r4, r5, lr}
  537b48: e590c1b0     	ldr	r12, [r0, #0x1b0]
  537b4c: e24dd014     	sub	sp, sp, #20
  537b50: e1a05000     	mov	r5, r0
  537b54: e35c0000     	cmp	r12, #0
  537b58: e1a03001     	mov	r3, r1
  537b5c: e1a04002     	mov	r4, r2
  537b60: 0a000003     	beq	0x537b74 <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0x30> @ imm = #0xc
  537b64: e5dc213c     	ldrb	r2, [r12, #0x13c]
  537b68: e3520000     	cmp	r2, #0
  537b6c: 01a0000c     	moveq	r0, r12
  537b70: 0a000001     	beq	0x537b7c <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0x38> @ imm = #0x4
  537b74: e1a0000c     	mov	r0, r12
  537b78: ea000005     	b	0x537b94 <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0x50> @ imm = #0x14
  537b7c: e5900024     	ldr	r0, [r0, #0x24]
  537b80: e3500000     	cmp	r0, #0
  537b84: 0a000002     	beq	0x537b94 <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0x50> @ imm = #0x8
  537b88: e5d0213c     	ldrb	r2, [r0, #0x13c]
  537b8c: e3520000     	cmp	r2, #0
  537b90: 0afffff9     	beq	0x537b7c <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0x38> @ imm = #-0x1c
  537b94: e3540000     	cmp	r4, #0
  537b98: 1a000019     	bne	0x537c04 <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0xc0> @ imm = #0x64
  537b9c: e35c0000     	cmp	r12, #0
  537ba0: 0a00002b     	beq	0x537c54 <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0x110> @ imm = #0xac
  537ba4: e5dc213c     	ldrb	r2, [r12, #0x13c]
  537ba8: e3520000     	cmp	r2, #0
  537bac: 1a000028     	bne	0x537c54 <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0x110> @ imm = #0xa0
  537bb0: e59c1138     	ldr	r1, [r12, #0x138]
  537bb4: e3710001     	cmn	r1, #1
  537bb8: 0a00001b     	beq	0x537c2c <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0xe8> @ imm = #0x6c
  537bbc: e3500000     	cmp	r0, #0
  537bc0: 1a000000     	bne	0x537bc8 <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0x84> @ imm = #0x0
  537bc4: e2850008     	add	r0, r5, #8
  537bc8: e3a0e000     	mov	lr, #0
  537bcc: e28dc010     	add	r12, sp, #16
  537bd0: e52ce008     	str	lr, [r12, #-0x8]!
  537bd4: e1a02003     	mov	r2, r3
  537bd8: e58dc000     	str	r12, [sp]
  537bdc: e1a03004     	mov	r3, r4
  537be0: e28dc00c     	add	r12, sp, #12
  537be4: e58dc004     	str	r12, [sp, #0x4]
  537be8: e58de00c     	str	lr, [sp, #0xc]
  537bec: ebffff70     	bl	0x5379b4 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)> @ imm = #-0x240
  537bf0: e59d000c     	ldr	r0, [sp, #0xc]
  537bf4: e3500000     	cmp	r0, #0
  537bf8: 0a000005     	beq	0x537c14 <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0xd0> @ imm = #0x14
  537bfc: e28dd014     	add	sp, sp, #20
  537c00: e8bd8030     	pop	{r4, r5, pc}
  537c04: e3500000     	cmp	r0, #0
  537c08: 03e01000     	mvneq	r1, #0
  537c0c: 15901138     	ldrne	r1, [r0, #0x138]
  537c10: eaffffeb     	b	0x537bc4 <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0x80> @ imm = #-0x54
  537c14: e59d0008     	ldr	r0, [sp, #0x8]
  537c18: e3500000     	cmp	r0, #0
  537c1c: 1afffff6     	bne	0x537bfc <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0xb8> @ imm = #-0x28
  537c20: e3540000     	cmp	r4, #0
  537c24: 12850008     	addne	r0, r5, #8
  537c28: eafffff3     	b	0x537bfc <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0xb8> @ imm = #-0x34
  537c2c: e59c2024     	ldr	r2, [r12, #0x24]
  537c30: e3520000     	cmp	r2, #0
  537c34: 0affffe0     	beq	0x537bbc <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0x78> @ imm = #-0x80
  537c38: e5921138     	ldr	r1, [r2, #0x138]
  537c3c: e5922024     	ldr	r2, [r2, #0x24]
  537c40: e3520000     	cmp	r2, #0
  537c44: 0affffdc     	beq	0x537bbc <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0x78> @ imm = #-0x90
  537c48: e3710001     	cmn	r1, #1
  537c4c: 1affffda     	bne	0x537bbc <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0x78> @ imm = #-0x98
  537c50: eafffff8     	b	0x537c38 <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0xf4> @ imm = #-0x20
  537c54: e3e01000     	mvn	r1, #0
  537c58: eaffffd7     	b	0x537bbc <glitch::gui::CGUIEnvironment::getNextElement(bool, bool)+0x78> @ imm = #-0xa4

; range: 0x005379b4 .. 0x00537b44 (400 bytes)
; sha256: ab88ef3478865096a727425264c4e64134170e7820beb5253fa4220de4e91b83
  5379b4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  5379b8: e2527000     	subs	r7, r2, #0
  5379bc: e1a06000     	mov	r6, r0
  5379c0: 13e0b000     	mvnne	r11, #0
  5379c4: 03a0b001     	moveq	r11, #1
  5379c8: e5b64004     	ldr	r4, [r6, #0x4]!
  5379cc: e08bb001     	add	r11, r11, r1
  5379d0: e37b0002     	cmn	r11, #2
  5379d4: e24dd00c     	sub	sp, sp, #12
  5379d8: 03a0b101     	moveq	r11, #1073741824
  5379dc: e1540006     	cmp	r4, r6
  5379e0: e1a09001     	mov	r9, r1
  5379e4: e1a05003     	mov	r5, r3
  5379e8: e59d8030     	ldr	r8, [sp, #0x30]
  5379ec: e59da034     	ldr	r10, [sp, #0x34]
  5379f0: 0a00001d     	beq	0x537a6c <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xb8> @ imm = #0x74
  5379f4: e5943008     	ldr	r3, [r4, #0x8]
  5379f8: e1a00003     	mov	r0, r3
  5379fc: e5933000     	ldr	r3, [r3]
  537a00: e1a0e00f     	mov	lr, pc
  537a04: e593f02c     	ldr	pc, [r3, #0x2c]
  537a08: e3500000     	cmp	r0, #0
  537a0c: 0a000013     	beq	0x537a60 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xac> @ imm = #0x4c
  537a10: e3550000     	cmp	r5, #0
  537a14: 15940008     	ldrne	r0, [r4, #0x8]
  537a18: 1a000003     	bne	0x537a2c <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0x78> @ imm = #0xc
  537a1c: e5940008     	ldr	r0, [r4, #0x8]
  537a20: e5d0313c     	ldrb	r3, [r0, #0x13c]
  537a24: e3530000     	cmp	r3, #0
  537a28: 1a00000c     	bne	0x537a60 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xac> @ imm = #0x30
  537a2c: e5d03134     	ldrb	r3, [r0, #0x134]
  537a30: e3530000     	cmp	r3, #0
  537a34: 0a000002     	beq	0x537a44 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0x90> @ imm = #0x8
  537a38: e5d0313c     	ldrb	r3, [r0, #0x13c]
  537a3c: e1530005     	cmp	r3, r5
  537a40: 0a00000c     	beq	0x537a78 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xc4> @ imm = #0x30
  537a44: e1a01009     	mov	r1, r9
  537a48: e1a02007     	mov	r2, r7
  537a4c: e1a03005     	mov	r3, r5
  537a50: e88d0500     	stm	sp, {r8, r10}
  537a54: ebffffd6     	bl	0x5379b4 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)> @ imm = #-0xa8
  537a58: e3500000     	cmp	r0, #0
  537a5c: 1a000024     	bne	0x537af4 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0x140> @ imm = #0x90
  537a60: e5944000     	ldr	r4, [r4]
  537a64: e1540006     	cmp	r4, r6
  537a68: 1affffe1     	bne	0x5379f4 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0x40> @ imm = #-0x7c
  537a6c: e3a00000     	mov	r0, #0
  537a70: e28dd00c     	add	sp, sp, #12
  537a74: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  537a78: e5903138     	ldr	r3, [r0, #0x138]
  537a7c: e153000b     	cmp	r3, r11
  537a80: 0a00002c     	beq	0x537b38 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0x184> @ imm = #0xb0
  537a84: e59a2000     	ldr	r2, [r10]
  537a88: e3520000     	cmp	r2, #0
  537a8c: 0a000021     	beq	0x537b18 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0x164> @ imm = #0x84
  537a90: e3570000     	cmp	r7, #0
  537a94: e5922138     	ldr	r2, [r2, #0x138]
  537a98: 1a000017     	bne	0x537afc <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0x148> @ imm = #0x5c
  537a9c: e1590003     	cmp	r9, r3
  537aa0: b1530002     	cmplt	r3, r2
  537aa4: aa000001     	bge	0x537ab0 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xfc> @ imm = #0x4
  537aa8: e58a0000     	str	r0, [r10]
  537aac: e5940008     	ldr	r0, [r4, #0x8]
  537ab0: e5982000     	ldr	r2, [r8]
  537ab4: e3520000     	cmp	r2, #0
  537ab8: 0a000004     	beq	0x537ad0 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0x11c> @ imm = #0x10
  537abc: e3570000     	cmp	r7, #0
  537ac0: e5922138     	ldr	r2, [r2, #0x138]
  537ac4: 1a000010     	bne	0x537b0c <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0x158> @ imm = #0x40
  537ac8: e1530002     	cmp	r3, r2
  537acc: aaffffdc     	bge	0x537a44 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0x90> @ imm = #-0x90
  537ad0: e5880000     	str	r0, [r8]
  537ad4: e5940008     	ldr	r0, [r4, #0x8]
  537ad8: e1a01009     	mov	r1, r9
  537adc: e1a02007     	mov	r2, r7
  537ae0: e1a03005     	mov	r3, r5
  537ae4: e88d0500     	stm	sp, {r8, r10}
  537ae8: ebffffb1     	bl	0x5379b4 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)> @ imm = #-0x13c
  537aec: e3500000     	cmp	r0, #0
  537af0: 0affffda     	beq	0x537a60 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xac> @ imm = #-0x98
  537af4: e3a00001     	mov	r0, #1
  537af8: eaffffdc     	b	0x537a70 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xbc> @ imm = #-0x90
  537afc: e1590003     	cmp	r9, r3
  537b00: c1530002     	cmpgt	r3, r2
  537b04: caffffe7     	bgt	0x537aa8 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xf4> @ imm = #-0x64
  537b08: eaffffe8     	b	0x537ab0 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xfc> @ imm = #-0x60
  537b0c: e1530002     	cmp	r3, r2
  537b10: caffffee     	bgt	0x537ad0 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0x11c> @ imm = #-0x48
  537b14: eaffffca     	b	0x537a44 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0x90> @ imm = #-0xd8
  537b18: e3570000     	cmp	r7, #0
  537b1c: 0a000002     	beq	0x537b2c <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0x178> @ imm = #0x8
  537b20: e1590003     	cmp	r9, r3
  537b24: caffffdf     	bgt	0x537aa8 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xf4> @ imm = #-0x84
  537b28: eaffffe0     	b	0x537ab0 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xfc> @ imm = #-0x80
  537b2c: e1590003     	cmp	r9, r3
  537b30: aaffffde     	bge	0x537ab0 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xfc> @ imm = #-0x88
  537b34: eaffffdb     	b	0x537aa8 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xf4> @ imm = #-0x94
  537b38: e58a0000     	str	r0, [r10]
  537b3c: e3a00001     	mov	r0, #1
  537b40: eaffffca     	b	0x537a70 <glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const (.clone.2)+0xbc> @ imm = #-0xd8

; range: 0x00534dd0 .. 0x00534e48 (120 bytes)
; sha256: 18ce974b8158355f2457557a3a724472c1986dc53f02a8b3e331a00b8d30d0dd
  534dd0: e92d4070     	push	{r4, r5, r6, lr}
  534dd4: e5d03098     	ldrb	r3, [r0, #0x98]
  534dd8: e1a05000     	mov	r5, r0
  534ddc: e1a06001     	mov	r6, r1
  534de0: e3530000     	cmp	r3, #0
  534de4: 12804004     	addne	r4, r0, #4
  534de8: 1a000007     	bne	0x534e0c <glitch::gui::IGUIElement::getElementFromPoint(glitch::core::position2d<int> const&)+0x3c> @ imm = #0x1c
  534dec: e3a00000     	mov	r0, #0
  534df0: e8bd8070     	pop	{r4, r5, r6, pc}
  534df4: e5943004     	ldr	r3, [r4, #0x4]
  534df8: e5930008     	ldr	r0, [r3, #0x8]
  534dfc: ebfffff3     	bl	0x534dd0 <glitch::gui::IGUIElement::getElementFromPoint(glitch::core::position2d<int> const&)> @ imm = #-0x34
  534e00: e3500000     	cmp	r0, #0
  534e04: 1afffff9     	bne	0x534df0 <glitch::gui::IGUIElement::getElementFromPoint(glitch::core::position2d<int> const&)+0x20> @ imm = #-0x1c
  534e08: e5944004     	ldr	r4, [r4, #0x4]
  534e0c: e5953004     	ldr	r3, [r5, #0x4]
  534e10: e1a01006     	mov	r1, r6
  534e14: e1530004     	cmp	r3, r4
  534e18: 1afffff5     	bne	0x534df4 <glitch::gui::IGUIElement::getElementFromPoint(glitch::core::position2d<int> const&)+0x24> @ imm = #-0x2c
  534e1c: e5d53098     	ldrb	r3, [r5, #0x98]
  534e20: e3530000     	cmp	r3, #0
  534e24: 0afffff0     	beq	0x534dec <glitch::gui::IGUIElement::getElementFromPoint(glitch::core::position2d<int> const&)+0x1c> @ imm = #-0x40
  534e28: e5953000     	ldr	r3, [r5]
  534e2c: e1a00005     	mov	r0, r5
  534e30: e1a0e00f     	mov	lr, pc
  534e34: e593f010     	ldr	pc, [r3, #0x10]
  534e38: e3500000     	cmp	r0, #0
  534e3c: 0affffea     	beq	0x534dec <glitch::gui::IGUIElement::getElementFromPoint(glitch::core::position2d<int> const&)+0x1c> @ imm = #-0x58
  534e40: e1a00005     	mov	r0, r5
  534e44: e8bd8070     	pop	{r4, r5, r6, pc}

; range: 0x00534e48 .. 0x00534e90 (72 bytes)
; sha256: 5bb0640a5fbeab2b1c174ceaa8a185d2fe4f96b7804c8021ed8b8c5846205b99
  534e48: e5913000     	ldr	r3, [r1]
  534e4c: e5902048     	ldr	r2, [r0, #0x48]
  534e50: e1520003     	cmp	r2, r3
  534e54: ca00000b     	bgt	0x534e88 <glitch::gui::IGUIElement::isPointInside(glitch::core::position2d<int> const&) const+0x40> @ imm = #0x2c
  534e58: e5912004     	ldr	r2, [r1, #0x4]
  534e5c: e590104c     	ldr	r1, [r0, #0x4c]
  534e60: e1510002     	cmp	r1, r2
  534e64: ca000007     	bgt	0x534e88 <glitch::gui::IGUIElement::isPointInside(glitch::core::position2d<int> const&) const+0x40> @ imm = #0x1c
  534e68: e5901050     	ldr	r1, [r0, #0x50]
  534e6c: e1530001     	cmp	r3, r1
  534e70: ca000004     	bgt	0x534e88 <glitch::gui::IGUIElement::isPointInside(glitch::core::position2d<int> const&) const+0x40> @ imm = #0x10
  534e74: e5900054     	ldr	r0, [r0, #0x54]
  534e78: e1520000     	cmp	r2, r0
  534e7c: c3a00000     	movgt	r0, #0
  534e80: d3a00001     	movle	r0, #1
  534e84: e12fff1e     	bx	lr
  534e88: e3a00000     	mov	r0, #0
  534e8c: e12fff1e     	bx	lr

; range: 0x00534fe8 .. 0x00535014 (44 bytes)
; sha256: 3f9e9d7248f7a6ed5f09e6fd36610bc2a4fb8ff13fc18e4d9df464cda862a770
  534fe8: e92d4010     	push	{r4, lr}
  534fec: e5903024     	ldr	r3, [r0, #0x24]
  534ff0: e3530000     	cmp	r3, #0
  534ff4: 0a000004     	beq	0x53500c <glitch::gui::IGUIElement::onEvent(glitch::SEvent const&)+0x24> @ imm = #0x10
  534ff8: e1a00003     	mov	r0, r3
  534ffc: e5933000     	ldr	r3, [r3]
  535000: e1a0e00f     	mov	lr, pc
  535004: e593f008     	ldr	pc, [r3, #0x8]
  535008: e8bd8010     	pop	{r4, pc}
  53500c: e1a00003     	mov	r0, r3
  535010: e8bd8010     	pop	{r4, pc}

; range: 0x00535710 .. 0x00535768 (88 bytes)
; sha256: 716fa0abf79cf54221bf591d3aaf6ab09bbd5b720f9fbcc37fdbe91b329c5812
  535710: e92d4010     	push	{r4, lr}
  535714: e59031c4     	ldr	r3, [r0, #0x1c4]
  535718: e3530000     	cmp	r3, #0
  53571c: 0a00000f     	beq	0x535760 <glitch::gui::CGUIEnvironment::onEvent(glitch::SEvent const&)+0x50> @ imm = #0x3c
  535720: e5912000     	ldr	r2, [r1]
  535724: e3520001     	cmp	r2, #1
  535728: 0a00000c     	beq	0x535760 <glitch::gui::CGUIEnvironment::onEvent(glitch::SEvent const&)+0x50> @ imm = #0x30
  53572c: e3520002     	cmp	r2, #2
  535730: 0a00000a     	beq	0x535760 <glitch::gui::CGUIEnvironment::onEvent(glitch::SEvent const&)+0x50> @ imm = #0x28
  535734: e3520000     	cmp	r2, #0
  535738: 1a000003     	bne	0x53574c <glitch::gui::CGUIEnvironment::onEvent(glitch::SEvent const&)+0x3c> @ imm = #0xc
  53573c: e5912008     	ldr	r2, [r1, #0x8]
  535740: e2800008     	add	r0, r0, #8
  535744: e1520000     	cmp	r2, r0
  535748: 0a000004     	beq	0x535760 <glitch::gui::CGUIEnvironment::onEvent(glitch::SEvent const&)+0x50> @ imm = #0x10
  53574c: e1a00003     	mov	r0, r3
  535750: e5933000     	ldr	r3, [r3]
  535754: e1a0e00f     	mov	lr, pc
  535758: e593f008     	ldr	pc, [r3, #0x8]
  53575c: e8bd8010     	pop	{r4, pc}
  535760: e3a00000     	mov	r0, #0
  535764: e8bd8010     	pop	{r4, pc}

; range: 0x00535d70 .. 0x00535dec (124 bytes)
; sha256: d40b29709dfd3a561daff5b1b85be819c59040ad1dfeecbf8771026df5b58003
  535d70: e92d4070     	push	{r4, r5, r6, lr}
  535d74: e1a04000     	mov	r4, r0
  535d78: e1a06000     	mov	r6, r0
  535d7c: e1a05001     	mov	r5, r1
  535d80: e5b40004     	ldr	r0, [r4, #0x4]!
  535d84: ea000003     	b	0x535d98 <glitch::gui::IGUIElement::bringToFront(glitch::gui::IGUIElement*)+0x28> @ imm = #0xc
  535d88: e5903008     	ldr	r3, [r0, #0x8]
  535d8c: e1530005     	cmp	r3, r5
  535d90: 0a000004     	beq	0x535da8 <glitch::gui::IGUIElement::bringToFront(glitch::gui::IGUIElement*)+0x38> @ imm = #0x10
  535d94: e5900000     	ldr	r0, [r0]
  535d98: e1540000     	cmp	r4, r0
  535d9c: 1afffff9     	bne	0x535d88 <glitch::gui::IGUIElement::bringToFront(glitch::gui::IGUIElement*)+0x18> @ imm = #-0x1c
  535da0: e3a00000     	mov	r0, #0
  535da4: e8bd8070     	pop	{r4, r5, r6, pc}
  535da8: e5903000     	ldr	r3, [r0]
  535dac: e5902004     	ldr	r2, [r0, #0x4]
  535db0: e5823000     	str	r3, [r2]
  535db4: e5832004     	str	r2, [r3, #0x4]
  535db8: ebf769a4     	bl	0x310450 <GlitchFree(void*)> @ imm = #-0x225970
  535dbc: e3a0000c     	mov	r0, #12
  535dc0: e3a01000     	mov	r1, #0
  535dc4: ebf769e7     	bl	0x310568 <GlitchAlloc(unsigned int, glitch::memory::E_MEMORY_HINT)> @ imm = #-0x225864
  535dc8: e5805008     	str	r5, [r0, #0x8]
  535dcc: e5962008     	ldr	r2, [r6, #0x8]
  535dd0: e1a03000     	mov	r3, r0
  535dd4: e5804000     	str	r4, [r0]
  535dd8: e5832004     	str	r2, [r3, #0x4]
  535ddc: e3a00001     	mov	r0, #1
  535de0: e5823000     	str	r3, [r2]
  535de4: e5863008     	str	r3, [r6, #0x8]
  535de8: e8bd8070     	pop	{r4, r5, r6, pc}

; range: 0x006a6eac .. 0x006a7224 (888 bytes)
; sha256: e58c67e36169902264277a3d4afde9c3203bb4d3fcd39d29495d6be4db263c23
  6a6eac: e92d4030     	push	{r4, r5, lr}
  6a6eb0: e5d03099     	ldrb	r3, [r0, #0x99]
  6a6eb4: e24dd034     	sub	sp, sp, #52
  6a6eb8: e1a04000     	mov	r4, r0
  6a6ebc: e3530000     	cmp	r3, #0
  6a6ec0: e1a05001     	mov	r5, r1
  6a6ec4: 0a000010     	beq	0x6a6f0c <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x60> @ imm = #0x40
  6a6ec8: e5913000     	ldr	r3, [r1]
  6a6ecc: e3530001     	cmp	r3, #1
  6a6ed0: 0a000057     	beq	0x6a7034 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x188> @ imm = #0x15c
  6a6ed4: e3530002     	cmp	r3, #2
  6a6ed8: 0a00001d     	beq	0x6a6f54 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0xa8> @ imm = #0x74
  6a6edc: e3530000     	cmp	r3, #0
  6a6ee0: 0a00000e     	beq	0x6a6f20 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x74> @ imm = #0x38
  6a6ee4: e5943024     	ldr	r3, [r4, #0x24]
  6a6ee8: e3530000     	cmp	r3, #0
  6a6eec: 0a000009     	beq	0x6a6f18 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x6c> @ imm = #0x24
  6a6ef0: e1a00003     	mov	r0, r3
  6a6ef4: e1a01005     	mov	r1, r5
  6a6ef8: e5933000     	ldr	r3, [r3]
  6a6efc: e1a0e00f     	mov	lr, pc
  6a6f00: e593f008     	ldr	pc, [r3, #0x8]
  6a6f04: e28dd034     	add	sp, sp, #52
  6a6f08: e8bd8030     	pop	{r4, r5, pc}
  6a6f0c: e5903024     	ldr	r3, [r0, #0x24]
  6a6f10: e3530000     	cmp	r3, #0
  6a6f14: 1a000026     	bne	0x6a6fb4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x108> @ imm = #0x98
  6a6f18: e1a00003     	mov	r0, r3
  6a6f1c: eafffff8     	b	0x6a6f04 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0x20
  6a6f20: e5913010     	ldr	r3, [r1, #0x10]
  6a6f24: e3530000     	cmp	r3, #0
  6a6f28: 1affffed     	bne	0x6a6ee4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0x4c
  6a6f2c: e5913008     	ldr	r3, [r1, #0x8]
  6a6f30: e1530000     	cmp	r3, r0
  6a6f34: 1affffea     	bne	0x6a6ee4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0x58
  6a6f38: e5d01159     	ldrb	r1, [r0, #0x159]
  6a6f3c: e3510000     	cmp	r1, #0
  6a6f40: 1affffe7     	bne	0x6a6ee4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0x64
  6a6f44: e5903000     	ldr	r3, [r0]
  6a6f48: e1a0e00f     	mov	lr, pc
  6a6f4c: e593f09c     	ldr	pc, [r3, #0x9c]
  6a6f50: eaffffe3     	b	0x6a6ee4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0x74
  6a6f54: e5d13010     	ldrb	r3, [r1, #0x10]
  6a6f58: e3530000     	cmp	r3, #0
  6a6f5c: 0a000003     	beq	0x6a6f70 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0xc4> @ imm = #0xc
  6a6f60: e591200c     	ldr	r2, [r1, #0xc]
  6a6f64: e352000d     	cmp	r2, #13
  6a6f68: 13520020     	cmpne	r2, #32
  6a6f6c: 0a00007d     	beq	0x6a7168 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x2bc> @ imm = #0x1f4
  6a6f70: e5d42158     	ldrb	r2, [r4, #0x158]
  6a6f74: e3520000     	cmp	r2, #0
  6a6f78: 0a000012     	beq	0x6a6fc8 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x11c> @ imm = #0x48
  6a6f7c: e5d41159     	ldrb	r1, [r4, #0x159]
  6a6f80: e3510000     	cmp	r1, #0
  6a6f84: 1a00000f     	bne	0x6a6fc8 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x11c> @ imm = #0x3c
  6a6f88: e3530000     	cmp	r3, #0
  6a6f8c: 0a000011     	beq	0x6a6fd8 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x12c> @ imm = #0x44
  6a6f90: e595300c     	ldr	r3, [r5, #0xc]
  6a6f94: e353001b     	cmp	r3, #27
  6a6f98: 1affffd1     	bne	0x6a6ee4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0xbc
  6a6f9c: e1a00004     	mov	r0, r4
  6a6fa0: e5943000     	ldr	r3, [r4]
  6a6fa4: e1a0e00f     	mov	lr, pc
  6a6fa8: e593f09c     	ldr	pc, [r3, #0x9c]
  6a6fac: e3a00001     	mov	r0, #1
  6a6fb0: eaffffd3     	b	0x6a6f04 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0xb4
  6a6fb4: e1a00003     	mov	r0, r3
  6a6fb8: e5933000     	ldr	r3, [r3]
  6a6fbc: e1a0e00f     	mov	lr, pc
  6a6fc0: e593f008     	ldr	pc, [r3, #0x8]
  6a6fc4: eaffffce     	b	0x6a6f04 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0xc8
  6a6fc8: e3530000     	cmp	r3, #0
  6a6fcc: 1affffc4     	bne	0x6a6ee4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0xf0
  6a6fd0: e3520000     	cmp	r2, #0
  6a6fd4: 0affffc2     	beq	0x6a6ee4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0xf8
  6a6fd8: e595300c     	ldr	r3, [r5, #0xc]
  6a6fdc: e353000d     	cmp	r3, #13
  6a6fe0: 13530020     	cmpne	r3, #32
  6a6fe4: 1affffbe     	bne	0x6a6ee4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0x108
  6a6fe8: e5d41159     	ldrb	r1, [r4, #0x159]
  6a6fec: e3510000     	cmp	r1, #0
  6a6ff0: 0a000086     	beq	0x6a7210 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x364> @ imm = #0x218
  6a6ff4: e5943024     	ldr	r3, [r4, #0x24]
  6a6ff8: e3530000     	cmp	r3, #0
  6a6ffc: 0a000077     	beq	0x6a71e0 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x334> @ imm = #0x1dc
  6a7000: e3a02000     	mov	r2, #0
  6a7004: e3a01005     	mov	r1, #5
  6a7008: e58d1028     	str	r1, [sp, #0x28]
  6a700c: e58d4020     	str	r4, [sp, #0x20]
  6a7010: e58d2024     	str	r2, [sp, #0x24]
  6a7014: e58d2018     	str	r2, [sp, #0x18]
  6a7018: e1a00003     	mov	r0, r3
  6a701c: e28d1018     	add	r1, sp, #24
  6a7020: e5933000     	ldr	r3, [r3]
  6a7024: e1a0e00f     	mov	lr, pc
  6a7028: e593f008     	ldr	pc, [r3, #0x8]
  6a702c: e3a00001     	mov	r0, #1
  6a7030: eaffffb3     	b	0x6a6f04 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0x134
  6a7034: e5913014     	ldr	r3, [r1, #0x14]
  6a7038: e3530000     	cmp	r3, #0
  6a703c: 0a00002b     	beq	0x6a70f0 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x244> @ imm = #0xac
  6a7040: e3530003     	cmp	r3, #3
  6a7044: 1affffa6     	bne	0x6a6ee4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0x168
  6a7048: e5913008     	ldr	r3, [r1, #0x8]
  6a704c: e5902048     	ldr	r2, [r0, #0x48]
  6a7050: e591100c     	ldr	r1, [r1, #0xc]
  6a7054: e5d05158     	ldrb	r5, [r0, #0x158]
  6a7058: e1530002     	cmp	r3, r2
  6a705c: ba00005c     	blt	0x6a71d4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x328> @ imm = #0x170
  6a7060: e590204c     	ldr	r2, [r0, #0x4c]
  6a7064: e1510002     	cmp	r1, r2
  6a7068: ba000059     	blt	0x6a71d4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x328> @ imm = #0x164
  6a706c: e5902050     	ldr	r2, [r0, #0x50]
  6a7070: e1530002     	cmp	r3, r2
  6a7074: ca000056     	bgt	0x6a71d4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x328> @ imm = #0x158
  6a7078: e5903054     	ldr	r3, [r0, #0x54]
  6a707c: e1510003     	cmp	r1, r3
  6a7080: ca000053     	bgt	0x6a71d4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x328> @ imm = #0x14c
  6a7084: e5d01159     	ldrb	r1, [r0, #0x159]
  6a7088: e3510000     	cmp	r1, #0
  6a708c: 1a000055     	bne	0x6a71e8 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x33c> @ imm = #0x154
  6a7090: e5903000     	ldr	r3, [r0]
  6a7094: e1a0e00f     	mov	lr, pc
  6a7098: e593f09c     	ldr	pc, [r3, #0x9c]
  6a709c: e5d43159     	ldrb	r3, [r4, #0x159]
  6a70a0: e3530000     	cmp	r3, #0
  6a70a4: 1a000054     	bne	0x6a71fc <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x350> @ imm = #0x150
  6a70a8: e3550000     	cmp	r5, #0
  6a70ac: 0a00004b     	beq	0x6a71e0 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x334> @ imm = #0x12c
  6a70b0: e5943024     	ldr	r3, [r4, #0x24]
  6a70b4: e3530000     	cmp	r3, #0
  6a70b8: 0a000048     	beq	0x6a71e0 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x334> @ imm = #0x120
  6a70bc: e3a02000     	mov	r2, #0
  6a70c0: e3a01005     	mov	r1, #5
  6a70c4: e58d1010     	str	r1, [sp, #0x10]
  6a70c8: e58d4008     	str	r4, [sp, #0x8]
  6a70cc: e58d200c     	str	r2, [sp, #0xc]
  6a70d0: e58d2000     	str	r2, [sp]
  6a70d4: e1a00003     	mov	r0, r3
  6a70d8: e1a0100d     	mov	r1, sp
  6a70dc: e5933000     	ldr	r3, [r3]
  6a70e0: e1a0e00f     	mov	lr, pc
  6a70e4: e593f008     	ldr	pc, [r3, #0x8]
  6a70e8: e3a00001     	mov	r0, #1
  6a70ec: eaffff84     	b	0x6a6f04 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0x1f0
  6a70f0: e5903150     	ldr	r3, [r0, #0x150]
  6a70f4: e1a01000     	mov	r1, r0
  6a70f8: e1a00003     	mov	r0, r3
  6a70fc: e5933000     	ldr	r3, [r3]
  6a7100: e1a0e00f     	mov	lr, pc
  6a7104: e593f01c     	ldr	pc, [r3, #0x1c]
  6a7108: e3500000     	cmp	r0, #0
  6a710c: 0a000020     	beq	0x6a7194 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x2e8> @ imm = #0x80
  6a7110: e5953008     	ldr	r3, [r5, #0x8]
  6a7114: e5942048     	ldr	r2, [r4, #0x48]
  6a7118: e595100c     	ldr	r1, [r5, #0xc]
  6a711c: e1530002     	cmp	r3, r2
  6a7120: ba000008     	blt	0x6a7148 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x29c> @ imm = #0x20
  6a7124: e594204c     	ldr	r2, [r4, #0x4c]
  6a7128: e1510002     	cmp	r1, r2
  6a712c: ba000005     	blt	0x6a7148 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x29c> @ imm = #0x14
  6a7130: e5942050     	ldr	r2, [r4, #0x50]
  6a7134: e1530002     	cmp	r3, r2
  6a7138: ca000002     	bgt	0x6a7148 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x29c> @ imm = #0x8
  6a713c: e5943054     	ldr	r3, [r4, #0x54]
  6a7140: e1510003     	cmp	r1, r3
  6a7144: da000012     	ble	0x6a7194 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x2e8> @ imm = #0x48
  6a7148: e5943150     	ldr	r3, [r4, #0x150]
  6a714c: e1a01004     	mov	r1, r4
  6a7150: e1a00003     	mov	r0, r3
  6a7154: e5933000     	ldr	r3, [r3]
  6a7158: e1a0e00f     	mov	lr, pc
  6a715c: e593f018     	ldr	pc, [r3, #0x18]
  6a7160: e3a00000     	mov	r0, #0
  6a7164: eaffff66     	b	0x6a6f04 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0x268
  6a7168: e5d03159     	ldrb	r3, [r0, #0x159]
  6a716c: e3530000     	cmp	r3, #0
  6a7170: 15d01158     	ldrbne	r1, [r0, #0x158]
  6a7174: 05903000     	ldreq	r3, [r0]
  6a7178: 15903000     	ldrne	r3, [r0]
  6a717c: 03a01001     	moveq	r1, #1
  6a7180: 12211001     	eorne	r1, r1, #1
  6a7184: e1a0e00f     	mov	lr, pc
  6a7188: e593f09c     	ldr	pc, [r3, #0x9c]
  6a718c: e3a00001     	mov	r0, #1
  6a7190: eaffff5b     	b	0x6a6f04 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0x294
  6a7194: e5d43159     	ldrb	r3, [r4, #0x159]
  6a7198: e3530000     	cmp	r3, #0
  6a719c: 1a000004     	bne	0x6a71b4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x308> @ imm = #0x10
  6a71a0: e5943000     	ldr	r3, [r4]
  6a71a4: e1a00004     	mov	r0, r4
  6a71a8: e3a01001     	mov	r1, #1
  6a71ac: e1a0e00f     	mov	lr, pc
  6a71b0: e593f09c     	ldr	pc, [r3, #0x9c]
  6a71b4: e5943150     	ldr	r3, [r4, #0x150]
  6a71b8: e1a01004     	mov	r1, r4
  6a71bc: e1a00003     	mov	r0, r3
  6a71c0: e5933000     	ldr	r3, [r3]
  6a71c4: e1a0e00f     	mov	lr, pc
  6a71c8: e593f010     	ldr	pc, [r3, #0x10]
  6a71cc: e3a00001     	mov	r0, #1
  6a71d0: eaffff4b     	b	0x6a6f04 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0x2d4
  6a71d4: e5d41159     	ldrb	r1, [r4, #0x159]
  6a71d8: e3510000     	cmp	r1, #0
  6a71dc: 0affff6e     	beq	0x6a6f9c <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0xf0> @ imm = #-0x248
  6a71e0: e3a00001     	mov	r0, #1
  6a71e4: eaffff46     	b	0x6a6f04 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0x2e8
  6a71e8: e5903000     	ldr	r3, [r0]
  6a71ec: e2251001     	eor	r1, r5, #1
  6a71f0: e1a0e00f     	mov	lr, pc
  6a71f4: e593f09c     	ldr	pc, [r3, #0x9c]
  6a71f8: eaffffa7     	b	0x6a709c <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x1f0> @ imm = #-0x164
  6a71fc: e5d43158     	ldrb	r3, [r4, #0x158]
  6a7200: e1530005     	cmp	r3, r5
  6a7204: 0afffff5     	beq	0x6a71e0 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x334> @ imm = #-0x2c
  6a7208: e5943024     	ldr	r3, [r4, #0x24]
  6a720c: eaffffaa     	b	0x6a70bc <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x210> @ imm = #-0x158
  6a7210: e5943000     	ldr	r3, [r4]
  6a7214: e1a00004     	mov	r0, r4
  6a7218: e1a0e00f     	mov	lr, pc
  6a721c: e593f09c     	ldr	pc, [r3, #0x9c]
  6a7220: eaffff73     	b	0x6a6ff4 <glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)+0x148> @ imm = #-0x234

; range: 0x006b3d70 .. 0x006b3e14 (164 bytes)
; sha256: 25293681ccdffc1ddb7a32d0322b474b44ecba3aa0c8a9c7c53ab8cbcc7fe0c6
  6b3d70: e92d4070     	push	{r4, r5, r6, lr}
  6b3d74: e5d03099     	ldrb	r3, [r0, #0x99]
  6b3d78: e1a04000     	mov	r4, r0
  6b3d7c: e1a05001     	mov	r5, r1
  6b3d80: e3530000     	cmp	r3, #0
  6b3d84: 0a00000e     	beq	0x6b3dc4 <glitch::gui::CGUIEditBox::onEvent(glitch::SEvent const&)+0x54> @ imm = #0x38
  6b3d88: e5913000     	ldr	r3, [r1]
  6b3d8c: e3530001     	cmp	r3, #1
  6b3d90: 0a00001b     	beq	0x6b3e04 <glitch::gui::CGUIEditBox::onEvent(glitch::SEvent const&)+0x94> @ imm = #0x6c
  6b3d94: e3530002     	cmp	r3, #2
  6b3d98: 0a000012     	beq	0x6b3de8 <glitch::gui::CGUIEditBox::onEvent(glitch::SEvent const&)+0x78> @ imm = #0x48
  6b3d9c: e3530000     	cmp	r3, #0
  6b3da0: 1a000007     	bne	0x6b3dc4 <glitch::gui::CGUIEditBox::onEvent(glitch::SEvent const&)+0x54> @ imm = #0x1c
  6b3da4: e5913010     	ldr	r3, [r1, #0x10]
  6b3da8: e3530000     	cmp	r3, #0
  6b3dac: 1a000004     	bne	0x6b3dc4 <glitch::gui::CGUIEditBox::onEvent(glitch::SEvent const&)+0x54> @ imm = #0x10
  6b3db0: e5912008     	ldr	r2, [r1, #0x8]
  6b3db4: e1520000     	cmp	r2, r0
  6b3db8: 05803160     	streq	r3, [r0, #0x160]
  6b3dbc: 05c03158     	strbeq	r3, [r0, #0x158]
  6b3dc0: 0580315c     	streq	r3, [r0, #0x15c]
  6b3dc4: e5943024     	ldr	r3, [r4, #0x24]
  6b3dc8: e3530000     	cmp	r3, #0
  6b3dcc: 0a00000a     	beq	0x6b3dfc <glitch::gui::CGUIEditBox::onEvent(glitch::SEvent const&)+0x8c> @ imm = #0x28
  6b3dd0: e1a00003     	mov	r0, r3
  6b3dd4: e1a01005     	mov	r1, r5
  6b3dd8: e5933000     	ldr	r3, [r3]
  6b3ddc: e1a0e00f     	mov	lr, pc
  6b3de0: e593f008     	ldr	pc, [r3, #0x8]
  6b3de4: e8bd8070     	pop	{r4, r5, r6, pc}
  6b3de8: ebfffbb4     	bl	0x6b2cc0 <glitch::gui::CGUIEditBox::processKey(glitch::SEvent const&)> @ imm = #-0x1130
  6b3dec: e3500000     	cmp	r0, #0
  6b3df0: 0afffff3     	beq	0x6b3dc4 <glitch::gui::CGUIEditBox::onEvent(glitch::SEvent const&)+0x54> @ imm = #-0x34
  6b3df4: e3a00001     	mov	r0, #1
  6b3df8: e8bd8070     	pop	{r4, r5, r6, pc}
  6b3dfc: e1a00003     	mov	r0, r3
  6b3e00: e8bd8070     	pop	{r4, r5, r6, pc}
  6b3e04: ebfffb4c     	bl	0x6b2b3c <glitch::gui::CGUIEditBox::processMouse(glitch::SEvent const&)> @ imm = #-0x12d0
  6b3e08: e3500000     	cmp	r0, #0
  6b3e0c: 0affffec     	beq	0x6b3dc4 <glitch::gui::CGUIEditBox::onEvent(glitch::SEvent const&)+0x54> @ imm = #-0x50
  6b3e10: eafffff7     	b	0x6b3df4 <glitch::gui::CGUIEditBox::onEvent(glitch::SEvent const&)+0x84> @ imm = #-0x24

; range: 0x0055fe1c .. 0x0056008c (624 bytes)
; sha256: e235d017e5a1cb7dd9fb300bcc8f8634e1e98134a899393d9acbb16fc80f4b30
  55fe1c: e92d4070     	push	{r4, r5, r6, lr}
  55fe20: e5d03099     	ldrb	r3, [r0, #0x99]
  55fe24: e24dd020     	sub	sp, sp, #32
  55fe28: e1a04000     	mov	r4, r0
  55fe2c: e3530000     	cmp	r3, #0
  55fe30: e1a05001     	mov	r5, r1
  55fe34: 0a000006     	beq	0x55fe54 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x38> @ imm = #0x18
  55fe38: e5916000     	ldr	r6, [r1]
  55fe3c: e3560000     	cmp	r6, #0
  55fe40: 1a00000d     	bne	0x55fe7c <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x60> @ imm = #0x34
  55fe44: e5913010     	ldr	r3, [r1, #0x10]
  55fe48: e3530000     	cmp	r3, #0
  55fe4c: 05c03160     	strbeq	r3, [r0, #0x160]
  55fe50: 1a000024     	bne	0x55fee8 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0xcc> @ imm = #0x90
  55fe54: e5943024     	ldr	r3, [r4, #0x24]
  55fe58: e3530000     	cmp	r3, #0
  55fe5c: 0a00003a     	beq	0x55ff4c <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x130> @ imm = #0xe8
  55fe60: e1a00003     	mov	r0, r3
  55fe64: e1a01005     	mov	r1, r5
  55fe68: e5933000     	ldr	r3, [r3]
  55fe6c: e1a0e00f     	mov	lr, pc
  55fe70: e593f008     	ldr	pc, [r3, #0x8]
  55fe74: e28dd020     	add	sp, sp, #32
  55fe78: e8bd8070     	pop	{r4, r5, r6, pc}
  55fe7c: e3560001     	cmp	r6, #1
  55fe80: 1afffff3     	bne	0x55fe54 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0x34
  55fe84: e5913014     	ldr	r3, [r1, #0x14]
  55fe88: e3530003     	cmp	r3, #3
  55fe8c: 03a03000     	moveq	r3, #0
  55fe90: 05c03160     	strbeq	r3, [r0, #0x160]
  55fe94: 01a00006     	moveq	r0, r6
  55fe98: 0afffff5     	beq	0x55fe74 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0x2c
  55fe9c: e3530006     	cmp	r3, #6
  55fea0: 0a00002b     	beq	0x55ff54 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x138> @ imm = #0xac
  55fea4: e3530000     	cmp	r3, #0
  55fea8: 1affffe9     	bne	0x55fe54 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0x5c
  55feac: e5912008     	ldr	r2, [r1, #0x8]
  55feb0: e5943024     	ldr	r3, [r4, #0x24]
  55feb4: e5842158     	str	r2, [r4, #0x158]
  55feb8: e591200c     	ldr	r2, [r1, #0xc]
  55febc: e3530000     	cmp	r3, #0
  55fec0: e5c46160     	strb	r6, [r4, #0x160]
  55fec4: e584215c     	str	r2, [r4, #0x15c]
  55fec8: 0a00001d     	beq	0x55ff44 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x128> @ imm = #0x74
  55fecc: e1a00003     	mov	r0, r3
  55fed0: e1a01004     	mov	r1, r4
  55fed4: e5933000     	ldr	r3, [r3]
  55fed8: e1a0e00f     	mov	lr, pc
  55fedc: e593f064     	ldr	pc, [r3, #0x64]
  55fee0: e1a00006     	mov	r0, r6
  55fee4: eaffffe2     	b	0x55fe74 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0x78
  55fee8: e3530001     	cmp	r3, #1
  55feec: 0a000043     	beq	0x560000 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x1e4> @ imm = #0x10c
  55fef0: e3530005     	cmp	r3, #5
  55fef4: 1affffd6     	bne	0x55fe54 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0xa8
  55fef8: e5912008     	ldr	r2, [r1, #0x8]
  55fefc: e5903164     	ldr	r3, [r0, #0x164]
  55ff00: e1520003     	cmp	r2, r3
  55ff04: 1affffd2     	bne	0x55fe54 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0xb8
  55ff08: e5903024     	ldr	r3, [r0, #0x24]
  55ff0c: e3530000     	cmp	r3, #0
  55ff10: 0a000058     	beq	0x560078 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x25c> @ imm = #0x160
  55ff14: e3a02004     	mov	r2, #4
  55ff18: e58d0008     	str	r0, [sp, #0x8]
  55ff1c: e58d600c     	str	r6, [sp, #0xc]
  55ff20: e58d2010     	str	r2, [sp, #0x10]
  55ff24: e58d6000     	str	r6, [sp]
  55ff28: e1a00003     	mov	r0, r3
  55ff2c: e1a0100d     	mov	r1, sp
  55ff30: e5933000     	ldr	r3, [r3]
  55ff34: e1a0e00f     	mov	lr, pc
  55ff38: e593f008     	ldr	pc, [r3, #0x8]
  55ff3c: e3500000     	cmp	r0, #0
  55ff40: 0a000028     	beq	0x55ffe8 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x1cc> @ imm = #0xa0
  55ff44: e3a00001     	mov	r0, #1
  55ff48: eaffffc9     	b	0x55fe74 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0xdc
  55ff4c: e3a00000     	mov	r0, #0
  55ff50: eaffffc7     	b	0x55fe74 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0xe4
  55ff54: e5d43160     	ldrb	r3, [r4, #0x160]
  55ff58: e3530000     	cmp	r3, #0
  55ff5c: 0affffbc     	beq	0x55fe54 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0x110
  55ff60: e5943024     	ldr	r3, [r4, #0x24]
  55ff64: e3530000     	cmp	r3, #0
  55ff68: 0a00003f     	beq	0x56006c <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x250> @ imm = #0xfc
  55ff6c: e5931038     	ldr	r1, [r3, #0x38]
  55ff70: e5952008     	ldr	r2, [r5, #0x8]
  55ff74: e1520001     	cmp	r2, r1
  55ff78: dafffff1     	ble	0x55ff44 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x128> @ imm = #-0x3c
  55ff7c: e593003c     	ldr	r0, [r3, #0x3c]
  55ff80: e595100c     	ldr	r1, [r5, #0xc]
  55ff84: e1510000     	cmp	r1, r0
  55ff88: daffffed     	ble	0x55ff44 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x128> @ imm = #-0x4c
  55ff8c: e5930040     	ldr	r0, [r3, #0x40]
  55ff90: e1520000     	cmp	r2, r0
  55ff94: aaffffea     	bge	0x55ff44 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x128> @ imm = #-0x58
  55ff98: e5933044     	ldr	r3, [r3, #0x44]
  55ff9c: e1510003     	cmp	r1, r3
  55ffa0: aaffffe7     	bge	0x55ff44 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x128> @ imm = #-0x64
  55ffa4: e5940158     	ldr	r0, [r4, #0x158]
  55ffa8: e594c15c     	ldr	r12, [r4, #0x15c]
  55ffac: e5943000     	ldr	r3, [r4]
  55ffb0: e0602002     	rsb	r2, r0, r2
  55ffb4: e06c1001     	rsb	r1, r12, r1
  55ffb8: e5933028     	ldr	r3, [r3, #0x28]
  55ffbc: e1a00004     	mov	r0, r4
  55ffc0: e58d101c     	str	r1, [sp, #0x1c]
  55ffc4: e58d2018     	str	r2, [sp, #0x18]
  55ffc8: e28d1018     	add	r1, sp, #24
  55ffcc: e12fff33     	blx	r3
  55ffd0: e5953008     	ldr	r3, [r5, #0x8]
  55ffd4: e3a00001     	mov	r0, #1
  55ffd8: e5843158     	str	r3, [r4, #0x158]
  55ffdc: e595300c     	ldr	r3, [r5, #0xc]
  55ffe0: e584315c     	str	r3, [r4, #0x15c]
  55ffe4: eaffffa2     	b	0x55fe74 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0x178
  55ffe8: e1a00004     	mov	r0, r4
  55ffec: e5943000     	ldr	r3, [r4]
  55fff0: e1a0e00f     	mov	lr, pc
  55fff4: e593f01c     	ldr	pc, [r3, #0x1c]
  55fff8: e3a00001     	mov	r0, #1
  55fffc: eaffff9c     	b	0x55fe74 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0x190
  560000: e5903024     	ldr	r3, [r0, #0x24]
  560004: e3530000     	cmp	r3, #0
  560008: 0affffcf     	beq	0x55ff4c <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x130> @ imm = #-0xc4
  56000c: e5910008     	ldr	r0, [r1, #0x8]
  560010: e1500004     	cmp	r0, r4
  560014: 0a00000e     	beq	0x560054 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x238> @ imm = #0x38
  560018: e3500000     	cmp	r0, #0
  56001c: 0affff8f     	beq	0x55fe60 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x44> @ imm = #-0x1c4
  560020: e5902024     	ldr	r2, [r0, #0x24]
  560024: ea000005     	b	0x560040 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x224> @ imm = #0x14
  560028: e5921024     	ldr	r1, [r2, #0x24]
  56002c: e1a00002     	mov	r0, r2
  560030: e1520004     	cmp	r2, r4
  560034: 13510000     	cmpne	r1, #0
  560038: 0a000003     	beq	0x56004c <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x230> @ imm = #0xc
  56003c: e1a02001     	mov	r2, r1
  560040: e3520000     	cmp	r2, #0
  560044: 1afffff7     	bne	0x560028 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x20c> @ imm = #-0x24
  560048: e1a02000     	mov	r2, r0
  56004c: e1540002     	cmp	r4, r2
  560050: 1affff82     	bne	0x55fe60 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x44> @ imm = #-0x1f8
  560054: e1a00003     	mov	r0, r3
  560058: e1a01004     	mov	r1, r4
  56005c: e5933000     	ldr	r3, [r3]
  560060: e1a0e00f     	mov	lr, pc
  560064: e593f064     	ldr	pc, [r3, #0x64]
  560068: eaffff79     	b	0x55fe54 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x38> @ imm = #-0x21c
  56006c: e5912008     	ldr	r2, [r1, #0x8]
  560070: e591100c     	ldr	r1, [r1, #0xc]
  560074: eaffffca     	b	0x55ffa4 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x188> @ imm = #-0xd8
  560078: e5903000     	ldr	r3, [r0]
  56007c: e1a0e00f     	mov	lr, pc
  560080: e593f01c     	ldr	pc, [r3, #0x1c]
  560084: e3a00001     	mov	r0, #1
  560088: eaffff79     	b	0x55fe74 <glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)+0x58> @ imm = #-0x21c

; range: 0x00535768 .. 0x00535770 (8 bytes)
; sha256: 347342d6319f119dc6a730de4ab822210be5a8e5fd49aa14e420d783c34f6a12
  535768: e58011c4     	str	r1, [r0, #0x1c4]
  53576c: e12fff1e     	bx	lr
