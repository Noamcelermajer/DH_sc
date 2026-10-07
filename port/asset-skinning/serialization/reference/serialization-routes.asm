; APK-backed serialized skinning route audit.
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; Each range is printed by LLVM objdump and byte-compared with its mapped APK ELF slice.

; glitch::collada::CColladaDatabase::constructController(glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*) const
; role: controller-record dispatch gate: word +0 selects skin/morph
; ELF VA 0x0060fa24, size 0x4c, file offset 0x60fa24, sha256 60416ffca6232a47ca640aa4d92494e91a315e1822d9b17324aba9293066104a
0060fa24 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE>:
  60fa24: e92d4030     	push	{r4, r5, lr}
  60fa28: e593c000     	ldr	r12, [r3]
  60fa2c: e24dd00c     	sub	sp, sp, #12
  60fa30: e1a04000     	mov	r4, r0
  60fa34: e35c0000     	cmp	r12, #0
  60fa38: e59d5018     	ldr	r5, [sp, #0x18]
  60fa3c: 1a000004     	bne	0x60fa54 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE+0x30> @ imm = #0x10
  60fa40: e58d5000     	str	r5, [sp]
  60fa44: ebffffb6     	bl	0x60f924 <_ZNK6glitch7collada16CColladaDatabase13constructSkinEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE> @ imm = #-0x128
  60fa48: e1a00004     	mov	r0, r4
  60fa4c: e28dd00c     	add	sp, sp, #12
  60fa50: e8bd8030     	pop	{r4, r5, pc}
  60fa54: e35c0001     	cmp	r12, #1
  60fa58: 13a03000     	movne	r3, #0
  60fa5c: 15803000     	strne	r3, [r0]
  60fa60: 1afffff8     	bne	0x60fa48 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE+0x24> @ imm = #-0x20
  60fa64: e58d5000     	str	r5, [sp]
  60fa68: ebffffcd     	bl	0x60f9a4 <_ZNK6glitch7collada16CColladaDatabase14constructMorphEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE> @ imm = #-0xcc
  60fa6c: eafffff5     	b	0x60fa48 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE+0x24> @ imm = #-0x2c

; glitch::collada::CColladaDatabase::constructSkin(glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*) const
; role: skin factory virtual dispatch; forwards controller record
; ELF VA 0x0060f924, size 0x80, file offset 0x60f924, sha256 d20d2131ca54ca009e16fa186f2ffbea218c28c32bdbfaa6fed035bebcdf41e3
0060f924 <_ZNK6glitch7collada16CColladaDatabase13constructSkinEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE>:
  60f924: e92d4070     	push	{r4, r5, r6, lr}
  60f928: e24dd010     	sub	sp, sp, #16
  60f92c: e591c004     	ldr	r12, [r1, #0x4]
  60f930: e59d5020     	ldr	r5, [sp, #0x20]
  60f934: e1a0e001     	mov	lr, r1
  60f938: e1a06002     	mov	r6, r2
  60f93c: e1a0100c     	mov	r1, r12
  60f940: e1a04000     	mov	r4, r0
  60f944: e59cc000     	ldr	r12, [r12]
  60f948: e1a0200e     	mov	r2, lr
  60f94c: e58d3000     	str	r3, [sp]
  60f950: e28d000c     	add	r0, sp, #12
  60f954: e1a03006     	mov	r3, r6
  60f958: e58d5004     	str	r5, [sp, #0x4]
  60f95c: e1a0e00f     	mov	lr, pc
  60f960: e59cf058     	ldr	pc, [r12, #0x58]
  60f964: e1a00005     	mov	r0, r5
  60f968: e59d100c     	ldr	r1, [sp, #0xc]
  60f96c: eb012eb0     	bl	0x65b434 <_ZN6glitch7collada14CRootSceneNode10attachSkinEPNS0_12CSkinnedMeshE> @ imm = #0x4bac0
  60f970: e59d000c     	ldr	r0, [sp, #0xc]
  60f974: e3500000     	cmp	r0, #0
  60f978: e5840000     	str	r0, [r4]
  60f97c: 15903004     	ldrne	r3, [r0, #0x4]
  60f980: 12833001     	addne	r3, r3, #1
  60f984: 15803004     	strne	r3, [r0, #0x4]
  60f988: 159d000c     	ldrne	r0, [sp, #0xc]
  60f98c: e3500000     	cmp	r0, #0
  60f990: 0a000000     	beq	0x60f998 <_ZNK6glitch7collada16CColladaDatabase13constructSkinEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE+0x74> @ imm = #0x0
  60f994: ebf436fa     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2f2418
  60f998: e1a00004     	mov	r0, r4
  60f99c: e28dd010     	add	sp, sp, #16
  60f9a0: e8bd8070     	pop	{r4, r5, r6, pc}

; glitch::collada::CColladaDatabase::constructMorph(glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*) const
; role: morph factory virtual dispatch; forwards controller record
; ELF VA 0x0060f9a4, size 0x80, file offset 0x60f9a4, sha256 ae4dad87282b9b2327594bed123e06554a4f68338296b6cfe7d436ecc110eb86
0060f9a4 <_ZNK6glitch7collada16CColladaDatabase14constructMorphEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE>:
  60f9a4: e92d4070     	push	{r4, r5, r6, lr}
  60f9a8: e24dd010     	sub	sp, sp, #16
  60f9ac: e591c004     	ldr	r12, [r1, #0x4]
  60f9b0: e59d5020     	ldr	r5, [sp, #0x20]
  60f9b4: e1a0e001     	mov	lr, r1
  60f9b8: e1a06002     	mov	r6, r2
  60f9bc: e1a0100c     	mov	r1, r12
  60f9c0: e1a04000     	mov	r4, r0
  60f9c4: e59cc000     	ldr	r12, [r12]
  60f9c8: e1a0200e     	mov	r2, lr
  60f9cc: e58d3000     	str	r3, [sp]
  60f9d0: e28d000c     	add	r0, sp, #12
  60f9d4: e1a03006     	mov	r3, r6
  60f9d8: e58d5004     	str	r5, [sp, #0x4]
  60f9dc: e1a0e00f     	mov	lr, pc
  60f9e0: e59cf038     	ldr	pc, [r12, #0x38]
  60f9e4: e1a00005     	mov	r0, r5
  60f9e8: e59d100c     	ldr	r1, [sp, #0xc]
  60f9ec: eb012e21     	bl	0x65b278 <_ZN6glitch7collada14CRootSceneNode15addMorphingMeshEPNS0_13CMorphingMeshE> @ imm = #0x4b884
  60f9f0: e59d000c     	ldr	r0, [sp, #0xc]
  60f9f4: e3500000     	cmp	r0, #0
  60f9f8: e5840000     	str	r0, [r4]
  60f9fc: 15903004     	ldrne	r3, [r0, #0x4]
  60fa00: 12833001     	addne	r3, r3, #1
  60fa04: 15803004     	strne	r3, [r0, #0x4]
  60fa08: 159d000c     	ldrne	r0, [sp, #0xc]
  60fa0c: e3500000     	cmp	r0, #0
  60fa10: 0a000000     	beq	0x60fa18 <_ZNK6glitch7collada16CColladaDatabase14constructMorphEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE+0x74> @ imm = #0x0
  60fa14: ebf436da     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2f2498
  60fa18: e1a00004     	mov	r0, r4
  60fa1c: e28dd010     	add	sp, sp, #16
  60fa20: e8bd8070     	pop	{r4, r5, r6, pc}

; glitch::collada::CColladaDatabase::constructController(glitch::video::IVideoDriver*, int, glitch::collada::CRootSceneNode*) const
; role: controller index lookup then record dispatch
; ELF VA 0x0060fa70, size 0x48, file offset 0x60fa70, sha256 1ab485a7eff50958a20cd0413c00864663485f615e231037dddbd856d18b3e26
0060fa70 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEiPNS0_14CRootSceneNodeE>:
  60fa70: e92d4070     	push	{r4, r5, r6, lr}
  60fa74: e1a05001     	mov	r5, r1
  60fa78: e24dd008     	sub	sp, sp, #8
  60fa7c: e1a04000     	mov	r4, r0
  60fa80: e1a01003     	mov	r1, r3
  60fa84: e1a00005     	mov	r0, r5
  60fa88: e1a06002     	mov	r6, r2
  60fa8c: ebfffa68     	bl	0x60e434 <_ZNK6glitch7collada16CColladaDatabase13getControllerEi> @ imm = #-0x1660
  60fa90: e59dc018     	ldr	r12, [sp, #0x18]
  60fa94: e1a03000     	mov	r3, r0
  60fa98: e1a01005     	mov	r1, r5
  60fa9c: e1a00004     	mov	r0, r4
  60faa0: e1a02006     	mov	r2, r6
  60faa4: e58dc000     	str	r12, [sp]
  60faa8: ebffffdd     	bl	0x60fa24 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE> @ imm = #-0x8c
  60faac: e1a00004     	mov	r0, r4
  60fab0: e28dd008     	add	sp, sp, #8
  60fab4: e8bd8070     	pop	{r4, r5, r6, pc}

; glitch::collada::CColladaDatabase::constructController(glitch::video::IVideoDriver*, char const*, glitch::collada::CRootSceneNode*) const
; role: controller name lookup then record dispatch
; ELF VA 0x0061aa00, size 0x48, file offset 0x61aa00, sha256 3f34ac71c89a2e97e44ac82aa4e8e88d57ce5343ae5c51bfee6a3a50fde755ef
0061aa00 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE>:
  61aa00: e92d4070     	push	{r4, r5, r6, lr}
  61aa04: e1a05001     	mov	r5, r1
  61aa08: e24dd008     	sub	sp, sp, #8
  61aa0c: e1a04000     	mov	r4, r0
  61aa10: e1a01003     	mov	r1, r3
  61aa14: e1a00005     	mov	r0, r5
  61aa18: e1a06002     	mov	r6, r2
  61aa1c: ebffffdf     	bl	0x61a9a0 <_ZNK6glitch7collada16CColladaDatabase13getControllerEPKc> @ imm = #-0x84
  61aa20: e59dc018     	ldr	r12, [sp, #0x18]
  61aa24: e1a03000     	mov	r3, r0
  61aa28: e1a01005     	mov	r1, r5
  61aa2c: e1a00004     	mov	r0, r4
  61aa30: e1a02006     	mov	r2, r6
  61aa34: e58dc000     	str	r12, [sp]
  61aa38: ebffd3f9     	bl	0x60fa24 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE> @ imm = #-0xb01c
  61aa3c: e1a00004     	mov	r0, r4
  61aa40: e28dd008     	add	sp, sp, #8
  61aa44: e8bd8070     	pop	{r4, r5, r6, pc}

; glitch::collada::CColladaDatabase::constructController(glitch::video::IVideoDriver*, glitch::collada::SInstanceController*, glitch::collada::CRootSceneNode*, bool) const
; role: instance-controller name route plus instance material walk
; ELF VA 0x0061ace8, size 0x1d0, file offset 0x61ace8, sha256 49aca2080d1e3d6804f15624b2a323d7ba90f34e7215f7d194fb00a570d62953
0061ace8 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_19SInstanceControllerEPNS0_14CRootSceneNodeEb>:
  61ace8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  61acec: e1a06003     	mov	r6, r3
  61acf0: e24dd02c     	sub	sp, sp, #44
  61acf4: e5933004     	ldr	r3, [r3, #0x4]
  61acf8: e59dc050     	ldr	r12, [sp, #0x50]
  61acfc: e5dde054     	ldrb	lr, [sp, #0x54]
  61ad00: e1a05000     	mov	r5, r0
  61ad04: e2833001     	add	r3, r3, #1
  61ad08: e58dc000     	str	r12, [sp]
  61ad0c: e1a0a001     	mov	r10, r1
  61ad10: e1a0b002     	mov	r11, r2
  61ad14: e58de014     	str	lr, [sp, #0x14]
  61ad18: ebffff38     	bl	0x61aa00 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE> @ imm = #-0x320
  61ad1c: e5953000     	ldr	r3, [r5]
  61ad20: e3530000     	cmp	r3, #0
  61ad24: 0a000060     	beq	0x61aeac <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_19SInstanceControllerEPNS0_14CRootSceneNodeEb+0x1c4> @ imm = #0x180
  61ad28: e596200c     	ldr	r2, [r6, #0xc]
  61ad2c: e3520000     	cmp	r2, #0
  61ad30: da00002a     	ble	0x61ade0 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_19SInstanceControllerEPNS0_14CRootSceneNodeEb+0xf8> @ imm = #0xa8
  61ad34: e3a07000     	mov	r7, #0
  61ad38: e1a08007     	mov	r8, r7
  61ad3c: e28d4020     	add	r4, sp, #32
  61ad40: e28d9024     	add	r9, sp, #36
  61ad44: ea000019     	b	0x61adb0 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_19SInstanceControllerEPNS0_14CRootSceneNodeEb+0xc8> @ imm = #0x64
  61ad48: e5932004     	ldr	r2, [r3, #0x4]
  61ad4c: e2822001     	add	r2, r2, #1
  61ad50: ebffffcc     	bl	0x61ac88 <_ZNK6glitch7collada16CColladaDatabase11getMaterialEPKcS3_> @ imm = #-0xd0
  61ad54: e1a02000     	mov	r2, r0
  61ad58: e1a00004     	mov	r0, r4
  61ad5c: e59d1050     	ldr	r1, [sp, #0x50]
  61ad60: e1a0300b     	mov	r3, r11
  61ad64: eb010764     	bl	0x65cafc <_ZN6glitch7collada14CRootSceneNode11getMaterialEPNS0_9SMaterialEPNS_5video12IVideoDriverE> @ imm = #0x41d90
  61ad68: e5950000     	ldr	r0, [r5]
  61ad6c: e3a0e000     	mov	lr, #0
  61ad70: e1a01008     	mov	r1, r8
  61ad74: e590c000     	ldr	r12, [r0]
  61ad78: e1a03009     	mov	r3, r9
  61ad7c: e1a02004     	mov	r2, r4
  61ad80: e59cc020     	ldr	r12, [r12, #0x20]
  61ad84: e58de024     	str	lr, [sp, #0x24]
  61ad88: e12fff3c     	blx	r12
  61ad8c: e1a00009     	mov	r0, r9
  61ad90: ebfd7d35     	bl	0x57a26c <_ZN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEED1Ev> @ imm = #-0xa0b2c
  61ad94: e1a00004     	mov	r0, r4
  61ad98: ebf3d792     	bl	0x310be8 <_ZN5boost13intrusive_ptrIN6glitch5video9CMaterialEED1Ev> @ imm = #-0x30a1b8
  61ad9c: e596300c     	ldr	r3, [r6, #0xc]
  61ada0: e2888001     	add	r8, r8, #1
  61ada4: e287703c     	add	r7, r7, #60
  61ada8: e1580003     	cmp	r8, r3
  61adac: aa00000a     	bge	0x61addc <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_19SInstanceControllerEPNS0_14CRootSceneNodeEb+0xf4> @ imm = #0x28
  61adb0: e5963010     	ldr	r3, [r6, #0x10]
  61adb4: e1a0000a     	mov	r0, r10
  61adb8: e7931007     	ldr	r1, [r3, r7]
  61adbc: e0833007     	add	r3, r3, r7
  61adc0: e3510000     	cmp	r1, #0
  61adc4: 1affffdf     	bne	0x61ad48 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_19SInstanceControllerEPNS0_14CRootSceneNodeEb+0x60> @ imm = #-0x84
  61adc8: e5931008     	ldr	r1, [r3, #0x8]
  61adcc: e1a0000a     	mov	r0, r10
  61add0: ebffcd8a     	bl	0x60e400 <_ZNK6glitch7collada16CColladaDatabase11getMaterialEi> @ imm = #-0xc9d8
  61add4: e1a02000     	mov	r2, r0
  61add8: eaffffde     	b	0x61ad58 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_19SInstanceControllerEPNS0_14CRootSceneNodeEb+0x70> @ imm = #-0x88
  61addc: e5953000     	ldr	r3, [r5]
  61ade0: e1a00003     	mov	r0, r3
  61ade4: e1a0100b     	mov	r1, r11
  61ade8: e5933000     	ldr	r3, [r3]
  61adec: e59d2014     	ldr	r2, [sp, #0x14]
  61adf0: e1a0e00f     	mov	lr, pc
  61adf4: e593f040     	ldr	pc, [r3, #0x40]
  61adf8: e596300c     	ldr	r3, [r6, #0xc]
  61adfc: e3530000     	cmp	r3, #0
  61ae00: da000029     	ble	0x61aeac <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_19SInstanceControllerEPNS0_14CRootSceneNodeEb+0x1c4> @ imm = #0xa4
  61ae04: e3a08000     	mov	r8, #0
  61ae08: e1a07008     	mov	r7, r8
  61ae0c: e28d4020     	add	r4, sp, #32
  61ae10: e28d901c     	add	r9, sp, #28
  61ae14: e1a0b008     	mov	r11, r8
  61ae18: e5953000     	ldr	r3, [r5]
  61ae1c: e1a02007     	mov	r2, r7
  61ae20: e1a00004     	mov	r0, r4
  61ae24: e1a01003     	mov	r1, r3
  61ae28: e5933000     	ldr	r3, [r3]
  61ae2c: e1a0e00f     	mov	lr, pc
  61ae30: e593f018     	ldr	pc, [r3, #0x18]
  61ae34: e59a2004     	ldr	r2, [r10, #0x4]
  61ae38: e5963010     	ldr	r3, [r6, #0x10]
  61ae3c: e1a00009     	mov	r0, r9
  61ae40: e592c000     	ldr	r12, [r2]
  61ae44: e1a01002     	mov	r1, r2
  61ae48: e0833008     	add	r3, r3, r8
  61ae4c: e58d7008     	str	r7, [sp, #0x8]
  61ae50: e1a0200a     	mov	r2, r10
  61ae54: e58d5000     	str	r5, [sp]
  61ae58: e58d4004     	str	r4, [sp, #0x4]
  61ae5c: e58db00c     	str	r11, [sp, #0xc]
  61ae60: e1a0e00f     	mov	lr, pc
  61ae64: e59cf024     	ldr	pc, [r12, #0x24]
  61ae68: e595c000     	ldr	r12, [r5]
  61ae6c: e1a01007     	mov	r1, r7
  61ae70: e1a03009     	mov	r3, r9
  61ae74: e1a02004     	mov	r2, r4
  61ae78: e1a0000c     	mov	r0, r12
  61ae7c: e59cc000     	ldr	r12, [r12]
  61ae80: e1a0e00f     	mov	lr, pc
  61ae84: e59cf020     	ldr	pc, [r12, #0x20]
  61ae88: e1a00009     	mov	r0, r9
  61ae8c: ebfd7cf6     	bl	0x57a26c <_ZN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEED1Ev> @ imm = #-0xa0c28
  61ae90: e1a00004     	mov	r0, r4
  61ae94: ebf3d753     	bl	0x310be8 <_ZN5boost13intrusive_ptrIN6glitch5video9CMaterialEED1Ev> @ imm = #-0x30a2b4
  61ae98: e596300c     	ldr	r3, [r6, #0xc]
  61ae9c: e2877001     	add	r7, r7, #1
  61aea0: e288803c     	add	r8, r8, #60
  61aea4: e1570003     	cmp	r7, r3
  61aea8: baffffda     	blt	0x61ae18 <_ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_19SInstanceControllerEPNS0_14CRootSceneNodeEb+0x130> @ imm = #-0x98
  61aeac: e1a00005     	mov	r0, r5
  61aeb0: e28dd02c     	add	sp, sp, #44
  61aeb4: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

; glitch::collada::CColladaDatabase::constructModularSkin(glitch::collada::SInstanceModularSkin*, glitch::collada::CRootSceneNode*) const
; role: modular-skin factory virtual dispatch
; ELF VA 0x0060e6f0, size 0x6c, file offset 0x60e6f0, sha256 bba4a2973ad8f8946483fb05eb7edc4bee2cd371944b5a6311af8f583c369785
0060e6f0 <_ZNK6glitch7collada16CColladaDatabase20constructModularSkinEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeE>:
  60e6f0: e92d4030     	push	{r4, r5, lr}
  60e6f4: e591c004     	ldr	r12, [r1, #0x4]
  60e6f8: e24dd014     	sub	sp, sp, #20
  60e6fc: e1a0e001     	mov	lr, r1
  60e700: e1a05002     	mov	r5, r2
  60e704: e1a04000     	mov	r4, r0
  60e708: e1a0100c     	mov	r1, r12
  60e70c: e28d000c     	add	r0, sp, #12
  60e710: e59cc000     	ldr	r12, [r12]
  60e714: e1a0200e     	mov	r2, lr
  60e718: e58d3000     	str	r3, [sp]
  60e71c: e1a03005     	mov	r3, r5
  60e720: e1a0e00f     	mov	lr, pc
  60e724: e59cf05c     	ldr	pc, [r12, #0x5c]
  60e728: e59d000c     	ldr	r0, [sp, #0xc]
  60e72c: e3500000     	cmp	r0, #0
  60e730: e5840000     	str	r0, [r4]
  60e734: 15903004     	ldrne	r3, [r0, #0x4]
  60e738: 12833001     	addne	r3, r3, #1
  60e73c: 15803004     	strne	r3, [r0, #0x4]
  60e740: 159d000c     	ldrne	r0, [sp, #0xc]
  60e744: e3500000     	cmp	r0, #0
  60e748: 0a000000     	beq	0x60e750 <_ZNK6glitch7collada16CColladaDatabase20constructModularSkinEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeE+0x60> @ imm = #0x0
  60e74c: ebf43b8c     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2f11d0
  60e750: e1a00004     	mov	r0, r4
  60e754: e28dd014     	add	sp, sp, #20
  60e758: e8bd8030     	pop	{r4, r5, pc}

; glitch::collada::CColladaFactory::createSkin(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*)
; role: allocates and calls CSkinnedMesh constructor
; ELF VA 0x006315cc, size 0x5c, file offset 0x6315cc, sha256 c7615e8f2b232a02d613f9f70b05a208aec1a68d053b9c635ae83a4a74c1c733
006315cc <_ZN6glitch7collada15CColladaFactory10createSkinERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE>:
  6315cc: e92d40f0     	push	{r4, r5, r6, r7, lr}
  6315d0: e3a01000     	mov	r1, #0
  6315d4: e24dd00c     	sub	sp, sp, #12
  6315d8: e1a05000     	mov	r5, r0
  6315dc: e3a0009c     	mov	r0, #156
  6315e0: e1a06002     	mov	r6, r2
  6315e4: e1a07003     	mov	r7, r3
  6315e8: ebfc0aef     	bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xfd444
  6315ec: e59dc024     	ldr	r12, [sp, #0x24]
  6315f0: e59d3020     	ldr	r3, [sp, #0x20]
  6315f4: e1a01006     	mov	r1, r6
  6315f8: e1a02007     	mov	r2, r7
  6315fc: e1a04000     	mov	r4, r0
  631600: e58dc000     	str	r12, [sp]
  631604: eb00d3b9     	bl	0x6664f0 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE> @ imm = #0x34ee4
  631608: e3540000     	cmp	r4, #0
  63160c: e5854000     	str	r4, [r5]
  631610: 15943004     	ldrne	r3, [r4, #0x4]
  631614: e1a00005     	mov	r0, r5
  631618: 12833001     	addne	r3, r3, #1
  63161c: 15843004     	strne	r3, [r4, #0x4]
  631620: e28dd00c     	add	sp, sp, #12
  631624: e8bd80f0     	pop	{r4, r5, r6, r7, pc}

; glitch::collada::CColladaFactory::createMorph(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*)
; role: allocates and calls CMorphingMesh constructor
; ELF VA 0x006318c8, size 0x5c, file offset 0x6318c8, sha256 4e85b92ca4a1d6563c690310b7af594813b6d053ffb24f672ec621dba5851299
006318c8 <_ZN6glitch7collada15CColladaFactory11createMorphERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE>:
  6318c8: e92d40f0     	push	{r4, r5, r6, r7, lr}
  6318cc: e3a01000     	mov	r1, #0
  6318d0: e24dd00c     	sub	sp, sp, #12
  6318d4: e1a05000     	mov	r5, r0
  6318d8: e3a00040     	mov	r0, #64
  6318dc: e1a06002     	mov	r6, r2
  6318e0: e1a07003     	mov	r7, r3
  6318e4: ebfc0a30     	bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xfd740
  6318e8: e59dc024     	ldr	r12, [sp, #0x24]
  6318ec: e59d3020     	ldr	r3, [sp, #0x20]
  6318f0: e1a01006     	mov	r1, r6
  6318f4: e1a02007     	mov	r2, r7
  6318f8: e1a04000     	mov	r4, r0
  6318fc: e58dc000     	str	r12, [sp]
  631900: eb006830     	bl	0x64b9c8 <_ZN6glitch7collada13CMorphingMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE> @ imm = #0x1a0c0
  631904: e3540000     	cmp	r4, #0
  631908: e5854000     	str	r4, [r5]
  63190c: 15943004     	ldrne	r3, [r4, #0x4]
  631910: e1a00005     	mov	r0, r5
  631914: 12833001     	addne	r3, r3, #1
  631918: 15843004     	strne	r3, [r4, #0x4]
  63191c: e28dd00c     	add	sp, sp, #12
  631920: e8bd80f0     	pop	{r4, r5, r6, r7, pc}

; glitch::collada::CColladaFactory::createModularSkin(glitch::collada::CColladaDatabase const&, glitch::collada::SInstanceModularSkin*, glitch::collada::CRootSceneNode*)
; role: allocates and calls CModularSkinnedMesh constructor
; ELF VA 0x00631560, size 0x6c, file offset 0x631560, sha256 7c9060f8abc01e7f51409a29e6c16797f5c2375e10415fe79972d983182d109e
00631560 <_ZN6glitch7collada15CColladaFactory17createModularSkinERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeE>:
  631560: e92d40f0     	push	{r4, r5, r6, r7, lr}
  631564: e3a01000     	mov	r1, #0
  631568: e24dd014     	sub	sp, sp, #20
  63156c: e1a05000     	mov	r5, r0
  631570: e3a0005c     	mov	r0, #92
  631574: e1a06002     	mov	r6, r2
  631578: e1a07003     	mov	r7, r3
  63157c: ebfc0b0a     	bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xfd3d8
  631580: e3e0c000     	mvn	r12, #0
  631584: e58dc000     	str	r12, [sp]
  631588: e3a0c001     	mov	r12, #1
  63158c: e59d3028     	ldr	r3, [sp, #0x28]
  631590: e58dc004     	str	r12, [sp, #0x4]
  631594: e1a01006     	mov	r1, r6
  631598: e3a0c000     	mov	r12, #0
  63159c: e1a02007     	mov	r2, r7
  6315a0: e1a04000     	mov	r4, r0
  6315a4: e58dc008     	str	r12, [sp, #0x8]
  6315a8: eb005edc     	bl	0x649120 <_ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE> @ imm = #0x17b70
  6315ac: e3540000     	cmp	r4, #0
  6315b0: e5854000     	str	r4, [r5]
  6315b4: 15943004     	ldrne	r3, [r4, #0x4]
  6315b8: e1a00005     	mov	r0, r5
  6315bc: 12833001     	addne	r3, r3, #1
  6315c0: 15843004     	strne	r3, [r4, #0x4]
  6315c4: e28dd014     	add	sp, sp, #20
  6315c8: e8bd80f0     	pop	{r4, r5, r6, r7, pc}

; glitch::collada::CSkinnedMesh::CSkinnedMesh(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController&, glitch::collada::CRootSceneNode*)
; role: skin controller-to-runtime handoff
; ELF VA 0x006664f0, size 0x508, file offset 0x6664f0, sha256 29658b99c6d082d0c087d7a91818fac8ad28dab5b1c5ff0f711ba4947331f4f3
006664f0 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE>:
  6664f0: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6664f4: e59f54e4     	ldr	r5, [pc, #0x4e4]        @ 0x6669e0 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x4f0>
  6664f8: e59fc4e4     	ldr	r12, [pc, #0x4e4]       @ 0x6669e4 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x4f4>
  6664fc: e1a04000     	mov	r4, r0
  666500: e08f5005     	add	r5, pc, r5
  666504: e795c00c     	ldr	r12, [r5, r12]
  666508: e3a00000     	mov	r0, #0
  66650c: e5840004     	str	r0, [r4, #0x4]
  666510: e28cc008     	add	r12, r12, #8
  666514: e584c000     	str	r12, [r4]
  666518: e5910000     	ldr	r0, [r1]
  66651c: e1a07001     	mov	r7, r1
  666520: e24dd024     	sub	sp, sp, #36
  666524: e584000c     	str	r0, [r4, #0xc]
  666528: e5911004     	ldr	r1, [r1, #0x4]
  66652c: e3500000     	cmp	r0, #0
  666530: e5841010     	str	r1, [r4, #0x10]
  666534: 0a000003     	beq	0x666548 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x58> @ imm = #0xc
  666538: e5901004     	ldr	r1, [r0, #0x4]
  66653c: e3510000     	cmp	r1, #0
  666540: 12811001     	addne	r1, r1, #1
  666544: 15801004     	strne	r1, [r0, #0x4]
  666548: e59fc498     	ldr	r12, [pc, #0x498]       @ 0x6669e8 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x4f8>
  66654c: e59f0498     	ldr	r0, [pc, #0x498]        @ 0x6669ec <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x4fc>
  666550: e3a01000     	mov	r1, #0
  666554: e795c00c     	ldr	r12, [r5, r12]
  666558: e7950000     	ldr	r0, [r5, r0]
  66655c: e5841014     	str	r1, [r4, #0x14]
  666560: e28cc004     	add	r12, r12, #4
  666564: e584c008     	str	r12, [r4, #0x8]
  666568: e2800008     	add	r0, r0, #8
  66656c: e3a0c001     	mov	r12, #1
  666570: e5c4c018     	strb	r12, [r4, #0x18]
  666574: e5840000     	str	r0, [r4]
  666578: e5936008     	ldr	r6, [r3, #0x8]
  66657c: e3a0c4bf     	mov	r12, #-1090519040
  666580: e28cc502     	add	r12, r12, #8388608
  666584: e3a005fe     	mov	r0, #1065353216
  666588: e284e044     	add	lr, r4, #68
  66658c: e584601c     	str	r6, [r4, #0x1c]
  666590: e584c02c     	str	r12, [r4, #0x2c]
  666594: e5840038     	str	r0, [r4, #0x38]
  666598: e5c41020     	strb	r1, [r4, #0x20]
  66659c: e5c41022     	strb	r1, [r4, #0x22]
  6665a0: e5c41023     	strb	r1, [r4, #0x23]
  6665a4: e584c024     	str	r12, [r4, #0x24]
  6665a8: e584c028     	str	r12, [r4, #0x28]
  6665ac: e5840030     	str	r0, [r4, #0x30]
  6665b0: e5840034     	str	r0, [r4, #0x34]
  6665b4: e584103c     	str	r1, [r4, #0x3c]
  6665b8: e5841040     	str	r1, [r4, #0x40]
  6665bc: e5841044     	str	r1, [r4, #0x44]
  6665c0: e58e1004     	str	r1, [lr, #0x4]
  6665c4: e584104c     	str	r1, [r4, #0x4c]
  6665c8: e5841050     	str	r1, [r4, #0x50]
  6665cc: e5841054     	str	r1, [r4, #0x54]
  6665d0: e5841058     	str	r1, [r4, #0x58]
  6665d4: e584105c     	str	r1, [r4, #0x5c]
  6665d8: e5841060     	str	r1, [r4, #0x60]
  6665dc: e5841064     	str	r1, [r4, #0x64]
  6665e0: e5841068     	str	r1, [r4, #0x68]
  6665e4: e584106c     	str	r1, [r4, #0x6c]
  6665e8: e5841074     	str	r1, [r4, #0x74]
  6665ec: e5841078     	str	r1, [r4, #0x78]
  6665f0: e584107c     	str	r1, [r4, #0x7c]
  6665f4: e5841080     	str	r1, [r4, #0x80]
  6665f8: e5841098     	str	r1, [r4, #0x98]
  6665fc: e5841084     	str	r1, [r4, #0x84]
  666600: e5841088     	str	r1, [r4, #0x88]
  666604: e584108c     	str	r1, [r4, #0x8c]
  666608: e5841090     	str	r1, [r4, #0x90]
  66660c: e5841094     	str	r1, [r4, #0x94]
  666610: e5933004     	ldr	r3, [r3, #0x4]
  666614: e1a01002     	mov	r1, r2
  666618: e1a00004     	mov	r0, r4
  66661c: e59d2048     	ldr	r2, [sp, #0x48]
  666620: e5843008     	str	r3, [r4, #0x8]
  666624: ebfff933     	bl	0x664af8 <_ZN6glitch7collada12CSkinnedMesh15instanciateMeshEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE> @ imm = #-0x1b34
  666628: e5973000     	ldr	r3, [r7]
  66662c: e5933024     	ldr	r3, [r3, #0x24]
  666630: e5933020     	ldr	r3, [r3, #0x20]
  666634: e5939004     	ldr	r9, [r3, #0x4]
  666638: e5936064     	ldr	r6, [r3, #0x64]
  66663c: e3560000     	cmp	r6, #0
  666640: d3a06000     	movle	r6, #0
  666644: c3a06001     	movgt	r6, #1
  666648: e3590000     	cmp	r9, #0
  66664c: 0a00000b     	beq	0x666680 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x190> @ imm = #0x2c
  666650: e59f3398     	ldr	r3, [pc, #0x398]        @ 0x6669f0 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x500>
  666654: e5991014     	ldr	r1, [r9, #0x14]
  666658: e7958003     	ldr	r8, [r5, r3]
  66665c: e5983000     	ldr	r3, [r8]
  666660: e5933020     	ldr	r3, [r3, #0x20]
  666664: e5933034     	ldr	r3, [r3, #0x34]
  666668: e1a00003     	mov	r0, r3
  66666c: e5933000     	ldr	r3, [r3]
  666670: e1a0e00f     	mov	lr, pc
  666674: e593f00c     	ldr	pc, [r3, #0xc]
  666678: e2509000     	subs	r9, r0, #0
  66667c: 0a0000c9     	beq	0x6669a8 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x4b8> @ imm = #0x324
  666680: e59f336c     	ldr	r3, [pc, #0x36c]        @ 0x6669f4 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x504>
  666684: e3560000     	cmp	r6, #0
  666688: e58d9010     	str	r9, [sp, #0x10]
  66668c: e7953003     	ldr	r3, [r5, r3]
  666690: e2833008     	add	r3, r3, #8
  666694: e58d300c     	str	r3, [sp, #0xc]
  666698: 1a000047     	bne	0x6667bc <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x2cc> @ imm = #0x11c
  66669c: e3590000     	cmp	r9, #0
  6666a0: 0a000001     	beq	0x6666ac <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x1bc> @ imm = #0x4
  6666a4: e1a00009     	mov	r0, r9
  6666a8: ebf2dbb5     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x34912c
  6666ac: e3a01000     	mov	r1, #0
  6666b0: e3a00038     	mov	r0, #56
  6666b4: ebfb36bc     	bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x132510
  6666b8: e2845070     	add	r5, r4, #112
  6666bc: e1a03006     	mov	r3, r6
  6666c0: e594101c     	ldr	r1, [r4, #0x1c]
  6666c4: e1a02005     	mov	r2, r5
  6666c8: e1a07000     	mov	r7, r0
  6666cc: eb002010     	bl	0x66e714 <_ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb> @ imm = #0x8040
  6666d0: e594303c     	ldr	r3, [r4, #0x3c]
  6666d4: e584703c     	str	r7, [r4, #0x3c]
  6666d8: e3530000     	cmp	r3, #0
  6666dc: 0a000003     	beq	0x6666f0 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x200> @ imm = #0xc
  6666e0: e1a00003     	mov	r0, r3
  6666e4: e5933000     	ldr	r3, [r3]
  6666e8: e1a0e00f     	mov	lr, pc
  6666ec: e593f004     	ldr	pc, [r3, #0x4]
  6666f0: e3a01000     	mov	r1, #0
  6666f4: e3a00030     	mov	r0, #48
  6666f8: ebfb36ab     	bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x132554
  6666fc: e1a03006     	mov	r3, r6
  666700: e594101c     	ldr	r1, [r4, #0x1c]
  666704: e1a02005     	mov	r2, r5
  666708: e1a07000     	mov	r7, r0
  66670c: eb001472     	bl	0x66b8dc <_ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb> @ imm = #0x51c8
  666710: e5943040     	ldr	r3, [r4, #0x40]
  666714: e5847040     	str	r7, [r4, #0x40]
  666718: e3530000     	cmp	r3, #0
  66671c: 0a000003     	beq	0x666730 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x240> @ imm = #0xc
  666720: e1a00003     	mov	r0, r3
  666724: e5933000     	ldr	r3, [r3]
  666728: e1a0e00f     	mov	lr, pc
  66672c: e593f004     	ldr	pc, [r3, #0x4]
  666730: e3a01000     	mov	r1, #0
  666734: e3a00030     	mov	r0, #48
  666738: ebfb369b     	bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x132594
  66673c: e1a03006     	mov	r3, r6
  666740: e594101c     	ldr	r1, [r4, #0x1c]
  666744: e1a02005     	mov	r2, r5
  666748: e1a07000     	mov	r7, r0
  66674c: eb001a32     	bl	0x66d01c <_ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb> @ imm = #0x68c8
  666750: e5943044     	ldr	r3, [r4, #0x44]
  666754: e5847044     	str	r7, [r4, #0x44]
  666758: e3530000     	cmp	r3, #0
  66675c: 0a000003     	beq	0x666770 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x280> @ imm = #0xc
  666760: e1a00003     	mov	r0, r3
  666764: e5933000     	ldr	r3, [r3]
  666768: e1a0e00f     	mov	lr, pc
  66676c: e593f004     	ldr	pc, [r3, #0x4]
  666770: e3a01000     	mov	r1, #0
  666774: e3a00034     	mov	r0, #52
  666778: ebfb368b     	bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x1325d4
  66677c: e1a03006     	mov	r3, r6
  666780: e1a02005     	mov	r2, r5
  666784: e594101c     	ldr	r1, [r4, #0x1c]
  666788: e1a07000     	mov	r7, r0
  66678c: eb0023b1     	bl	0x66f658 <_ZN6glitch7collada6detail29CColladaSoftwareSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb> @ imm = #0x8ec4
  666790: e5943048     	ldr	r3, [r4, #0x48]
  666794: e5847048     	str	r7, [r4, #0x48]
  666798: e3530000     	cmp	r3, #0
  66679c: 0a000003     	beq	0x6667b0 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x2c0> @ imm = #0xc
  6667a0: e1a00003     	mov	r0, r3
  6667a4: e5933000     	ldr	r3, [r3]
  6667a8: e1a0e00f     	mov	lr, pc
  6667ac: e593f004     	ldr	pc, [r3, #0x4]
  6667b0: e1a00004     	mov	r0, r4
  6667b4: e28dd024     	add	sp, sp, #36
  6667b8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6667bc: e594301c     	ldr	r3, [r4, #0x1c]
  6667c0: e28da00c     	add	r10, sp, #12
  6667c4: e1a0200a     	mov	r2, r10
  6667c8: e5931080     	ldr	r1, [r3, #0x80]
  6667cc: e28d001c     	add	r0, sp, #28
  6667d0: ebfff4fe     	bl	0x663bd0 <_ZN6glitch3res8onDemandINS_7collada9SSkinDataIfEEE3getERNS0_14onDemandReaderE> @ imm = #-0x2c08
  6667d4: e59d301c     	ldr	r3, [sp, #0x1c]
  6667d8: e3530000     	cmp	r3, #0
  6667dc: 15932000     	ldrne	r2, [r3]
  6667e0: 12822001     	addne	r2, r2, #1
  6667e4: 15832000     	strne	r2, [r3]
  6667e8: e594504c     	ldr	r5, [r4, #0x4c]
  6667ec: e3550000     	cmp	r5, #0
  6667f0: 0a00000a     	beq	0x666820 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x330> @ imm = #0x28
  6667f4: e5953000     	ldr	r3, [r5]
  6667f8: e2433001     	sub	r3, r3, #1
  6667fc: e3530000     	cmp	r3, #0
  666800: e5853000     	str	r3, [r5]
  666804: 1a000005     	bne	0x666820 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x330> @ imm = #0x14
  666808: e595000c     	ldr	r0, [r5, #0xc]
  66680c: e3500000     	cmp	r0, #0
  666810: 0a000000     	beq	0x666818 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x328> @ imm = #0x0
  666814: ebf29e27     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x358764
  666818: e3a03000     	mov	r3, #0
  66681c: e585300c     	str	r3, [r5, #0xc]
  666820: e59d501c     	ldr	r5, [sp, #0x1c]
  666824: e3550000     	cmp	r5, #0
  666828: e584504c     	str	r5, [r4, #0x4c]
  66682c: 0a00000c     	beq	0x666864 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x374> @ imm = #0x30
  666830: e5953000     	ldr	r3, [r5]
  666834: e2433001     	sub	r3, r3, #1
  666838: e3530000     	cmp	r3, #0
  66683c: e5853000     	str	r3, [r5]
  666840: 1a000005     	bne	0x66685c <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x36c> @ imm = #0x14
  666844: e595000c     	ldr	r0, [r5, #0xc]
  666848: e3500000     	cmp	r0, #0
  66684c: 0a000000     	beq	0x666854 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x364> @ imm = #0x0
  666850: ebf29e18     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x3587a0
  666854: e3a03000     	mov	r3, #0
  666858: e585300c     	str	r3, [r5, #0xc]
  66685c: e3a03000     	mov	r3, #0
  666860: e58d301c     	str	r3, [sp, #0x1c]
  666864: e594301c     	ldr	r3, [r4, #0x1c]
  666868: e28d2020     	add	r2, sp, #32
  66686c: e2840050     	add	r0, r4, #80
  666870: e5931084     	ldr	r1, [r3, #0x84]
  666874: e3a03000     	mov	r3, #0
  666878: e5223008     	str	r3, [r2, #-0x8]!
  66687c: ebfffdc5     	bl	0x665f98 <_ZNSt6vectorIN6glitch3res15onDemandPointerISt4pairIftEEENS0_4core10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS5_> @ imm = #-0x8ec
  666880: e59d5018     	ldr	r5, [sp, #0x18]
  666884: e3550000     	cmp	r5, #0
  666888: 0a000006     	beq	0x6668a8 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x3b8> @ imm = #0x18
  66688c: e5953000     	ldr	r3, [r5]
  666890: e2433001     	sub	r3, r3, #1
  666894: e3530000     	cmp	r3, #0
  666898: e5853000     	str	r3, [r5]
  66689c: 0a00003a     	beq	0x66698c <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x49c> @ imm = #0xe8
  6668a0: e3a03000     	mov	r3, #0
  6668a4: e58d3018     	str	r3, [sp, #0x18]
  6668a8: e594301c     	ldr	r3, [r4, #0x1c]
  6668ac: e5932084     	ldr	r2, [r3, #0x84]
  6668b0: e3520000     	cmp	r2, #0
  6668b4: daffff78     	ble	0x66669c <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x1ac> @ imm = #-0x220
  6668b8: e3a05000     	mov	r5, #0
  6668bc: e28db014     	add	r11, sp, #20
  6668c0: e1a08005     	mov	r8, r5
  6668c4: e5933088     	ldr	r3, [r3, #0x88]
  6668c8: e1a0200a     	mov	r2, r10
  6668cc: e1a0000b     	mov	r0, r11
  6668d0: e0833185     	add	r3, r3, r5, lsl #3
  6668d4: e5931004     	ldr	r1, [r3, #0x4]
  6668d8: e5947050     	ldr	r7, [r4, #0x50]
  6668dc: ebfff4d6     	bl	0x663c3c <_ZN6glitch3res8onDemandISt4pairIftEE3getERNS0_14onDemandReaderE> @ imm = #-0x2ca8
  6668e0: e59d3014     	ldr	r3, [sp, #0x14]
  6668e4: e1a02105     	lsl	r2, r5, #2
  6668e8: e3530000     	cmp	r3, #0
  6668ec: 15931000     	ldrne	r1, [r3]
  6668f0: 12811001     	addne	r1, r1, #1
  6668f4: 15831000     	strne	r1, [r3]
  6668f8: e7973002     	ldr	r3, [r7, r2]
  6668fc: e3530000     	cmp	r3, #0
  666900: 0a00000b     	beq	0x666934 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x444> @ imm = #0x2c
  666904: e5931000     	ldr	r1, [r3]
  666908: e2411001     	sub	r1, r1, #1
  66690c: e3510000     	cmp	r1, #0
  666910: e5831000     	str	r1, [r3]
  666914: 1a000006     	bne	0x666934 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x444> @ imm = #0x18
  666918: e593000c     	ldr	r0, [r3, #0xc]
  66691c: e3500000     	cmp	r0, #0
  666920: 0a000002     	beq	0x666930 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x440> @ imm = #0x8
  666924: e88d000c     	stm	sp, {r2, r3}
  666928: ebf29de2     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x358878
  66692c: e89d000c     	ldm	sp, {r2, r3}
  666930: e583800c     	str	r8, [r3, #0xc]
  666934: e59d3014     	ldr	r3, [sp, #0x14]
  666938: e7873002     	str	r3, [r7, r2]
  66693c: e59d7014     	ldr	r7, [sp, #0x14]
  666940: e3570000     	cmp	r7, #0
  666944: 0a00000a     	beq	0x666974 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x484> @ imm = #0x28
  666948: e5973000     	ldr	r3, [r7]
  66694c: e2433001     	sub	r3, r3, #1
  666950: e3530000     	cmp	r3, #0
  666954: e5873000     	str	r3, [r7]
  666958: 1a000004     	bne	0x666970 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x480> @ imm = #0x10
  66695c: e597000c     	ldr	r0, [r7, #0xc]
  666960: e3500000     	cmp	r0, #0
  666964: 0a000000     	beq	0x66696c <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x47c> @ imm = #0x0
  666968: ebf29dd2     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x3588b8
  66696c: e587800c     	str	r8, [r7, #0xc]
  666970: e58d8014     	str	r8, [sp, #0x14]
  666974: e594301c     	ldr	r3, [r4, #0x1c]
  666978: e2855001     	add	r5, r5, #1
  66697c: e5932084     	ldr	r2, [r3, #0x84]
  666980: e1550002     	cmp	r5, r2
  666984: baffffce     	blt	0x6668c4 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x3d4> @ imm = #-0xc8
  666988: eaffff43     	b	0x66669c <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x1ac> @ imm = #-0x2f4
  66698c: e595000c     	ldr	r0, [r5, #0xc]
  666990: e3500000     	cmp	r0, #0
  666994: 0a000000     	beq	0x66699c <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x4ac> @ imm = #0x0
  666998: ebf29dc6     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x3588e8
  66699c: e3a03000     	mov	r3, #0
  6669a0: e585300c     	str	r3, [r5, #0xc]
  6669a4: eaffffbd     	b	0x6668a0 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x3b0> @ imm = #-0x10c
  6669a8: e5972000     	ldr	r2, [r7]
  6669ac: e5983000     	ldr	r3, [r8]
  6669b0: e5922024     	ldr	r2, [r2, #0x24]
  6669b4: e5933020     	ldr	r3, [r3, #0x20]
  6669b8: e5922020     	ldr	r2, [r2, #0x20]
  6669bc: e5933034     	ldr	r3, [r3, #0x34]
  6669c0: e5922004     	ldr	r2, [r2, #0x4]
  6669c4: e1a00003     	mov	r0, r3
  6669c8: e5933000     	ldr	r3, [r3]
  6669cc: e5921014     	ldr	r1, [r2, #0x14]
  6669d0: e1a0e00f     	mov	lr, pc
  6669d4: e593f00c     	ldr	pc, [r3, #0xc]
  6669d8: e1a09000     	mov	r9, r0
  6669dc: eaffff27     	b	0x666680 <_ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x190> @ imm = #-0x364
  6669e0: 90 e5 32 00  	.word	0x0032e590
  6669e4: 40 0a 00 00  	.word	0x00000a40
  6669e8: b4 17 00 00  	.word	0x000017b4
  6669ec: 14 13 00 00  	.word	0x00001314
  6669f0: 48 44 00 00  	.word	0x00004448
  6669f4: fc 46 00 00  	.word	0x000046fc

; glitch::collada::CMorphingMesh::CMorphingMesh(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController&, glitch::collada::CRootSceneNode*)
; role: morph controller-to-runtime handoff
; ELF VA 0x0064b9c8, size 0xd8, file offset 0x64b9c8, sha256 28affec4892aef82d88d225d22f6c016219b84fc903cab14366c7ba867b1560a
0064b9c8 <_ZN6glitch7collada13CMorphingMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE>:
  64b9c8: e59fc0c0     	ldr	r12, [pc, #0xc0]        @ 0x64ba90 <_ZN6glitch7collada13CMorphingMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0xc8>
  64b9cc: e92d4070     	push	{r4, r5, r6, lr}
  64b9d0: e59fe0bc     	ldr	lr, [pc, #0xbc]         @ 0x64ba94 <_ZN6glitch7collada13CMorphingMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0xcc>
  64b9d4: e08fc00c     	add	r12, pc, r12
  64b9d8: e1a04000     	mov	r4, r0
  64b9dc: e79ce00e     	ldr	lr, [r12, lr]
  64b9e0: e3a00000     	mov	r0, #0
  64b9e4: e5840004     	str	r0, [r4, #0x4]
  64b9e8: e28ee008     	add	lr, lr, #8
  64b9ec: e584e000     	str	lr, [r4]
  64b9f0: e5910000     	ldr	r0, [r1]
  64b9f4: e1a0e002     	mov	lr, r2
  64b9f8: e584000c     	str	r0, [r4, #0xc]
  64b9fc: e5911004     	ldr	r1, [r1, #0x4]
  64ba00: e3500000     	cmp	r0, #0
  64ba04: e59d2010     	ldr	r2, [sp, #0x10]
  64ba08: e5841010     	str	r1, [r4, #0x10]
  64ba0c: 0a000003     	beq	0x64ba20 <_ZN6glitch7collada13CMorphingMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0x58> @ imm = #0xc
  64ba10: e5901004     	ldr	r1, [r0, #0x4]
  64ba14: e3510000     	cmp	r1, #0
  64ba18: 12811001     	addne	r1, r1, #1
  64ba1c: 15801004     	strne	r1, [r0, #0x4]
  64ba20: e59f5070     	ldr	r5, [pc, #0x70]         @ 0x64ba98 <_ZN6glitch7collada13CMorphingMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0xd0>
  64ba24: e59f0070     	ldr	r0, [pc, #0x70]         @ 0x64ba9c <_ZN6glitch7collada13CMorphingMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE+0xd4>
  64ba28: e3a01000     	mov	r1, #0
  64ba2c: e79c5005     	ldr	r5, [r12, r5]
  64ba30: e79c0000     	ldr	r0, [r12, r0]
  64ba34: e584102c     	str	r1, [r4, #0x2c]
  64ba38: e2855004     	add	r5, r5, #4
  64ba3c: e2800008     	add	r0, r0, #8
  64ba40: e5845008     	str	r5, [r4, #0x8]
  64ba44: e5840000     	str	r0, [r4]
  64ba48: e5841014     	str	r1, [r4, #0x14]
  64ba4c: e5841018     	str	r1, [r4, #0x18]
  64ba50: e584101c     	str	r1, [r4, #0x1c]
  64ba54: e5841020     	str	r1, [r4, #0x20]
  64ba58: e5841024     	str	r1, [r4, #0x24]
  64ba5c: e5841028     	str	r1, [r4, #0x28]
  64ba60: e5931008     	ldr	r1, [r3, #0x8]
  64ba64: e3e00000     	mvn	r0, #0
  64ba68: e584003c     	str	r0, [r4, #0x3c]
  64ba6c: e5841030     	str	r1, [r4, #0x30]
  64ba70: e5842038     	str	r2, [r4, #0x38]
  64ba74: e5933004     	ldr	r3, [r3, #0x4]
  64ba78: e1a00004     	mov	r0, r4
  64ba7c: e1a0100e     	mov	r1, lr
  64ba80: e5843008     	str	r3, [r4, #0x8]
  64ba84: ebffff1d     	bl	0x64b700 <_ZN6glitch7collada13CMorphingMesh15instanciateMeshEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE> @ imm = #-0x38c
  64ba88: e1a00004     	mov	r0, r4
  64ba8c: e8bd8070     	pop	{r4, r5, r6, pc}
  64ba90: bc 90 34 00  	.word	0x003490bc
  64ba94: 40 0a 00 00  	.word	0x00000a40
  64ba98: b4 17 00 00  	.word	0x000017b4
  64ba9c: 3c 33 00 00  	.word	0x0000333c

; glitch::collada::CModularSkinnedMesh::CModularSkinnedMesh(glitch::collada::CColladaDatabase const&, glitch::collada::SInstanceModularSkin*, glitch::collada::CRootSceneNode*, int, bool, glitch::video::IVideoDriver*)
; role: modular instance-field and entry walk
; ELF VA 0x00649120, size 0x16c, file offset 0x649120, sha256 1e1a0c7426d67b5ad7dc589e653dcf29c7e2e45097235ae0b5dc2491f6f7b799
00649120 <_ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE>:
  649120: e59fc154     	ldr	r12, [pc, #0x154]       @ 0x64927c <_ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE+0x15c>
  649124: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  649128: e59fe150     	ldr	lr, [pc, #0x150]        @ 0x649280 <_ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE+0x160>
  64912c: e08fc00c     	add	r12, pc, r12
  649130: e1a04000     	mov	r4, r0
  649134: e79ce00e     	ldr	lr, [r12, lr]
  649138: e3a00000     	mov	r0, #0
  64913c: e5840004     	str	r0, [r4, #0x4]
  649140: e28ee008     	add	lr, lr, #8
  649144: e584e000     	str	lr, [r4]
  649148: e5910000     	ldr	r0, [r1]
  64914c: e584000c     	str	r0, [r4, #0xc]
  649150: e5911004     	ldr	r1, [r1, #0x4]
  649154: e3500000     	cmp	r0, #0
  649158: e5841010     	str	r1, [r4, #0x10]
  64915c: e5dd701c     	ldrb	r7, [sp, #0x1c]
  649160: 0a000003     	beq	0x649174 <_ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE+0x54> @ imm = #0xc
  649164: e5901004     	ldr	r1, [r0, #0x4]
  649168: e3510000     	cmp	r1, #0
  64916c: 12811001     	addne	r1, r1, #1
  649170: 15801004     	strne	r1, [r0, #0x4]
  649174: e59f5108     	ldr	r5, [pc, #0x108]        @ 0x649284 <_ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE+0x164>
  649178: e59f1108     	ldr	r1, [pc, #0x108]        @ 0x649288 <_ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE+0x168>
  64917c: e3a0e4bf     	mov	lr, #-1090519040
  649180: e79c5005     	ldr	r5, [r12, r5]
  649184: e79c1001     	ldr	r1, [r12, r1]
  649188: e28ee502     	add	lr, lr, #8388608
  64918c: e3a005fe     	mov	r0, #1065353216
  649190: e2816008     	add	r6, r1, #8
  649194: e3a0c001     	mov	r12, #1
  649198: e3a01000     	mov	r1, #0
  64919c: e2855004     	add	r5, r5, #4
  6491a0: e5845008     	str	r5, [r4, #0x8]
  6491a4: e5846000     	str	r6, [r4]
  6491a8: e5843020     	str	r3, [r4, #0x20]
  6491ac: e584e048     	str	lr, [r4, #0x48]
  6491b0: e5840054     	str	r0, [r4, #0x54]
  6491b4: e5c41058     	strb	r1, [r4, #0x58]
  6491b8: e5841014     	str	r1, [r4, #0x14]
  6491bc: e5c4c018     	strb	r12, [r4, #0x18]
  6491c0: e584201c     	str	r2, [r4, #0x1c]
  6491c4: e5841024     	str	r1, [r4, #0x24]
  6491c8: e5841028     	str	r1, [r4, #0x28]
  6491cc: e584102c     	str	r1, [r4, #0x2c]
  6491d0: e5841030     	str	r1, [r4, #0x30]
  6491d4: e5841034     	str	r1, [r4, #0x34]
  6491d8: e5841038     	str	r1, [r4, #0x38]
  6491dc: e584103c     	str	r1, [r4, #0x3c]
  6491e0: e584e040     	str	lr, [r4, #0x40]
  6491e4: e584e044     	str	lr, [r4, #0x44]
  6491e8: e584004c     	str	r0, [r4, #0x4c]
  6491ec: e5840050     	str	r0, [r4, #0x50]
  6491f0: e5c4c059     	strb	r12, [r4, #0x59]
  6491f4: e5923000     	ldr	r3, [r2]
  6491f8: e5926008     	ldr	r6, [r2, #0x8]
  6491fc: e59d2018     	ldr	r2, [sp, #0x18]
  649200: e0866003     	add	r6, r6, r3
  649204: e1520001     	cmp	r2, r1
  649208: da000019     	ble	0x649274 <_ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE+0x154> @ imm = #0x64
  64920c: e1a00004     	mov	r0, r4
  649210: e1a01006     	mov	r1, r6
  649214: e3a02000     	mov	r2, #0
  649218: ebfffefe     	bl	0x648e18 <_ZN6glitch7collada19CModularSkinnedMesh14setModuleCountEjb> @ imm = #-0x408
  64921c: e3560000     	cmp	r6, #0
  649220: 0a00000e     	beq	0x649260 <_ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE+0x140> @ imm = #0x38
  649224: e3a05000     	mov	r5, #0
  649228: e594301c     	ldr	r3, [r4, #0x1c]
  64922c: e1a00004     	mov	r0, r4
  649230: e5933004     	ldr	r3, [r3, #0x4]
  649234: e0833205     	add	r3, r3, r5, lsl #4
  649238: e5931004     	ldr	r1, [r3, #0x4]
  64923c: ebfff89d     	bl	0x6474b8 <_ZNK6glitch7collada19CModularSkinnedMesh11getModuleIdEPKc> @ imm = #-0x1d8c
  649240: e1a01005     	mov	r1, r5
  649244: e1a02000     	mov	r2, r0
  649248: e2855001     	add	r5, r5, #1
  64924c: e1a00004     	mov	r0, r4
  649250: e3a03000     	mov	r3, #0
  649254: ebffff5d     	bl	0x648fd0 <_ZN6glitch7collada19CModularSkinnedMesh17setCategoryModuleEiib> @ imm = #-0x28c
  649258: e1560005     	cmp	r6, r5
  64925c: 1afffff1     	bne	0x649228 <_ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE+0x108> @ imm = #-0x3c
  649260: e1a01007     	mov	r1, r7
  649264: e1a00004     	mov	r0, r4
  649268: ebfffc56     	bl	0x6483c8 <_ZN6glitch7collada19CModularSkinnedMesh12updateBufferEb> @ imm = #-0xea8
  64926c: e1a00004     	mov	r0, r4
  649270: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  649274: 0584c03c     	streq	r12, [r4, #0x3c]
  649278: eaffffe3     	b	0x64920c <_ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE+0xec> @ imm = #-0x74
  64927c: 64 b9 34 00  	.word	0x0034b964
  649280: 40 0a 00 00  	.word	0x00000a40
  649284: b4 17 00 00  	.word	0x000017b4
  649288: 38 3a 00 00  	.word	0x00003a38

; glitch::res::onDemand<glitch::collada::SSkinData<float>>::get(glitch::res::onDemandReader&)
; role: generic typed allocation and reader virtual call
; ELF VA 0x00663bd0, size 0x6c, file offset 0x663bd0, sha256 fd9ac867bc2fec9a269223cc381d591c6ff8dee3b8c6f488bb8669d288428a7b
00663bd0 <_ZN6glitch3res8onDemandINS_7collada9SSkinDataIfEEE3getERNS0_14onDemandReaderE>:
  663bd0: e92d4070     	push	{r4, r5, r6, lr}
  663bd4: e1a05000     	mov	r5, r0
  663bd8: e3510000     	cmp	r1, #0
  663bdc: e5851000     	str	r1, [r5]
  663be0: 15913000     	ldrne	r3, [r1]
  663be4: e1a04001     	mov	r4, r1
  663be8: e1a06002     	mov	r6, r2
  663bec: 12833001     	addne	r3, r3, #1
  663bf0: 15813000     	strne	r3, [r1]
  663bf4: e591100c     	ldr	r1, [r1, #0xc]
  663bf8: e3510000     	cmp	r1, #0
  663bfc: 0a000001     	beq	0x663c08 <_ZN6glitch3res8onDemandINS_7collada9SSkinDataIfEEE3getERNS0_14onDemandReaderE+0x38> @ imm = #0x4
  663c00: e1a00005     	mov	r0, r5
  663c04: e8bd8070     	pop	{r4, r5, r6, pc}
  663c08: e5940008     	ldr	r0, [r4, #0x8]
  663c0c: e3c00003     	bic	r0, r0, #3
  663c10: ebfb4164     	bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x12fa70
  663c14: e584000c     	str	r0, [r4, #0xc]
  663c18: e1a03000     	mov	r3, r0
  663c1c: e5942004     	ldr	r2, [r4, #0x4]
  663c20: e1a00006     	mov	r0, r6
  663c24: e596c000     	ldr	r12, [r6]
  663c28: e5941008     	ldr	r1, [r4, #0x8]
  663c2c: e1a0e00f     	mov	lr, pc
  663c30: e59cf008     	ldr	pc, [r12, #0x8]
  663c34: e1a00005     	mov	r0, r5
  663c38: e8bd8070     	pop	{r4, r5, r6, pc}

; glitch::collada::COnDemandReader::read(int, int, void*)
; role: generic on-demand byte seek/read implementation
; ELF VA 0x0060b2b8, size 0x4c, file offset 0x60b2b8, sha256 c7cc5f3eea1eb5bbf5f7eae9795a3d0d5fc8f25dd6b8a57c0c01088c66772b2a
0060b2b8 <_ZN6glitch7collada15COnDemandReader4readEiiPv>:
  60b2b8: e92d4070     	push	{r4, r5, r6, lr}
  60b2bc: e590c004     	ldr	r12, [r0, #0x4]
  60b2c0: e1a04000     	mov	r4, r0
  60b2c4: e1a05001     	mov	r5, r1
  60b2c8: e1a0000c     	mov	r0, r12
  60b2cc: e1a01002     	mov	r1, r2
  60b2d0: e59cc000     	ldr	r12, [r12]
  60b2d4: e3a02000     	mov	r2, #0
  60b2d8: e1a06003     	mov	r6, r3
  60b2dc: e1a0e00f     	mov	lr, pc
  60b2e0: e59cf018     	ldr	pc, [r12, #0x18]
  60b2e4: e5943004     	ldr	r3, [r4, #0x4]
  60b2e8: e1a01006     	mov	r1, r6
  60b2ec: e1a02005     	mov	r2, r5
  60b2f0: e1a00003     	mov	r0, r3
  60b2f4: e5933000     	ldr	r3, [r3]
  60b2f8: e1a0e00f     	mov	lr, pc
  60b2fc: e593f00c     	ldr	pc, [r3, #0xc]
  60b300: e8bd8070     	pop	{r4, r5, r6, pc}

; glitch::collada::COnDemandReader::read(int, int, void*, void (*)(int, int, void*, void*), void*)
; role: generic callback-overload byte seek/read implementation
; ELF VA 0x0060b304, size 0x4c, file offset 0x60b304, sha256 c7cc5f3eea1eb5bbf5f7eae9795a3d0d5fc8f25dd6b8a57c0c01088c66772b2a
0060b304 <_ZN6glitch7collada15COnDemandReader4readEiiPvPFviiS2_S2_ES2_>:
  60b304: e92d4070     	push	{r4, r5, r6, lr}
  60b308: e590c004     	ldr	r12, [r0, #0x4]
  60b30c: e1a04000     	mov	r4, r0
  60b310: e1a05001     	mov	r5, r1
  60b314: e1a0000c     	mov	r0, r12
  60b318: e1a01002     	mov	r1, r2
  60b31c: e59cc000     	ldr	r12, [r12]
  60b320: e3a02000     	mov	r2, #0
  60b324: e1a06003     	mov	r6, r3
  60b328: e1a0e00f     	mov	lr, pc
  60b32c: e59cf018     	ldr	pc, [r12, #0x18]
  60b330: e5943004     	ldr	r3, [r4, #0x4]
  60b334: e1a01006     	mov	r1, r6
  60b338: e1a02005     	mov	r2, r5
  60b33c: e1a00003     	mov	r0, r3
  60b340: e5933000     	ldr	r3, [r3]
  60b344: e1a0e00f     	mov	lr, pc
  60b348: e593f00c     	ldr	pc, [r3, #0xc]
  60b34c: e8bd8070     	pop	{r4, r5, r6, pc}
