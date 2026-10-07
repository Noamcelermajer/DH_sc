; Selected original ELF ARM disassembly excerpts for effect-to-shader selection.
; Exact original virtual addresses and byte rows; not assembler-ready source.

; FUNCTION 0x00636b6c, declared_size=288, range_size=288, mode=arm
; class-group: glitch::collada
; alias: _ZN6glitch7collada22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPKcRKNS0_11SEffectListEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::createMaterialRenderer(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00636b6c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00636b70  00 40 a0 e1                                      mov r4, r0
00636b74  00 00 a0 e3                                      mov r0, #0
00636b78  00 00 84 e5                                      str r0, [r4]
00636b7c  02 80 a0 e1                                      mov r8, r2
00636b80  18 d0 4d e2                                      sub sp, sp, #0x18
00636b84  00 20 92 e5                                      ldr r2, [r2]
00636b88  08 00 a0 e1                                      mov r0, r8
00636b8c  01 90 a0 e1                                      mov sb, r1
00636b90  03 a0 a0 e1                                      mov sl, r3
00636b94  38 60 9d e5                                      ldr r6, [sp, #0x38]
00636b98  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
00636b9c  0f e0 a0 e1                                      mov lr, pc
00636ba0  5c f0 92 e5                                      ldr pc, [r2, #0x5c]
00636ba4  07 00 10 e3                                      tst r0, #7
00636ba8  1d 00 00 1a                                      bne #0x636c24
00636bac  18 00 10 e3                                      tst r0, #0x18
00636bb0  1e 00 00 1a                                      bne #0x636c30
00636bb4  36 0e 10 e3                                      tst r0, #0x360
00636bb8  19 00 00 1a                                      bne #0x636c24
00636bbc  02 0b 50 e3                                      cmp r0, #0x800
00636bc0  17 00 00 0a                                      beq #0x636c24
00636bc4  00 00 50 e3                                      cmp r0, #0
00636bc8  15 00 00 1a                                      bne #0x636c24
00636bcc  10 70 8d e2                                      add r7, sp, #0x10
00636bd0  08 20 a0 e1                                      mov r2, r8
00636bd4  09 10 a0 e1                                      mov r1, sb
00636bd8  0a 30 a0 e1                                      mov r3, sl
00636bdc  07 00 a0 e1                                      mov r0, r7
00636be0  00 60 8d e5                                      str r6, [sp]
00636be4  04 50 8d e5                                      str r5, [sp, #4]
00636be8  ec fa ff eb                                      bl #0x6357a0
00636bec  10 30 9d e5                                      ldr r3, [sp, #0x10]
00636bf0  18 00 8d e2                                      add r0, sp, #0x18
00636bf4  08 30 8d e5                                      str r3, [sp, #8]
00636bf8  00 00 53 e3                                      cmp r3, #0
00636bfc  00 20 93 15                                      ldrne r2, [r3]
00636c00  01 20 82 12                                      addne r2, r2, #1
00636c04  00 20 83 15                                      strne r2, [r3]
00636c08  08 30 9d 15                                      ldrne r3, [sp, #8]
00636c0c  00 20 94 e5                                      ldr r2, [r4]
00636c10  00 30 84 e5                                      str r3, [r4]
00636c14  10 20 20 e5                                      str r2, [r0, #-0x10]!
00636c18  a6 6d f4 eb                                      bl #0x3522b8
00636c1c  07 00 a0 e1                                      mov r0, r7
00636c20  a4 6d f4 eb                                      bl #0x3522b8
00636c24  04 00 a0 e1                                      mov r0, r4
00636c28  18 d0 8d e2                                      add sp, sp, #0x18
00636c2c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00636c30  14 70 8d e2                                      add r7, sp, #0x14
00636c34  08 20 a0 e1                                      mov r2, r8
00636c38  09 10 a0 e1                                      mov r1, sb
00636c3c  0a 30 a0 e1                                      mov r3, sl
00636c40  07 00 a0 e1                                      mov r0, r7
00636c44  00 60 8d e5                                      str r6, [sp]
00636c48  04 50 8d e5                                      str r5, [sp, #4]
00636c4c  65 fd ff eb                                      bl #0x6361e8
00636c50  14 30 9d e5                                      ldr r3, [sp, #0x14]
00636c54  18 00 8d e2                                      add r0, sp, #0x18
00636c58  0c 30 8d e5                                      str r3, [sp, #0xc]
00636c5c  00 00 53 e3                                      cmp r3, #0
00636c60  00 20 93 15                                      ldrne r2, [r3]
00636c64  01 20 82 12                                      addne r2, r2, #1
00636c68  00 20 83 15                                      strne r2, [r3]
00636c6c  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
00636c70  00 20 94 e5                                      ldr r2, [r4]
00636c74  00 30 84 e5                                      str r3, [r4]
00636c78  0c 20 20 e5                                      str r2, [r0, #-0xc]!
00636c7c  8d 6d f4 eb                                      bl #0x3522b8
00636c80  07 00 a0 e1                                      mov r0, r7
00636c84  8b 6d f4 eb                                      bl #0x3522b8
00636c88  e5 ff ff ea                                      b #0x636c24

; PACKAGE FUNCTION gles2_profile_renderer
; ELF VA 0x006361e8, range_size=2436, SHA-256=3669e766eac04456a732fe9a392b2df6d711dce39992a2e692ae7743fc339e3c
; Original assembly source boost_intrusive_ptr_glitch_video_CMaterialRenderer_glitch_collada-103a5e550bf3-001.asm lines 664-1275

; Excerpt from the complete 0x006361e8 range (full range and hash in ../original-functions.json).
; Renderer-manager begin call, selected via IVideoDriver +0xdc.
006362c0  24 00 9d e5                                      ldr r0, [sp, #0x24]
006362c4  40 10 9d e5                                      ldr r1, [sp, #0x40]
006362c8  01 20 a0 e3                                      mov r2, #1
006362cc  06 9e fe eb                                      bl #0x5ddaec
; Per-pass shader selection, state construction, and addRenderPass handoff.
0063648c  08 40 97 e5                                      ldr r4, [r7, #8]
00636490  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00636494  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00636498  05 40 84 e0                                      add r4, r4, r5
0063649c  04 20 a0 e1                                      mov r2, r4
006364a0  d8 10 93 e5                                      ldr r1, [r3, #0xd8]
006364a4  a1 f9 ff eb                                      bl #0x634b30
006364a8  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
006364ac  1c 10 84 e2                                      add r1, r4, #0x1c
006364b0  0a 00 a0 e1                                      mov r0, sl
006364b4  00 00 53 e3                                      cmp r3, #0
006364b8  9c 30 8d e5                                      str r3, [sp, #0x9c]
006364bc  04 20 93 15                                      ldrne r2, [r3, #4]
006364c0  01 60 86 e2                                      add r6, r6, #1
006364c4  74 50 85 e2                                      add r5, r5, #0x74
006364c8  01 20 82 12                                      addne r2, r2, #1
006364cc  04 20 83 15                                      strne r2, [r3, #4]
006364d0  4e 85 fe eb                                      bl #0x5d7a10
006364d4  09 00 a0 e1                                      mov r0, sb
006364d8  0b 10 a0 e1                                      mov r1, fp
006364dc  0a 20 a0 e1                                      mov r2, sl
006364e0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006364e4  90 9a fe eb                                      bl #0x5dcf2c
006364e8  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
006364ec  00 00 50 e3                                      cmp r0, #0
006364f0  00 00 00 0a                                      beq #0x6364f8
006364f4  22 9c f3 eb                                      bl #0x31d584

; FUNCTION 0x00634b30, declared_size=308, range_size=308, mode=arm
; class-group: glitch::collada::SProfileGLES2Traits
; alias: _ZN6glitch7collada19SProfileGLES2Traits12createShaderEPNS_5video14IShaderManagerERNS0_5SPassINS0_25SRenderStatesProgrammableEEE
; demangled: glitch::collada::SProfileGLES2Traits::createShader(glitch::video::IShaderManager*, glitch::collada::SPass<glitch::collada::SRenderStatesProgrammable>&)
; decoder-mode: arm
00634b30  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00634b34  20 51 9f e5                                      ldr r5, [pc, #0x120]
00634b38  20 71 9f e5                                      ldr r7, [pc, #0x120]
00634b3c  3c d0 4d e2                                      sub sp, sp, #0x3c
00634b40  05 50 8f e0                                      add r5, pc, r5
00634b44  07 30 95 e7                                      ldr r3, [r5, r7]
00634b48  1c 40 8d e2                                      add r4, sp, #0x1c
00634b4c  00 80 a0 e1                                      mov r8, r0
00634b50  00 30 93 e5                                      ldr r3, [r3]
00634b54  01 90 a0 e1                                      mov sb, r1
00634b58  04 00 a0 e1                                      mov r0, r4
00634b5c  10 10 a0 e3                                      mov r1, #0x10
00634b60  02 a0 a0 e1                                      mov sl, r2
00634b64  34 30 8d e5                                      str r3, [sp, #0x34]
00634b68  2c 40 8d e5                                      str r4, [sp, #0x2c]
00634b6c  30 40 8d e5                                      str r4, [sp, #0x30]
00634b70  8c af f3 eb                                      bl #0x3209a8
00634b74  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00634b78  00 60 a0 e3                                      mov r6, #0
00634b7c  00 60 c3 e5                                      strb r6, [r3]
00634b80  04 b0 9a e5                                      ldr fp, [sl, #4]
00634b84  0b 00 a0 e1                                      mov r0, fp
00634b88  b1 64 f3 eb                                      bl #0x30de54
00634b8c  0b 10 a0 e1                                      mov r1, fp
00634b90  00 20 8b e0                                      add r2, fp, r0
00634b94  04 00 a0 e1                                      mov r0, r4
00634b98  ab af f3 eb                                      bl #0x320a4c
00634b9c  0c b0 9a e5                                      ldr fp, [sl, #0xc]
00634ba0  0b 00 a0 e1                                      mov r0, fp
00634ba4  aa 64 f3 eb                                      bl #0x30de54
00634ba8  0b 10 a0 e1                                      mov r1, fp
00634bac  00 20 8b e0                                      add r2, fp, r0
00634bb0  04 00 a0 e1                                      mov r0, r4
00634bb4  a4 af f3 eb                                      bl #0x320a4c
00634bb8  10 b0 9a e5                                      ldr fp, [sl, #0x10]
00634bbc  0b 00 a0 e1                                      mov r0, fp
00634bc0  a3 64 f3 eb                                      bl #0x30de54
00634bc4  0b 10 a0 e1                                      mov r1, fp
00634bc8  00 20 8b e0                                      add r2, fp, r0
00634bcc  04 00 a0 e1                                      mov r0, r4
00634bd0  9d af f3 eb                                      bl #0x320a4c
00634bd4  18 b0 9a e5                                      ldr fp, [sl, #0x18]
00634bd8  0b 00 a0 e1                                      mov r0, fp
00634bdc  9c 64 f3 eb                                      bl #0x30de54
00634be0  0b 10 a0 e1                                      mov r1, fp
00634be4  00 20 8b e0                                      add r2, fp, r0
00634be8  04 00 a0 e1                                      mov r0, r4
00634bec  96 af f3 eb                                      bl #0x320a4c
00634bf0  04 30 9a e5                                      ldr r3, [sl, #4]
00634bf4  18 e0 9a e5                                      ldr lr, [sl, #0x18]
00634bf8  0c c0 9a e5                                      ldr ip, [sl, #0xc]
00634bfc  10 a0 9a e5                                      ldr sl, [sl, #0x10]
00634c00  08 00 a0 e1                                      mov r0, r8
00634c04  09 10 a0 e1                                      mov r1, sb
00634c08  30 20 9d e5                                      ldr r2, [sp, #0x30]
00634c0c  00 c0 8d e5                                      str ip, [sp]
00634c10  00 44 8d e9                                      stmib sp, {sl, lr}
00634c14  10 60 8d e5                                      str r6, [sp, #0x10]
00634c18  0c 60 8d e5                                      str r6, [sp, #0xc]
00634c1c  64 ad 02 eb                                      bl #0x6e01b4
00634c20  30 00 9d e5                                      ldr r0, [sp, #0x30]
00634c24  04 00 50 e1                                      cmp r0, r4
00634c28  02 00 00 0a                                      beq #0x634c38
00634c2c  06 00 50 e1                                      cmp r0, r6
00634c30  00 00 00 0a                                      beq #0x634c38
00634c34  05 6e f3 eb                                      bl #0x310450
00634c38  07 30 95 e7                                      ldr r3, [r5, r7]
00634c3c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00634c40  08 00 a0 e1                                      mov r0, r8
00634c44  00 30 93 e5                                      ldr r3, [r3]
00634c48  03 00 52 e1                                      cmp r2, r3
00634c4c  01 00 00 1a                                      bne #0x634c58
00634c50  3c d0 8d e2                                      add sp, sp, #0x3c
00634c54  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00634c58  ac 65 f3 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00634c5c  50 ff 35 00 ac 40 00 00                          .byte 0x50, 0xff, 0x35, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005dcf2c, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager13addRenderPassERKN5boost13intrusive_ptrIKNS0_7IShaderEEERKNS0_6detail10renderpass12SRenderStateERKNS9_8material12SRenderStateE
; demangled: glitch::video::CMaterialRendererManager::addRenderPass(boost::intrusive_ptr<glitch::video::IShader const> const&, glitch::video::detail::renderpass::SRenderState const&, glitch::video::detail::material::SRenderState const&)
; decoder-mode: arm
005dcf2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005dcf30  01 40 a0 e1                                      mov r4, r1
005dcf34  50 10 9f e5                                      ldr r1, [pc, #0x50]
005dcf38  02 60 a0 e1                                      mov r6, r2
005dcf3c  03 50 a0 e1                                      mov r5, r3
005dcf40  01 10 8f e0                                      add r1, pc, r1
005dcf44  00 70 a0 e1                                      mov r7, r0
005dcf48  42 fc ff eb                                      bl #0x5dc058
005dcf4c  00 00 50 e3                                      cmp r0, #0
005dcf50  08 00 00 0a                                      beq #0x5dcf78
005dcf54  00 80 94 e5                                      ldr r8, [r4]
005dcf58  00 00 58 e3                                      cmp r8, #0
005dcf5c  06 00 00 0a                                      beq #0x5dcf7c
005dcf60  90 00 97 e5                                      ldr r0, [r7, #0x90]
005dcf64  04 10 a0 e1                                      mov r1, r4
005dcf68  06 20 a0 e1                                      mov r2, r6
005dcf6c  05 30 a0 e1                                      mov r3, r5
005dcf70  1c f1 ff eb                                      bl #0x5d93e8
005dcf74  01 00 a0 e3                                      mov r0, #1
005dcf78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005dcf7c  07 00 a0 e1                                      mov r0, r7
005dcf80  93 ff ff eb                                      bl #0x5dcdd4
005dcf84  08 00 a0 e1                                      mov r0, r8
005dcf88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005dcf8c  b8 3f 30 00                                      .byte 0xb8, 0x3f, 0x30, 0x00

