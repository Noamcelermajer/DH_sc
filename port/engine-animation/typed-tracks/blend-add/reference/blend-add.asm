
; ===== quaternion_blend_reducer [0x006130d4, 0x00613294) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006130d4 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_>:
  6130d4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6130d8: e3a0c000     	mov	r12, #0
  6130dc: e24dd03c     	sub	sp, sp, #60
  6130e0: e2526000     	subs	r6, r2, #0
  6130e4: e3a025fe     	mov	r2, #1065353216
  6130e8: e1a08000     	mov	r8, r0
  6130ec: e58d2034     	str	r2, [sp, #0x34]
  6130f0: e1a05001     	mov	r5, r1
  6130f4: e1a09003     	mov	r9, r3
  6130f8: e58dc028     	str	r12, [sp, #0x28]
  6130fc: e58dc02c     	str	r12, [sp, #0x2c]
  613100: e58dc030     	str	r12, [sp, #0x30]
  613104: da000060     	ble	0x61328c <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0x1b8> @ imm = #0x180
  613108: e1a0100c     	mov	r1, r12
  61310c: e5950000     	ldr	r0, [r5]
  613110: ebf3eb9d     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x30518c
  613114: e3500000     	cmp	r0, #0
  613118: 03a03000     	moveq	r3, #0
  61311c: 01a07005     	moveq	r7, r5
  613120: 01a04003     	moveq	r4, r3
  613124: 0a00003e     	beq	0x613224 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0x150> @ imm = #0xf8
  613128: e1a07005     	mov	r7, r5
  61312c: e3a04000     	mov	r4, #0
  613130: ea000003     	b	0x613144 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0x70> @ imm = #0xc
  613134: e5b70004     	ldr	r0, [r7, #0x4]!
  613138: ebf3eb93     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x3051b4
  61313c: e3500000     	cmp	r0, #0
  613140: 0a000036     	beq	0x613220 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0x14c> @ imm = #0xd8
  613144: e2844001     	add	r4, r4, #1
  613148: e1540006     	cmp	r4, r6
  61314c: e3a01000     	mov	r1, #0
  613150: 1afffff7     	bne	0x613134 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0x60> @ imm = #-0x24
  613154: e2864001     	add	r4, r6, #1
  613158: e3a0a000     	mov	r10, #0
  61315c: e1560004     	cmp	r6, r4
  613160: da000024     	ble	0x6131f8 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0x124> @ imm = #0x90
  613164: e28d3004     	add	r3, sp, #4
  613168: e0855104     	add	r5, r5, r4, lsl #2
  61316c: e0888204     	add	r8, r8, r4, lsl #4
  613170: e28db028     	add	r11, sp, #40
  613174: e58d3024     	str	r3, [sp, #0x24]
  613178: ea000003     	b	0x61318c <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0xb8> @ imm = #0xc
  61317c: e1540006     	cmp	r4, r6
  613180: e2855004     	add	r5, r5, #4
  613184: e2888010     	add	r8, r8, #16
  613188: 0a00001a     	beq	0x6131f8 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0x124> @ imm = #0x68
  61318c: e5957000     	ldr	r7, [r5]
  613190: e3a01000     	mov	r1, #0
  613194: e2844001     	add	r4, r4, #1
  613198: e1a00007     	mov	r0, r7
  61319c: ebf3eb7a     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x305218
  6131a0: e3500000     	cmp	r0, #0
  6131a4: 1afffff4     	bne	0x61317c <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0xa8> @ imm = #-0x30
  6131a8: e1a0000a     	mov	r0, r10
  6131ac: e1a01007     	mov	r1, r7
  6131b0: ebf3ee7b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x304614
  6131b4: e59dc024     	ldr	r12, [sp, #0x24]
  6131b8: e1a0a000     	mov	r10, r0
  6131bc: e898000f     	ldm	r8, {r0, r1, r2, r3}
  6131c0: e88c000f     	stm	r12, {r0, r1, r2, r3}
  6131c4: e1a0100a     	mov	r1, r10
  6131c8: e1a00007     	mov	r0, r7
  6131cc: ebf3eeb0     	bl	0x30ec94 <__aeabi_fdiv@plt> @ imm = #-0x304540
  6131d0: e89b000e     	ldm	r11, {r1, r2, r3}
  6131d4: e59dc034     	ldr	r12, [sp, #0x34]
  6131d8: e58d0014     	str	r0, [sp, #0x14]
  6131dc: e1a0000b     	mov	r0, r11
  6131e0: e58dc000     	str	r12, [sp]
  6131e4: ebfffec5     	bl	0x612d00 <_ZN6glitch4core10quaternion5slerpES1_S1_f> @ imm = #-0x4ec
  6131e8: e1540006     	cmp	r4, r6
  6131ec: e2855004     	add	r5, r5, #4
  6131f0: e2888010     	add	r8, r8, #16
  6131f4: 1affffe4     	bne	0x61318c <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0xb8> @ imm = #-0x70
  6131f8: e59d102c     	ldr	r1, [sp, #0x2c]
  6131fc: e59d3030     	ldr	r3, [sp, #0x30]
  613200: e59d2034     	ldr	r2, [sp, #0x34]
  613204: e59d0028     	ldr	r0, [sp, #0x28]
  613208: e5891004     	str	r1, [r9, #0x4]
  61320c: e589200c     	str	r2, [r9, #0xc]
  613210: e5890000     	str	r0, [r9]
  613214: e5893008     	str	r3, [r9, #0x8]
  613218: e28dd03c     	add	sp, sp, #60
  61321c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  613220: e1a03204     	lsl	r3, r4, #4
  613224: e597a000     	ldr	r10, [r7]
  613228: e0882003     	add	r2, r8, r3
  61322c: e7987003     	ldr	r7, [r8, r3]
  613230: e592b00c     	ldr	r11, [r2, #0xc]
  613234: e5923004     	ldr	r3, [r2, #0x4]
  613238: e5922008     	ldr	r2, [r2, #0x8]
  61323c: e1a0000a     	mov	r0, r10
  613240: e3a015fe     	mov	r1, #1065353216
  613244: e58d302c     	str	r3, [sp, #0x2c]
  613248: e58d2030     	str	r2, [sp, #0x30]
  61324c: e58d201c     	str	r2, [sp, #0x1c]
  613250: e58d3020     	str	r3, [sp, #0x20]
  613254: e58d7028     	str	r7, [sp, #0x28]
  613258: e58db034     	str	r11, [sp, #0x34]
  61325c: ebf3eb4a     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x3052d8
  613260: e3500000     	cmp	r0, #0
  613264: e59d201c     	ldr	r2, [sp, #0x1c]
  613268: e59d3020     	ldr	r3, [sp, #0x20]
  61326c: 0a000004     	beq	0x613284 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0x1b0> @ imm = #0x10
  613270: e589b00c     	str	r11, [r9, #0xc]
  613274: e5897000     	str	r7, [r9]
  613278: e5893004     	str	r3, [r9, #0x4]
  61327c: e5892008     	str	r2, [r9, #0x8]
  613280: eaffffe4     	b	0x613218 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0x144> @ imm = #-0x70
  613284: e2844001     	add	r4, r4, #1
  613288: eaffffb3     	b	0x61315c <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0x88> @ imm = #-0x134
  61328c: e3a04001     	mov	r4, #1
  613290: eaffffb0     	b	0x613158 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_+0x84> @ imm = #-0x140



; ===== quaternion_blend_vtable_wrapper [0x00613300, 0x00613314) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00613300 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE15getBlendedValueEPvPfiSA_>:
  613300: e1a00001     	mov	r0, r1
  613304: e1a01002     	mov	r1, r2
  613308: e1a02003     	mov	r2, r3
  61330c: e59d3000     	ldr	r3, [sp]
  613310: eaffff6f     	b	0x6130d4 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_> @ imm = #-0x244



; ===== quaternion_short_blend_vtable_wrapper [0x00613314, 0x00613328) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00613314 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE15getBlendedValueEPvPfiSA_>:
  613314: e1a00001     	mov	r0, r1
  613318: e1a01002     	mov	r1, r2
  61331c: e1a02003     	mov	r2, r3
  613320: e59d3000     	ldr	r3, [sp]
  613324: eaffff6a     	b	0x6130d4 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_> @ imm = #-0x258



; ===== quaternion_char_blend_vtable_wrapper [0x00613328, 0x0061333c) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00613328 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE15getBlendedValueEPvPfiSA_>:
  613328: e1a00001     	mov	r0, r1
  61332c: e1a01002     	mov	r1, r2
  613330: e1a02003     	mov	r2, r3
  613334: e59d3000     	ldr	r3, [sp]
  613338: eaffff65     	b	0x6130d4 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_> @ imm = #-0x26c



; ===== quaternion_angle_float_blend_vtable_wrapper [0x0061333c, 0x00613350) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0061333c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE15getBlendedValueEPvPfiSA_>:
  61333c: e1a00001     	mov	r0, r1
  613340: e1a01002     	mov	r1, r2
  613344: e1a02003     	mov	r2, r3
  613348: e59d3000     	ldr	r3, [sp]
  61334c: eaffff60     	b	0x6130d4 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_> @ imm = #-0x280



; ===== quaternion_angle_short_blend_vtable_wrapper [0x00613350, 0x00613364) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00613350 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE15getBlendedValueEPvPfiSA_>:
  613350: e1a00001     	mov	r0, r1
  613354: e1a01002     	mov	r1, r2
  613358: e1a02003     	mov	r2, r3
  61335c: e59d3000     	ldr	r3, [sp]
  613360: eaffff5b     	b	0x6130d4 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_> @ imm = #-0x294



; ===== quaternion_angle_char_blend_vtable_wrapper [0x00613364, 0x00613378) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00613364 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE15getBlendedValueEPvPfiSA_>:
  613364: e1a00001     	mov	r0, r1
  613368: e1a01002     	mov	r1, r2
  61336c: e1a02003     	mov	r2, r3
  613370: e59d3000     	ldr	r3, [sp]
  613374: eaffff56     	b	0x6130d4 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_> @ imm = #-0x2a8



; ===== quaternion_add_reducer [0x00613378, 0x00613588) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00613378 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_>:
  613378: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  61337c: e3a0c5fe     	mov	r12, #1065353216
  613380: e24dd09c     	sub	sp, sp, #156
  613384: e3a08000     	mov	r8, #0
  613388: e252b000     	subs	r11, r2, #0
  61338c: e1a0a001     	mov	r10, r1
  613390: e58d3030     	str	r3, [sp, #0x30]
  613394: e58d8088     	str	r8, [sp, #0x88]
  613398: e58d808c     	str	r8, [sp, #0x8c]
  61339c: e58d8090     	str	r8, [sp, #0x90]
  6133a0: e58dc094     	str	r12, [sp, #0x94]
  6133a4: e58d8078     	str	r8, [sp, #0x78]
  6133a8: e58d807c     	str	r8, [sp, #0x7c]
  6133ac: e58d8080     	str	r8, [sp, #0x80]
  6133b0: e58dc084     	str	r12, [sp, #0x84]
  6133b4: da000069     	ble	0x613560 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_+0x1e8> @ imm = #0x1a4
  6133b8: e3a06000     	mov	r6, #0
  6133bc: e1a04000     	mov	r4, r0
  6133c0: e28d1004     	add	r1, sp, #4
  6133c4: e28d0048     	add	r0, sp, #72
  6133c8: e28d2088     	add	r2, sp, #136
  6133cc: e28d3038     	add	r3, sp, #56
  6133d0: e28dc078     	add	r12, sp, #120
  6133d4: e28de068     	add	lr, sp, #104
  6133d8: e1a07006     	mov	r7, r6
  6133dc: e58d002c     	str	r0, [sp, #0x2c]
  6133e0: e58d101c     	str	r1, [sp, #0x1c]
  6133e4: e28d9058     	add	r9, sp, #88
  6133e8: e58d2020     	str	r2, [sp, #0x20]
  6133ec: e58d3034     	str	r3, [sp, #0x34]
  6133f0: e58dc024     	str	r12, [sp, #0x24]
  6133f4: e58de028     	str	lr, [sp, #0x28]
  6133f8: ea00001f     	b	0x61347c <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_+0x104> @ imm = #0x7c
  6133fc: e59dc01c     	ldr	r12, [sp, #0x1c]
  613400: e3a005fe     	mov	r0, #1065353216
  613404: e58d8058     	str	r8, [sp, #0x58]
  613408: e58d805c     	str	r8, [sp, #0x5c]
  61340c: e58d8060     	str	r8, [sp, #0x60]
  613410: e58d0064     	str	r0, [sp, #0x64]
  613414: e894000f     	ldm	r4, {r0, r1, r2, r3}
  613418: e88c000f     	stm	r12, {r0, r1, r2, r3}
  61341c: e59de020     	ldr	lr, [sp, #0x20]
  613420: e59dc094     	ldr	r12, [sp, #0x94]
  613424: e1a00009     	mov	r0, r9
  613428: e89e000e     	ldm	lr, {r1, r2, r3}
  61342c: e58dc000     	str	r12, [sp]
  613430: e58d5014     	str	r5, [sp, #0x14]
  613434: ebfffe31     	bl	0x612d00 <_ZN6glitch4core10quaternion5slerpES1_S1_f> @ imm = #-0x73c
  613438: e59d0028     	ldr	r0, [sp, #0x28]
  61343c: e59d1024     	ldr	r1, [sp, #0x24]
  613440: e1a02009     	mov	r2, r9
  613444: ebffea3a     	bl	0x60dd34 <_ZNK6glitch4core10quaternionmlERKS1_> @ imm = #-0x5718
  613448: e59d3068     	ldr	r3, [sp, #0x68]
  61344c: e58d3078     	str	r3, [sp, #0x78]
  613450: e59d306c     	ldr	r3, [sp, #0x6c]
  613454: e58d307c     	str	r3, [sp, #0x7c]
  613458: e59d3070     	ldr	r3, [sp, #0x70]
  61345c: e58d3080     	str	r3, [sp, #0x80]
  613460: e59d3074     	ldr	r3, [sp, #0x74]
  613464: e58d3084     	str	r3, [sp, #0x84]
  613468: e2877001     	add	r7, r7, #1
  61346c: e157000b     	cmp	r7, r11
  613470: e2866004     	add	r6, r6, #4
  613474: e2844010     	add	r4, r4, #16
  613478: 0a000037     	beq	0x61355c <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_+0x1e4> @ imm = #0xdc
  61347c: e79a5006     	ldr	r5, [r10, r6]
  613480: e3a01000     	mov	r1, #0
  613484: e1a00005     	mov	r0, r5
  613488: ebf3eb9a     	bl	0x30e2f8 <__aeabi_fcmpgt@plt> @ imm = #-0x305198
  61348c: e3500000     	cmp	r0, #0
  613490: e3a01000     	mov	r1, #0
  613494: e1a00005     	mov	r0, r5
  613498: 1affffd7     	bne	0x6133fc <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_+0x84> @ imm = #-0xa4
  61349c: ebf3ec9a     	bl	0x30e70c <__aeabi_fcmplt@plt> @ imm = #-0x304d98
  6134a0: e3500000     	cmp	r0, #0
  6134a4: 0affffef     	beq	0x613468 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_+0xf0> @ imm = #-0x44
  6134a8: e5942004     	ldr	r2, [r4, #0x4]
  6134ac: e5941008     	ldr	r1, [r4, #0x8]
  6134b0: e5943000     	ldr	r3, [r4]
  6134b4: e594000c     	ldr	r0, [r4, #0xc]
  6134b8: e59de01c     	ldr	lr, [sp, #0x1c]
  6134bc: e2833102     	add	r3, r3, #-2147483648
  6134c0: e2822102     	add	r2, r2, #-2147483648
  6134c4: e2811102     	add	r1, r1, #-2147483648
  6134c8: e79ac006     	ldr	r12, [r10, r6]
  6134cc: e58d0064     	str	r0, [sp, #0x64]
  6134d0: e58d1060     	str	r1, [sp, #0x60]
  6134d4: e58d205c     	str	r2, [sp, #0x5c]
  6134d8: e58d3058     	str	r3, [sp, #0x58]
  6134dc: e899000f     	ldm	r9, {r0, r1, r2, r3}
  6134e0: e88e000f     	stm	lr, {r0, r1, r2, r3}
  6134e4: e59d0020     	ldr	r0, [sp, #0x20]
  6134e8: e28cc102     	add	r12, r12, #-2147483648
  6134ec: e58d8048     	str	r8, [sp, #0x48]
  6134f0: e890000e     	ldm	r0, {r1, r2, r3}
  6134f4: e58dc014     	str	r12, [sp, #0x14]
  6134f8: e59dc094     	ldr	r12, [sp, #0x94]
  6134fc: e59d002c     	ldr	r0, [sp, #0x2c]
  613500: e58d804c     	str	r8, [sp, #0x4c]
  613504: e58dc000     	str	r12, [sp]
  613508: e3a0c5fe     	mov	r12, #1065353216
  61350c: e58dc054     	str	r12, [sp, #0x54]
  613510: e58d8050     	str	r8, [sp, #0x50]
  613514: ebfffdf9     	bl	0x612d00 <_ZN6glitch4core10quaternion5slerpES1_S1_f> @ imm = #-0x81c
  613518: e59d0034     	ldr	r0, [sp, #0x34]
  61351c: e59d1024     	ldr	r1, [sp, #0x24]
  613520: e59d202c     	ldr	r2, [sp, #0x2c]
  613524: ebffea02     	bl	0x60dd34 <_ZNK6glitch4core10quaternionmlERKS1_> @ imm = #-0x57f8
  613528: e59d3038     	ldr	r3, [sp, #0x38]
  61352c: e2877001     	add	r7, r7, #1
  613530: e157000b     	cmp	r7, r11
  613534: e58d3078     	str	r3, [sp, #0x78]
  613538: e59d303c     	ldr	r3, [sp, #0x3c]
  61353c: e2866004     	add	r6, r6, #4
  613540: e2844010     	add	r4, r4, #16
  613544: e58d307c     	str	r3, [sp, #0x7c]
  613548: e59d3040     	ldr	r3, [sp, #0x40]
  61354c: e58d3080     	str	r3, [sp, #0x80]
  613550: e59d3044     	ldr	r3, [sp, #0x44]
  613554: e58d3084     	str	r3, [sp, #0x84]
  613558: 1affffc7     	bne	0x61347c <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_+0x104> @ imm = #-0xe4
  61355c: e59d8078     	ldr	r8, [sp, #0x78]
  613560: e59d107c     	ldr	r1, [sp, #0x7c]
  613564: e59d3080     	ldr	r3, [sp, #0x80]
  613568: e59d2084     	ldr	r2, [sp, #0x84]
  61356c: e59d0030     	ldr	r0, [sp, #0x30]
  613570: e5808000     	str	r8, [r0]
  613574: e5801004     	str	r1, [r0, #0x4]
  613578: e580200c     	str	r2, [r0, #0xc]
  61357c: e5803008     	str	r3, [r0, #0x8]
  613580: e28dd09c     	add	sp, sp, #156
  613584: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}



; ===== quaternion_add_vtable_wrapper [0x00613588, 0x0061359c) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00613588 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE13getAddedValueEPvPfiSA_>:
  613588: e1a00001     	mov	r0, r1
  61358c: e1a01002     	mov	r1, r2
  613590: e1a02003     	mov	r2, r3
  613594: e59d3000     	ldr	r3, [sp]
  613598: eaffff76     	b	0x613378 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_> @ imm = #-0x228



; ===== quaternion_short_add_vtable_wrapper [0x0061359c, 0x006135b0) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0061359c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE13getAddedValueEPvPfiSA_>:
  61359c: e1a00001     	mov	r0, r1
  6135a0: e1a01002     	mov	r1, r2
  6135a4: e1a02003     	mov	r2, r3
  6135a8: e59d3000     	ldr	r3, [sp]
  6135ac: eaffff71     	b	0x613378 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_> @ imm = #-0x23c



; ===== quaternion_char_add_vtable_wrapper [0x006135b0, 0x006135c4) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006135b0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE13getAddedValueEPvPfiSA_>:
  6135b0: e1a00001     	mov	r0, r1
  6135b4: e1a01002     	mov	r1, r2
  6135b8: e1a02003     	mov	r2, r3
  6135bc: e59d3000     	ldr	r3, [sp]
  6135c0: eaffff6c     	b	0x613378 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_> @ imm = #-0x250



; ===== quaternion_angle_float_add_vtable_wrapper [0x006135c4, 0x006135d8) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006135c4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE13getAddedValueEPvPfiSA_>:
  6135c4: e1a00001     	mov	r0, r1
  6135c8: e1a01002     	mov	r1, r2
  6135cc: e1a02003     	mov	r2, r3
  6135d0: e59d3000     	ldr	r3, [sp]
  6135d4: eaffff67     	b	0x613378 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_> @ imm = #-0x264



; ===== quaternion_angle_short_add_vtable_wrapper [0x006135d8, 0x006135ec) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006135d8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE13getAddedValueEPvPfiSA_>:
  6135d8: e1a00001     	mov	r0, r1
  6135dc: e1a01002     	mov	r1, r2
  6135e0: e1a02003     	mov	r2, r3
  6135e4: e59d3000     	ldr	r3, [sp]
  6135e8: eaffff62     	b	0x613378 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_> @ imm = #-0x278



; ===== quaternion_angle_char_add_vtable_wrapper [0x006135ec, 0x00613600) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006135ec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE13getAddedValueEPvPfiSA_>:
  6135ec: e1a00001     	mov	r0, r1
  6135f0: e1a01002     	mov	r1, r2
  6135f4: e1a02003     	mov	r2, r3
  6135f8: e59d3000     	ldr	r3, [sp]
  6135fc: eaffff5d     	b	0x613378 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_> @ imm = #-0x28c



; ===== quaternion_apply_blended [0x00620968, 0x006209b4) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620968 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE>:
  620968: e92d4030     	push	{r4, r5, lr}
  62096c: e24dd014     	sub	sp, sp, #20
  620970: e3a0c000     	mov	r12, #0
  620974: e1a04003     	mov	r4, r3
  620978: e3a0e5fe     	mov	lr, #1065353216
  62097c: e1a0300d     	mov	r3, sp
  620980: e58dc008     	str	r12, [sp, #0x8]
  620984: e58de00c     	str	lr, [sp, #0xc]
  620988: e58dc000     	str	r12, [sp]
  62098c: e58dc004     	str	r12, [sp, #0x4]
  620990: ebffc9cf     	bl	0x6130d4 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_> @ imm = #-0xd8c4
  620994: e1a00004     	mov	r0, r4
  620998: e1a0100d     	mov	r1, sp
  62099c: e5943000     	ldr	r3, [r4]
  6209a0: e1a0500d     	mov	r5, sp
  6209a4: e1a0e00f     	mov	lr, pc
  6209a8: e593f09c     	ldr	pc, [r3, #0x9c]
  6209ac: e28dd014     	add	sp, sp, #20
  6209b0: e8bd8030     	pop	{r4, r5, pc}



; ===== quaternion_apply_blended_vtable_wrapper [0x006209b4, 0x006209d0) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006209b4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE17applyBlendedValueEPvPfiSA_PNS1_15CApplicatorInfoE>:
  6209b4: e1a00001     	mov	r0, r1
  6209b8: e59dc004     	ldr	r12, [sp, #0x4]
  6209bc: e1a01002     	mov	r1, r2
  6209c0: e1a02003     	mov	r2, r3
  6209c4: e59d3000     	ldr	r3, [sp]
  6209c8: e58dc000     	str	r12, [sp]
  6209cc: eaffffe5     	b	0x620968 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE> @ imm = #-0x6c



; ===== quaternion_short_apply_blended [0x006209d0, 0x00620a1c) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006209d0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE>:
  6209d0: e92d4030     	push	{r4, r5, lr}
  6209d4: e24dd014     	sub	sp, sp, #20
  6209d8: e3a0c000     	mov	r12, #0
  6209dc: e1a04003     	mov	r4, r3
  6209e0: e3a0e5fe     	mov	lr, #1065353216
  6209e4: e1a0300d     	mov	r3, sp
  6209e8: e58dc008     	str	r12, [sp, #0x8]
  6209ec: e58de00c     	str	lr, [sp, #0xc]
  6209f0: e58dc000     	str	r12, [sp]
  6209f4: e58dc004     	str	r12, [sp, #0x4]
  6209f8: ebffc9b5     	bl	0x6130d4 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_> @ imm = #-0xd92c
  6209fc: e1a00004     	mov	r0, r4
  620a00: e1a0100d     	mov	r1, sp
  620a04: e5943000     	ldr	r3, [r4]
  620a08: e1a0500d     	mov	r5, sp
  620a0c: e1a0e00f     	mov	lr, pc
  620a10: e593f09c     	ldr	pc, [r3, #0x9c]
  620a14: e28dd014     	add	sp, sp, #20
  620a18: e8bd8030     	pop	{r4, r5, pc}



; ===== quaternion_short_apply_blended_vtable_wrapper [0x00620a1c, 0x00620a38) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620a1c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE17applyBlendedValueEPvPfiSA_PNS1_15CApplicatorInfoE>:
  620a1c: e1a00001     	mov	r0, r1
  620a20: e59dc004     	ldr	r12, [sp, #0x4]
  620a24: e1a01002     	mov	r1, r2
  620a28: e1a02003     	mov	r2, r3
  620a2c: e59d3000     	ldr	r3, [sp]
  620a30: e58dc000     	str	r12, [sp]
  620a34: eaffffe5     	b	0x6209d0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE> @ imm = #-0x6c



; ===== quaternion_char_apply_blended [0x00620a38, 0x00620a84) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620a38 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE>:
  620a38: e92d4030     	push	{r4, r5, lr}
  620a3c: e24dd014     	sub	sp, sp, #20
  620a40: e3a0c000     	mov	r12, #0
  620a44: e1a04003     	mov	r4, r3
  620a48: e3a0e5fe     	mov	lr, #1065353216
  620a4c: e1a0300d     	mov	r3, sp
  620a50: e58dc008     	str	r12, [sp, #0x8]
  620a54: e58de00c     	str	lr, [sp, #0xc]
  620a58: e58dc000     	str	r12, [sp]
  620a5c: e58dc004     	str	r12, [sp, #0x4]
  620a60: ebffc99b     	bl	0x6130d4 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_> @ imm = #-0xd994
  620a64: e1a00004     	mov	r0, r4
  620a68: e1a0100d     	mov	r1, sp
  620a6c: e5943000     	ldr	r3, [r4]
  620a70: e1a0500d     	mov	r5, sp
  620a74: e1a0e00f     	mov	lr, pc
  620a78: e593f09c     	ldr	pc, [r3, #0x9c]
  620a7c: e28dd014     	add	sp, sp, #20
  620a80: e8bd8030     	pop	{r4, r5, pc}



; ===== quaternion_char_apply_blended_vtable_wrapper [0x00620a84, 0x00620aa0) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620a84 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE17applyBlendedValueEPvPfiSA_PNS1_15CApplicatorInfoE>:
  620a84: e1a00001     	mov	r0, r1
  620a88: e59dc004     	ldr	r12, [sp, #0x4]
  620a8c: e1a01002     	mov	r1, r2
  620a90: e1a02003     	mov	r2, r3
  620a94: e59d3000     	ldr	r3, [sp]
  620a98: e58dc000     	str	r12, [sp]
  620a9c: eaffffe5     	b	0x620a38 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE> @ imm = #-0x6c



; ===== quaternion_angle_float_apply_blended [0x00620aa0, 0x00620aec) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620aa0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE>:
  620aa0: e92d4030     	push	{r4, r5, lr}
  620aa4: e24dd014     	sub	sp, sp, #20
  620aa8: e3a0c000     	mov	r12, #0
  620aac: e1a04003     	mov	r4, r3
  620ab0: e3a0e5fe     	mov	lr, #1065353216
  620ab4: e1a0300d     	mov	r3, sp
  620ab8: e58dc008     	str	r12, [sp, #0x8]
  620abc: e58de00c     	str	lr, [sp, #0xc]
  620ac0: e58dc000     	str	r12, [sp]
  620ac4: e58dc004     	str	r12, [sp, #0x4]
  620ac8: ebffc981     	bl	0x6130d4 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_> @ imm = #-0xd9fc
  620acc: e1a00004     	mov	r0, r4
  620ad0: e1a0100d     	mov	r1, sp
  620ad4: e5943000     	ldr	r3, [r4]
  620ad8: e1a0500d     	mov	r5, sp
  620adc: e1a0e00f     	mov	lr, pc
  620ae0: e593f09c     	ldr	pc, [r3, #0x9c]
  620ae4: e28dd014     	add	sp, sp, #20
  620ae8: e8bd8030     	pop	{r4, r5, pc}



; ===== quaternion_angle_float_apply_blended_vtable_wrapper [0x00620aec, 0x00620b08) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620aec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE17applyBlendedValueEPvPfiSA_PNS1_15CApplicatorInfoE>:
  620aec: e1a00001     	mov	r0, r1
  620af0: e59dc004     	ldr	r12, [sp, #0x4]
  620af4: e1a01002     	mov	r1, r2
  620af8: e1a02003     	mov	r2, r3
  620afc: e59d3000     	ldr	r3, [sp]
  620b00: e58dc000     	str	r12, [sp]
  620b04: eaffffe5     	b	0x620aa0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE> @ imm = #-0x6c



; ===== quaternion_angle_short_apply_blended [0x00620b08, 0x00620b54) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620b08 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE>:
  620b08: e92d4030     	push	{r4, r5, lr}
  620b0c: e24dd014     	sub	sp, sp, #20
  620b10: e3a0c000     	mov	r12, #0
  620b14: e1a04003     	mov	r4, r3
  620b18: e3a0e5fe     	mov	lr, #1065353216
  620b1c: e1a0300d     	mov	r3, sp
  620b20: e58dc008     	str	r12, [sp, #0x8]
  620b24: e58de00c     	str	lr, [sp, #0xc]
  620b28: e58dc000     	str	r12, [sp]
  620b2c: e58dc004     	str	r12, [sp, #0x4]
  620b30: ebffc967     	bl	0x6130d4 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_> @ imm = #-0xda64
  620b34: e1a00004     	mov	r0, r4
  620b38: e1a0100d     	mov	r1, sp
  620b3c: e5943000     	ldr	r3, [r4]
  620b40: e1a0500d     	mov	r5, sp
  620b44: e1a0e00f     	mov	lr, pc
  620b48: e593f09c     	ldr	pc, [r3, #0x9c]
  620b4c: e28dd014     	add	sp, sp, #20
  620b50: e8bd8030     	pop	{r4, r5, pc}



; ===== quaternion_angle_short_apply_blended_vtable_wrapper [0x00620b54, 0x00620b70) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620b54 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE17applyBlendedValueEPvPfiSA_PNS1_15CApplicatorInfoE>:
  620b54: e1a00001     	mov	r0, r1
  620b58: e59dc004     	ldr	r12, [sp, #0x4]
  620b5c: e1a01002     	mov	r1, r2
  620b60: e1a02003     	mov	r2, r3
  620b64: e59d3000     	ldr	r3, [sp]
  620b68: e58dc000     	str	r12, [sp]
  620b6c: eaffffe5     	b	0x620b08 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE> @ imm = #-0x6c



; ===== quaternion_angle_char_apply_blended [0x00620b70, 0x00620bbc) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620b70 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE>:
  620b70: e92d4030     	push	{r4, r5, lr}
  620b74: e24dd014     	sub	sp, sp, #20
  620b78: e3a0c000     	mov	r12, #0
  620b7c: e1a04003     	mov	r4, r3
  620b80: e3a0e5fe     	mov	lr, #1065353216
  620b84: e1a0300d     	mov	r3, sp
  620b88: e58dc008     	str	r12, [sp, #0x8]
  620b8c: e58de00c     	str	lr, [sp, #0xc]
  620b90: e58dc000     	str	r12, [sp]
  620b94: e58dc004     	str	r12, [sp, #0x4]
  620b98: ebffc94d     	bl	0x6130d4 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_> @ imm = #-0xdacc
  620b9c: e1a00004     	mov	r0, r4
  620ba0: e1a0100d     	mov	r1, sp
  620ba4: e5943000     	ldr	r3, [r4]
  620ba8: e1a0500d     	mov	r5, sp
  620bac: e1a0e00f     	mov	lr, pc
  620bb0: e593f09c     	ldr	pc, [r3, #0x9c]
  620bb4: e28dd014     	add	sp, sp, #20
  620bb8: e8bd8030     	pop	{r4, r5, pc}



; ===== quaternion_angle_char_apply_blended_vtable_wrapper [0x00620bbc, 0x00620bd8) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620bbc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE17applyBlendedValueEPvPfiSA_PNS1_15CApplicatorInfoE>:
  620bbc: e1a00001     	mov	r0, r1
  620bc0: e59dc004     	ldr	r12, [sp, #0x4]
  620bc4: e1a01002     	mov	r1, r2
  620bc8: e1a02003     	mov	r2, r3
  620bcc: e59d3000     	ldr	r3, [sp]
  620bd0: e58dc000     	str	r12, [sp]
  620bd4: eaffffe5     	b	0x620b70 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE> @ imm = #-0x6c



; ===== quaternion_apply_added [0x00620bd8, 0x00620c24) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620bd8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE>:
  620bd8: e92d4030     	push	{r4, r5, lr}
  620bdc: e24dd014     	sub	sp, sp, #20
  620be0: e3a0c000     	mov	r12, #0
  620be4: e1a04003     	mov	r4, r3
  620be8: e3a0e5fe     	mov	lr, #1065353216
  620bec: e1a0300d     	mov	r3, sp
  620bf0: e58dc008     	str	r12, [sp, #0x8]
  620bf4: e58de00c     	str	lr, [sp, #0xc]
  620bf8: e58dc000     	str	r12, [sp]
  620bfc: e58dc004     	str	r12, [sp, #0x4]
  620c00: ebffc9dc     	bl	0x613378 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_> @ imm = #-0xd890
  620c04: e1a00004     	mov	r0, r4
  620c08: e1a0100d     	mov	r1, sp
  620c0c: e5943000     	ldr	r3, [r4]
  620c10: e1a0500d     	mov	r5, sp
  620c14: e1a0e00f     	mov	lr, pc
  620c18: e593f09c     	ldr	pc, [r3, #0x9c]
  620c1c: e28dd014     	add	sp, sp, #20
  620c20: e8bd8030     	pop	{r4, r5, pc}



; ===== quaternion_apply_added_vtable_wrapper [0x00620c24, 0x00620c40) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620c24 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE15applyAddedValueEPvPfiSA_PNS1_15CApplicatorInfoE>:
  620c24: e1a00001     	mov	r0, r1
  620c28: e59dc004     	ldr	r12, [sp, #0x4]
  620c2c: e1a01002     	mov	r1, r2
  620c30: e1a02003     	mov	r2, r3
  620c34: e59d3000     	ldr	r3, [sp]
  620c38: e58dc000     	str	r12, [sp]
  620c3c: eaffffe5     	b	0x620bd8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE> @ imm = #-0x6c



; ===== quaternion_short_apply_added [0x00620c40, 0x00620c8c) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620c40 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE>:
  620c40: e92d4030     	push	{r4, r5, lr}
  620c44: e24dd014     	sub	sp, sp, #20
  620c48: e3a0c000     	mov	r12, #0
  620c4c: e1a04003     	mov	r4, r3
  620c50: e3a0e5fe     	mov	lr, #1065353216
  620c54: e1a0300d     	mov	r3, sp
  620c58: e58dc008     	str	r12, [sp, #0x8]
  620c5c: e58de00c     	str	lr, [sp, #0xc]
  620c60: e58dc000     	str	r12, [sp]
  620c64: e58dc004     	str	r12, [sp, #0x4]
  620c68: ebffc9c2     	bl	0x613378 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_> @ imm = #-0xd8f8
  620c6c: e1a00004     	mov	r0, r4
  620c70: e1a0100d     	mov	r1, sp
  620c74: e5943000     	ldr	r3, [r4]
  620c78: e1a0500d     	mov	r5, sp
  620c7c: e1a0e00f     	mov	lr, pc
  620c80: e593f09c     	ldr	pc, [r3, #0x9c]
  620c84: e28dd014     	add	sp, sp, #20
  620c88: e8bd8030     	pop	{r4, r5, pc}



; ===== quaternion_short_apply_added_vtable_wrapper [0x00620c8c, 0x00620ca8) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620c8c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE15applyAddedValueEPvPfiSA_PNS1_15CApplicatorInfoE>:
  620c8c: e1a00001     	mov	r0, r1
  620c90: e59dc004     	ldr	r12, [sp, #0x4]
  620c94: e1a01002     	mov	r1, r2
  620c98: e1a02003     	mov	r2, r3
  620c9c: e59d3000     	ldr	r3, [sp]
  620ca0: e58dc000     	str	r12, [sp]
  620ca4: eaffffe5     	b	0x620c40 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE> @ imm = #-0x6c



; ===== quaternion_char_apply_added [0x00620ca8, 0x00620cf4) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620ca8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE>:
  620ca8: e92d4030     	push	{r4, r5, lr}
  620cac: e24dd014     	sub	sp, sp, #20
  620cb0: e3a0c000     	mov	r12, #0
  620cb4: e1a04003     	mov	r4, r3
  620cb8: e3a0e5fe     	mov	lr, #1065353216
  620cbc: e1a0300d     	mov	r3, sp
  620cc0: e58dc008     	str	r12, [sp, #0x8]
  620cc4: e58de00c     	str	lr, [sp, #0xc]
  620cc8: e58dc000     	str	r12, [sp]
  620ccc: e58dc004     	str	r12, [sp, #0x4]
  620cd0: ebffc9a8     	bl	0x613378 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_> @ imm = #-0xd960
  620cd4: e1a00004     	mov	r0, r4
  620cd8: e1a0100d     	mov	r1, sp
  620cdc: e5943000     	ldr	r3, [r4]
  620ce0: e1a0500d     	mov	r5, sp
  620ce4: e1a0e00f     	mov	lr, pc
  620ce8: e593f09c     	ldr	pc, [r3, #0x9c]
  620cec: e28dd014     	add	sp, sp, #20
  620cf0: e8bd8030     	pop	{r4, r5, pc}



; ===== quaternion_char_apply_added_vtable_wrapper [0x00620cf4, 0x00620d10) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620cf4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE15applyAddedValueEPvPfiSA_PNS1_15CApplicatorInfoE>:
  620cf4: e1a00001     	mov	r0, r1
  620cf8: e59dc004     	ldr	r12, [sp, #0x4]
  620cfc: e1a01002     	mov	r1, r2
  620d00: e1a02003     	mov	r2, r3
  620d04: e59d3000     	ldr	r3, [sp]
  620d08: e58dc000     	str	r12, [sp]
  620d0c: eaffffe5     	b	0x620ca8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE> @ imm = #-0x6c



; ===== quaternion_angle_float_apply_added [0x00620d10, 0x00620d5c) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620d10 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE>:
  620d10: e92d4030     	push	{r4, r5, lr}
  620d14: e24dd014     	sub	sp, sp, #20
  620d18: e3a0c000     	mov	r12, #0
  620d1c: e1a04003     	mov	r4, r3
  620d20: e3a0e5fe     	mov	lr, #1065353216
  620d24: e1a0300d     	mov	r3, sp
  620d28: e58dc008     	str	r12, [sp, #0x8]
  620d2c: e58de00c     	str	lr, [sp, #0xc]
  620d30: e58dc000     	str	r12, [sp]
  620d34: e58dc004     	str	r12, [sp, #0x4]
  620d38: ebffc98e     	bl	0x613378 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_> @ imm = #-0xd9c8
  620d3c: e1a00004     	mov	r0, r4
  620d40: e1a0100d     	mov	r1, sp
  620d44: e5943000     	ldr	r3, [r4]
  620d48: e1a0500d     	mov	r5, sp
  620d4c: e1a0e00f     	mov	lr, pc
  620d50: e593f09c     	ldr	pc, [r3, #0x9c]
  620d54: e28dd014     	add	sp, sp, #20
  620d58: e8bd8030     	pop	{r4, r5, pc}



; ===== quaternion_angle_float_apply_added_vtable_wrapper [0x00620d5c, 0x00620d78) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620d5c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE15applyAddedValueEPvPfiSA_PNS1_15CApplicatorInfoE>:
  620d5c: e1a00001     	mov	r0, r1
  620d60: e59dc004     	ldr	r12, [sp, #0x4]
  620d64: e1a01002     	mov	r1, r2
  620d68: e1a02003     	mov	r2, r3
  620d6c: e59d3000     	ldr	r3, [sp]
  620d70: e58dc000     	str	r12, [sp]
  620d74: eaffffe5     	b	0x620d10 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE> @ imm = #-0x6c



; ===== quaternion_angle_short_apply_added [0x00620d78, 0x00620dc4) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620d78 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE>:
  620d78: e92d4030     	push	{r4, r5, lr}
  620d7c: e24dd014     	sub	sp, sp, #20
  620d80: e3a0c000     	mov	r12, #0
  620d84: e1a04003     	mov	r4, r3
  620d88: e3a0e5fe     	mov	lr, #1065353216
  620d8c: e1a0300d     	mov	r3, sp
  620d90: e58dc008     	str	r12, [sp, #0x8]
  620d94: e58de00c     	str	lr, [sp, #0xc]
  620d98: e58dc000     	str	r12, [sp]
  620d9c: e58dc004     	str	r12, [sp, #0x4]
  620da0: ebffc974     	bl	0x613378 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_> @ imm = #-0xda30
  620da4: e1a00004     	mov	r0, r4
  620da8: e1a0100d     	mov	r1, sp
  620dac: e5943000     	ldr	r3, [r4]
  620db0: e1a0500d     	mov	r5, sp
  620db4: e1a0e00f     	mov	lr, pc
  620db8: e593f09c     	ldr	pc, [r3, #0x9c]
  620dbc: e28dd014     	add	sp, sp, #20
  620dc0: e8bd8030     	pop	{r4, r5, pc}



; ===== quaternion_angle_short_apply_added_vtable_wrapper [0x00620dc4, 0x00620de0) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620dc4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE15applyAddedValueEPvPfiSA_PNS1_15CApplicatorInfoE>:
  620dc4: e1a00001     	mov	r0, r1
  620dc8: e59dc004     	ldr	r12, [sp, #0x4]
  620dcc: e1a01002     	mov	r1, r2
  620dd0: e1a02003     	mov	r2, r3
  620dd4: e59d3000     	ldr	r3, [sp]
  620dd8: e58dc000     	str	r12, [sp]
  620ddc: eaffffe5     	b	0x620d78 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE> @ imm = #-0x6c



; ===== quaternion_angle_char_apply_added [0x00620de0, 0x00620e2c) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620de0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE>:
  620de0: e92d4030     	push	{r4, r5, lr}
  620de4: e24dd014     	sub	sp, sp, #20
  620de8: e3a0c000     	mov	r12, #0
  620dec: e1a04003     	mov	r4, r3
  620df0: e3a0e5fe     	mov	lr, #1065353216
  620df4: e1a0300d     	mov	r3, sp
  620df8: e58dc008     	str	r12, [sp, #0x8]
  620dfc: e58de00c     	str	lr, [sp, #0xc]
  620e00: e58dc000     	str	r12, [sp]
  620e04: e58dc004     	str	r12, [sp, #0x4]
  620e08: ebffc95a     	bl	0x613378 <_ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_> @ imm = #-0xda98
  620e0c: e1a00004     	mov	r0, r4
  620e10: e1a0100d     	mov	r1, sp
  620e14: e5943000     	ldr	r3, [r4]
  620e18: e1a0500d     	mov	r5, sp
  620e1c: e1a0e00f     	mov	lr, pc
  620e20: e593f09c     	ldr	pc, [r3, #0x9c]
  620e24: e28dd014     	add	sp, sp, #20
  620e28: e8bd8030     	pop	{r4, r5, pc}



; ===== quaternion_angle_char_apply_added_vtable_wrapper [0x00620e2c, 0x00620e48) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00620e2c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE15applyAddedValueEPvPfiSA_PNS1_15CApplicatorInfoE>:
  620e2c: e1a00001     	mov	r0, r1
  620e30: e59dc004     	ldr	r12, [sp, #0x4]
  620e34: e1a01002     	mov	r1, r2
  620e38: e1a02003     	mov	r2, r3
  620e3c: e59d3000     	ldr	r3, [sp]
  620e40: e58dc000     	str	r12, [sp]
  620e44: eaffffe5     	b	0x620de0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE> @ imm = #-0x6c



; ===== scale_float3_blend_vtable_method [0x006275fc, 0x006276e0) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006275fc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE15getBlendedValueEPvPfiSB_>:
  6275fc: e3530001     	cmp	r3, #1
  627600: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  627604: e1a04003     	mov	r4, r3
  627608: e1a0b002     	mov	r11, r2
  62760c: 0a000029     	beq	0x6276b8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE15getBlendedValueEPvPfiSB_+0xbc> @ imm = #0xa4
  627610: e3530000     	cmp	r3, #0
  627614: 03a08000     	moveq	r8, #0
  627618: 01a09008     	moveq	r9, r8
  62761c: 01a0a008     	moveq	r10, r8
  627620: 0a00001e     	beq	0x6276a0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE15getBlendedValueEPvPfiSB_+0xa4> @ imm = #0x78
  627624: e3a08000     	mov	r8, #0
  627628: e1a05001     	mov	r5, r1
  62762c: e3a07000     	mov	r7, #0
  627630: e1a09008     	mov	r9, r8
  627634: e1a0a008     	mov	r10, r8
  627638: e79b6007     	ldr	r6, [r11, r7]
  62763c: e5951000     	ldr	r1, [r5]
  627640: e2877004     	add	r7, r7, #4
  627644: e1a00006     	mov	r0, r6
  627648: ebf39dc7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3188e4
  62764c: e1a01000     	mov	r1, r0
  627650: e1a00008     	mov	r0, r8
  627654: ebf39d52     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318ab8
  627658: e5951004     	ldr	r1, [r5, #0x4]
  62765c: e1a08000     	mov	r8, r0
  627660: e1a00006     	mov	r0, r6
  627664: ebf39dc0     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318900
  627668: e1a01000     	mov	r1, r0
  62766c: e1a00009     	mov	r0, r9
  627670: ebf39d4b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318ad4
  627674: e5951008     	ldr	r1, [r5, #0x8]
  627678: e1a09000     	mov	r9, r0
  62767c: e1a00006     	mov	r0, r6
  627680: ebf39db9     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31891c
  627684: e1a01000     	mov	r1, r0
  627688: e1a0000a     	mov	r0, r10
  62768c: ebf39d44     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318af0
  627690: e2544001     	subs	r4, r4, #1
  627694: e1a0a000     	mov	r10, r0
  627698: e285500c     	add	r5, r5, #12
  62769c: 1affffe5     	bne	0x627638 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE15getBlendedValueEPvPfiSB_+0x3c> @ imm = #-0x6c
  6276a0: e59d3028     	ldr	r3, [sp, #0x28]
  6276a4: e4838004     	str	r8, [r3], #4
  6276a8: e59d2028     	ldr	r2, [sp, #0x28]
  6276ac: e5829004     	str	r9, [r2, #0x4]
  6276b0: e583a004     	str	r10, [r3, #0x4]
  6276b4: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6276b8: e1a02001     	mov	r2, r1
  6276bc: e4920004     	ldr	r0, [r2], #4
  6276c0: e59d3028     	ldr	r3, [sp, #0x28]
  6276c4: e4830004     	str	r0, [r3], #4
  6276c8: e5911004     	ldr	r1, [r1, #0x4]
  6276cc: e59d0028     	ldr	r0, [sp, #0x28]
  6276d0: e5801004     	str	r1, [r0, #0x4]
  6276d4: e5922004     	ldr	r2, [r2, #0x4]
  6276d8: e5832004     	str	r2, [r3, #0x4]
  6276dc: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}



; ===== scale_float3_add_vtable_method [0x0062b204, 0x0062b2e8) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0062b204 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE13getAddedValueEPvPfiSB_>:
  62b204: e3530001     	cmp	r3, #1
  62b208: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62b20c: e1a04003     	mov	r4, r3
  62b210: e1a0b002     	mov	r11, r2
  62b214: 0a000029     	beq	0x62b2c0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE13getAddedValueEPvPfiSB_+0xbc> @ imm = #0xa4
  62b218: e3530000     	cmp	r3, #0
  62b21c: 03a08000     	moveq	r8, #0
  62b220: 01a09008     	moveq	r9, r8
  62b224: 01a0a008     	moveq	r10, r8
  62b228: 0a00001e     	beq	0x62b2a8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE13getAddedValueEPvPfiSB_+0xa4> @ imm = #0x78
  62b22c: e3a08000     	mov	r8, #0
  62b230: e1a05001     	mov	r5, r1
  62b234: e3a07000     	mov	r7, #0
  62b238: e1a09008     	mov	r9, r8
  62b23c: e1a0a008     	mov	r10, r8
  62b240: e79b6007     	ldr	r6, [r11, r7]
  62b244: e5951000     	ldr	r1, [r5]
  62b248: e2877004     	add	r7, r7, #4
  62b24c: e1a00006     	mov	r0, r6
  62b250: ebf38ec5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c4ec
  62b254: e1a01000     	mov	r1, r0
  62b258: e1a00008     	mov	r0, r8
  62b25c: ebf38e50     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c6c0
  62b260: e5951004     	ldr	r1, [r5, #0x4]
  62b264: e1a08000     	mov	r8, r0
  62b268: e1a00006     	mov	r0, r6
  62b26c: ebf38ebe     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c508
  62b270: e1a01000     	mov	r1, r0
  62b274: e1a00009     	mov	r0, r9
  62b278: ebf38e49     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c6dc
  62b27c: e5951008     	ldr	r1, [r5, #0x8]
  62b280: e1a09000     	mov	r9, r0
  62b284: e1a00006     	mov	r0, r6
  62b288: ebf38eb7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c524
  62b28c: e1a01000     	mov	r1, r0
  62b290: e1a0000a     	mov	r0, r10
  62b294: ebf38e42     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c6f8
  62b298: e2544001     	subs	r4, r4, #1
  62b29c: e1a0a000     	mov	r10, r0
  62b2a0: e285500c     	add	r5, r5, #12
  62b2a4: 1affffe5     	bne	0x62b240 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE13getAddedValueEPvPfiSB_+0x3c> @ imm = #-0x6c
  62b2a8: e59d3028     	ldr	r3, [sp, #0x28]
  62b2ac: e4838004     	str	r8, [r3], #4
  62b2b0: e59d2028     	ldr	r2, [sp, #0x28]
  62b2b4: e5829004     	str	r9, [r2, #0x4]
  62b2b8: e583a004     	str	r10, [r3, #0x4]
  62b2bc: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62b2c0: e1a02001     	mov	r2, r1
  62b2c4: e4920004     	ldr	r0, [r2], #4
  62b2c8: e59d3028     	ldr	r3, [sp, #0x28]
  62b2cc: e4830004     	str	r0, [r3], #4
  62b2d0: e5911004     	ldr	r1, [r1, #0x4]
  62b2d4: e59d0028     	ldr	r0, [sp, #0x28]
  62b2d8: e5801004     	str	r1, [r0, #0x4]
  62b2dc: e5922004     	ldr	r2, [r2, #0x4]
  62b2e0: e5832004     	str	r2, [r3, #0x4]
  62b2e4: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}



; ===== scale_float3_apply_blended [0x0062d634, 0x0062d72c) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0062d634 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE19applyBlendedValueExEPvPfiS9_PNS1_15CApplicatorInfoE>:
  62d634: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62d638: e3520001     	cmp	r2, #1
  62d63c: e24dd01c     	sub	sp, sp, #28
  62d640: e3a0a000     	mov	r10, #0
  62d644: e1a04002     	mov	r4, r2
  62d648: e1a05001     	mov	r5, r1
  62d64c: e58d3004     	str	r3, [sp, #0x4]
  62d650: e58da014     	str	r10, [sp, #0x14]
  62d654: 0a00002b     	beq	0x62d708 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE19applyBlendedValueExEPvPfiS9_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62d658: e3520000     	cmp	r2, #0
  62d65c: 01a0b00a     	moveq	r11, r10
  62d660: 01a0900a     	moveq	r9, r10
  62d664: 0a00001d     	beq	0x62d6e0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE19applyBlendedValueExEPvPfiS9_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62d668: e1a06000     	mov	r6, r0
  62d66c: e3a08000     	mov	r8, #0
  62d670: e1a0b00a     	mov	r11, r10
  62d674: e1a0900a     	mov	r9, r10
  62d678: e7957008     	ldr	r7, [r5, r8]
  62d67c: e5961000     	ldr	r1, [r6]
  62d680: e2888004     	add	r8, r8, #4
  62d684: e1a00007     	mov	r0, r7
  62d688: ebf385b7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e924
  62d68c: e1a01000     	mov	r1, r0
  62d690: e1a0000a     	mov	r0, r10
  62d694: ebf38542     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31eaf8
  62d698: e5961004     	ldr	r1, [r6, #0x4]
  62d69c: e1a0a000     	mov	r10, r0
  62d6a0: e1a00007     	mov	r0, r7
  62d6a4: ebf385b0     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e940
  62d6a8: e1a01000     	mov	r1, r0
  62d6ac: e1a0000b     	mov	r0, r11
  62d6b0: ebf3853b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31eb14
  62d6b4: e5961008     	ldr	r1, [r6, #0x8]
  62d6b8: e1a0b000     	mov	r11, r0
  62d6bc: e1a00007     	mov	r0, r7
  62d6c0: ebf385a9     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e95c
  62d6c4: e1a01000     	mov	r1, r0
  62d6c8: e1a00009     	mov	r0, r9
  62d6cc: ebf38534     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31eb30
  62d6d0: e2544001     	subs	r4, r4, #1
  62d6d4: e1a09000     	mov	r9, r0
  62d6d8: e286600c     	add	r6, r6, #12
  62d6dc: 1affffe5     	bne	0x62d678 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE19applyBlendedValueExEPvPfiS9_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62d6e0: e28d1018     	add	r1, sp, #24
  62d6e4: e521a00c     	str	r10, [r1, #-0xc]!
  62d6e8: e58db010     	str	r11, [sp, #0x10]
  62d6ec: e5819008     	str	r9, [r1, #0x8]
  62d6f0: e59d0004     	ldr	r0, [sp, #0x4]
  62d6f4: e5903000     	ldr	r3, [r0]
  62d6f8: e1a0e00f     	mov	lr, pc
  62d6fc: e593f094     	ldr	pc, [r3, #0x94]
  62d700: e28dd01c     	add	sp, sp, #28
  62d704: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62d708: e1a03000     	mov	r3, r0
  62d70c: e493c004     	ldr	r12, [r3], #4
  62d710: e5902004     	ldr	r2, [r0, #0x4]
  62d714: e28d1018     	add	r1, sp, #24
  62d718: e5933004     	ldr	r3, [r3, #0x4]
  62d71c: e521c00c     	str	r12, [r1, #-0xc]!
  62d720: e58d2010     	str	r2, [sp, #0x10]
  62d724: e5813008     	str	r3, [r1, #0x8]
  62d728: eafffff0     	b	0x62d6f0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE19applyBlendedValueExEPvPfiS9_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40



; ===== scale_float3_apply_blended_vtable_wrapper [0x0062d72c, 0x0062d748) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0062d72c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE17applyBlendedValueEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62d72c: e1a00001     	mov	r0, r1
  62d730: e59dc004     	ldr	r12, [sp, #0x4]
  62d734: e1a01002     	mov	r1, r2
  62d738: e1a02003     	mov	r2, r3
  62d73c: e59d3000     	ldr	r3, [sp]
  62d740: e58dc000     	str	r12, [sp]
  62d744: eaffffba     	b	0x62d634 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE19applyBlendedValueExEPvPfiS9_PNS1_15CApplicatorInfoE> @ imm = #-0x118



; ===== scale_float3_apply_added [0x0062d748, 0x0062d840) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0062d748 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE17applyAddedValueExEPvPfiS9_PNS1_15CApplicatorInfoE>:
  62d748: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62d74c: e3520001     	cmp	r2, #1
  62d750: e24dd01c     	sub	sp, sp, #28
  62d754: e3a0a000     	mov	r10, #0
  62d758: e1a04002     	mov	r4, r2
  62d75c: e1a05001     	mov	r5, r1
  62d760: e58d3004     	str	r3, [sp, #0x4]
  62d764: e58da014     	str	r10, [sp, #0x14]
  62d768: 0a00002b     	beq	0x62d81c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE17applyAddedValueExEPvPfiS9_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62d76c: e3520000     	cmp	r2, #0
  62d770: 01a0b00a     	moveq	r11, r10
  62d774: 01a0900a     	moveq	r9, r10
  62d778: 0a00001d     	beq	0x62d7f4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE17applyAddedValueExEPvPfiS9_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62d77c: e1a06000     	mov	r6, r0
  62d780: e3a08000     	mov	r8, #0
  62d784: e1a0b00a     	mov	r11, r10
  62d788: e1a0900a     	mov	r9, r10
  62d78c: e7957008     	ldr	r7, [r5, r8]
  62d790: e5961000     	ldr	r1, [r6]
  62d794: e2888004     	add	r8, r8, #4
  62d798: e1a00007     	mov	r0, r7
  62d79c: ebf38572     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ea38
  62d7a0: e1a01000     	mov	r1, r0
  62d7a4: e1a0000a     	mov	r0, r10
  62d7a8: ebf384fd     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ec0c
  62d7ac: e5961004     	ldr	r1, [r6, #0x4]
  62d7b0: e1a0a000     	mov	r10, r0
  62d7b4: e1a00007     	mov	r0, r7
  62d7b8: ebf3856b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ea54
  62d7bc: e1a01000     	mov	r1, r0
  62d7c0: e1a0000b     	mov	r0, r11
  62d7c4: ebf384f6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ec28
  62d7c8: e5961008     	ldr	r1, [r6, #0x8]
  62d7cc: e1a0b000     	mov	r11, r0
  62d7d0: e1a00007     	mov	r0, r7
  62d7d4: ebf38564     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ea70
  62d7d8: e1a01000     	mov	r1, r0
  62d7dc: e1a00009     	mov	r0, r9
  62d7e0: ebf384ef     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ec44
  62d7e4: e2544001     	subs	r4, r4, #1
  62d7e8: e1a09000     	mov	r9, r0
  62d7ec: e286600c     	add	r6, r6, #12
  62d7f0: 1affffe5     	bne	0x62d78c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE17applyAddedValueExEPvPfiS9_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62d7f4: e28d1018     	add	r1, sp, #24
  62d7f8: e521a00c     	str	r10, [r1, #-0xc]!
  62d7fc: e58db010     	str	r11, [sp, #0x10]
  62d800: e5819008     	str	r9, [r1, #0x8]
  62d804: e59d0004     	ldr	r0, [sp, #0x4]
  62d808: e5903000     	ldr	r3, [r0]
  62d80c: e1a0e00f     	mov	lr, pc
  62d810: e593f094     	ldr	pc, [r3, #0x94]
  62d814: e28dd01c     	add	sp, sp, #28
  62d818: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62d81c: e1a03000     	mov	r3, r0
  62d820: e493c004     	ldr	r12, [r3], #4
  62d824: e5902004     	ldr	r2, [r0, #0x4]
  62d828: e28d1018     	add	r1, sp, #24
  62d82c: e5933004     	ldr	r3, [r3, #0x4]
  62d830: e521c00c     	str	r12, [r1, #-0xc]!
  62d834: e58d2010     	str	r2, [sp, #0x10]
  62d838: e5813008     	str	r3, [r1, #0x8]
  62d83c: eafffff0     	b	0x62d804 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE17applyAddedValueExEPvPfiS9_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40



; ===== scale_float3_apply_added_vtable_wrapper [0x0062d840, 0x0062d85c) =====

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0062d840 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE15applyAddedValueEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62d840: e1a00001     	mov	r0, r1
  62d844: e59dc004     	ldr	r12, [sp, #0x4]
  62d848: e1a01002     	mov	r1, r2
  62d84c: e1a02003     	mov	r2, r3
  62d850: e59d3000     	ldr	r3, [sp]
  62d854: e58dc000     	str	r12, [sp]
  62d858: eaffffba     	b	0x62d748 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE17applyAddedValueExEPvPfiS9_PNS1_15CApplicatorInfoE> @ imm = #-0x118

