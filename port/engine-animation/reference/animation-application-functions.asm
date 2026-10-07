; Selected exact ARM assembly for the animation runtime application boundary.
; APK member: lib/armeabi-v7a/libDungeonHunter2.so
; Full ELF size: 15938284 bytes; SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Every copied instruction/data byte is checked against its file-backed ELF slice.

; Claim: SAnimationAccessor applyValue forwards indices and target through the runtime animator vtable
; Original listing: glitch_collada_SAnimationAccessor-dd6bb90af5fe-001.asm:245-271 (1-based inclusive)
; ELF VA=0x0066a010, size=88, file offset=0x0066a010, bytes SHA-256=c39284c6b1cf19214bda17b7139497f1cc5fca0895e80b04c2152bd8d340a714
; FUNCTION 0x0066a010, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor10applyValueEiiPvPNS0_15animation_track15CApplicatorInfoERib
; demangled: glitch::collada::SAnimationAccessor::applyValue(int, int, void*, glitch::collada::animation_track::CApplicatorInfo*, int&, bool) const
; decoder-mode: arm
0066a010  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066a014  10 d0 4d e2                                      sub sp, sp, #0x10
0066a018  01 70 a0 e1                                      mov r7, r1
0066a01c  02 60 a0 e1                                      mov r6, r2
0066a020  03 50 a0 e1                                      mov r5, r3
0066a024  00 80 a0 e1                                      mov r8, r0
0066a028  30 40 dd e5                                      ldrb r4, [sp, #0x30]
0066a02c  f4 ff ff eb                                      bl #0x66a004
0066a030  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0066a034  00 c0 90 e5                                      ldr ip, [r0]
0066a038  08 10 a0 e1                                      mov r1, r8
0066a03c  04 e0 8d e5                                      str lr, [sp, #4]
0066a040  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
0066a044  07 20 a0 e1                                      mov r2, r7
0066a048  06 30 a0 e1                                      mov r3, r6
0066a04c  00 50 8d e5                                      str r5, [sp]
0066a050  08 e0 8d e5                                      str lr, [sp, #8]
0066a054  0c 40 8d e5                                      str r4, [sp, #0xc]
0066a058  0f e0 a0 e1                                      mov lr, pc
0066a05c  80 f0 9c e5                                      ldr pc, [ip, #0x80]
0066a060  10 d0 8d e2                                      add sp, sp, #0x10
0066a064  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; Claim: Normal CAnimationTrackEx applyValue searches key and fraction then selects direct-key or interpolated typed slots
; Original listing: glitch_collada_CAnimationTrackEx-3b337e928626-001.asm:95-144 (1-based inclusive)
; ELF VA=0x006e2ad8, size=180, file offset=0x006e2ad8, bytes SHA-256=6348b84e8059a0b171d89f74e364c061b3ca0fcaf7d2563bd4f77565ef5602cd
; FUNCTION 0x006e2ad8, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoERib
; demangled: glitch::collada::CAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*, int&, bool) const
; decoder-mode: arm
006e2ad8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006e2adc  1c d0 4d e2                                      sub sp, sp, #0x1c
006e2ae0  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
006e2ae4  00 e0 a0 e3                                      mov lr, #0
006e2ae8  18 c0 8d e2                                      add ip, sp, #0x18
006e2aec  00 70 94 e5                                      ldr r7, [r4]
006e2af0  01 60 a0 e1                                      mov r6, r1
006e2af4  04 e0 2c e5                                      str lr, [ip, #-4]!
006e2af8  00 50 a0 e1                                      mov r5, r0
006e2afc  03 80 a0 e1                                      mov r8, r3
006e2b00  0e 10 a0 e1                                      mov r1, lr
006e2b04  0c 30 a0 e1                                      mov r3, ip
006e2b08  06 00 a0 e1                                      mov r0, r6
006e2b0c  10 c0 8d e2                                      add ip, sp, #0x10
006e2b10  04 70 8d e5                                      str r7, [sp, #4]
006e2b14  00 c0 8d e5                                      str ip, [sp]
006e2b18  40 70 dd e5                                      ldrb r7, [sp, #0x40]
006e2b1c  38 a0 9d e5                                      ldr sl, [sp, #0x38]
006e2b20  3b 23 fe eb                                      bl #0x66b814
006e2b24  07 00 10 e1                                      tst r0, r7
006e2b28  0b 00 00 1a                                      bne #0x6e2b5c
006e2b2c  00 a0 8d e5                                      str sl, [sp]
006e2b30  05 00 a0 e1                                      mov r0, r5
006e2b34  06 10 a0 e1                                      mov r1, r6
006e2b38  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2b3c  08 30 a0 e1                                      mov r3, r8
006e2b40  00 c0 95 e5                                      ldr ip, [r5]
006e2b44  0f e0 a0 e1                                      mov lr, pc
006e2b48  48 f0 9c e5                                      ldr pc, [ip, #0x48]
006e2b4c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006e2b50  00 30 84 e5                                      str r3, [r4]
006e2b54  1c d0 8d e2                                      add sp, sp, #0x1c
006e2b58  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006e2b5c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e2b60  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2b64  04 80 8d e5                                      str r8, [sp, #4]
006e2b68  00 30 8d e5                                      str r3, [sp]
006e2b6c  08 a0 8d e5                                      str sl, [sp, #8]
006e2b70  05 00 a0 e1                                      mov r0, r5
006e2b74  06 10 a0 e1                                      mov r1, r6
006e2b78  00 c0 95 e5                                      ldr ip, [r5]
006e2b7c  01 30 82 e2                                      add r3, r2, #1
006e2b80  0f e0 a0 e1                                      mov lr, pc
006e2b84  40 f0 9c e5                                      ldr pc, [ip, #0x40]
006e2b88  ef ff ff ea                                      b #0x6e2b4c

; Claim: Position float3 direct-key virtual wrapper adapts arguments to CApplyValueEx
; Original listing: glitch_collada_animation_track_CVirtualEx_glitch_collada_animation_track_CApplyValueEx_gli-7fbb0c924cf4-001.asm:177-186 (1-based inclusive)
; ELF VA=0x00622d58, size=20, file offset=0x00622d58, bytes SHA-256=2f3926d2c059ae7061cd49b95cd9f528b15c8b3005ec47207ae78800ed7c22f7
; FUNCTION 0x00622d58, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622d58  01 00 a0 e1                                      mov r0, r1
00622d5c  02 10 a0 e1                                      mov r1, r2
00622d60  03 20 a0 e1                                      mov r2, r3
00622d64  00 30 9d e5                                      ldr r3, [sp]
00622d68  de ff ff ea                                      b #0x622ce8

; Claim: Position float3 interpolated virtual wrapper adapts arguments to CApplyValueEx
; Original listing: glitch_collada_animation_track_CVirtualEx_glitch_collada_animation_track_CApplyValueEx_gli-7fbb0c924cf4-001.asm:289-302 (1-based inclusive)
; ELF VA=0x00628810, size=36, file offset=0x00628810, bytes SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
; FUNCTION 0x00628810, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00628810  04 c0 9d e5                                      ldr ip, [sp, #4]
00628814  01 00 a0 e1                                      mov r0, r1
00628818  02 10 a0 e1                                      mov r1, r2
0062881c  03 20 a0 e1                                      mov r2, r3
00628820  00 30 9d e5                                      ldr r3, [sp]
00628824  00 c0 8d e5                                      str ip, [sp]
00628828  08 c0 9d e5                                      ldr ip, [sp, #8]
0062882c  04 c0 8d e5                                      str ip, [sp, #4]
00628830  e5 ff ff ea                                      b #0x6287cc

; Claim: Position float3 direct application reads sampler-zero key components and invokes an opaque target vtable slot
; Original listing: glitch_collada_animation_track_CApplyValueEx_glitch_core_vector3d_float_glitch_collada_ani-73236093daf0-001.asm:5-37 (1-based inclusive)
; ELF VA=0x00622ce8, size=112, file offset=0x00622ce8, bytes SHA-256=239b9d1a591793c09949e1a5c867e3bf59d9193cc58bab50934439cbb99b7fcc
; FUNCTION 0x00622ce8, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00622ce8  30 40 2d e9                                      push {r4, r5, lr}
00622cec  00 30 a0 e3                                      mov r3, #0
00622cf0  14 d0 4d e2                                      sub sp, sp, #0x14
00622cf4  01 40 a0 e1                                      mov r4, r1
00622cf8  00 10 a0 e3                                      mov r1, #0
00622cfc  02 50 a0 e1                                      mov r5, r2
00622d00  0c 30 8d e5                                      str r3, [sp, #0xc]
00622d04  04 30 8d e5                                      str r3, [sp, #4]
00622d08  08 30 8d e5                                      str r3, [sp, #8]
00622d0c  44 1c 01 eb                                      bl #0x669e24
00622d10  0c 30 a0 e3                                      mov r3, #0xc
00622d14  93 04 04 e0                                      mul r4, r3, r4
00622d18  04 30 90 e5                                      ldr r3, [r0, #4]
00622d1c  10 20 8d e2                                      add r2, sp, #0x10
00622d20  05 00 a0 e1                                      mov r0, r5
00622d24  04 10 93 e7                                      ldr r1, [r3, r4]
00622d28  04 40 83 e0                                      add r4, r3, r4
00622d2c  00 30 95 e5                                      ldr r3, [r5]
00622d30  0c 10 22 e5                                      str r1, [r2, #-0xc]!
00622d34  04 c0 94 e5                                      ldr ip, [r4, #4]
00622d38  02 10 a0 e1                                      mov r1, r2
00622d3c  08 c0 8d e5                                      str ip, [sp, #8]
00622d40  08 c0 94 e5                                      ldr ip, [r4, #8]
00622d44  08 c0 82 e5                                      str ip, [r2, #8]
00622d48  0f e0 a0 e1                                      mov lr, pc
00622d4c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00622d50  14 d0 8d e2                                      add sp, sp, #0x14
00622d54  30 80 bd e8                                      pop {r4, r5, pc}

; Claim: Position float3 interpolation delegates to typed interpreter then invokes an opaque target vtable slot
; Original listing: glitch_collada_animation_track_CApplyValueEx_glitch_core_vector3d_float_glitch_collada_ani-73236093daf0-001.asm:175-196 (1-based inclusive)
; ELF VA=0x006287cc, size=68, file offset=0x006287cc, bytes SHA-256=8fed29827dd6e39030c481e67d4153efe7432f1991eb836cd17aeb6db696b427
; FUNCTION 0x006287cc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006287cc  30 40 2d e9                                      push {r4, r5, lr}
006287d0  1c d0 4d e2                                      sub sp, sp, #0x1c
006287d4  28 40 9d e5                                      ldr r4, [sp, #0x28]
006287d8  00 c0 a0 e3                                      mov ip, #0
006287dc  0c 50 8d e2                                      add r5, sp, #0xc
006287e0  00 50 8d e5                                      str r5, [sp]
006287e4  14 c0 8d e5                                      str ip, [sp, #0x14]
006287e8  0c c0 8d e5                                      str ip, [sp, #0xc]
006287ec  10 c0 8d e5                                      str ip, [sp, #0x10]
006287f0  b5 ff ff eb                                      bl #0x6286cc
006287f4  04 00 a0 e1                                      mov r0, r4
006287f8  05 10 a0 e1                                      mov r1, r5
006287fc  00 30 94 e5                                      ldr r3, [r4]
00628800  0f e0 a0 e1                                      mov lr, pc
00628804  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00628808  1c d0 8d e2                                      add sp, sp, #0x1c
0062880c  30 80 bd e8                                      pop {r4, r5, pc}

; Claim: Position track float3 interpreter reads sampler-zero adjacent keys into a three-component result
; Original listing: glitch_collada_animation_track_CInterpreter_glitch_collada_animation_track_CMixin_float_3_-c90872d6cf77-001.asm:42-110 (1-based inclusive)
; ELF VA=0x006286cc, size=256, file offset=0x006286cc, bytes SHA-256=8920cd6b08b73f2b6cad5eda8d63a5ed82e03225340bef9b950ab5b9a7e52a55
; FUNCTION 0x006286cc, declared_size=256, range_size=256, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_18SSceneNodePositionELin1EfEEfLi3ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006286cc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006286d0  01 70 a0 e1                                      mov r7, r1
006286d4  08 d0 4d e2                                      sub sp, sp, #8
006286d8  00 10 a0 e3                                      mov r1, #0
006286dc  03 40 a0 e1                                      mov r4, r3
006286e0  28 60 9d e5                                      ldr r6, [sp, #0x28]
006286e4  ce 05 01 eb                                      bl #0x669e24
006286e8  04 10 a0 e1                                      mov r1, r4
006286ec  00 80 a0 e1                                      mov r8, r0
006286f0  fe 05 a0 e3                                      mov r0, #0x3f800000
006286f4  2c 97 f3 eb                                      bl #0x30e3ac
006286f8  04 40 8d e5                                      str r4, [sp, #4]
006286fc  00 00 8d e5                                      str r0, [sp]
00628700  0c 30 a0 e3                                      mov r3, #0xc
00628704  93 07 07 e0                                      mul r7, r3, r7
00628708  04 30 98 e5                                      ldr r3, [r8, #4]
0062870c  00 50 a0 e1                                      mov r5, r0
00628710  07 10 93 e7                                      ldr r1, [r3, r7]
00628714  07 70 83 e0                                      add r7, r3, r7
00628718  93 99 f3 eb                                      bl #0x30ed6c
0062871c  00 10 a0 e3                                      mov r1, #0
00628720  1f 99 f3 eb                                      bl #0x30eba4
00628724  04 10 97 e5                                      ldr r1, [r7, #4]
00628728  00 80 a0 e1                                      mov r8, r0
0062872c  05 00 a0 e1                                      mov r0, r5
00628730  8d 99 f3 eb                                      bl #0x30ed6c
00628734  00 10 a0 e3                                      mov r1, #0
00628738  19 99 f3 eb                                      bl #0x30eba4
0062873c  04 70 87 e2                                      add r7, r7, #4
00628740  04 10 97 e5                                      ldr r1, [r7, #4]
00628744  00 a0 a0 e1                                      mov sl, r0
00628748  05 00 a0 e1                                      mov r0, r5
0062874c  86 99 f3 eb                                      bl #0x30ed6c
00628750  00 10 a0 e3                                      mov r1, #0
00628754  12 99 f3 eb                                      bl #0x30eba4
00628758  04 50 87 e2                                      add r5, r7, #4
0062875c  04 90 85 e2                                      add sb, r5, #4
00628760  04 10 99 e5                                      ldr r1, [sb, #4]
00628764  00 70 a0 e1                                      mov r7, r0
00628768  04 00 a0 e1                                      mov r0, r4
0062876c  7e 99 f3 eb                                      bl #0x30ed6c
00628770  00 10 a0 e1                                      mov r1, r0
00628774  0a 00 a0 e1                                      mov r0, sl
00628778  09 99 f3 eb                                      bl #0x30eba4
0062877c  04 90 89 e2                                      add sb, sb, #4
00628780  04 10 99 e5                                      ldr r1, [sb, #4]
00628784  00 a0 a0 e1                                      mov sl, r0
00628788  04 00 a0 e1                                      mov r0, r4
0062878c  76 99 f3 eb                                      bl #0x30ed6c
00628790  07 10 a0 e1                                      mov r1, r7
00628794  02 99 f3 eb                                      bl #0x30eba4
00628798  04 10 95 e5                                      ldr r1, [r5, #4]
0062879c  00 70 a0 e1                                      mov r7, r0
006287a0  04 00 a0 e1                                      mov r0, r4
006287a4  70 99 f3 eb                                      bl #0x30ed6c
006287a8  00 10 a0 e1                                      mov r1, r0
006287ac  08 00 a0 e1                                      mov r0, r8
006287b0  fb 98 f3 eb                                      bl #0x30eba4
006287b4  06 30 a0 e1                                      mov r3, r6
006287b8  04 00 83 e4                                      str r0, [r3], #4
006287bc  04 a0 86 e5                                      str sl, [r6, #4]
006287c0  04 70 83 e5                                      str r7, [r3, #4]
006287c4  08 d0 8d e2                                      add sp, sp, #8
006287c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

