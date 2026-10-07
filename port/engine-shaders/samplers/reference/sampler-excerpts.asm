; Selected exact ARM listing rows from the recovered ELF. Addresses and byte columns were checked against the file-backed PT_LOAD slice.
; This is evidence, not assembler-ready source.

; reflection_sampler_2d: GL_SAMPLER_2D enum comparison and internal code 12
006def24  5e 2b 08 e3                                      movw r2, #0x8b5e
006def28  02 00 53 e1                                      cmp r3, r2
006def2c  89 ff ff 1a                                      bne #0x6ded58
006def30  0c 90 a0 e3                                      mov sb, #0xc
006def34  88 ff ff ea                                      b #0x6ded5c

; reflection_sampler_kinds: Other reflected sampler enum branches, codes 13-15
006def10  5f cb 08 e3                                      movw ip, #0x8b5f
006def14  0c 00 53 e1                                      cmp r3, ip
006def18  0d 90 a0 03                                      moveq sb, #0xd
006def1c  8e ff ff 0a                                      beq #0x6ded5c
006def20  08 00 00 8a                                      bhi #0x6def48
006def24  5e 2b 08 e3                                      movw r2, #0x8b5e
006def28  02 00 53 e1                                      cmp r3, r2
006def2c  89 ff ff 1a                                      bne #0x6ded58
006def30  0c 90 a0 e3                                      mov sb, #0xc
006def34  88 ff ff ea                                      b #0x6ded5c
006def38  02 90 a0 e3                                      mov sb, #2
006def3c  86 ff ff ea                                      b #0x6ded5c
006def40  03 90 a0 e3                                      mov sb, #3
006def44  84 ff ff ea                                      b #0x6ded5c
006def48  60 2b 08 e3                                      movw r2, #0x8b60
006def4c  02 00 53 e1                                      cmp r3, r2
006def50  0e 90 a0 03                                      moveq sb, #0xe
006def54  80 ff ff 0a                                      beq #0x6ded5c
006def58  63 2b 08 e3                                      movw r2, #0x8b63
006def5c  02 00 53 e1                                      cmp r3, r2
006def60  7c ff ff 1a                                      bne #0x6ded58
006def64  0f 90 a0 e3                                      mov sb, #0xf

