; Exact ARM-mode listings emitted from the hashed original ELF PT_LOAD ranges.
; Instruction words use little-endian byte order; inline literal/data gaps are printed as raw bytes.
; These are evidence listings, not assembler-ready source.

; FUNCTION 0x006323d0, size=244 (0xf4), PT_LOAD=0, file_offset=0x006323d0
; symbol: _ZN6glitch7collada15CColladaFactory14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_9SMaterialEPNS0_14CRootSceneNodeE
; SHA-256: dc3090658f74e4ff70633a92030aab1b739e3b836e2ed704418ca6af4aed0b51
006323d0  f0 47 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, lr}
006323d4  20 d0 4d e2  sub	sp, sp, #32
006323d8  44 40 9d e5  ldr	r4, [sp, #0x44]
006323dc  01 70 a0 e1  mov	r7, r1
006323e0  02 80 a0 e1  mov	r8, r2
006323e4  00 00 54 e3  cmp	r4, #0
006323e8  03 a0 a0 e1  mov	r10, r3
006323ec  00 50 a0 e1  mov	r5, r0
006323f0  40 60 9d e5  ldr	r6, [sp, #0x40]
006323f4  08 00 00 0a  beq	0x63241c <_ZN6glitch7collada15CColladaFactory14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x4c> @ imm = #0x20
006323f8  04 10 a0 e1  mov	r1, r4
006323fc  00 20 96 e5  ldr	r2, [r6]
00632400  4c a4 00 eb  bl	0x65b538 <_ZNK6glitch7collada14CRootSceneNode11hasMaterialEPKc> @ imm = #0x29130
00632404  00 30 95 e5  ldr	r3, [r5]
00632408  00 00 53 e3  cmp	r3, #0
0063240c  03 00 00 0a  beq	0x632420 <_ZN6glitch7collada15CColladaFactory14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x50> @ imm = #0xc
00632410  05 00 a0 e1  mov	r0, r5
00632414  20 d0 8d e2  add	sp, sp, #32
00632418  f0 87 bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, pc}
0063241c  00 40 80 e5  str	r4, [r0]
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
00632454  1c 30 9d e5  ldr	r3, [sp, #0x1c]
00632458  00 00 53 e3  cmp	r3, #0
0063245c  15 00 00 0a  beq	0x6324b8 <_ZN6glitch7collada15CColladaFactory14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_9SMaterialEPNS0_14CRootSceneNodeE+0xe8> @ imm = #0x54
00632460  18 70 8d e2  add	r7, sp, #24
00632464  0a 20 a0 e1  mov	r2, r10
00632468  08 10 a0 e1  mov	r1, r8
0063246c  07 00 a0 e1  mov	r0, r7
00632470  09 30 a0 e1  mov	r3, r9
00632474  00 60 8d e5  str	r6, [sp]
00632478  04 40 8d e5  str	r4, [sp, #0x4]
0063247c  19 fe ff eb  bl	0x631ce8 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE> @ imm = #-0x79c
00632480  18 30 9d e5  ldr	r3, [sp, #0x18]
00632484  20 00 8d e2  add	r0, sp, #32
00632488  14 30 8d e5  str	r3, [sp, #0x14]
0063248c  00 00 53 e3  cmp	r3, #0
00632490  00 20 93 15  ldrne	r2, [r3]
00632494  01 20 82 12  addne	r2, r2, #1
00632498  00 20 83 15  strne	r2, [r3]
0063249c  14 30 9d 15  ldrne	r3, [sp, #0x14]
006324a0  00 20 95 e5  ldr	r2, [r5]
006324a4  00 30 85 e5  str	r3, [r5]
006324a8  0c 20 20 e5  str	r2, [r0, #-0xc]!
006324ac  cd 79 f3 eb  bl	0x310be8 <_ZN5boost13intrusive_ptrIN6glitch5video9CMaterialEED1Ev> @ imm = #-0x3218cc
006324b0  07 00 a0 e1  mov	r0, r7
006324b4  cb 79 f3 eb  bl	0x310be8 <_ZN5boost13intrusive_ptrIN6glitch5video9CMaterialEED1Ev> @ imm = #-0x3218d4
006324b8  09 00 a0 e1  mov	r0, r9
006324bc  7d 7f f4 eb  bl	0x3522b8 <_ZN5boost13intrusive_ptrIN6glitch5video17CMaterialRendererEED1Ev> @ imm = #-0x2e020c
006324c0  d2 ff ff ea  b	0x632410 <_ZN6glitch7collada15CColladaFactory14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x40> @ imm = #-0xb8

; FUNCTION 0x00631ce8, size=1768 (0x6e8), PT_LOAD=0, file_offset=0x00631ce8
; symbol: _ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE
; SHA-256: 85623a86cab3a537b4b865cd201292198524a9033ce9a266fed7713c3c138e4b
00631ce8  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
00631cec  00 20 a0 e3  mov	r2, #0
00631cf0  a4 d0 4d e2  sub	sp, sp, #164
00631cf4  1c 00 8d e5  str	r0, [sp, #0x1c]
00631cf8  18 30 8d e5  str	r3, [sp, #0x18]
00631cfc  00 20 80 e5  str	r2, [r0]
00631d00  18 00 9d e5  ldr	r0, [sp, #0x18]
00631d04  9c 16 9f e5  ldr	r1, [pc, #0x69c]        @ 0x6323a8 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6c0>
00631d08  c8 80 9d e5  ldr	r8, [sp, #0xc8]
00631d0c  00 30 90 e5  ldr	r3, [r0]
00631d10  01 10 8f e0  add	r1, pc, r1
00631d14  28 10 8d e5  str	r1, [sp, #0x28]
00631d18  02 00 53 e1  cmp	r3, r2
00631d1c  61 00 00 0a  beq	0x631ea8 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x1c0> @ imm = #0x184
00631d20  9c 40 8d e2  add	r4, sp, #156
00631d24  02 30 a0 e1  mov	r3, r2
00631d28  18 10 9d e5  ldr	r1, [sp, #0x18]
00631d2c  00 20 98 e5  ldr	r2, [r8]
00631d30  04 00 a0 e1  mov	r0, r4
00631d34  d9 68 fe eb  bl	0x5cc0a0 <_ZN6glitch5video9CMaterial8allocateERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKch> @ imm = #-0x65c9c
00631d38  9c 30 9d e5  ldr	r3, [sp, #0x9c]
00631d3c  a0 00 8d e2  add	r0, sp, #160
00631d40  98 30 8d e5  str	r3, [sp, #0x98]
00631d44  00 00 53 e3  cmp	r3, #0
00631d48  00 20 93 15  ldrne	r2, [r3]
00631d4c  01 20 82 12  addne	r2, r2, #1
00631d50  00 20 83 15  strne	r2, [r3]
00631d54  1c 90 9d e5  ldr	r9, [sp, #0x1c]
00631d58  98 30 9d 15  ldrne	r3, [sp, #0x98]
00631d5c  00 20 99 e5  ldr	r2, [r9]
00631d60  00 30 89 e5  str	r3, [r9]
00631d64  08 20 20 e5  str	r2, [r0, #-0x8]!
00631d68  9e 7b f3 eb  bl	0x310be8 <_ZN5boost13intrusive_ptrIN6glitch5video9CMaterialEED1Ev> @ imm = #-0x321188
00631d6c  04 00 a0 e1  mov	r0, r4
00631d70  9c 7b f3 eb  bl	0x310be8 <_ZN5boost13intrusive_ptrIN6glitch5video9CMaterialEED1Ev> @ imm = #-0x321190
00631d74  10 a0 98 e5  ldr	r10, [r8, #0x10]
00631d78  00 00 5a e3  cmp	r10, #0
00631d7c  20 a0 8d e5  str	r10, [sp, #0x20]
00631d80  48 00 00 da  ble	0x631ea8 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x1c0> @ imm = #0x120
00631d84  20 36 9f e5  ldr	r3, [pc, #0x620]        @ 0x6323ac <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6c4>
00631d88  20 26 9f e5  ldr	r2, [pc, #0x620]        @ 0x6323b0 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6c8>
00631d8c  00 40 a0 e3  mov	r4, #0
00631d90  03 30 8f e0  add	r3, pc, r3
00631d94  4c 30 83 e2  add	r3, r3, #76
00631d98  3c 30 8d e5  str	r3, [sp, #0x3c]
00631d9c  10 36 9f e5  ldr	r3, [pc, #0x610]        @ 0x6323b4 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6cc>
00631da0  02 20 8f e0  add	r2, pc, r2
00631da4  2c 20 8d e5  str	r2, [sp, #0x2c]
00631da8  03 30 8f e0  add	r3, pc, r3
00631dac  34 30 8d e5  str	r3, [sp, #0x34]
00631db0  00 36 9f e5  ldr	r3, [pc, #0x600]        @ 0x6323b8 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6d0>
00631db4  04 60 a0 e1  mov	r6, r4
00631db8  03 30 8f e0  add	r3, pc, r3
00631dbc  38 30 8d e5  str	r3, [sp, #0x38]
00631dc0  1c 00 00 ea  b	0x631e38 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x150> @ imm = #0x70
00631dc4  1c 10 9d e5  ldr	r1, [sp, #0x1c]
00631dc8  00 00 91 e5  ldr	r0, [r1]
00631dcc  10 10 97 e5  ldr	r1, [r7, #0x10]
00631dd0  04 30 90 e5  ldr	r3, [r0, #0x4]
00631dd4  be 20 d3 e1  ldrh	r2, [r3, #14]
00631dd8  02 00 55 e1  cmp	r5, r2
00631ddc  20 90 93 35  ldrlo	r9, [r3, #0x20]
00631de0  00 90 a0 23  movhs	r9, #0
00631de4  05 92 89 30  addlo	r9, r9, r5, lsl #4
00631de8  08 a0 99 e5  ldr	r10, [r9, #0x8]
00631dec  0c a0 8d e5  str	r10, [sp, #0xc]
00631df0  00 10 91 e5  ldr	r1, [r1]
00631df4  01 00 5a e1  cmp	r10, r1
00631df8  2d 00 00 9a  bls	0x631eb4 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x1cc> @ imm = #0xb4
00631dfc  1c 20 90 e5  ldr	r2, [r0, #0x1c]
00631e00  00 30 99 e5  ldr	r3, [r9]
00631e04  b0 15 9f e5  ldr	r1, [pc, #0x5b0]        @ 0x6323bc <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6d4>
00631e08  00 00 52 e3  cmp	r2, #0
00631e0c  04 20 82 12  addne	r2, r2, #4
00631e10  00 00 53 e3  cmp	r3, #0
00631e14  04 30 83 12  addne	r3, r3, #4
00631e18  01 10 8f e0  add	r1, pc, r1
00631e1c  03 00 a0 e3  mov	r0, #3
00631e20  83 64 ff eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #-0x26df4
00631e24  20 30 9d e5  ldr	r3, [sp, #0x20]
00631e28  01 60 86 e2  add	r6, r6, #1
00631e2c  18 40 84 e2  add	r4, r4, #24
00631e30  03 00 56 e1  cmp	r6, r3
00631e34  1b 00 00 0a  beq	0x631ea8 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x1c0> @ imm = #0x6c
00631e38  14 70 98 e5  ldr	r7, [r8, #0x14]
00631e3c  18 c0 9d e5  ldr	r12, [sp, #0x18]
00631e40  00 20 a0 e3  mov	r2, #0
00631e44  04 10 97 e7  ldr	r1, [r7, r4]
00631e48  00 00 9c e5  ldr	r0, [r12]
00631e4c  8e 84 fe eb  bl	0x5d308c <_ZNK6glitch5video17CMaterialRenderer14getParameterIDEPKct> @ imm = #-0x5edc8
00631e50  ff 3f 0f e3  movw	r3, #0xffff
00631e54  03 00 50 e1  cmp	r0, r3
00631e58  04 70 87 e0  add	r7, r7, r4
00631e5c  00 50 a0 e1  mov	r5, r0
00631e60  d7 ff ff 1a  bne	0x631dc4 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0xdc> @ imm = #-0xa4
00631e64  08 30 97 e5  ldr	r3, [r7, #0x8]
00631e68  14 00 53 e3  cmp	r3, #20
00631e6c  ec ff ff 1a  bne	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x50
00631e70  14 30 97 e5  ldr	r3, [r7, #0x14]
00631e74  18 10 9d e5  ldr	r1, [sp, #0x18]
00631e78  01 60 86 e2  add	r6, r6, #1
00631e7c  18 40 84 e2  add	r4, r4, #24
00631e80  00 00 91 e5  ldr	r0, [r1]
00631e84  04 10 93 e5  ldr	r1, [r3, #0x4]
00631e88  21 8a fe eb  bl	0x5d4714 <_ZNK6glitch5video17CMaterialRenderer14getTechniqueIDEPKc> @ imm = #-0x5d77c
00631e8c  ff 00 50 e3  cmp	r0, #255
00631e90  1c 20 9d 15  ldrne	r2, [sp, #0x1c]
00631e94  00 30 92 15  ldrne	r3, [r2]
00631e98  08 00 c3 15  strbne	r0, [r3, #0x8]
00631e9c  20 30 9d e5  ldr	r3, [sp, #0x20]
00631ea0  03 00 56 e1  cmp	r6, r3
00631ea4  e3 ff ff 1a  bne	0x631e38 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x150> @ imm = #-0x74
00631ea8  1c 00 9d e5  ldr	r0, [sp, #0x1c]
00631eac  a4 d0 8d e2  add	sp, sp, #164
00631eb0  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
00631eb4  06 b0 d9 e5  ldrb	r11, [r9, #0x6]
00631eb8  2c 10 9d e5  ldr	r1, [sp, #0x2c]
00631ebc  08 c0 97 e5  ldr	r12, [r7, #0x8]
00631ec0  01 a0 a0 e3  mov	r10, #1
00631ec4  0b 11 91 e7  ldr	r1, [r1, r11, lsl #2]
00631ec8  30 c0 8d e5  str	r12, [sp, #0x30]
00631ecc  24 c0 8d e5  str	r12, [sp, #0x24]
00631ed0  1a 1c 11 e0  ands	r1, r1, r10, lsl r12
00631ed4  1c 00 00 1a  bne	0x631f4c <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x264> @ imm = #0x70
00631ed8  1c 30 90 e5  ldr	r3, [r0, #0x1c]
00631edc  00 00 53 e3  cmp	r3, #0
00631ee0  04 30 83 12  addne	r3, r3, #4
00631ee4  30 30 8d e5  str	r3, [sp, #0x30]
00631ee8  00 50 99 e5  ldr	r5, [r9]
00631eec  00 00 55 e3  cmp	r5, #0
00631ef0  04 50 85 12  addne	r5, r5, #4
00631ef4  ff 00 5b e3  cmp	r11, #255
00631ef8  21 00 00 0a  beq	0x631f84 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x29c> @ imm = #0x84
00631efc  00 00 a0 e3  mov	r0, #0
00631f00  6b d8 fe eb  bl	0x5e80b4 <_ZN6glitch5video18getStringsInternalEPNS0_29E_SHADER_PARAMETER_VALUE_TYPEE> @ imm = #-0x49e54
00631f04  08 70 97 e5  ldr	r7, [r7, #0x8]
00631f08  0b a1 90 e7  ldr	r10, [r0, r11, lsl #2]
00631f0c  24 70 8d e5  str	r7, [sp, #0x24]
00631f10  34 10 9d e5  ldr	r1, [sp, #0x34]
00631f14  40 00 8d e2  add	r0, sp, #64
00631f18  58 20 a0 e3  mov	r2, #88
00631f1c  51 72 f3 eb  bl	0x30e868 <memcpy@plt>   @ imm = #-0x3236bc
00631f20  24 00 9d e5  ldr	r0, [sp, #0x24]
00631f24  a0 c0 8d e2  add	r12, sp, #160
00631f28  30 20 9d e5  ldr	r2, [sp, #0x30]
00631f2c  00 31 8c e0  add	r3, r12, r0, lsl #2
00631f30  60 c0 13 e5  ldr	r12, [r3, #-0x60]
00631f34  03 00 a0 e3  mov	r0, #3
00631f38  05 30 a0 e1  mov	r3, r5
00631f3c  38 10 9d e5  ldr	r1, [sp, #0x38]
00631f40  00 14 8d e8  stm	sp, {r10, r12}
00631f44  3a 64 ff eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #-0x26f18
00631f48  b5 ff ff ea  b	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x12c
00631f4c  09 b0 4b e2  sub	r11, r11, #9
00631f50  09 00 5b e3  cmp	r11, #9
00631f54  0b f1 8f 90  addls	pc, pc, r11, lsl #2
00631f58  31 00 00 ea  b	0x632024 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x33c> @ imm = #0xc4
00631f5c  b0 ff ff ea  b	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x140
00631f60  af ff ff ea  b	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x144
00631f64  45 00 00 ea  b	0x632080 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x398> @ imm = #0x114
00631f68  7b 00 00 ea  b	0x63215c <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x474> @ imm = #0x1ec
00631f6c  9e 00 00 ea  b	0x6321ec <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x504> @ imm = #0x278
00631f70  c1 00 00 ea  b	0x63227c <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x594> @ imm = #0x304
00631f74  e4 00 00 ea  b	0x63230c <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x624> @ imm = #0x390
00631f78  29 00 00 ea  b	0x632024 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x33c> @ imm = #0xa4
00631f7c  28 00 00 ea  b	0x632024 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x33c> @ imm = #0xa0
00631f80  02 00 00 ea  b	0x631f90 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x2a8> @ imm = #0x8
00631f84  34 a4 9f e5  ldr	r10, [pc, #0x434]       @ 0x6323c0 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6d8>
00631f88  0a a0 8f e0  add	r10, pc, r10
00631f8c  df ff ff ea  b	0x631f10 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x228> @ imm = #-0x84
00631f90  0c 10 9d e5  ldr	r1, [sp, #0xc]
00631f94  00 00 51 e3  cmp	r1, #0
00631f98  a1 ff ff 0a  beq	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x17c
00631f9c  40 a0 8d e2  add	r10, sp, #64
00631fa0  00 b0 a0 e3  mov	r11, #0
00631fa4  24 a0 8d e5  str	r10, [sp, #0x24]
00631fa8  0b 90 a0 e1  mov	r9, r11
00631fac  0c a0 9d e5  ldr	r10, [sp, #0xc]
00631fb0  0d 00 00 ea  b	0x631fec <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x304> @ imm = #0x34
00631fb4  cc c0 9d e5  ldr	r12, [sp, #0xcc]
00631fb8  00 00 5c e3  cmp	r12, #0
00631fbc  06 00 00 0a  beq	0x631fdc <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x2f4> @ imm = #0x18
00631fc0  24 c0 9d e5  ldr	r12, [sp, #0x24]
00631fc4  cc 00 9d e5  ldr	r0, [sp, #0xcc]
00631fc8  1c 10 9d e5  ldr	r1, [sp, #0x1c]
00631fcc  05 20 a0 e1  mov	r2, r5
00631fd0  09 30 a0 e1  mov	r3, r9
00631fd4  00 c0 8d e5  str	r12, [sp]
00631fd8  47 a4 00 eb  bl	0x65b0fc <_ZN6glitch7collada14CRootSceneNode15addURLToResolveERKN5boost13intrusive_ptrINS_5video9CMaterialEEEtjRKNS_3res6StringE> @ imm = #0x2911c
00631fdc  01 90 89 e2  add	r9, r9, #1
00631fe0  0a 00 59 e1  cmp	r9, r10
00631fe4  04 b0 8b e2  add	r11, r11, #4
00631fe8  8d ff ff 0a  beq	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x1cc
00631fec  14 30 97 e5  ldr	r3, [r7, #0x14]
00631ff0  0b 30 83 e0  add	r3, r3, r11
00631ff4  00 30 93 e5  ldr	r3, [r3]
00631ff8  40 30 8d e5  str	r3, [sp, #0x40]
00631ffc  04 20 13 e5  ldr	r2, [r3, #-0x4]
00632000  00 00 52 e3  cmp	r2, #0
00632004  86 ff ff 0a  beq	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x1e8
00632008  d0 20 d3 e1  ldrsb	r2, [r3]
0063200c  23 00 52 e3  cmp	r2, #35
00632010  e7 ff ff 1a  bne	0x631fb4 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x2cc> @ imm = #-0x64
00632014  d1 30 d3 e1  ldrsb	r3, [r3, #1]
00632018  00 00 53 e3  cmp	r3, #0
0063201c  80 ff ff 0a  beq	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x200
00632020  e3 ff ff ea  b	0x631fb4 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x2cc> @ imm = #-0x74
00632024  28 10 9d e5  ldr	r1, [sp, #0x28]
00632028  94 33 9f e5  ldr	r3, [pc, #0x394]        @ 0x6323c4 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6dc>
0063202c  30 90 9d e5  ldr	r9, [sp, #0x30]
00632030  28 a0 9d e5  ldr	r10, [sp, #0x28]
00632034  03 20 91 e7  ldr	r2, [r1, r3]
00632038  88 13 9f e5  ldr	r1, [pc, #0x388]        @ 0x6323c8 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6e0>
0063203c  01 30 89 e2  add	r3, r9, #1
00632040  28 c0 9d e5  ldr	r12, [sp, #0x28]
00632044  01 10 9a e7  ldr	r1, [r10, r1]
00632048  03 a1 92 e7  ldr	r10, [r2, r3, lsl #2]
0063204c  78 23 9f e5  ldr	r2, [pc, #0x378]        @ 0x6323cc <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6e4>
00632050  0a 10 d1 e7  ldrb	r1, [r1, r10]
00632054  02 20 9c e7  ldr	r2, [r12, r2]
00632058  3c c0 9d e5  ldr	r12, [sp, #0x3c]
0063205c  09 e1 9c e7  ldr	lr, [r12, r9, lsl #2]
00632060  03 c0 d2 e7  ldrb	r12, [r2, r3]
00632064  14 30 97 e5  ldr	r3, [r7, #0x14]
00632068  0e 20 a0 e1  mov	r2, lr
0063206c  9c 01 0c e0  mul	r12, r12, r1
00632070  05 10 a0 e1  mov	r1, r5
00632074  00 c0 8d e5  str	r12, [sp]
00632078  b0 6b fe eb  bl	0x5ccf40 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtEtNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPKvi> @ imm = #-0x65140
0063207c  68 ff ff ea  b	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x260
00632080  40 b0 8d e2  add	r11, sp, #64
00632084  0b 00 a0 e1  mov	r0, r11
00632088  e1 fe ff eb  bl	0x631c14 <_ZN6glitch4core8CMatrix4IfEC1ENS2_12eConstructorE.clone.0> @ imm = #-0x47c
0063208c  28 a0 9d e5  ldr	r10, [sp, #0x28]
00632090  2c 33 9f e5  ldr	r3, [pc, #0x32c]        @ 0x6323c4 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6dc>
00632094  08 20 97 e5  ldr	r2, [r7, #0x8]
00632098  08 c0 99 e5  ldr	r12, [r9, #0x8]
0063209c  03 10 9a e7  ldr	r1, [r10, r3]
006320a0  20 33 9f e5  ldr	r3, [pc, #0x320]        @ 0x6323c8 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6e0>
006320a4  01 20 82 e2  add	r2, r2, #1
006320a8  02 11 91 e7  ldr	r1, [r1, r2, lsl #2]
006320ac  03 00 9a e7  ldr	r0, [r10, r3]
006320b0  14 33 9f e5  ldr	r3, [pc, #0x314]        @ 0x6323cc <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6e4>
006320b4  00 00 5c e3  cmp	r12, #0
006320b8  01 10 d0 e7  ldrb	r1, [r0, r1]
006320bc  03 30 9a e7  ldr	r3, [r10, r3]
006320c0  02 30 d3 e7  ldrb	r3, [r3, r2]
006320c4  93 01 03 e0  mul	r3, r3, r1
006320c8  55 ff ff 0a  beq	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x2ac
006320cc  00 90 a0 e3  mov	r9, #0
006320d0  24 40 8d e5  str	r4, [sp, #0x24]
006320d4  30 60 8d e5  str	r6, [sp, #0x30]
006320d8  09 a0 a0 e1  mov	r10, r9
006320dc  05 60 a0 e1  mov	r6, r5
006320e0  03 40 a0 e1  mov	r4, r3
006320e4  0c 50 a0 e1  mov	r5, r12
006320e8  03 00 00 ea  b	0x6320fc <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x414> @ imm = #0xc
006320ec  01 a0 8a e2  add	r10, r10, #1
006320f0  05 00 5a e1  cmp	r10, r5
006320f4  04 90 89 e0  add	r9, r9, r4
006320f8  a7 00 00 0a  beq	0x63239c <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6b4> @ imm = #0x29c
006320fc  14 e0 97 e5  ldr	lr, [r7, #0x14]
00632100  00 c0 a0 e3  mov	r12, #0
00632104  80 c0 cd e5  strb	r12, [sp, #0x80]
00632108  09 e0 8e e0  add	lr, lr, r9
0063210c  0b c0 a0 e1  mov	r12, r11
00632110  0f 00 be e8  ldm	lr!, {r0, r1, r2, r3}
00632114  0f 00 ac e8  stm	r12!, {r0, r1, r2, r3}
00632118  0f 00 be e8  ldm	lr!, {r0, r1, r2, r3}
0063211c  0f 00 ac e8  stm	r12!, {r0, r1, r2, r3}
00632120  0f 00 be e8  ldm	lr!, {r0, r1, r2, r3}
00632124  0f 00 ac e8  stm	r12!, {r0, r1, r2, r3}
00632128  0f 00 9e e8  ldm	lr, {r0, r1, r2, r3}
0063212c  0f 00 8c e8  stm	r12, {r0, r1, r2, r3}
00632130  0b 00 a0 e1  mov	r0, r11
00632134  18 20 fe eb  bl	0x5ba19c <_ZNK6glitch4core8CMatrix4IfE10isIdentityEv> @ imm = #-0x77fa0
00632138  00 00 50 e3  cmp	r0, #0
0063213c  ea ff ff 1a  bne	0x6320ec <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x404> @ imm = #-0x58
00632140  1c 30 9d e5  ldr	r3, [sp, #0x1c]
00632144  0a 20 a0 e1  mov	r2, r10
00632148  06 10 a0 e1  mov	r1, r6
0063214c  00 00 93 e5  ldr	r0, [r3]
00632150  0b 30 a0 e1  mov	r3, r11
00632154  e0 64 fe eb  bl	0x5cb4dc <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtjRKNS_4core8CMatrix4IfEE> @ imm = #-0x66c80
00632158  e3 ff ff ea  b	0x6320ec <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x404> @ imm = #-0x74
0063215c  02 00 55 e1  cmp	r5, r2
00632160  20 30 93 35  ldrlo	r3, [r3, #0x20]
00632164  00 30 a0 23  movhs	r3, #0
00632168  14 a0 97 e5  ldr	r10, [r7, #0x14]
0063216c  05 32 83 30  addlo	r3, r3, r5, lsl #4
00632170  08 90 93 e5  ldr	r9, [r3, #0x8]
00632174  00 00 59 e3  cmp	r9, #0
00632178  29 ff ff 0a  beq	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x35c
0063217c  24 40 8d e5  str	r4, [sp, #0x24]
00632180  1c 40 9d e5  ldr	r4, [sp, #0x1c]
00632184  00 70 a0 e3  mov	r7, #0
00632188  40 b0 8d e2  add	r11, sp, #64
0063218c  07 01 9a e7  ldr	r0, [r10, r7, lsl #2]
00632190  07 20 a0 e1  mov	r2, r7
00632194  05 10 a0 e1  mov	r1, r5
00632198  00 00 90 e5  ldr	r0, [r0]
0063219c  0b 30 a0 e1  mov	r3, r11
006321a0  01 70 87 e2  add	r7, r7, #1
006321a4  00 00 50 e3  cmp	r0, #0
006321a8  0b 00 00 0a  beq	0x6321dc <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x4f4> @ imm = #0x2c
006321ac  10 00 90 e5  ldr	r0, [r0, #0x10]
006321b0  00 00 50 e3  cmp	r0, #0
006321b4  40 00 8d e5  str	r0, [sp, #0x40]
006321b8  04 c0 90 15  ldrne	r12, [r0, #0x4]
006321bc  01 c0 8c 12  addne	r12, r12, #1
006321c0  04 c0 80 15  strne	r12, [r0, #0x4]
006321c4  00 00 94 e5  ldr	r0, [r4]
006321c8  55 6c fe eb  bl	0x5cd324 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x64eac
006321cc  40 00 9d e5  ldr	r0, [sp, #0x40]
006321d0  00 00 50 e3  cmp	r0, #0
006321d4  00 00 00 0a  beq	0x6321dc <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x4f4> @ imm = #0x0
006321d8  e9 ac f3 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x314c5c
006321dc  09 00 57 e1  cmp	r7, r9
006321e0  e9 ff ff 1a  bne	0x63218c <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x4a4> @ imm = #-0x5c
006321e4  24 40 9d e5  ldr	r4, [sp, #0x24]
006321e8  0d ff ff ea  b	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x3cc
006321ec  02 00 55 e1  cmp	r5, r2
006321f0  20 30 93 35  ldrlo	r3, [r3, #0x20]
006321f4  00 30 a0 23  movhs	r3, #0
006321f8  14 a0 97 e5  ldr	r10, [r7, #0x14]
006321fc  05 32 83 30  addlo	r3, r3, r5, lsl #4
00632200  08 90 93 e5  ldr	r9, [r3, #0x8]
00632204  00 00 59 e3  cmp	r9, #0
00632208  05 ff ff 0a  beq	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x3ec
0063220c  24 40 8d e5  str	r4, [sp, #0x24]
00632210  1c 40 9d e5  ldr	r4, [sp, #0x1c]
00632214  00 70 a0 e3  mov	r7, #0
00632218  40 b0 8d e2  add	r11, sp, #64
0063221c  07 01 9a e7  ldr	r0, [r10, r7, lsl #2]
00632220  07 20 a0 e1  mov	r2, r7
00632224  05 10 a0 e1  mov	r1, r5
00632228  00 00 90 e5  ldr	r0, [r0]
0063222c  0b 30 a0 e1  mov	r3, r11
00632230  01 70 87 e2  add	r7, r7, #1
00632234  00 00 50 e3  cmp	r0, #0
00632238  0b 00 00 0a  beq	0x63226c <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x584> @ imm = #0x2c
0063223c  10 00 90 e5  ldr	r0, [r0, #0x10]
00632240  00 00 50 e3  cmp	r0, #0
00632244  40 00 8d e5  str	r0, [sp, #0x40]
00632248  04 c0 90 15  ldrne	r12, [r0, #0x4]
0063224c  01 c0 8c 12  addne	r12, r12, #1
00632250  04 c0 80 15  strne	r12, [r0, #0x4]
00632254  00 00 94 e5  ldr	r0, [r4]
00632258  31 6c fe eb  bl	0x5cd324 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x64f3c
0063225c  40 00 9d e5  ldr	r0, [sp, #0x40]
00632260  00 00 50 e3  cmp	r0, #0
00632264  00 00 00 0a  beq	0x63226c <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x584> @ imm = #0x0
00632268  c5 ac f3 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x314cec
0063226c  09 00 57 e1  cmp	r7, r9
00632270  e9 ff ff 1a  bne	0x63221c <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x534> @ imm = #-0x5c
00632274  24 40 9d e5  ldr	r4, [sp, #0x24]
00632278  e9 fe ff ea  b	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x45c
0063227c  02 00 55 e1  cmp	r5, r2
00632280  20 30 93 35  ldrlo	r3, [r3, #0x20]
00632284  00 30 a0 23  movhs	r3, #0
00632288  14 a0 97 e5  ldr	r10, [r7, #0x14]
0063228c  05 32 83 30  addlo	r3, r3, r5, lsl #4
00632290  08 90 93 e5  ldr	r9, [r3, #0x8]
00632294  00 00 59 e3  cmp	r9, #0
00632298  e1 fe ff 0a  beq	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x47c
0063229c  24 40 8d e5  str	r4, [sp, #0x24]
006322a0  1c 40 9d e5  ldr	r4, [sp, #0x1c]
006322a4  00 70 a0 e3  mov	r7, #0
006322a8  40 b0 8d e2  add	r11, sp, #64
006322ac  07 01 9a e7  ldr	r0, [r10, r7, lsl #2]
006322b0  07 20 a0 e1  mov	r2, r7
006322b4  05 10 a0 e1  mov	r1, r5
006322b8  00 00 90 e5  ldr	r0, [r0]
006322bc  0b 30 a0 e1  mov	r3, r11
006322c0  01 70 87 e2  add	r7, r7, #1
006322c4  00 00 50 e3  cmp	r0, #0
006322c8  0b 00 00 0a  beq	0x6322fc <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x614> @ imm = #0x2c
006322cc  10 00 90 e5  ldr	r0, [r0, #0x10]
006322d0  00 00 50 e3  cmp	r0, #0
006322d4  40 00 8d e5  str	r0, [sp, #0x40]
006322d8  04 c0 90 15  ldrne	r12, [r0, #0x4]
006322dc  01 c0 8c 12  addne	r12, r12, #1
006322e0  04 c0 80 15  strne	r12, [r0, #0x4]
006322e4  00 00 94 e5  ldr	r0, [r4]
006322e8  0d 6c fe eb  bl	0x5cd324 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x64fcc
006322ec  40 00 9d e5  ldr	r0, [sp, #0x40]
006322f0  00 00 50 e3  cmp	r0, #0
006322f4  00 00 00 0a  beq	0x6322fc <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x614> @ imm = #0x0
006322f8  a1 ac f3 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x314d7c
006322fc  09 00 57 e1  cmp	r7, r9
00632300  e9 ff ff 1a  bne	0x6322ac <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x5c4> @ imm = #-0x5c
00632304  24 40 9d e5  ldr	r4, [sp, #0x24]
00632308  c5 fe ff ea  b	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x4ec
0063230c  02 00 55 e1  cmp	r5, r2
00632310  20 30 93 35  ldrlo	r3, [r3, #0x20]
00632314  00 30 a0 23  movhs	r3, #0
00632318  14 a0 97 e5  ldr	r10, [r7, #0x14]
0063231c  05 32 83 30  addlo	r3, r3, r5, lsl #4
00632320  08 90 93 e5  ldr	r9, [r3, #0x8]
00632324  00 00 59 e3  cmp	r9, #0
00632328  bd fe ff 0a  beq	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x50c
0063232c  24 40 8d e5  str	r4, [sp, #0x24]
00632330  1c 40 9d e5  ldr	r4, [sp, #0x1c]
00632334  00 70 a0 e3  mov	r7, #0
00632338  40 b0 8d e2  add	r11, sp, #64
0063233c  07 01 9a e7  ldr	r0, [r10, r7, lsl #2]
00632340  07 20 a0 e1  mov	r2, r7
00632344  05 10 a0 e1  mov	r1, r5
00632348  00 00 90 e5  ldr	r0, [r0]
0063234c  0b 30 a0 e1  mov	r3, r11
00632350  01 70 87 e2  add	r7, r7, #1
00632354  00 00 50 e3  cmp	r0, #0
00632358  0b 00 00 0a  beq	0x63238c <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6a4> @ imm = #0x2c
0063235c  10 00 90 e5  ldr	r0, [r0, #0x10]
00632360  00 00 50 e3  cmp	r0, #0
00632364  40 00 8d e5  str	r0, [sp, #0x40]
00632368  04 c0 90 15  ldrne	r12, [r0, #0x4]
0063236c  01 c0 8c 12  addne	r12, r12, #1
00632370  04 c0 80 15  strne	r12, [r0, #0x4]
00632374  00 00 94 e5  ldr	r0, [r4]
00632378  e9 6b fe eb  bl	0x5cd324 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x6505c
0063237c  40 00 9d e5  ldr	r0, [sp, #0x40]
00632380  00 00 50 e3  cmp	r0, #0
00632384  00 00 00 0a  beq	0x63238c <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x6a4> @ imm = #0x0
00632388  7d ac f3 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x314e0c
0063238c  09 00 57 e1  cmp	r7, r9
00632390  e9 ff ff 1a  bne	0x63233c <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x654> @ imm = #-0x5c
00632394  24 40 9d e5  ldr	r4, [sp, #0x24]
00632398  a1 fe ff ea  b	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x57c
0063239c  24 40 9d e5  ldr	r4, [sp, #0x24]
006323a0  30 60 9d e5  ldr	r6, [sp, #0x30]
006323a4  9e fe ff ea  b	0x631e24 <_ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE+0x13c> @ imm = #-0x588
006323a8  80 2d 36 00 bc 30 2b 00 ac 30 2b 00 c0 57 32 00  .byte 0x80, 0x2d, 0x36, 0x00, 0xbc, 0x30, 0x2b, 0x00, 0xac, 0x30, 0x2b, 0x00, 0xc0, 0x57, 0x32, 0x00
006323b8  e0 31 2b 00 50 31 2b 00 d8 44 29 00 ac 3b 00 00  .byte 0xe0, 0x31, 0x2b, 0x00, 0x50, 0x31, 0x2b, 0x00, 0xd8, 0x44, 0x29, 0x00, 0xac, 0x3b, 0x00, 0x00
006323c8  c0 15 00 00 ac 2b 00 00  .byte 0xc0, 0x15, 0x00, 0x00, 0xac, 0x2b, 0x00, 0x00

; FUNCTION 0x00631ac4, size=52 (0x34), PT_LOAD=0, file_offset=0x00631ac4
; symbol: _ZN6glitch7collada15CColladaFactory13getEffectNameERKNS0_16CColladaDatabaseEPKcS6_
; SHA-256: 1db6eb2bdb7f4b7829f436be48f13e829adf51e3401e5db42bd27a5ec746f5a5
00631ac4  70 40 2d e9  push	{r4, r5, r6, lr}
00631ac8  00 40 a0 e1  mov	r4, r0
00631acc  10 00 84 e5  str	r0, [r4, #0x10]
00631ad0  14 00 84 e5  str	r0, [r4, #0x14]
00631ad4  03 00 a0 e1  mov	r0, r3
00631ad8  03 50 a0 e1  mov	r5, r3
00631adc  dc 70 f3 eb  bl	0x30de54 <strlen@plt>   @ imm = #-0x323c90
00631ae0  05 10 a0 e1  mov	r1, r5
00631ae4  00 20 85 e0  add	r2, r5, r0
00631ae8  04 00 a0 e1  mov	r0, r4
00631aec  40 d1 f3 eb  bl	0x325ff4 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE19_M_range_initializeEPKcS9_> @ imm = #-0x30bb00
00631af0  04 00 a0 e1  mov	r0, r4
00631af4  70 80 bd e8  pop	{r4, r5, r6, pc}

; FUNCTION 0x00636c8c, size=412 (0x19c), PT_LOAD=0, file_offset=0x00636c8c
; symbol: _ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE
; SHA-256: 0fc31372fb7aa16156c948b5f666b3d54bc155f8dba05407c55f6d597fb8a8ee
00636c8c  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
00636c90  7c 41 9f e5  ldr	r4, [pc, #0x17c]        @ 0x636e14 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0x188>
00636c94  7c 51 9f e5  ldr	r5, [pc, #0x17c]        @ 0x636e18 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0x18c>
00636c98  3c d0 4d e2  sub	sp, sp, #60
00636c9c  04 40 8f e0  add	r4, pc, r4
00636ca0  05 c0 94 e7  ldr	r12, [r4, r5]
00636ca4  60 90 9d e5  ldr	r9, [sp, #0x60]
00636ca8  00 70 a0 e1  mov	r7, r0
00636cac  00 00 9c e5  ldr	r0, [r12]
00636cb0  6c c0 9d e5  ldr	r12, [sp, #0x6c]
00636cb4  00 00 59 e3  cmp	r9, #0
00636cb8  03 80 a0 e1  mov	r8, r3
00636cbc  34 00 8d e5  str	r0, [sp, #0x34]
00636cc0  01 60 a0 e1  mov	r6, r1
00636cc4  02 b0 a0 e1  mov	r11, r2
00636cc8  64 30 9d e5  ldr	r3, [sp, #0x64]
00636ccc  68 00 9d e5  ldr	r0, [sp, #0x68]
00636cd0  08 c0 8d e5  str	r12, [sp, #0x8]
00636cd4  43 00 00 0a  beq	0x636de8 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0x15c> @ imm = #0x10c
00636cd8  00 00 8d e5  str	r0, [sp]
00636cdc  1c a0 8d e2  add	r10, sp, #28
00636ce0  00 c0 91 e5  ldr	r12, [r1]
00636ce4  0a 00 a0 e1  mov	r0, r10
00636ce8  0f e0 a0 e1  mov	lr, pc
00636cec  14 f0 9c e5  ldr	pc, [r12, #0x14]
00636cf0  dc 00 98 e5  ldr	r0, [r8, #0xdc]
00636cf4  30 10 9d e5  ldr	r1, [sp, #0x30]
00636cf8  f1 8a fe eb  bl	0x5d98c4 <_ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE5getIdEPKc> @ imm = #-0x5d43c
00636cfc  ff 3f 0f e3  movw	r3, #0xffff
00636d00  03 00 50 e1  cmp	r0, r3
00636d04  1e 00 00 0a  beq	0x636d84 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0xf8> @ imm = #0x78
00636d08  dc 30 98 e5  ldr	r3, [r8, #0xdc]
00636d0c  1c 20 93 e5  ldr	r2, [r3, #0x1c]
00636d10  18 30 93 e5  ldr	r3, [r3, #0x18]
00636d14  02 20 63 e0  rsb	r2, r3, r2
00636d18  c2 01 50 e1  cmp	r0, r2, asr #3
00636d1c  80 01 83 30  addlo	r0, r3, r0, lsl #3
00636d20  14 00 00 2a  bhs	0x636d78 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0xec> @ imm = #0x50
00636d24  00 30 90 e5  ldr	r3, [r0]
00636d28  00 00 53 e3  cmp	r3, #0
00636d2c  00 30 87 e5  str	r3, [r7]
00636d30  02 00 00 0a  beq	0x636d40 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0xb4> @ imm = #0x8
00636d34  00 20 93 e5  ldr	r2, [r3]
00636d38  01 20 82 e2  add	r2, r2, #1
00636d3c  00 20 83 e5  str	r2, [r3]
00636d40  30 00 9d e5  ldr	r0, [sp, #0x30]
00636d44  0a 00 50 e1  cmp	r0, r10
00636d48  02 00 00 0a  beq	0x636d58 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0xcc> @ imm = #0x8
00636d4c  00 00 50 e3  cmp	r0, #0
00636d50  00 00 00 0a  beq	0x636d58 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0xcc> @ imm = #0x0
00636d54  bd 65 f3 eb  bl	0x310450 <_Z10GlitchFreePv> @ imm = #-0x32690c
00636d58  05 30 94 e7  ldr	r3, [r4, r5]
00636d5c  34 20 9d e5  ldr	r2, [sp, #0x34]
00636d60  07 00 a0 e1  mov	r0, r7
00636d64  00 30 93 e5  ldr	r3, [r3]
00636d68  03 00 52 e1  cmp	r2, r3
00636d6c  27 00 00 1a  bne	0x636e10 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0x184> @ imm = #0x9c
00636d70  3c d0 8d e2  add	sp, sp, #60
00636d74  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
00636d78  9c 30 9f e5  ldr	r3, [pc, #0x9c]         @ 0x636e1c <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0x190>
00636d7c  03 00 94 e7  ldr	r0, [r4, r3]
00636d80  e7 ff ff ea  b	0x636d24 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0x98> @ imm = #-0x64
00636d84  14 30 8d e2  add	r3, sp, #20
00636d88  0b 10 a0 e1  mov	r1, r11
00636d8c  09 20 a0 e1  mov	r2, r9
00636d90  03 00 a0 e1  mov	r0, r3
00636d94  0c 30 8d e5  str	r3, [sp, #0xc]
00636d98  0e eb ff eb  bl	0x6319d8 <_ZN6glitch7collada11SEffectListC1ERKNS0_16CColladaDatabaseEPNS0_7SEffectE> @ imm = #-0x53c8
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
00636dd8  63 ff ff eb  bl	0x636b6c <_ZN6glitch7collada22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPKcRKNS0_11SEffectListEPNS0_14CRootSceneNodeE> @ imm = #-0x274
00636ddc  0c 00 9d e5  ldr	r0, [sp, #0xc]
00636de0  25 eb ff eb  bl	0x631a7c <_ZNSt4priv10_List_baseIN6glitch7collada11SEffectList6SEntryENS1_4core23SProcessBufferAllocatorIS4_EEE5clearEv> @ imm = #-0x536c
00636de4  d5 ff ff ea  b	0x636d40 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0xb4> @ imm = #-0xac
00636de8  30 10 9f e5  ldr	r1, [pc, #0x30]         @ 0x636e20 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0x194>
00636dec  03 00 a0 e3  mov	r0, #3
00636df0  01 10 8f e0  add	r1, pc, r1
00636df4  8e 50 ff eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #-0x2bdc8
00636df8  24 20 9f e5  ldr	r2, [pc, #0x24]         @ 0x636e24 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0x198>
00636dfc  dc 10 98 e5  ldr	r1, [r8, #0xdc]
00636e00  07 00 a0 e1  mov	r0, r7
00636e04  02 20 8f e0  add	r2, pc, r2
00636e08  c6 9b fe eb  bl	0x5ddd28 <_ZN6glitch5video24CMaterialRendererManager35createPinkWireFrameMaterialRendererEPKc> @ imm = #-0x590e8
00636e0c  d1 ff ff ea  b	0x636d58 <_ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE+0xcc> @ imm = #-0xbc
00636e10  3e 5d f3 eb  bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x328b08
00636e14  f4 dd 35 00 ac 40 00 00 dc 30 00 00 68 e2 2a 00  .byte 0xf4, 0xdd, 0x35, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x30, 0x00, 0x00, 0x68, 0xe2, 0x2a, 0x00
00636e24  8c e2 2a 00  .byte 0x8c, 0xe2, 0x2a, 0x00

; FUNCTION 0x00634520, size=1152 (0x480), PT_LOAD=0, file_offset=0x00634520
; symbol: _ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb
; SHA-256: 2181e4833f595b9c3d200b08299e98536b25e9e78df902c4c5fe8c209c8485fd
00634520  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
00634524  03 40 a0 e1  mov	r4, r3
00634528  34 30 93 e5  ldr	r3, [r3, #0x34]
0063452c  4c d0 4d e2  sub	sp, sp, #76
00634530  18 00 8d e5  str	r0, [sp, #0x18]
00634534  00 00 53 e3  cmp	r3, #0
00634538  44 30 8d e5  str	r3, [sp, #0x44]
0063453c  00 10 93 15  ldrne	r1, [r3]
00634540  02 60 a0 e1  mov	r6, r2
00634544  7c 20 dd e5  ldrb	r2, [sp, #0x7c]
00634548  01 10 81 12  addne	r1, r1, #1
0063454c  00 10 83 15  strne	r1, [r3]
00634550  34 30 94 15  ldrne	r3, [r4, #0x34]
00634554  00 00 53 e3  cmp	r3, #0
00634558  01 00 00 0a  beq	0x634564 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x44> @ imm = #0x4
0063455c  00 00 52 e3  cmp	r2, #0
00634560  d1 00 00 0a  beq	0x6348ac <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x38c> @ imm = #0x344
00634564  74 30 9d e5  ldr	r3, [sp, #0x74]
00634568  00 30 93 e5  ldr	r3, [r3]
0063456c  04 30 93 e5  ldr	r3, [r3, #0x4]
00634570  00 00 53 e3  cmp	r3, #0
00634574  40 30 8d e5  str	r3, [sp, #0x40]
00634578  00 20 93 15  ldrne	r2, [r3]
0063457c  01 20 82 12  addne	r2, r2, #1
00634580  00 20 83 15  strne	r2, [r3]
00634584  40 30 9d 15  ldrne	r3, [sp, #0x40]
00634588  04 30 93 e5  ldr	r3, [r3, #0x4]
0063458c  03 00 a0 e1  mov	r0, r3
00634590  00 30 93 e5  ldr	r3, [r3]
00634594  0f e0 a0 e1  mov	lr, pc
00634598  5c f0 93 e5  ldr	pc, [r3, #0x5c]
0063459c  07 00 10 e3  tst	r0, #7
006345a0  1c 70 84 12  addne	r7, r4, #28
006345a4  02 00 00 1a  bne	0x6345b4 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x94> @ imm = #0x8
006345a8  18 00 10 e3  tst	r0, #24
006345ac  24 70 84 12  addne	r7, r4, #36
006345b0  df 00 00 0a  beq	0x634934 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x414> @ imm = #0x37c
006345b4  40 20 8d e2  add	r2, sp, #64
006345b8  3c 50 8d e2  add	r5, sp, #60
006345bc  02 10 a0 e1  mov	r1, r2
006345c0  05 00 a0 e1  mov	r0, r5
006345c4  1c 20 8d e5  str	r2, [sp, #0x1c]
006345c8  5b ab fe eb  bl	0x5df33c <_ZN6glitch5video27CMaterialVertexAttributeMap8allocateERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEE> @ imm = #-0x55294
006345cc  3c 20 9d e5  ldr	r2, [sp, #0x3c]
006345d0  00 00 52 e3  cmp	r2, #0
006345d4  28 20 8d e5  str	r2, [sp, #0x28]
006345d8  03 00 00 0a  beq	0x6345ec <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0xcc> @ imm = #0xc
006345dc  00 30 92 e5  ldr	r3, [r2]
006345e0  01 30 83 e2  add	r3, r3, #1
006345e4  00 30 82 e5  str	r3, [r2]
006345e8  28 20 9d e5  ldr	r2, [sp, #0x28]
006345ec  44 30 9d e5  ldr	r3, [sp, #0x44]
006345f0  28 00 8d e2  add	r0, sp, #40
006345f4  44 20 8d e5  str	r2, [sp, #0x44]
006345f8  28 30 8d e5  str	r3, [sp, #0x28]
006345fc  1a 17 fd eb  bl	0x57a26c <_ZN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEED1Ev> @ imm = #-0xba398
00634600  05 00 a0 e1  mov	r0, r5
00634604  18 17 fd eb  bl	0x57a26c <_ZN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEED1Ev> @ imm = #-0xba3a0
00634608  34 30 94 e5  ldr	r3, [r4, #0x34]
0063460c  00 00 53 e3  cmp	r3, #0
00634610  d2 00 00 0a  beq	0x634960 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x440> @ imm = #0x348
00634614  70 30 9d e5  ldr	r3, [sp, #0x70]
00634618  78 20 9d e5  ldr	r2, [sp, #0x78]
0063461c  34 00 8d e2  add	r0, sp, #52
00634620  00 30 93 e5  ldr	r3, [r3]
00634624  03 10 a0 e1  mov	r1, r3
00634628  00 30 93 e5  ldr	r3, [r3]
0063462c  0f e0 a0 e1  mov	lr, pc
00634630  14 f0 93 e5  ldr	pc, [r3, #0x14]
00634634  34 00 9d e5  ldr	r0, [sp, #0x34]
00634638  14 30 90 e5  ldr	r3, [r0, #0x14]
0063463c  00 00 53 e3  cmp	r3, #0
00634640  38 30 8d e5  str	r3, [sp, #0x38]
00634644  00 20 93 15  ldrne	r2, [r3]
00634648  01 20 82 12  addne	r2, r2, #1
0063464c  00 20 83 15  strne	r2, [r3]
00634650  34 00 9d 15  ldrne	r0, [sp, #0x34]
00634654  00 00 50 e3  cmp	r0, #0
00634658  00 00 00 0a  beq	0x634660 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x140> @ imm = #0x0
0063465c  c8 a3 f3 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x3170e0
00634660  00 c0 97 e5  ldr	r12, [r7]
00634664  00 00 5c e3  cmp	r12, #0
00634668  14 c0 8d e5  str	r12, [sp, #0x14]
0063466c  38 80 8d d2  addle	r8, sp, #56
00634670  42 00 00 da  ble	0x634780 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x260> @ imm = #0x108
00634674  00 60 a0 e3  mov	r6, #0
00634678  30 20 8d e2  add	r2, sp, #48
0063467c  10 60 8d e5  str	r6, [sp, #0x10]
00634680  38 80 8d e2  add	r8, sp, #56
00634684  0c 20 8d e5  str	r2, [sp, #0xc]
00634688  04 30 97 e5  ldr	r3, [r7, #0x4]
0063468c  40 00 9d e5  ldr	r0, [sp, #0x40]
00634690  06 10 93 e7  ldr	r1, [r3, r6]
00634694  1e 80 fe eb  bl	0x5d4714 <_ZNK6glitch5video17CMaterialRenderer14getTechniqueIDEPKc> @ imm = #-0x5ff88
00634698  ff 00 50 e3  cmp	r0, #255
0063469c  00 a0 a0 e1  mov	r10, r0
006346a0  2f 00 00 0a  beq	0x634764 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x244> @ imm = #0xbc
006346a4  04 30 97 e5  ldr	r3, [r7, #0x4]
006346a8  06 30 83 e0  add	r3, r3, r6
006346ac  04 90 93 e5  ldr	r9, [r3, #0x4]
006346b0  00 00 59 e3  cmp	r9, #0
006346b4  2a 00 00 da  ble	0x634764 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x244> @ imm = #0xa8
006346b8  00 50 a0 e3  mov	r5, #0
006346bc  05 40 a0 e1  mov	r4, r5
006346c0  00 10 a0 e3  mov	r1, #0
006346c4  24 00 a0 e3  mov	r0, #36
006346c8  b7 fe fb eb  bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x100524
006346cc  08 10 a0 e1  mov	r1, r8
006346d0  00 b0 a0 e1  mov	r11, r0
006346d4  9f b0 fd eb  bl	0x5a0958 <_ZN6glitch5video19CVertexAttributeMapC1ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEE> @ imm = #-0x93d84
006346d8  00 00 5b e3  cmp	r11, #0
006346dc  30 b0 8d e5  str	r11, [sp, #0x30]
006346e0  00 30 9b 15  ldrne	r3, [r11]
006346e4  0b 00 a0 01  moveq	r0, r11
006346e8  00 c0 a0 e3  mov	r12, #0
006346ec  01 30 83 12  addne	r3, r3, #1
006346f0  00 30 8b 15  strne	r3, [r11]
006346f4  04 30 97 e5  ldr	r3, [r7, #0x4]
006346f8  30 00 9d 15  ldrne	r0, [sp, #0x30]
006346fc  08 10 a0 e1  mov	r1, r8
00634700  06 30 83 e0  add	r3, r3, r6
00634704  08 20 93 e5  ldr	r2, [r3, #0x8]
00634708  05 20 82 e0  add	r2, r2, r5
0063470c  0c 00 92 e9  ldmib	r2, {r2, r3}
00634710  00 c0 8d e5  str	r12, [sp]
00634714  fb af fd eb  bl	0x5a0708 <_ZN6glitch5video19CVertexAttributeMap3setERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb> @ imm = #-0x94014
00634718  74 20 ef e6  uxtb	r2, r4
0063471c  44 00 9d e5  ldr	r0, [sp, #0x44]
00634720  0c 30 9d e5  ldr	r3, [sp, #0xc]
00634724  0a 10 a0 e1  mov	r1, r10
00634728  39 ac fe eb  bl	0x5df814 <_ZN6glitch5video27CMaterialVertexAttributeMap3setEhhRKN5boost13intrusive_ptrINS0_19CVertexAttributeMapEEE> @ imm = #-0x54f1c
0063472c  30 30 9d e5  ldr	r3, [sp, #0x30]
00634730  01 40 84 e2  add	r4, r4, #1
00634734  0c 50 85 e2  add	r5, r5, #12
00634738  00 00 53 e3  cmp	r3, #0
0063473c  03 00 a0 e1  mov	r0, r3
00634740  05 00 00 0a  beq	0x63475c <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x23c> @ imm = #0x14
00634744  00 20 93 e5  ldr	r2, [r3]
00634748  01 20 42 e2  sub	r2, r2, #1
0063474c  00 00 52 e3  cmp	r2, #0
00634750  00 20 83 e5  str	r2, [r3]
00634754  00 00 00 1a  bne	0x63475c <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x23c> @ imm = #0x0
00634758  d4 66 f3 eb  bl	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x3264b0
0063475c  09 00 54 e1  cmp	r4, r9
00634760  d6 ff ff 1a  bne	0x6346c0 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x1a0> @ imm = #-0xa8
00634764  10 20 9d e5  ldr	r2, [sp, #0x10]
00634768  14 30 9d e5  ldr	r3, [sp, #0x14]
0063476c  0c 60 86 e2  add	r6, r6, #12
00634770  01 20 82 e2  add	r2, r2, #1
00634774  03 00 52 e1  cmp	r2, r3
00634778  10 20 8d e5  str	r2, [sp, #0x10]
0063477c  c1 ff ff 1a  bne	0x634688 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x168> @ imm = #-0xfc
00634780  40 30 9d e5  ldr	r3, [sp, #0x40]
00634784  00 60 a0 e3  mov	r6, #0
00634788  2c 60 8d e5  str	r6, [sp, #0x2c]
0063478c  10 20 d3 e5  ldrb	r2, [r3, #0x10]
00634790  06 00 52 e1  cmp	r2, r6
00634794  40 00 00 0a  beq	0x63489c <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x37c> @ imm = #0x100
00634798  c5 ae 04 e3  movw	r10, #0x4ec5
0063479c  0c 80 8d e5  str	r8, [sp, #0xc]
006347a0  ec a4 4c e3  movt	r10, #0xc4ec
006347a4  06 10 a0 e1  mov	r1, r6
006347a8  06 90 a0 e1  mov	r9, r6
006347ac  2c b0 8d e2  add	r11, sp, #44
006347b0  02 80 a0 e1  mov	r8, r2
006347b4  18 30 93 e5  ldr	r3, [r3, #0x18]
006347b8  06 30 83 e0  add	r3, r3, r6
006347bc  04 70 d3 e5  ldrb	r7, [r3, #0x4]
006347c0  00 00 57 e3  cmp	r7, #0
006347c4  22 00 00 0a  beq	0x634854 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x334> @ imm = #0x88
006347c8  00 50 a0 e3  mov	r5, #0
006347cc  05 40 a0 e1  mov	r4, r5
006347d0  05 00 00 ea  b	0x6347ec <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x2cc> @ imm = #0x14
006347d4  01 40 84 e2  add	r4, r4, #1
006347d8  74 40 ef e6  uxtb	r4, r4
006347dc  07 00 54 e1  cmp	r4, r7
006347e0  34 50 85 e2  add	r5, r5, #52
006347e4  1a 00 00 0a  beq	0x634854 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x334> @ imm = #0x68
006347e8  2c 10 9d e5  ldr	r1, [sp, #0x2c]
006347ec  44 00 9d e5  ldr	r0, [sp, #0x44]
006347f0  04 30 90 e5  ldr	r3, [r0, #0x4]
006347f4  18 20 93 e5  ldr	r2, [r3, #0x18]
006347f8  1c 30 93 e5  ldr	r3, [r3, #0x1c]
006347fc  06 20 82 e0  add	r2, r2, r6
00634800  08 20 92 e5  ldr	r2, [r2, #0x8]
00634804  05 20 82 e0  add	r2, r2, r5
00634808  02 30 63 e0  rsb	r3, r3, r2
0063480c  43 31 a0 e1  asr	r3, r3, #2
00634810  9a 03 03 e0  mul	r3, r10, r3
00634814  03 31 80 e0  add	r3, r0, r3, lsl #2
00634818  08 30 93 e5  ldr	r3, [r3, #0x8]
0063481c  00 00 53 e3  cmp	r3, #0
00634820  eb ff ff 1a  bne	0x6347d4 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x2b4> @ imm = #-0x54
00634824  00 00 51 e3  cmp	r1, #0
00634828  2b 00 00 0a  beq	0x6348dc <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x3bc> @ imm = #0xac
0063482c  04 20 a0 e1  mov	r2, r4
00634830  01 40 84 e2  add	r4, r4, #1
00634834  09 10 a0 e1  mov	r1, r9
00634838  0b 30 a0 e1  mov	r3, r11
0063483c  74 40 ef e6  uxtb	r4, r4
00634840  f3 ab fe eb  bl	0x5df814 <_ZN6glitch5video27CMaterialVertexAttributeMap3setEhhRKN5boost13intrusive_ptrINS0_19CVertexAttributeMapEEE> @ imm = #-0x55034
00634844  07 00 54 e1  cmp	r4, r7
00634848  2c 10 9d e5  ldr	r1, [sp, #0x2c]
0063484c  34 50 85 e2  add	r5, r5, #52
00634850  e4 ff ff 1a  bne	0x6347e8 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x2c8> @ imm = #-0x70
00634854  01 90 89 e2  add	r9, r9, #1
00634858  79 90 ef e6  uxtb	r9, r9
0063485c  08 00 59 e1  cmp	r9, r8
00634860  0c 60 86 e2  add	r6, r6, #12
00634864  02 00 00 0a  beq	0x634874 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x354> @ imm = #0x8
00634868  40 30 9d e5  ldr	r3, [sp, #0x40]
0063486c  2c 10 9d e5  ldr	r1, [sp, #0x2c]
00634870  cf ff ff ea  b	0x6347b4 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x294> @ imm = #-0xc4
00634874  00 00 51 e3  cmp	r1, #0
00634878  0c 80 9d e5  ldr	r8, [sp, #0xc]
0063487c  06 00 00 0a  beq	0x63489c <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x37c> @ imm = #0x18
00634880  00 30 91 e5  ldr	r3, [r1]
00634884  01 30 43 e2  sub	r3, r3, #1
00634888  00 00 53 e3  cmp	r3, #0
0063488c  00 30 81 e5  str	r3, [r1]
00634890  01 00 00 1a  bne	0x63489c <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x37c> @ imm = #0x4
00634894  01 00 a0 e1  mov	r0, r1
00634898  84 66 f3 eb  bl	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x3265f0
0063489c  08 00 a0 e1  mov	r0, r8
006348a0  ba a8 f4 eb  bl	0x35eb90 <_ZN5boost13intrusive_ptrIKN6glitch5video14CVertexStreamsEED1Ev> @ imm = #-0x2d5d18
006348a4  1c 00 9d e5  ldr	r0, [sp, #0x1c]
006348a8  82 76 f4 eb  bl	0x3522b8 <_ZN5boost13intrusive_ptrIN6glitch5video17CMaterialRendererEED1Ev> @ imm = #-0x2e25f8
006348ac  44 30 9d e5  ldr	r3, [sp, #0x44]
006348b0  18 c0 9d e5  ldr	r12, [sp, #0x18]
006348b4  00 00 53 e3  cmp	r3, #0
006348b8  00 30 8c e5  str	r3, [r12]
006348bc  00 20 93 15  ldrne	r2, [r3]
006348c0  01 20 82 12  addne	r2, r2, #1
006348c4  00 20 83 15  strne	r2, [r3]
006348c8  44 00 8d e2  add	r0, sp, #68
006348cc  66 16 fd eb  bl	0x57a26c <_ZN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEED1Ev> @ imm = #-0xba668
006348d0  18 00 9d e5  ldr	r0, [sp, #0x18]
006348d4  4c d0 8d e2  add	sp, sp, #76
006348d8  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
006348dc  24 00 a0 e3  mov	r0, #36
006348e0  31 fe fb eb  bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x10073c
006348e4  0c 10 9d e5  ldr	r1, [sp, #0xc]
006348e8  08 00 8d e5  str	r0, [sp, #0x8]
006348ec  19 b0 fd eb  bl	0x5a0958 <_ZN6glitch5video19CVertexAttributeMapC1ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEE> @ imm = #-0x93f9c
006348f0  08 30 9d e5  ldr	r3, [sp, #0x8]
006348f4  00 00 53 e3  cmp	r3, #0
006348f8  00 20 93 15  ldrne	r2, [r3]
006348fc  01 20 82 12  addne	r2, r2, #1
00634900  00 20 83 15  strne	r2, [r3]
00634904  2c 00 9d e5  ldr	r0, [sp, #0x2c]
00634908  2c 30 8d e5  str	r3, [sp, #0x2c]
0063490c  00 00 50 e3  cmp	r0, #0
00634910  05 00 00 0a  beq	0x63492c <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x40c> @ imm = #0x14
00634914  00 30 90 e5  ldr	r3, [r0]
00634918  01 30 43 e2  sub	r3, r3, #1
0063491c  00 00 53 e3  cmp	r3, #0
00634920  00 30 80 e5  str	r3, [r0]
00634924  00 00 00 1a  bne	0x63492c <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x40c> @ imm = #0x0
00634928  60 66 f3 eb  bl	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x326680
0063492c  44 00 9d e5  ldr	r0, [sp, #0x44]
00634930  bd ff ff ea  b	0x63482c <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x30c> @ imm = #-0x10c
00634934  60 00 10 e3  tst	r0, #96
00634938  14 70 84 12  addne	r7, r4, #20
0063493c  1c ff ff 1a  bne	0x6345b4 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x94> @ imm = #-0x390
00634940  03 0c 10 e2  ands	r0, r0, #768
00634944  2c 70 84 12  addne	r7, r4, #44
00634948  19 ff ff 1a  bne	0x6345b4 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x94> @ imm = #-0x39c
0063494c  18 30 9d e5  ldr	r3, [sp, #0x18]
00634950  00 00 83 e5  str	r0, [r3]
00634954  40 00 8d e2  add	r0, sp, #64
00634958  56 76 f4 eb  bl	0x3522b8 <_ZN5boost13intrusive_ptrIN6glitch5video17CMaterialRendererEED1Ev> @ imm = #-0x2e26a8
0063495c  d9 ff ff ea  b	0x6348c8 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0x3a8> @ imm = #-0x9c
00634960  44 20 9d e5  ldr	r2, [sp, #0x44]
00634964  48 00 8d e2  add	r0, sp, #72
00634968  24 20 8d e5  str	r2, [sp, #0x24]
0063496c  00 00 52 e3  cmp	r2, #0
00634970  00 30 92 15  ldrne	r3, [r2]
00634974  01 30 83 12  addne	r3, r3, #1
00634978  00 30 82 15  strne	r3, [r2]
0063497c  34 30 94 15  ldrne	r3, [r4, #0x34]
00634980  24 20 9d e5  ldr	r2, [sp, #0x24]
00634984  24 30 20 e5  str	r3, [r0, #-0x24]!
00634988  34 20 84 e5  str	r2, [r4, #0x34]
0063498c  36 16 fd eb  bl	0x57a26c <_ZN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEED1Ev> @ imm = #-0xba728
00634990  06 00 a0 e1  mov	r0, r6
00634994  04 10 a0 e1  mov	r1, r4
00634998  3b 66 ff eb  bl	0x60e28c <_ZNK6glitch7collada16CColladaDatabase20linkInstanceMaterialEPNS0_17SInstanceMaterialE> @ imm = #-0x26714
0063499c  1c ff ff ea  b	0x634614 <_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb+0xf4> @ imm = #-0x390

; SUPPORTING VTABLE WORD VA=0x0097b7fc, PT_LOAD=1, file_offset=0x0097a7fc
; CColladaFactory symbol 0x0097b7d8 + 0x08 ABI header + object slot 0x1c -> 0x00636c8c
0097b7fc  8c 6c 63 00  .word 0x00636c8c ; createMaterialRenderer effect overload