; reflection_record_store: Stores reflected type byte, array length and location into the 16-byte shader record
006dedb4  00 00 85 e5                                      str r0, [r5]
006dedb8  00 20 90 15                                      ldrne r2, [r0]
006dedbc  14 30 9d e5                                      ldr r3, [sp, #0x14]
006dedc0  01 20 82 12                                      addne r2, r2, #1
006dedc4  00 20 80 15                                      strne r2, [r0]
006dedc8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006dedcc  b4 a0 c5 e1                                      strh sl, [r5, #4]
006dedd0  06 90 c5 e5                                      strb sb, [r5, #6]
006dedd4  08 00 5c e3                                      cmp ip, #8
006dedd8  08 b0 85 e5                                      str fp, [r5, #8]
006deddc  0c 30 85 e5                                      str r3, [r5, #0xc]
006dede0  07 70 c5 e5                                      strb r7, [r5, #7]
006dede4  02 00 00 8a                                      bhi #0x6dedf4
006dede8  3d 30 d4 e5                                      ldrb r3, [r4, #0x3d]

; typed_material_texture_setter: Typed CMaterial texture parameter setter, indexed array element path
005cd324  70 40 2d e9                                      push {r4, r5, r6, lr}
005cd328  04 c0 90 e5                                      ldr ip, [r0, #4]
005cd32c  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005cd330  01 00 54 e1                                      cmp r4, r1
005cd334  01 00 00 8a                                      bhi #0x5cd340
005cd338  00 00 a0 e3                                      mov r0, #0
005cd33c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cd340  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005cd344  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cd348  fa ff ff 0a                                      beq #0x5cd338
005cd34c  00 c0 93 e5                                      ldr ip, [r3]
005cd350  06 50 d1 e5                                      ldrb r5, [r1, #6]
005cd354  00 00 5c e3                                      cmp ip, #0
005cd358  1e 00 00 0a                                      beq #0x5cd3d8
005cd35c  38 40 9c e5                                      ldr r4, [ip, #0x38]
005cd360  03 40 04 e2                                      and r4, r4, #3
005cd364  0c 40 84 e2                                      add r4, r4, #0xc
005cd368  04 00 55 e1                                      cmp r5, r4
005cd36c  00 40 a0 13                                      movne r4, #0
005cd370  01 40 a0 03                                      moveq r4, #1
005cd374  00 00 54 e3                                      cmp r4, #0
005cd378  ee ff ff 0a                                      beq #0x5cd338
005cd37c  08 40 91 e5                                      ldr r4, [r1, #8]
005cd380  04 00 52 e1                                      cmp r2, r4
005cd384  eb ff ff 2a                                      bhs #0x5cd338
005cd388  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005cd38c  20 40 80 e2                                      add r4, r0, #0x20
005cd390  02 21 81 e0                                      add r2, r1, r2, lsl #2
005cd394  02 10 94 e7                                      ldr r1, [r4, r2]
005cd398  01 00 5c e1                                      cmp ip, r1
005cd39c  00 10 e0 13                                      mvnne r1, #0
005cd3a0  0c 10 80 15                                      strne r1, [r0, #0xc]
005cd3a4  10 10 80 15                                      strne r1, [r0, #0x10]
005cd3a8  00 10 93 15                                      ldrne r1, [r3]
005cd3ac  00 00 51 e3                                      cmp r1, #0
005cd3b0  04 30 91 15                                      ldrne r3, [r1, #4]
005cd3b4  01 30 83 12                                      addne r3, r3, #1
005cd3b8  04 30 81 15                                      strne r3, [r1, #4]
005cd3bc  02 00 94 e7                                      ldr r0, [r4, r2]
005cd3c0  02 10 84 e7                                      str r1, [r4, r2]
005cd3c4  00 00 50 e3                                      cmp r0, #0
005cd3c8  00 00 00 0a                                      beq #0x5cd3d0
005cd3cc  6c 40 f5 eb                                      bl #0x31d584
005cd3d0  01 00 a0 e3                                      mov r0, #1
005cd3d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cd3d8  0c 40 45 e2                                      sub r4, r5, #0xc
005cd3dc  03 00 54 e3                                      cmp r4, #3
005cd3e0  00 40 a0 83                                      movhi r4, #0
005cd3e4  01 40 a0 93                                      movls r4, #1

; binding_record_selection: Pass binding loop selects material and shader records and dispatches on material descriptor kind
005b4df8  04 c0 9d e5                                      ldr ip, [sp, #4]
005b4dfc  b2 30 d4 e1                                      ldrh r3, [r4, #2]
005b4e00  b0 60 d4 e1                                      ldrh r6, [r4]
005b4e04  04 20 9c e5                                      ldr r2, [ip, #4]
005b4e08  08 c0 9d e5                                      ldr ip, [sp, #8]
005b4e0c  c6 17 a0 e1                                      asr r1, r6, #0xf
005b4e10  be 00 d2 e1                                      ldrh r0, [r2, #0xe]
005b4e14  05 10 81 e2                                      add r1, r1, #5
005b4e18  86 68 a0 e1                                      lsl r6, r6, #0x11
005b4e1c  03 00 50 e1                                      cmp r0, r3
005b4e20  20 50 92 85                                      ldrhi r5, [r2, #0x20]
005b4e24  00 50 a0 93                                      movls r5, #0
005b4e28  81 11 9c e7                                      ldr r1, [ip, r1, lsl #3]
005b4e2c  03 52 85 80                                      addhi r5, r5, r3, lsl #4
005b4e30  06 30 d5 e5                                      ldrb r3, [r5, #6]
005b4e34  a6 68 a0 e1                                      lsr r6, r6, #0x11
005b4e38  01 30 43 e2                                      sub r3, r3, #1
005b4e3c  06 62 81 e0                                      add r6, r1, r6, lsl #4
005b4e40  11 00 53 e3                                      cmp r3, #0x11
005b4e44  03 f1 8f 90                                      addls pc, pc, r3, lsl #2

; sampler_commit_loop: Sampler kinds fetch texture, call setTexture, then glUniform1i(location, unit) per element
005b4ff0  b4 30 d6 e1                                      ldrh r3, [r6, #4]
005b4ff4  21 00 53 e3                                      cmp r3, #0x21
005b4ff8  bf 00 00 0a                                      beq #0x5b52fc
005b4ffc  08 b0 96 e5                                      ldr fp, [r6, #8]
005b5000  00 00 5b e3                                      cmp fp, #0
005b5004  db ff ff 0a                                      beq #0x5b4f78
005b5008  0c 40 8d e5                                      str r4, [sp, #0xc]
005b500c  18 80 9d e5                                      ldr r8, [sp, #0x18]
005b5010  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
005b5014  00 a0 a0 e3                                      mov sl, #0
005b5018  05 90 a0 e1                                      mov sb, r5
005b501c  10 00 9d e5                                      ldr r0, [sp, #0x10]
005b5020  07 10 a0 e1                                      mov r1, r7
005b5024  09 20 a0 e1                                      mov r2, sb
005b5028  04 30 a0 e1                                      mov r3, r4
005b502c  49 f5 ff eb                                      bl #0x5b2558
005b5030  30 20 9d e5                                      ldr r2, [sp, #0x30]
005b5034  0c 50 96 e5                                      ldr r5, [r6, #0xc]
005b5038  08 10 a0 e1                                      mov r1, r8
005b503c  38 30 92 e5                                      ldr r3, [r2, #0x38]
005b5040  04 00 a0 e1                                      mov r0, r4
005b5044  01 a0 8a e2                                      add sl, sl, #1
005b5048  03 30 03 e2                                      and r3, r3, #3
005b504c  a7 f5 ff eb                                      bl #0x5b26f0
005b5050  05 00 a0 e1                                      mov r0, r5
005b5054  08 10 a0 e1                                      mov r1, r8
005b5058  65 66 f5 eb                                      bl #0x30e9f4
005b505c  30 00 9d e5                                      ldr r0, [sp, #0x30]
005b5060  01 80 88 e2                                      add r8, r8, #1
005b5064  78 80 ff e6                                      uxth r8, r8
005b5068  00 00 50 e3                                      cmp r0, #0
005b506c  00 00 00 0a                                      beq #0x5b5074
005b5070  43 a1 f5 eb                                      bl #0x31d584
005b5074  0b 00 5a e1                                      cmp sl, fp
005b5078  e7 ff ff 1a                                      bne #0x5b501c
005b507c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005b5080  0c 40 9d e5                                      ldr r4, [sp, #0xc]
005b5084  0a a0 8c e0                                      add sl, ip, sl
005b5088  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b508c  04 40 84 e2                                      add r4, r4, #4
005b5090  7a a0 ff e6                                      uxth sl, sl
005b5094  04 00 5c e1                                      cmp ip, r4
005b5098  18 a0 8d e5                                      str sl, [sp, #0x18]
005b509c  55 ff ff 1a                                      bne #0x5b4df8

; texture_parameter_resolution: Reads ITexture pointer from CMaterial data; may select a placeholder through texture manager
005b2558  10 40 2d e9                                      push {r4, lr}
005b255c  0c c0 92 e5                                      ldr ip, [r2, #0xc]
005b2560  00 40 a0 e1                                      mov r4, r0
005b2564  0c 10 91 e7                                      ldr r1, [r1, ip]
005b2568  00 00 51 e3                                      cmp r1, #0
005b256c  00 10 80 e5                                      str r1, [r0]
005b2570  18 00 00 0a                                      beq #0x5b25d8
005b2574  04 00 91 e5                                      ldr r0, [r1, #4]
005b2578  01 00 80 e2                                      add r0, r0, #1
005b257c  04 00 81 e5                                      str r0, [r1, #4]
005b2580  00 10 94 e5                                      ldr r1, [r4]
005b2584  00 00 51 e3                                      cmp r1, #0
005b2588  12 00 00 0a                                      beq #0x5b25d8
005b258c  3f 10 d1 e5                                      ldrb r1, [r1, #0x3f]
005b2590  10 00 11 e3                                      tst r1, #0x10
005b2594  0d 00 00 0a                                      beq #0x5b25d0
005b2598  e0 00 93 e5                                      ldr r0, [r3, #0xe0]
005b259c  01 10 a0 e3                                      mov r1, #1
005b25a0  06 20 d2 e5                                      ldrb r2, [r2, #6]
005b25a4  0c 20 42 e2                                      sub r2, r2, #0xc
005b25a8  02 e7 00 eb                                      bl #0x5ec1b8
005b25ac  00 30 50 e2                                      subs r3, r0, #0
005b25b0  04 20 93 15                                      ldrne r2, [r3, #4]
005b25b4  01 20 82 12                                      addne r2, r2, #1
005b25b8  04 20 83 15                                      strne r2, [r3, #4]
005b25bc  00 00 94 e5                                      ldr r0, [r4]
005b25c0  00 30 84 e5                                      str r3, [r4]
005b25c4  00 00 50 e3                                      cmp r0, #0
005b25c8  00 00 00 0a                                      beq #0x5b25d0
005b25cc  ec ab f5 eb                                      bl #0x31d584
005b25d0  04 00 a0 e1                                      mov r0, r4
005b25d4  10 80 bd e8                                      pop {r4, pc}
005b25d8  e0 00 93 e5                                      ldr r0, [r3, #0xe0]
005b25dc  00 10 a0 e3                                      mov r1, #0
005b25e0  ee ff ff ea                                      b #0x5b25a0

; texture_unit_binding: Tracks unit state, selects GL_TEXTURE0+unit, and calls ITexture::bind
005b26f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b26f4  00 40 a0 e1                                      mov r4, r0
005b26f8  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
005b26fc  01 50 a0 e1                                      mov r5, r1
005b2700  02 60 a0 e1                                      mov r6, r2
005b2704  00 00 51 e1                                      cmp r1, r0
005b2708  03 70 a0 e1                                      mov r7, r3
005b270c  1a 00 00 2a                                      bhs #0x5b277c
005b2710  21 30 83 e2                                      add r3, r3, #0x21
005b2714  83 32 84 e0                                      add r3, r4, r3, lsl #5
005b2718  01 81 93 e7                                      ldr r8, [r3, r1, lsl #2]
005b271c  02 00 58 e1                                      cmp r8, r2
005b2720  17 00 00 0a                                      beq #0x5b2784
005b2724  00 00 52 e3                                      cmp r2, #0
005b2728  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
005b272c  1c 00 00 0a                                      beq #0x5b27a4
005b2730  84 30 94 e5                                      ldr r3, [r4, #0x84]
005b2734  68 22 94 e5                                      ldr r2, [r4, #0x268]
005b2738  01 30 83 e2                                      add r3, r3, #1
005b273c  02 00 51 e1                                      cmp r1, r2
005b2740  84 30 84 e5                                      str r3, [r4, #0x84]
005b2744  03 00 00 0a                                      beq #0x5b2758
005b2748  21 0b 81 e2                                      add r0, r1, #0x8400
005b274c  c0 00 80 e2                                      add r0, r0, #0xc0
005b2750  a3 6e f5 eb                                      bl #0x30e1e4
005b2754  68 52 84 e5                                      str r5, [r4, #0x268]
005b2758  3f 10 d6 e5                                      ldrb r1, [r6, #0x3f]
005b275c  08 10 01 e2                                      and r1, r1, #8
005b2760  71 10 ef e6                                      uxtb r1, r1
005b2764  00 00 51 e3                                      cmp r1, #0
005b2768  0f 00 00 1a                                      bne #0x5b27ac
005b276c  06 00 a0 e1                                      mov r0, r6
005b2770  c9 2d 01 eb                                      bl #0x5fde9c
005b2774  01 00 a0 e3                                      mov r0, #1
005b2778  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b277c  00 00 a0 e3                                      mov r0, #0
005b2780  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b2784  00 00 58 e3                                      cmp r8, #0
005b2788  05 00 00 0a                                      beq #0x5b27a4
005b278c  b0 34 d8 e1                                      ldrh r3, [r8, #0x40]
005b2790  02 30 c3 e3                                      bic r3, r3, #2
005b2794  83 39 a0 e1                                      lsl r3, r3, #0x13
005b2798  a3 39 a0 e1                                      lsr r3, r3, #0x13
005b279c  00 00 53 e3                                      cmp r3, #0
005b27a0  0c 00 00 1a                                      bne #0x5b27d8
005b27a4  01 00 a0 e3                                      mov r0, #1
005b27a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b27ac  54 30 9f e5                                      ldr r3, [pc, #0x54]
005b27b0  54 10 96 e5                                      ldr r1, [r6, #0x54]
005b27b4  03 30 8f e0                                      add r3, pc, r3
005b27b8  a4 30 83 e2                                      add r3, r3, #0xa4
005b27bc  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
005b27c0  fe 6f f5 eb                                      bl #0x30e7c0
005b27c4  06 00 a0 e1                                      mov r0, r6
005b27c8  00 10 a0 e3                                      mov r1, #0
005b27cc  1e f7 ff eb                                      bl #0x5b044c
005b27d0  01 00 a0 e3                                      mov r0, #1
005b27d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b27d8  68 32 94 e5                                      ldr r3, [r4, #0x268]
005b27dc  03 00 51 e1                                      cmp r1, r3
005b27e0  03 00 00 0a                                      beq #0x5b27f4
005b27e4  21 0b 81 e2                                      add r0, r1, #0x8400
005b27e8  c0 00 80 e2                                      add r0, r0, #0xc0
005b27ec  7c 6e f5 eb                                      bl #0x30e1e4
005b27f0  68 52 84 e5                                      str r5, [r4, #0x268]
005b27f4  08 00 a0 e1                                      mov r0, r8
005b27f8  00 10 a0 e3                                      mov r1, #0
005b27fc  12 f7 ff eb                                      bl #0x5b044c
005b2800  01 00 a0 e3                                      mov r0, #1
005b2804  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; texture_virtual_bind: ITexture::bind dispatches bind implementation through vtable slot +0xc
005fde9c  10 40 2d e9                                      push {r4, lr}
005fdea0  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005fdea4  08 d0 4d e2                                      sub sp, sp, #8
005fdea8  00 40 a0 e1                                      mov r4, r0
005fdeac  08 00 13 e3                                      tst r3, #8
005fdeb0  18 00 00 1a                                      bne #0x5fdf18
005fdeb4  00 30 94 e5                                      ldr r3, [r4]
005fdeb8  04 00 a0 e1                                      mov r0, r4
005fdebc  0f e0 a0 e1                                      mov lr, pc
005fdec0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005fdec4  00 00 50 e3                                      cmp r0, #0
005fdec8  10 00 00 0a                                      beq #0x5fdf10
005fdecc  34 00 94 e5                                      ldr r0, [r4, #0x34]
005fded0  9c 30 90 e5                                      ldr r3, [r0, #0x9c]
005fded4  01 04 13 e3                                      tst r3, #0x1000000
005fded8  0c 00 00 0a                                      beq #0x5fdf10
005fdedc  38 31 90 e5                                      ldr r3, [r0, #0x138]
005fdee0  06 00 13 e3                                      tst r3, #6
005fdee4  09 00 00 1a                                      bne #0x5fdf10
005fdee8  04 30 94 e5                                      ldr r3, [r4, #4]
005fdeec  08 10 8d e2                                      add r1, sp, #8
005fdef0  04 40 21 e5                                      str r4, [r1, #-4]!
005fdef4  01 30 83 e2                                      add r3, r3, #1
005fdef8  04 30 84 e5                                      str r3, [r4, #4]
005fdefc  33 bc fe eb                                      bl #0x5acfd0
005fdf00  04 00 9d e5                                      ldr r0, [sp, #4]
005fdf04  00 00 50 e3                                      cmp r0, #0
005fdf08  00 00 00 0a                                      beq #0x5fdf10
005fdf0c  9c 7d f4 eb                                      bl #0x31d584
005fdf10  08 d0 8d e2                                      add sp, sp, #8
005fdf14  10 80 bd e8                                      pop {r4, pc}
005fdf18  b0 34 d0 e1                                      ldrh r3, [r0, #0x40]
005fdf1c  01 00 13 e3                                      tst r3, #1
005fdf20  fa ff ff 0a                                      beq #0x5fdf10
005fdf24  e2 ff ff ea                                      b #0x5fdeb4

; concrete_gl_bind: Loads texture target and GL name; calls glBindTexture
005b5680  7c 32 9f e5                                      ldr r3, [pc, #0x27c]
005b5684  38 20 95 e5                                      ldr r2, [r5, #0x38]
005b5688  54 10 95 e5                                      ldr r1, [r5, #0x54]
005b568c  03 30 8f e0                                      add r3, pc, r3
005b5690  a4 30 83 e2                                      add r3, r3, #0xa4
005b5694  03 20 02 e2                                      and r2, r2, #3
005b5698  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005b569c  47 64 f5 eb                                      bl #0x30e7c0
005b56a0  06 51 87 e7                                      str r5, [r7, r6, lsl #2]

; placeholder_lookup_entry: Named placeholder lookup and initial indexed access
005ec1b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ec1bc  80 52 9f e5                                      ldr r5, [pc, #0x280]
005ec1c0  80 62 9f e5                                      ldr r6, [pc, #0x280]
005ec1c4  01 a1 a0 e1                                      lsl sl, r1, #2
005ec1c8  05 50 8f e0                                      add r5, pc, r5
005ec1cc  02 80 a0 e1                                      mov r8, r2
005ec1d0  06 30 95 e7                                      ldr r3, [r5, r6]
005ec1d4  02 20 8a e0                                      add r2, sl, r2
005ec1d8  12 20 82 e2                                      add r2, r2, #0x12
005ec1dc  02 41 90 e7                                      ldr r4, [r0, r2, lsl #2]
005ec1e0  00 30 93 e5                                      ldr r3, [r3]
005ec1e4  84 d0 4d e2                                      sub sp, sp, #0x84
005ec1e8  00 00 54 e3                                      cmp r4, #0
005ec1ec  00 70 a0 e1                                      mov r7, r0
005ec1f0  7c 30 8d e5                                      str r3, [sp, #0x7c]
005ec1f4  07 00 00 0a                                      beq #0x5ec218
005ec1f8  06 30 95 e7                                      ldr r3, [r5, r6]
005ec1fc  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
005ec200  04 00 a0 e1                                      mov r0, r4
005ec204  00 30 93 e5                                      ldr r3, [r3]
005ec208  03 00 52 e1                                      cmp r2, r3
005ec20c  8b 00 00 1a                                      bne #0x5ec440
005ec210  84 d0 8d e2                                      add sp, sp, #0x84
005ec214  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; PLT stubs: names and addresses confirmed by llvm-objdump -d on this ELF.
; glActiveTexture@plt VA 0x0030e1e4; call sites: 0x005b2750
0030e1e4  06 c6 8f e2  ; glActiveTexture@plt instruction bytes
0030e1e8  86 ca 8c e2  ; glActiveTexture@plt instruction bytes
0030e1ec  2c fa bc e5  ; glActiveTexture@plt instruction bytes

; glBindTexture@plt VA 0x0030e7c0; call sites: 0x005b569c, 0x005b5794
0030e7c0  06 c6 8f e2  ; glBindTexture@plt instruction bytes
0030e7c4  86 ca 8c e2  ; glBindTexture@plt instruction bytes
0030e7c8  44 f6 bc e5  ; glBindTexture@plt instruction bytes

; glUniform1i@plt VA 0x0030e9f4; call sites: 0x005b5058
0030e9f4  06 c6 8f e2  ; glUniform1i@plt instruction bytes
0030e9f8  86 ca 8c e2  ; glUniform1i@plt instruction bytes
0030e9fc  cc f4 bc e5  ; glUniform1i@plt instruction bytes

