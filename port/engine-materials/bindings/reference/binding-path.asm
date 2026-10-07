; DH2 parameter binding path. Original ARM rows copied from recovered assembly.
; Every emitted row was byte-compared with the APK ELF through a file-backed PT_LOAD mapping.
; Full ranges and hashes are listed in ../bindings-ranges.json.

; EXCERPT shader_uniform_reflection va=0x006ded0c size=232 source=glitch_video_CGLSLShader-48e3be0db2af-001.asm
; purpose: glGetActiveUniform name/type/array data, name-derived parameter type, glGetUniformLocation, and reflected record stores
006ded0c  6f be f0 eb                                      bl #0x30e6d0
006ded10  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006ded14  57 1b 08 e3                                      movw r1, #0x8b57
006ded18  01 00 53 e1                                      cmp r3, r1
006ded1c  85 00 00 0a                                      beq #0x6def38
006ded20  55 00 00 8a                                      bhi #0x6dee7c
006ded24  52 2b 08 e3                                      movw r2, #0x8b52
006ded28  02 00 53 e1                                      cmp r3, r2
006ded2c  08 90 a0 03                                      moveq sb, #8
006ded30  09 00 00 0a                                      beq #0x6ded5c
006ded34  44 00 00 8a                                      bhi #0x6dee4c
006ded38  06 24 01 e3                                      movw r2, #0x1406
006ded3c  02 00 53 e1                                      cmp r3, r2
006ded40  05 90 a0 03                                      moveq sb, #5
006ded44  04 00 00 0a                                      beq #0x6ded5c
006ded48  87 00 00 8a                                      bhi #0x6def6c
006ded4c  04 24 01 e3                                      movw r2, #0x1404
006ded50  02 00 53 e1                                      cmp r3, r2
006ded54  46 00 00 0a                                      beq #0x6dee74
006ded58  ff 90 a0 e3                                      mov sb, #0xff
006ded5c  06 00 a0 e1                                      mov r0, r6
006ded60  47 0d fc eb                                      bl #0x5e2284
006ded64  ff 00 50 e3                                      cmp r0, #0xff
006ded68  13 10 40 12                                      subne r1, r0, #0x13
006ded6c  00 70 a0 e1                                      mov r7, r0
006ded70  18 10 8d 15                                      strne r1, [sp, #0x18]
006ded74  70 a0 ff 16                                      uxthne sl, r0
006ded78  51 00 00 0a                                      beq #0x6deec4
006ded7c  06 10 a0 e1                                      mov r1, r6
006ded80  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006ded84  ec bc f0 eb                                      bl #0x30e13c
006ded88  07 10 a0 e1                                      mov r1, r7
006ded8c  00 30 a0 e1                                      mov r3, r0
006ded90  06 00 a0 e1                                      mov r0, r6
006ded94  14 30 8d e5                                      str r3, [sp, #0x14]
006ded98  78 24 fc eb                                      bl #0x5e7f80
006ded9c  01 10 a0 e3                                      mov r1, #1
006deda0  00 70 a0 e1                                      mov r7, r0
006deda4  06 00 a0 e1                                      mov r0, r6
006deda8  30 b0 9d e5                                      ldr fp, [sp, #0x30]
006dedac  b0 18 ff eb                                      bl #0x6a5074
006dedb0  00 00 50 e3                                      cmp r0, #0
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
006dedec  07 00 53 e1                                      cmp r3, r7
006dedf0  3d 70 c4 85                                      strbhi r7, [r4, #0x3d]

; EXCERPT shader_parameter_name_index_lookup va=0x005bb378 size=84 source=glitch_core_detail_SIDedCollection_glitch_video_SShaderParameterDef_unsigned_short_false_g-8b5dcbd6e70e-001.asm
; purpose: string-key lookup and returned 16-bit ID
005bb378  30 40 2d e9                                      push {r4, r5, lr}
005bb37c  0c d0 4d e2                                      sub sp, sp, #0xc
005bb380  00 30 a0 e3                                      mov r3, #0
005bb384  00 10 8d e5                                      str r1, [sp]
005bb388  0d 10 a0 e1                                      mov r1, sp
005bb38c  04 30 cd e5                                      strb r3, [sp, #4]
005bb390  00 40 a0 e1                                      mov r4, r0
005bb394  9f ff ff eb                                      bl #0x5bb218
005bb398  04 30 dd e5                                      ldrb r3, [sp, #4]
005bb39c  00 50 a0 e1                                      mov r5, r0
005bb3a0  00 00 53 e3                                      cmp r3, #0
005bb3a4  03 00 00 0a                                      beq #0x5bb3b8
005bb3a8  00 00 9d e5                                      ldr r0, [sp]
005bb3ac  00 00 50 e3                                      cmp r0, #0
005bb3b0  00 00 00 0a                                      beq #0x5bb3b8
005bb3b4  3f 4b f5 eb                                      bl #0x30e0b8
005bb3b8  04 00 55 e1                                      cmp r5, r4
005bb3bc  ff 0f 0f 03                                      movweq r0, #0xffff
005bb3c0  bc 01 d5 11                                      ldrhne r0, [r5, #0x1c]
005bb3c4  0c d0 8d e2                                      add sp, sp, #0xc
005bb3c8  30 80 bd e8                                      pop {r4, r5, pc}

; EXCERPT creation_state_parameter_name_lookup va=0x005dbc04 size=64 source=glitch_video_CMaterialRendererManager-a4bf824a9f3f-001.asm
; purpose: creation-state ordered-map lookup using SSharedString key
005dbc04  00 30 91 e5                                      ldr r3, [r1]
005dbc08  10 40 2d e9                                      push {r4, lr}
005dbc0c  00 00 53 e3                                      cmp r3, #0
005dbc10  00 40 a0 e1                                      mov r4, r0
005dbc14  08 00 00 0a                                      beq #0x5dbc3c
005dbc18  90 00 90 e5                                      ldr r0, [r0, #0x90]
005dbc1c  34 00 80 e2                                      add r0, r0, #0x34
005dbc20  b9 fb ff eb                                      bl #0x5dab0c
005dbc24  90 30 94 e5                                      ldr r3, [r4, #0x90]
005dbc28  34 30 83 e2                                      add r3, r3, #0x34
005dbc2c  03 00 50 e1                                      cmp r0, r3
005dbc30  01 00 00 0a                                      beq #0x5dbc3c
005dbc34  14 00 80 e2                                      add r0, r0, #0x14
005dbc38  10 80 bd e8                                      pop {r4, pc}
005dbc3c  00 00 a0 e3                                      mov r0, #0
005dbc40  10 80 bd e8                                      pop {r4, pc}

; EXCERPT end_technique_reflected_parameter_walk va=0x005dd664 size=424 source=glitch_video_CMaterialRendererManager-a4bf824a9f3f-001.asm
; purpose: walk pass shader parameter records and call autoAddAndBindParameter
005dd664  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005dd668  01 40 a0 e1                                      mov r4, r1
005dd66c  94 11 9f e5                                      ldr r1, [pc, #0x194]
005dd670  24 d0 4d e2                                      sub sp, sp, #0x24
005dd674  02 90 a0 e1                                      mov sb, r2
005dd678  01 10 8f e0                                      add r1, pc, r1
005dd67c  00 70 a0 e1                                      mov r7, r0
005dd680  74 fa ff eb                                      bl #0x5dc058
005dd684  00 00 50 e3                                      cmp r0, #0
005dd688  02 00 00 1a                                      bne #0x5dd698
005dd68c  00 00 a0 e3                                      mov r0, #0
005dd690  24 d0 8d e2                                      add sp, sp, #0x24
005dd694  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005dd698  90 00 97 e5                                      ldr r0, [r7, #0x90]
005dd69c  60 fc ff eb                                      bl #0x5dc824
005dd6a0  00 00 50 e3                                      cmp r0, #0
005dd6a4  18 00 8d e5                                      str r0, [sp, #0x18]
005dd6a8  f7 ff ff 0a                                      beq #0x5dd68c
005dd6ac  00 00 54 e3                                      cmp r4, #0
005dd6b0  34 00 00 0a                                      beq #0x5dd788
005dd6b4  04 30 d0 e5                                      ldrb r3, [r0, #4]
005dd6b8  00 00 53 e3                                      cmp r3, #0
005dd6bc  31 00 00 0a                                      beq #0x5dd788
005dd6c0  01 30 43 e2                                      sub r3, r3, #1
005dd6c4  73 20 ef e6                                      uxtb r2, r3
005dd6c8  34 30 a0 e3                                      mov r3, #0x34
005dd6cc  92 33 23 e0                                      mla r3, r2, r3, r3
005dd6d0  00 b0 a0 e3                                      mov fp, #0
005dd6d4  1c 30 8d e5                                      str r3, [sp, #0x1c]
005dd6d8  0b c0 a0 e1                                      mov ip, fp
005dd6dc  07 a0 a0 e1                                      mov sl, r7
005dd6e0  18 20 9d e5                                      ldr r2, [sp, #0x18]
005dd6e4  08 80 92 e5                                      ldr r8, [r2, #8]
005dd6e8  0b 80 88 e0                                      add r8, r8, fp
005dd6ec  20 50 98 e5                                      ldr r5, [r8, #0x20]
005dd6f0  00 00 55 e3                                      cmp r5, #0
005dd6f4  1e 00 00 0a                                      beq #0x5dd774
005dd6f8  00 70 a0 e3                                      mov r7, #0
005dd6fc  14 70 8d e5                                      str r7, [sp, #0x14]
005dd700  be 62 d5 e1                                      ldrh r6, [r5, #0x2e]
005dd704  00 00 56 e3                                      cmp r6, #0
005dd708  14 00 00 0a                                      beq #0x5dd760
005dd70c  00 40 a0 e3                                      mov r4, #0
005dd710  04 20 a0 e1                                      mov r2, r4
005dd714  28 30 95 e5                                      ldr r3, [r5, #0x28]
005dd718  04 32 83 e0                                      add r3, r3, r4, lsl #4
005dd71c  b4 30 d3 e1                                      ldrh r3, [r3, #4]
005dd720  01 40 84 e2                                      add r4, r4, #1
005dd724  22 10 43 e2                                      sub r1, r3, #0x22
005dd728  1c 00 51 e3                                      cmp r1, #0x1c
005dd72c  08 00 00 9a                                      bls #0x5dd754
005dd730  21 00 53 e3                                      cmp r3, #0x21
005dd734  06 00 00 0a                                      beq #0x5dd754
005dd738  0a 00 a0 e1                                      mov r0, sl
005dd73c  08 10 a0 e1                                      mov r1, r8
005dd740  07 30 a0 e1                                      mov r3, r7
005dd744  00 c0 8d e5                                      str ip, [sp]
005dd748  04 90 8d e5                                      str sb, [sp, #4]
005dd74c  bf fe ff eb                                      bl #0x5dd250
005dd750  00 c0 a0 e1                                      mov ip, r0
005dd754  74 20 ff e6                                      uxth r2, r4
005dd758  02 00 56 e1                                      cmp r6, r2
005dd75c  ec ff ff 8a                                      bhi #0x5dd714
005dd760  14 30 9d e5                                      ldr r3, [sp, #0x14]
005dd764  08 50 85 e2                                      add r5, r5, #8
005dd768  01 70 a0 e3                                      mov r7, #1
005dd76c  01 00 53 e3                                      cmp r3, #1
005dd770  e1 ff ff 1a                                      bne #0x5dd6fc
005dd774  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005dd778  34 b0 8b e2                                      add fp, fp, #0x34
005dd77c  02 00 5b e1                                      cmp fp, r2
005dd780  d6 ff ff 1a                                      bne #0x5dd6e0
005dd784  0a 70 a0 e1                                      mov r7, sl
005dd788  90 30 97 e5                                      ldr r3, [r7, #0x90]
005dd78c  30 50 93 e5                                      ldr r5, [r3, #0x30]
005dd790  28 40 93 e5                                      ldr r4, [r3, #0x28]
005dd794  05 00 54 e1                                      cmp r4, r5
005dd798  18 00 9d 05                                      ldreq r0, [sp, #0x18]
005dd79c  bb ff ff 0a                                      beq #0x5dd690
005dd7a0  18 b0 9d e5                                      ldr fp, [sp, #0x18]
005dd7a4  00 90 a0 e3                                      mov sb, #0
005dd7a8  05 80 a0 e1                                      mov r8, r5
005dd7ac  08 a0 94 e5                                      ldr sl, [r4, #8]
005dd7b0  07 00 a0 e1                                      mov r0, r7
005dd7b4  0c 60 d4 e5                                      ldrb r6, [r4, #0xc]
005dd7b8  0a 10 a0 e1                                      mov r1, sl
005dd7bc  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005dd7c0  53 e9 ff eb                                      bl #0x5d7d14
005dd7c4  00 20 50 e2                                      subs r2, r0, #0
005dd7c8  0a 10 a0 e1                                      mov r1, sl
005dd7cc  07 00 a0 e1                                      mov r0, r7
005dd7d0  0b 30 a0 e1                                      mov r3, fp
005dd7d4  03 00 00 0a                                      beq #0x5dd7e8
005dd7d8  b4 20 d2 e1                                      ldrh r2, [r2, #4]
005dd7dc  00 60 8d e5                                      str r6, [sp]
005dd7e0  20 02 8d e9                                      stmib sp, {r5, sb}
005dd7e4  14 f4 ff eb                                      bl #0x5da83c
005dd7e8  00 40 94 e5                                      ldr r4, [r4]
005dd7ec  08 00 54 e1                                      cmp r4, r8
005dd7f0  ed ff ff 1a                                      bne #0x5dd7ac
005dd7f4  90 30 97 e5                                      ldr r3, [r7, #0x90]
005dd7f8  18 00 9d e5                                      ldr r0, [sp, #0x18]
005dd7fc  28 20 93 e5                                      ldr r2, [r3, #0x28]
005dd800  30 20 83 e5                                      str r2, [r3, #0x30]
005dd804  a1 ff ff ea                                      b #0x5dd690
005dd808  58 39 30 00                                      .byte 0x58, 0x39, 0x30, 0x00

; EXCERPT auto_add_and_bind_parameter va=0x005dd250 size=1044 source=glitch_video_CMaterialRendererManager-a4bf824a9f3f-001.asm
; purpose: derive shader parameter name, lookup or create manager definition, and forward binding
005dd250  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005dd254  ec 43 9f e5                                      ldr r4, [pc, #0x3ec]
005dd258  ec 83 9f e5                                      ldr r8, [pc, #0x3ec]
005dd25c  01 90 a0 e1                                      mov sb, r1
005dd260  04 40 8f e0                                      add r4, pc, r4
005dd264  08 10 94 e7                                      ldr r1, [r4, r8]
005dd268  20 c0 99 e5                                      ldr ip, [sb, #0x20]
005dd26c  4c d0 4d e2                                      sub sp, sp, #0x4c
005dd270  00 10 91 e5                                      ldr r1, [r1]
005dd274  03 a0 a0 e1                                      mov sl, r3
005dd278  05 30 83 e2                                      add r3, r3, #5
005dd27c  44 10 8d e5                                      str r1, [sp, #0x44]
005dd280  83 b1 9c e7                                      ldr fp, [ip, r3, lsl #3]
005dd284  02 60 a0 e1                                      mov r6, r2
005dd288  b0 27 dd e1                                      ldrh r2, [sp, #0x70]
005dd28c  06 12 8b e0                                      add r1, fp, r6, lsl #4
005dd290  00 70 a0 e1                                      mov r7, r0
005dd294  18 20 8d e5                                      str r2, [sp, #0x18]
005dd298  b4 50 d1 e1                                      ldrh r5, [r1, #4]
005dd29c  b4 37 dd e1                                      ldrh r3, [sp, #0x74]
005dd2a0  12 00 55 e3                                      cmp r5, #0x12
005dd2a4  01 00 00 da                                      ble #0x5dd2b0
005dd2a8  1b 00 55 e3                                      cmp r5, #0x1b
005dd2ac  30 00 00 da                                      ble #0x5dd374
005dd2b0  12 00 55 e3                                      cmp r5, #0x12
005dd2b4  2e 00 00 0a                                      beq #0x5dd374
005dd2b8  1c 00 55 e3                                      cmp r5, #0x1c
005dd2bc  0c 00 00 ca                                      bgt #0x5dd2f4
005dd2c0  1c 00 55 e3                                      cmp r5, #0x1c
005dd2c4  9f 00 00 0a                                      beq #0x5dd548
005dd2c8  12 50 45 e2                                      sub r5, r5, #0x12
005dd2cc  0e 00 55 e3                                      cmp r5, #0xe
005dd2d0  90 00 00 8a                                      bhi #0x5dd518
005dd2d4  08 30 94 e7                                      ldr r3, [r4, r8]
005dd2d8  44 20 9d e5                                      ldr r2, [sp, #0x44]
005dd2dc  18 00 9d e5                                      ldr r0, [sp, #0x18]
005dd2e0  00 30 93 e5                                      ldr r3, [r3]
005dd2e4  03 00 52 e1                                      cmp r2, r3
005dd2e8  d5 00 00 1a                                      bne #0x5dd644
005dd2ec  4c d0 8d e2                                      add sp, sp, #0x4c
005dd2f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005dd2f4  1f 00 55 e3                                      cmp r5, #0x1f
005dd2f8  f0 ff ff ca                                      bgt #0x5dd2c0
005dd2fc  1e 00 55 e3                                      cmp r5, #0x1e
005dd300  07 20 d1 e5                                      ldrb r2, [r1, #7]
005dd304  ba 00 00 0a                                      beq #0x5dd5f4
005dd308  1f 00 55 e3                                      cmp r5, #0x1f
005dd30c  b4 00 00 0a                                      beq #0x5dd5e4
005dd310  28 30 97 e5                                      ldr r3, [r7, #0x28]
005dd314  82 20 83 e0                                      add r2, r3, r2, lsl #1
005dd318  ba 2f d2 e1                                      ldrh r2, [r2, #0xfa]
005dd31c  01 20 82 e2                                      add r2, r2, #1
005dd320  72 20 ff e6                                      uxth r2, r2
005dd324  e4 30 93 e5                                      ldr r3, [r3, #0xe4]
005dd328  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
005dd32c  18 30 93 e5                                      ldr r3, [r3, #0x18]
005dd330  01 10 63 e0                                      rsb r1, r3, r1
005dd334  41 11 a0 e1                                      asr r1, r1, #2
005dd338  81 00 81 e0                                      add r0, r1, r1, lsl #1
005dd33c  00 02 80 e0                                      add r0, r0, r0, lsl #4
005dd340  00 04 80 e0                                      add r0, r0, r0, lsl #8
005dd344  00 08 80 e0                                      add r0, r0, r0, lsl #16
005dd348  00 11 81 e0                                      add r1, r1, r0, lsl #2
005dd34c  02 00 51 e1                                      cmp r1, r2
005dd350  8b 00 00 9a                                      bls #0x5dd584
005dd354  14 10 a0 e3                                      mov r1, #0x14
005dd358  91 32 23 e0                                      mla r3, r1, r2, r3
005dd35c  00 10 93 e5                                      ldr r1, [r3]
005dd360  00 00 51 e3                                      cmp r1, #0
005dd364  00 30 a0 03                                      moveq r3, #0
005dd368  03 10 a0 e1                                      mov r1, r3
005dd36c  b4 50 d3 e1                                      ldrh r5, [r3, #4]
005dd370  1b 00 00 ea                                      b #0x5dd3e4
005dd374  18 20 9d e5                                      ldr r2, [sp, #0x18]
005dd378  03 00 52 e1                                      cmp r2, r3
005dd37c  20 00 00 2a                                      bhs #0x5dd404
005dd380  06 12 9b e7                                      ldr r1, [fp, r6, lsl #4]
005dd384  20 30 8d e2                                      add r3, sp, #0x20
005dd388  03 00 a0 e1                                      mov r0, r3
005dd38c  00 00 51 e3                                      cmp r1, #0
005dd390  04 10 81 12                                      addne r1, r1, #4
005dd394  1c 30 8d e5                                      str r3, [sp, #0x1c]
005dd398  75 29 00 eb                                      bl #0x5e7974
005dd39c  20 30 9d e5                                      ldr r3, [sp, #0x20]
005dd3a0  00 00 53 e3                                      cmp r3, #0
005dd3a4  79 00 00 0a                                      beq #0x5dd590
005dd3a8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005dd3ac  07 00 a0 e1                                      mov r0, r7
005dd3b0  13 fa ff eb                                      bl #0x5dbc04
005dd3b4  00 c0 50 e2                                      subs ip, r0, #0
005dd3b8  0c 10 a0 11                                      movne r1, ip
005dd3bc  92 00 00 0a                                      beq #0x5dd60c
005dd3c0  20 00 9d e5                                      ldr r0, [sp, #0x20]
005dd3c4  00 00 50 e3                                      cmp r0, #0
005dd3c8  04 00 00 0a                                      beq #0x5dd3e0
005dd3cc  00 30 90 e5                                      ldr r3, [r0]
005dd3d0  01 30 43 e2                                      sub r3, r3, #1
005dd3d4  00 00 53 e3                                      cmp r3, #0
005dd3d8  00 30 80 e5                                      str r3, [r0]
005dd3dc  48 00 00 0a                                      beq #0x5dd504
005dd3e0  ff 2f 0f e3                                      movw r2, #0xffff
005dd3e4  00 00 51 e3                                      cmp r1, #0
005dd3e8  b9 ff ff 0a                                      beq #0x5dd2d4
005dd3ec  07 00 a0 e1                                      mov r0, r7
005dd3f0  05 30 a0 e1                                      mov r3, r5
005dd3f4  00 90 8d e5                                      str sb, [sp]
005dd3f8  40 04 8d e9                                      stmib sp, {r6, sl}
005dd3fc  57 f3 ff eb                                      bl #0x5da160
005dd400  b3 ff ff ea                                      b #0x5dd2d4
005dd404  07 10 d1 e5                                      ldrb r1, [r1, #7]
005dd408  3d 20 dc e5                                      ldrb r2, [ip, #0x3d]
005dd40c  01 20 62 e0                                      rsb r2, r2, r1
005dd410  72 20 ef e6                                      uxtb r2, r2
005dd414  02 00 53 e1                                      cmp r3, r2
005dd418  30 00 00 8a                                      bhi #0x5dd4e0
005dd41c  28 10 97 e5                                      ldr r1, [r7, #0x28]
005dd420  02 30 63 e0                                      rsb r3, r3, r2
005dd424  73 30 ef e6                                      uxtb r3, r3
005dd428  bc 23 d1 e1                                      ldrh r2, [r1, #0x3c]
005dd42c  03 00 52 e1                                      cmp r2, r3
005dd430  0a 00 00 2a                                      bhs #0x5dd460
005dd434  06 02 9b e7                                      ldr r0, [fp, r6, lsl #4]
005dd438  10 12 9f e5                                      ldr r1, [pc, #0x210]
005dd43c  02 20 a0 e3                                      mov r2, #2
005dd440  00 00 50 e3                                      cmp r0, #0
005dd444  04 00 80 12                                      addne r0, r0, #4
005dd448  01 10 8f e0                                      add r1, pc, r1
005dd44c  25 b6 00 eb                                      bl #0x60ace8
005dd450  28 30 97 e5                                      ldr r3, [r7, #0x28]
005dd454  3c 30 d3 e5                                      ldrb r3, [r3, #0x3c]
005dd458  01 30 43 e2                                      sub r3, r3, #1
005dd45c  73 30 ef e6                                      uxtb r3, r3
005dd460  ec 21 9f e5                                      ldr r2, [pc, #0x1ec]
005dd464  ec 11 9f e5                                      ldr r1, [pc, #0x1ec]
005dd468  24 b0 8d e2                                      add fp, sp, #0x24
005dd46c  02 20 94 e7                                      ldr r2, [r4, r2]
005dd470  01 10 8f e0                                      add r1, pc, r1
005dd474  0b 00 a0 e1                                      mov r0, fp
005dd478  00 20 92 e5                                      ldr r2, [r2]
005dd47c  98 c5 f4 eb                                      bl #0x30eae4
005dd480  28 30 97 e5                                      ldr r3, [r7, #0x28]
005dd484  0b 10 a0 e1                                      mov r1, fp
005dd488  e4 00 93 e5                                      ldr r0, [r3, #0xe4]
005dd48c  b9 77 ff eb                                      bl #0x5bb378
005dd490  28 30 97 e5                                      ldr r3, [r7, #0x28]
005dd494  00 20 a0 e1                                      mov r2, r0
005dd498  e4 10 93 e5                                      ldr r1, [r3, #0xe4]
005dd49c  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
005dd4a0  18 10 91 e5                                      ldr r1, [r1, #0x18]
005dd4a4  03 30 61 e0                                      rsb r3, r1, r3
005dd4a8  43 31 a0 e1                                      asr r3, r3, #2
005dd4ac  83 00 83 e0                                      add r0, r3, r3, lsl #1
005dd4b0  00 02 80 e0                                      add r0, r0, r0, lsl #4
005dd4b4  00 04 80 e0                                      add r0, r0, r0, lsl #8
005dd4b8  00 08 80 e0                                      add r0, r0, r0, lsl #16
005dd4bc  00 31 83 e0                                      add r3, r3, r0, lsl #2
005dd4c0  03 00 52 e1                                      cmp r2, r3
005dd4c4  43 00 00 3a                                      blo #0x5dd5d8
005dd4c8  8c 31 9f e5                                      ldr r3, [pc, #0x18c]
005dd4cc  03 10 94 e7                                      ldr r1, [r4, r3]
005dd4d0  00 30 91 e5                                      ldr r3, [r1]
005dd4d4  00 00 53 e3                                      cmp r3, #0
005dd4d8  00 10 a0 03                                      moveq r1, #0
005dd4dc  c0 ff ff ea                                      b #0x5dd3e4
005dd4e0  06 02 9b e7                                      ldr r0, [fp, r6, lsl #4]
005dd4e4  74 11 9f e5                                      ldr r1, [pc, #0x174]
005dd4e8  02 20 a0 e3                                      mov r2, #2
005dd4ec  00 00 50 e3                                      cmp r0, #0
005dd4f0  04 00 80 12                                      addne r0, r0, #4
005dd4f4  01 10 8f e0                                      add r1, pc, r1
005dd4f8  fa b5 00 eb                                      bl #0x60ace8
005dd4fc  00 30 a0 e3                                      mov r3, #0
005dd500  d6 ff ff ea                                      b #0x5dd460
005dd504  14 10 8d e5                                      str r1, [sp, #0x14]
005dd508  23 1e 03 eb                                      bl #0x6a4d9c
005dd50c  ff 2f 0f e3                                      movw r2, #0xffff
005dd510  14 10 9d e5                                      ldr r1, [sp, #0x14]
005dd514  b2 ff ff ea                                      b #0x5dd3e4
005dd518  ff 20 a0 e3                                      mov r2, #0xff
005dd51c  00 c0 e0 e3                                      mvn ip, #0
005dd520  02 30 a0 e1                                      mov r3, r2
005dd524  00 c0 8d e5                                      str ip, [sp]
005dd528  07 00 a0 e1                                      mov r0, r7
005dd52c  00 c0 a0 e3                                      mov ip, #0
005dd530  04 c0 8d e5                                      str ip, [sp, #4]
005dd534  0a fe ff eb                                      bl #0x5dcd64
005dd538  ff 2f 0f e3                                      movw r2, #0xffff
005dd53c  00 10 a0 e1                                      mov r1, r0
005dd540  b4 50 d0 e1                                      ldrh r5, [r0, #4]
005dd544  a6 ff ff ea                                      b #0x5dd3e4
005dd548  28 20 97 e5                                      ldr r2, [r7, #0x28]
005dd54c  36 11 00 e3                                      movw r1, #0x136
005dd550  e4 30 92 e5                                      ldr r3, [r2, #0xe4]
005dd554  b1 20 92 e1                                      ldrh r2, [r2, r1]
005dd558  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
005dd55c  18 30 93 e5                                      ldr r3, [r3, #0x18]
005dd560  01 10 63 e0                                      rsb r1, r3, r1
005dd564  41 11 a0 e1                                      asr r1, r1, #2
005dd568  81 00 81 e0                                      add r0, r1, r1, lsl #1
005dd56c  00 02 80 e0                                      add r0, r0, r0, lsl #4
005dd570  00 04 80 e0                                      add r0, r0, r0, lsl #8
005dd574  00 08 80 e0                                      add r0, r0, r0, lsl #16
005dd578  00 11 81 e0                                      add r1, r1, r0, lsl #2
005dd57c  01 00 52 e1                                      cmp r2, r1
005dd580  73 ff ff 3a                                      blo #0x5dd354
005dd584  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
005dd588  03 30 94 e7                                      ldr r3, [r4, r3]
005dd58c  72 ff ff ea                                      b #0x5dd35c
005dd590  06 32 9b e7                                      ldr r3, [fp, r6, lsl #4]
005dd594  00 00 53 e3                                      cmp r3, #0
005dd598  20 30 8d 05                                      streq r3, [sp, #0x20]
005dd59c  81 ff ff 0a                                      beq #0x5dd3a8
005dd5a0  00 20 93 e5                                      ldr r2, [r3]
005dd5a4  01 20 82 e2                                      add r2, r2, #1
005dd5a8  00 20 83 e5                                      str r2, [r3]
005dd5ac  20 00 9d e5                                      ldr r0, [sp, #0x20]
005dd5b0  20 30 8d e5                                      str r3, [sp, #0x20]
005dd5b4  00 00 50 e3                                      cmp r0, #0
005dd5b8  7a ff ff 0a                                      beq #0x5dd3a8
005dd5bc  00 30 90 e5                                      ldr r3, [r0]
005dd5c0  01 30 43 e2                                      sub r3, r3, #1
005dd5c4  00 00 53 e3                                      cmp r3, #0
005dd5c8  00 30 80 e5                                      str r3, [r0]
005dd5cc  75 ff ff 1a                                      bne #0x5dd3a8
005dd5d0  f1 1d 03 eb                                      bl #0x6a4d9c
005dd5d4  73 ff ff ea                                      b #0x5dd3a8
005dd5d8  14 30 a0 e3                                      mov r3, #0x14
005dd5dc  93 12 21 e0                                      mla r1, r3, r2, r1
005dd5e0  ba ff ff ea                                      b #0x5dd4d0
005dd5e4  28 30 97 e5                                      ldr r3, [r7, #0x28]
005dd5e8  82 20 83 e0                                      add r2, r3, r2, lsl #1
005dd5ec  ba 2f d2 e1                                      ldrh r2, [r2, #0xfa]
005dd5f0  4b ff ff ea                                      b #0x5dd324
005dd5f4  28 30 97 e5                                      ldr r3, [r7, #0x28]
005dd5f8  82 20 83 e0                                      add r2, r3, r2, lsl #1
005dd5fc  ba 2f d2 e1                                      ldrh r2, [r2, #0xfa]
005dd600  02 20 82 e2                                      add r2, r2, #2
005dd604  72 20 ff e6                                      uxth r2, r2
005dd608  45 ff ff ea                                      b #0x5dd324
005dd60c  18 30 9d e5                                      ldr r3, [sp, #0x18]
005dd610  12 20 a0 e3                                      mov r2, #0x12
005dd614  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005dd618  01 b0 83 e2                                      add fp, r3, #1
005dd61c  00 e0 e0 e3                                      mvn lr, #0
005dd620  07 00 a0 e1                                      mov r0, r7
005dd624  02 30 a0 e1                                      mov r3, r2
005dd628  7b b0 ff e6                                      uxth fp, fp
005dd62c  00 e0 8d e5                                      str lr, [sp]
005dd630  04 c0 8d e5                                      str ip, [sp, #4]
005dd634  18 b0 8d e5                                      str fp, [sp, #0x18]
005dd638  c9 fd ff eb                                      bl #0x5dcd64
005dd63c  00 10 a0 e1                                      mov r1, r0
005dd640  5e ff ff ea                                      b #0x5dd3c0
005dd644  31 c3 f4 eb                                      bl #0x30e310
005dd648  30 78 3b 00 ac 40 00 00 58 3b 30 00 c0 34 00 00  .byte 0x30, 0x78, 0x3b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x58, 0x3b, 0x30, 0x00, 0xc0, 0x34, 0x00, 0x00
005dd658  20 2b 30 00 14 28 00 00 54 3a 30 00              .byte 0x20, 0x2b, 0x30, 0x00, 0x14, 0x28, 0x00, 0x00, 0x54, 0x3a, 0x30, 0x00

; EXCERPT bind_parameter_definition_to_pass va=0x005da160 size=1088 source=glitch_video_CMaterialRendererManager-a4bf824a9f3f-001.asm
; purpose: check definition/type compatibility and record parameter link in pass state
005da160  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005da164  24 d0 4d e2                                      sub sp, sp, #0x24
005da168  48 c0 9d e5                                      ldr ip, [sp, #0x48]
005da16c  50 70 9d e5                                      ldr r7, [sp, #0x50]
005da170  bc 54 dd e1                                      ldrh r5, [sp, #0x4c]
005da174  20 60 9c e5                                      ldr r6, [ip, #0x20]
005da178  05 80 87 e2                                      add r8, r7, #5
005da17c  f4 43 9f e5                                      ldr r4, [pc, #0x3f4]
005da180  88 c1 86 e0                                      add ip, r6, r8, lsl #3
005da184  b6 c0 dc e1                                      ldrh ip, [ip, #6]
005da188  04 40 8f e0                                      add r4, pc, r4
005da18c  08 00 8d e5                                      str r0, [sp, #8]
005da190  05 00 5c e1                                      cmp ip, r5
005da194  01 a0 a0 e1                                      mov sl, r1
005da198  0c 20 8d e5                                      str r2, [sp, #0xc]
005da19c  2e 00 00 9a                                      bls #0x5da25c
005da1a0  88 01 96 e7                                      ldr r0, [r6, r8, lsl #3]
005da1a4  05 b2 a0 e1                                      lsl fp, r5, #4
005da1a8  0b 90 80 e0                                      add sb, r0, fp
005da1ac  b4 10 d9 e1                                      ldrh r1, [sb, #4]
005da1b0  02 00 51 e3                                      cmp r1, #2
005da1b4  1d 00 00 0a                                      beq #0x5da230
005da1b8  b4 20 da e1                                      ldrh r2, [sl, #4]
005da1bc  12 00 53 e3                                      cmp r3, #0x12
005da1c0  00 c0 a0 d3                                      movle ip, #0
005da1c4  01 c0 a0 c3                                      movgt ip, #1
005da1c8  12 00 52 e3                                      cmp r2, #0x12
005da1cc  00 c0 a0 13                                      movne ip, #0
005da1d0  00 00 5c e3                                      cmp ip, #0
005da1d4  0c 00 00 0a                                      beq #0x5da20c
005da1d8  1b 00 53 e3                                      cmp r3, #0x1b
005da1dc  12 20 a0 d3                                      movle r2, #0x12
005da1e0  08 00 00 ca                                      bgt #0x5da208
005da1e4  22 c0 43 e2                                      sub ip, r3, #0x22
005da1e8  1c 00 5c e3                                      cmp ip, #0x1c
005da1ec  20 00 00 8a                                      bhi #0x5da274
005da1f0  84 03 9f e5                                      ldr r0, [pc, #0x384]
005da1f4  03 10 a0 e3                                      mov r1, #3
005da1f8  00 00 8f e0                                      add r0, pc, r0
005da1fc  a7 c2 00 eb                                      bl #0x60aca0
005da200  00 00 a0 e3                                      mov r0, #0
005da204  07 00 00 ea                                      b #0x5da228
005da208  12 20 a0 e3                                      mov r2, #0x12
005da20c  02 00 53 e1                                      cmp r3, r2
005da210  f3 ff ff 0a                                      beq #0x5da1e4
005da214  64 03 9f e5                                      ldr r0, [pc, #0x364]
005da218  03 10 a0 e3                                      mov r1, #3
005da21c  00 00 8f e0                                      add r0, pc, r0
005da220  9e c2 00 eb                                      bl #0x60aca0
005da224  00 00 a0 e3                                      mov r0, #0
005da228  24 d0 8d e2                                      add sp, sp, #0x24
005da22c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005da230  b4 20 da e1                                      ldrh r2, [sl, #4]
005da234  02 00 52 e3                                      cmp r2, #2
005da238  f3 ff ff 0a                                      beq #0x5da20c
005da23c  ff 00 52 e3                                      cmp r2, #0xff
005da240  f1 ff ff 0a                                      beq #0x5da20c
005da244  38 03 9f e5                                      ldr r0, [pc, #0x338]
005da248  03 10 a0 e3                                      mov r1, #3
005da24c  00 00 8f e0                                      add r0, pc, r0
005da250  92 c2 00 eb                                      bl #0x60aca0
005da254  00 00 a0 e3                                      mov r0, #0
005da258  f2 ff ff ea                                      b #0x5da228
005da25c  24 03 9f e5                                      ldr r0, [pc, #0x324]
005da260  03 10 a0 e3                                      mov r1, #3
005da264  00 00 8f e0                                      add r0, pc, r0
005da268  8c c2 00 eb                                      bl #0x60aca0
005da26c  00 00 a0 e3                                      mov r0, #0
005da270  ec ff ff ea                                      b #0x5da228
005da274  21 00 53 e3                                      cmp r3, #0x21
005da278  dc ff ff 0a                                      beq #0x5da1f0
005da27c  ff 00 52 e3                                      cmp r2, #0xff
005da280  b2 00 00 0a                                      beq #0x5da550
005da284  ff 00 53 e3                                      cmp r3, #0xff
005da288  4f 00 00 0a                                      beq #0x5da3cc
005da28c  01 00 53 e1                                      cmp r3, r1
005da290  4d 00 00 0a                                      beq #0x5da3cc
005da294  05 02 90 e7                                      ldr r0, [r0, r5, lsl #4]
005da298  04 30 8d e5                                      str r3, [sp, #4]
005da29c  00 00 50 e3                                      cmp r0, #0
005da2a0  04 00 80 12                                      addne r0, r0, #4
005da2a4  f6 1f 00 eb                                      bl #0x5e2284
005da2a8  b4 20 d9 e1                                      ldrh r2, [sb, #4]
005da2ac  04 30 9d e5                                      ldr r3, [sp, #4]
005da2b0  02 00 50 e1                                      cmp r0, r2
005da2b4  9f 00 00 1a                                      bne #0x5da538
005da2b8  08 00 9d e5                                      ldr r0, [sp, #8]
005da2bc  b0 14 d6 e1                                      ldrh r1, [r6, #0x40]
005da2c0  28 20 90 e5                                      ldr r2, [r0, #0x28]
005da2c4  d8 20 92 e5                                      ldr r2, [r2, #0xd8]
005da2c8  20 00 92 e5                                      ldr r0, [r2, #0x20]
005da2cc  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
005da2d0  00 00 62 e0                                      rsb r0, r2, r0
005da2d4  c0 01 51 e1                                      cmp r1, r0, asr #3
005da2d8  81 21 82 30                                      addlo r2, r2, r1, lsl #3
005da2dc  a8 22 9f 25                                      ldrhs r2, [pc, #0x2a8]
005da2e0  02 20 94 27                                      ldrhs r2, [r4, r2]
005da2e4  00 10 92 e5                                      ldr r1, [r2]
005da2e8  73 30 ff e6                                      uxth r3, r3
005da2ec  00 00 51 e3                                      cmp r1, #0
005da2f0  04 20 91 15                                      ldrne r2, [r1, #4]
005da2f4  01 20 82 12                                      addne r2, r2, #1
005da2f8  04 20 81 15                                      strne r2, [r1, #4]
005da2fc  88 c1 91 e7                                      ldr ip, [r1, r8, lsl #3]
005da300  0b b0 8c e0                                      add fp, ip, fp
005da304  06 00 db e5                                      ldrb r0, [fp, #6]
005da308  05 22 9c e7                                      ldr r2, [ip, r5, lsl #4]
005da30c  1c 00 8d e5                                      str r0, [sp, #0x1c]
005da310  08 00 9b e5                                      ldr r0, [fp, #8]
005da314  00 00 52 e3                                      cmp r2, #0
005da318  18 00 8d e5                                      str r0, [sp, #0x18]
005da31c  0c 00 9b e5                                      ldr r0, [fp, #0xc]
005da320  14 00 8d e5                                      str r0, [sp, #0x14]
005da324  07 00 db e5                                      ldrb r0, [fp, #7]
005da328  10 00 8d e5                                      str r0, [sp, #0x10]
005da32c  00 00 92 15                                      ldrne r0, [r2]
005da330  01 00 80 12                                      addne r0, r0, #1
005da334  00 00 82 15                                      strne r0, [r2]
005da338  08 30 8d e5                                      str r3, [sp, #8]
005da33c  00 00 52 e3                                      cmp r2, #0
005da340  00 30 92 15                                      ldrne r3, [r2]
005da344  01 30 83 12                                      addne r3, r3, #1
005da348  00 30 82 15                                      strne r3, [r2]
005da34c  05 02 9c e7                                      ldr r0, [ip, r5, lsl #4]
005da350  05 22 8c e7                                      str r2, [ip, r5, lsl #4]
005da354  00 00 50 e3                                      cmp r0, #0
005da358  04 00 00 0a                                      beq #0x5da370
005da35c  00 30 90 e5                                      ldr r3, [r0]
005da360  01 30 43 e2                                      sub r3, r3, #1
005da364  00 00 53 e3                                      cmp r3, #0
005da368  00 30 80 e5                                      str r3, [r0]
005da36c  7d 00 00 0a                                      beq #0x5da568
005da370  14 30 9d e5                                      ldr r3, [sp, #0x14]
005da374  00 00 52 e3                                      cmp r2, #0
005da378  0c 30 8b e5                                      str r3, [fp, #0xc]
005da37c  08 c0 9d e5                                      ldr ip, [sp, #8]
005da380  b4 c0 cb e1                                      strh ip, [fp, #4]
005da384  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005da388  06 00 cb e5                                      strb r0, [fp, #6]
005da38c  10 30 9d e5                                      ldr r3, [sp, #0x10]
005da390  07 30 cb e5                                      strb r3, [fp, #7]
005da394  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005da398  08 c0 8b e5                                      str ip, [fp, #8]
005da39c  08 00 00 0a                                      beq #0x5da3c4
005da3a0  00 30 92 e5                                      ldr r3, [r2]
005da3a4  01 30 43 e2                                      sub r3, r3, #1
005da3a8  00 00 53 e3                                      cmp r3, #0
005da3ac  00 30 82 e5                                      str r3, [r2]
005da3b0  03 00 00 1a                                      bne #0x5da3c4
005da3b4  02 00 a0 e1                                      mov r0, r2
005da3b8  00 10 8d e5                                      str r1, [sp]
005da3bc  76 2a 03 eb                                      bl #0x6a4d9c
005da3c0  00 10 9d e5                                      ldr r1, [sp]
005da3c4  01 00 a0 e1                                      mov r0, r1
005da3c8  6d 0c f5 eb                                      bl #0x31d584
005da3cc  06 30 da e5                                      ldrb r3, [sl, #6]
005da3d0  ff 00 53 e3                                      cmp r3, #0xff
005da3d4  13 00 00 0a                                      beq #0x5da428
005da3d8  b4 20 d9 e1                                      ldrh r2, [sb, #4]
005da3dc  12 00 52 e3                                      cmp r2, #0x12
005da3e0  51 00 00 da                                      ble #0x5da52c
005da3e4  1b 00 52 e3                                      cmp r2, #0x1b
005da3e8  4f 00 00 ca                                      bgt #0x5da52c
005da3ec  12 00 53 e3                                      cmp r3, #0x12
005da3f0  0c 00 00 0a                                      beq #0x5da428
005da3f4  94 11 9f e5                                      ldr r1, [pc, #0x194]
005da3f8  06 20 d9 e5                                      ldrb r2, [sb, #6]
005da3fc  01 00 a0 e3                                      mov r0, #1
005da400  01 10 94 e7                                      ldr r1, [r4, r1]
005da404  02 41 91 e7                                      ldr r4, [r1, r2, lsl #2]
005da408  10 43 14 e0                                      ands r4, r4, r0, lsl r3
005da40c  05 00 00 1a                                      bne #0x5da428
005da410  7c 01 9f e5                                      ldr r0, [pc, #0x17c]
005da414  03 10 a0 e3                                      mov r1, #3
005da418  00 00 8f e0                                      add r0, pc, r0
005da41c  1f c2 00 eb                                      bl #0x60aca0
005da420  04 00 a0 e1                                      mov r0, r4
005da424  7f ff ff ea                                      b #0x5da228
005da428  08 30 9a e5                                      ldr r3, [sl, #8]
005da42c  01 00 73 e3                                      cmn r3, #1
005da430  08 00 00 0a                                      beq #0x5da458
005da434  08 20 99 e5                                      ldr r2, [sb, #8]
005da438  02 00 53 e1                                      cmp r3, r2
005da43c  05 00 00 0a                                      beq #0x5da458
005da440  50 01 9f e5                                      ldr r0, [pc, #0x150]
005da444  03 10 a0 e3                                      mov r1, #3
005da448  00 00 8f e0                                      add r0, pc, r0
005da44c  13 c2 00 eb                                      bl #0x60aca0
005da450  00 00 a0 e3                                      mov r0, #0
005da454  73 ff ff ea                                      b #0x5da228
005da458  00 00 57 e3                                      cmp r7, #0
005da45c  00 20 a0 c3                                      movgt r2, #0
005da460  00 10 a0 d3                                      movle r1, #0
005da464  06 30 a0 c1                                      movgt r3, r6
005da468  02 10 a0 c1                                      movgt r1, r2
005da46c  08 00 00 da                                      ble #0x5da494
005da470  be c2 d3 e1                                      ldrh ip, [r3, #0x2e]
005da474  bc 02 d3 e1                                      ldrh r0, [r3, #0x2c]
005da478  01 20 82 e2                                      add r2, r2, #1
005da47c  07 00 52 e1                                      cmp r2, r7
005da480  0c 00 60 e0                                      rsb r0, r0, ip
005da484  00 10 81 e0                                      add r1, r1, r0
005da488  71 10 ff e6                                      uxth r1, r1
005da48c  08 30 83 e2                                      add r3, r3, #8
005da490  f6 ff ff 1a                                      bne #0x5da470
005da494  88 61 86 e0                                      add r6, r6, r8, lsl #3
005da498  b4 20 d6 e1                                      ldrh r2, [r6, #4]
005da49c  48 00 9d e5                                      ldr r0, [sp, #0x48]
005da4a0  05 50 62 e0                                      rsb r5, r2, r5
005da4a4  24 30 90 e5                                      ldr r3, [r0, #0x24]
005da4a8  05 10 81 e0                                      add r1, r1, r5
005da4ac  71 10 ff e6                                      uxth r1, r1
005da4b0  81 21 d3 e7                                      ldrb r2, [r3, r1, lsl #3]
005da4b4  81 01 83 e0                                      add r0, r3, r1, lsl #3
005da4b8  00 00 52 e3                                      cmp r2, #0
005da4bc  0a 00 00 1a                                      bne #0x5da4ec
005da4c0  04 20 90 e5                                      ldr r2, [r0, #4]
005da4c4  00 00 52 e3                                      cmp r2, #0
005da4c8  07 00 00 0a                                      beq #0x5da4ec
005da4cc  18 c0 92 e5                                      ldr ip, [r2, #0x18]
005da4d0  01 c0 4c e2                                      sub ip, ip, #1
005da4d4  00 00 5c e3                                      cmp ip, #0
005da4d8  18 c0 82 e5                                      str ip, [r2, #0x18]
005da4dc  00 c0 e0 03                                      mvneq ip, #0
005da4e0  07 c0 c2 05                                      strbeq ip, [r2, #7]
005da4e4  00 20 a0 e3                                      mov r2, #0
005da4e8  04 20 80 e5                                      str r2, [r0, #4]
005da4ec  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005da4f0  ff 2f 0f e3                                      movw r2, #0xffff
005da4f4  02 20 5c e0                                      subs r2, ip, r2
005da4f8  01 20 a0 13                                      movne r2, #1
005da4fc  00 00 52 e3                                      cmp r2, #0
005da500  81 21 c3 e7                                      strb r2, [r3, r1, lsl #3]
005da504  04 a0 80 05                                      streq sl, [r0, #4]
005da508  18 30 9a 05                                      ldreq r3, [sl, #0x18]
005da50c  01 00 a0 03                                      moveq r0, #1
005da510  b4 c0 c0 11                                      strhne ip, [r0, #4]
005da514  00 30 83 00                                      addeq r3, r3, r0
005da518  18 30 8a 05                                      streq r3, [sl, #0x18]
005da51c  07 30 d9 05                                      ldrbeq r3, [sb, #7]
005da520  01 00 a0 13                                      movne r0, #1
005da524  07 30 ca 05                                      strbeq r3, [sl, #7]
005da528  3e ff ff ea                                      b #0x5da228
005da52c  12 00 52 e3                                      cmp r2, #0x12
005da530  af ff ff 1a                                      bne #0x5da3f4
005da534  ac ff ff ea                                      b #0x5da3ec
005da538  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
005da53c  03 10 a0 e3                                      mov r1, #3
005da540  00 00 8f e0                                      add r0, pc, r0
005da544  d5 c1 00 eb                                      bl #0x60aca0
005da548  00 00 a0 e3                                      mov r0, #0
005da54c  35 ff ff ea                                      b #0x5da228
005da550  22 20 41 e2                                      sub r2, r1, #0x22
005da554  1c 00 52 e3                                      cmp r2, #0x1c
005da558  24 ff ff 9a                                      bls #0x5da1f0
005da55c  21 00 51 e3                                      cmp r1, #0x21
005da560  47 ff ff 1a                                      bne #0x5da284
005da564  21 ff ff ea                                      b #0x5da1f0
005da568  06 00 8d e8                                      stm sp, {r1, r2}
005da56c  0a 2a 03 eb                                      bl #0x6a4d9c
005da570  06 00 9d e8                                      ldm sp, {r1, r2}
005da574  7d ff ff ea                                      b #0x5da370
005da578  08 a9 3b 00 88 6a 30 00 f4 6a 30 00 14 6a 30 00  .byte 0x08, 0xa9, 0x3b, 0x00, 0x88, 0x6a, 0x30, 0x00, 0xf4, 0x6a, 0x30, 0x00, 0x14, 0x6a, 0x30, 0x00
005da588  dc 69 30 00 fc 49 00 00 a4 2c 00 00 b8 68 30 00  .byte 0xdc, 0x69, 0x30, 0x00, 0xfc, 0x49, 0x00, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0xb8, 0x68, 0x30, 0x00
005da598  a8 68 30 00 60 67 30 00                          .byte 0xa8, 0x68, 0x30, 0x00, 0x60, 0x67, 0x30, 0x00

; EXCERPT bind_parameter_by_temporary_id va=0x005da83c size=128 source=glitch_video_CMaterialRendererManager-a4bf824a9f3f-001.asm
; purpose: resolve temporary definition ID, validate range, and delegate to definition bind
005da83c  70 40 2d e9                                      push {r4, r5, r6, lr}
005da840  90 c0 90 e5                                      ldr ip, [r0, #0x90]
005da844  01 50 a0 e1                                      mov r5, r1
005da848  10 60 dd e5                                      ldrb r6, [sp, #0x10]
005da84c  00 00 5c e3                                      cmp ip, #0
005da850  b4 41 dd e1                                      ldrh r4, [sp, #0x14]
005da854  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005da858  0a 00 00 0a                                      beq #0x5da888
005da85c  00 00 51 e3                                      cmp r1, #0
005da860  08 00 00 0a                                      beq #0x5da888
005da864  00 00 53 e3                                      cmp r3, #0
005da868  06 00 00 0a                                      beq #0x5da888
005da86c  04 50 d3 e5                                      ldrb r5, [r3, #4]
005da870  06 00 55 e1                                      cmp r5, r6
005da874  05 00 00 8a                                      bhi #0x5da890
005da878  38 00 9f e5                                      ldr r0, [pc, #0x38]
005da87c  03 10 a0 e3                                      mov r1, #3
005da880  00 00 8f e0                                      add r0, pc, r0
005da884  05 c1 00 eb                                      bl #0x60aca0
005da888  00 00 a0 e3                                      mov r0, #0
005da88c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005da890  08 50 93 e5                                      ldr r5, [r3, #8]
005da894  02 30 a0 e1                                      mov r3, r2
005da898  34 20 a0 e3                                      mov r2, #0x34
005da89c  92 56 25 e0                                      mla r5, r2, r6, r5
005da8a0  ff 2f 0f e3                                      movw r2, #0xffff
005da8a4  10 50 8d e5                                      str r5, [sp, #0x10]
005da8a8  14 40 8d e5                                      str r4, [sp, #0x14]
005da8ac  18 c0 8d e5                                      str ip, [sp, #0x18]
005da8b0  70 40 bd e8                                      pop {r4, r5, r6, lr}
005da8b4  29 fe ff ea                                      b #0x5da160
005da8b8  d8 64 30 00                                      .byte 0xd8, 0x64, 0x30, 0x00

; EXCERPT manager_add_parameter_definition va=0x005dcd64 size=112 source=glitch_video_CMaterialRendererManager-a4bf824a9f3f-001.asm
; purpose: validate current state/type and delegate definition creation
005dcd64  04 e0 2d e5                                      str lr, [sp, #-4]!
005dcd68  90 00 90 e5                                      ldr r0, [r0, #0x90]
005dcd6c  0c d0 4d e2                                      sub sp, sp, #0xc
005dcd70  14 c0 dd e5                                      ldrb ip, [sp, #0x14]
005dcd74  00 00 50 e3                                      cmp r0, #0
005dcd78  0b 00 00 0a                                      beq #0x5dcdac
005dcd7c  ff 00 53 e3                                      cmp r3, #0xff
005dcd80  0d 00 00 0a                                      beq #0x5dcdbc
005dcd84  0c e0 43 e2                                      sub lr, r3, #0xc
005dcd88  03 00 5e e3                                      cmp lr, #3
005dcd8c  08 00 00 8a                                      bhi #0x5dcdb4
005dcd90  02 00 52 e3                                      cmp r2, #2
005dcd94  08 00 00 0a                                      beq #0x5dcdbc
005dcd98  30 00 9f e5                                      ldr r0, [pc, #0x30]
005dcd9c  03 10 a0 e3                                      mov r1, #3
005dcda0  00 00 8f e0                                      add r0, pc, r0
005dcda4  bd b7 00 eb                                      bl #0x60aca0
005dcda8  00 00 a0 e3                                      mov r0, #0
005dcdac  0c d0 8d e2                                      add sp, sp, #0xc
005dcdb0  00 80 bd e8                                      ldm sp!, {pc}
005dcdb4  02 00 52 e3                                      cmp r2, #2
005dcdb8  f6 ff ff 0a                                      beq #0x5dcd98
005dcdbc  10 e0 9d e5                                      ldr lr, [sp, #0x10]
005dcdc0  04 c0 8d e5                                      str ip, [sp, #4]
005dcdc4  00 e0 8d e5                                      str lr, [sp]
005dcdc8  1c ff ff eb                                      bl #0x5dca40
005dcdcc  f6 ff ff ea                                      b #0x5dcdac
005dcdd0  10 41 30 00                                      .byte 0x10, 0x41, 0x30, 0x00

; EXCERPT creation_state_add_parameter_definition va=0x005dca40 size=804 source=glitch_video_CMaterialRendererManager_SCreationState-ec75b4328515-001.asm
; purpose: create or update a named runtime parameter definition
005dca40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005dca44  00 43 9f e5                                      ldr r4, [pc, #0x300]
005dca48  00 53 9f e5                                      ldr r5, [pc, #0x300]
005dca4c  02 90 a0 e1                                      mov sb, r2
005dca50  04 40 8f e0                                      add r4, pc, r4
005dca54  05 20 94 e7                                      ldr r2, [r4, r5]
005dca58  7c d0 4d e2                                      sub sp, sp, #0x7c
005dca5c  12 00 59 e3                                      cmp sb, #0x12
005dca60  ff 00 59 13                                      cmpne sb, #0xff
005dca64  00 20 92 e5                                      ldr r2, [r2]
005dca68  00 60 a0 e1                                      mov r6, r0
005dca6c  01 70 a0 e1                                      mov r7, r1
005dca70  74 20 8d e5                                      str r2, [sp, #0x74]
005dca74  a4 20 dd e5                                      ldrb r2, [sp, #0xa4]
005dca78  03 a0 a0 e1                                      mov sl, r3
005dca7c  0c 20 8d e5                                      str r2, [sp, #0xc]
005dca80  01 00 00 0a                                      beq #0x5dca8c
005dca84  12 00 59 e3                                      cmp sb, #0x12
005dca88  98 00 00 ca                                      bgt #0x5dccf0
005dca8c  22 30 49 e2                                      sub r3, sb, #0x22
005dca90  1c 00 53 e3                                      cmp r3, #0x1c
005dca94  9d 00 00 9a                                      bls #0x5dcd10
005dca98  21 00 59 e3                                      cmp sb, #0x21
005dca9c  a1 00 00 0a                                      beq #0x5dcd28
005dcaa0  eb 5d fd eb                                      bl #0x534254
005dcaa4  00 00 8d e5                                      str r0, [sp]
005dcaa8  01 00 a0 e3                                      mov r0, #1
005dcaac  ed 5d fd eb                                      bl #0x534268
005dcab0  00 80 97 e5                                      ldr r8, [r7]
005dcab4  00 c0 e0 e3                                      mvn ip, #0
005dcab8  38 00 8d e2                                      add r0, sp, #0x38
005dcabc  00 00 58 e3                                      cmp r8, #0
005dcac0  00 30 98 15                                      ldrne r3, [r8]
005dcac4  08 30 a0 01                                      moveq r3, r8
005dcac8  34 10 86 e2                                      add r1, r6, #0x34
005dcacc  01 30 83 12                                      addne r3, r3, #1
005dcad0  00 30 88 15                                      strne r3, [r8]
005dcad4  a0 20 9d e5                                      ldr r2, [sp, #0xa0]
005dcad8  00 30 97 15                                      ldrne r3, [r7]
005dcadc  ff 00 5a e3                                      cmp sl, #0xff
005dcae0  00 e0 a0 13                                      movne lr, #0
005dcae4  01 e0 a0 03                                      moveq lr, #1
005dcae8  01 00 72 e3                                      cmn r2, #1
005dcaec  00 20 a0 13                                      movne r2, #0
005dcaf0  01 20 a0 03                                      moveq r2, #1
005dcaf4  08 20 8d e5                                      str r2, [sp, #8]
005dcaf8  04 e0 8d e5                                      str lr, [sp, #4]
005dcafc  14 30 8d e5                                      str r3, [sp, #0x14]
005dcb00  ff 00 59 e3                                      cmp sb, #0xff
005dcb04  00 b0 a0 13                                      movne fp, #0
005dcb08  01 b0 a0 03                                      moveq fp, #1
005dcb0c  00 00 53 e3                                      cmp r3, #0
005dcb10  00 20 93 15                                      ldrne r2, [r3]
005dcb14  79 e0 ff e6                                      uxth lr, sb
005dcb18  7a a0 ef e6                                      uxtb sl, sl
005dcb1c  01 20 82 12                                      addne r2, r2, #1
005dcb20  00 20 83 15                                      strne r2, [r3]
005dcb24  00 00 58 e3                                      cmp r8, #0
005dcb28  18 80 8d e5                                      str r8, [sp, #0x18]
005dcb2c  00 30 98 15                                      ldrne r3, [r8]
005dcb30  14 20 8d e2                                      add r2, sp, #0x14
005dcb34  01 30 83 12                                      addne r3, r3, #1
005dcb38  00 30 88 15                                      strne r3, [r8]
005dcb3c  bc e1 cd e1                                      strh lr, [sp, #0x1c]
005dcb40  a0 e0 9d e5                                      ldr lr, [sp, #0xa0]
005dcb44  00 30 a0 e3                                      mov r3, #0
005dcb48  1e a0 cd e5                                      strb sl, [sp, #0x1e]
005dcb4c  20 e0 8d e5                                      str lr, [sp, #0x20]
005dcb50  ff ef 0f e3                                      movw lr, #0xffff
005dcb54  2c e0 8d e5                                      str lr, [sp, #0x2c]
005dcb58  04 e0 9d e5                                      ldr lr, [sp, #4]
005dcb5c  24 c0 8d e5                                      str ip, [sp, #0x24]
005dcb60  30 30 8d e5                                      str r3, [sp, #0x30]
005dcb64  35 e0 cd e5                                      strb lr, [sp, #0x35]
005dcb68  08 e0 9d e5                                      ldr lr, [sp, #8]
005dcb6c  34 b0 cd e5                                      strb fp, [sp, #0x34]
005dcb70  1f c0 cd e5                                      strb ip, [sp, #0x1f]
005dcb74  36 e0 cd e5                                      strb lr, [sp, #0x36]
005dcb78  28 30 8d e5                                      str r3, [sp, #0x28]
005dcb7c  4e f7 ff eb                                      bl #0x5da8bc
005dcb80  18 00 9d e5                                      ldr r0, [sp, #0x18]
005dcb84  00 00 50 e3                                      cmp r0, #0
005dcb88  04 00 00 0a                                      beq #0x5dcba0
005dcb8c  00 30 90 e5                                      ldr r3, [r0]
005dcb90  01 30 43 e2                                      sub r3, r3, #1
005dcb94  00 00 53 e3                                      cmp r3, #0
005dcb98  00 30 80 e5                                      str r3, [r0]
005dcb9c  51 00 00 0a                                      beq #0x5dcce8
005dcba0  14 00 9d e5                                      ldr r0, [sp, #0x14]
005dcba4  00 00 50 e3                                      cmp r0, #0
005dcba8  04 00 00 0a                                      beq #0x5dcbc0
005dcbac  00 30 90 e5                                      ldr r3, [r0]
005dcbb0  01 30 43 e2                                      sub r3, r3, #1
005dcbb4  00 00 53 e3                                      cmp r3, #0
005dcbb8  00 30 80 e5                                      str r3, [r0]
005dcbbc  47 00 00 0a                                      beq #0x5dcce0
005dcbc0  00 00 58 e3                                      cmp r8, #0
005dcbc4  04 00 00 0a                                      beq #0x5dcbdc
005dcbc8  00 30 98 e5                                      ldr r3, [r8]
005dcbcc  01 30 43 e2                                      sub r3, r3, #1
005dcbd0  00 00 53 e3                                      cmp r3, #0
005dcbd4  00 30 88 e5                                      str r3, [r8]
005dcbd8  3a 00 00 0a                                      beq #0x5dccc8
005dcbdc  3c 30 dd e5                                      ldrb r3, [sp, #0x3c]
005dcbe0  00 00 53 e3                                      cmp r3, #0
005dcbe4  15 00 00 0a                                      beq #0x5dcc40
005dcbe8  50 30 96 e5                                      ldr r3, [r6, #0x50]
005dcbec  00 00 53 e3                                      cmp r3, #0
005dcbf0  38 20 9d 15                                      ldrne r2, [sp, #0x38]
005dcbf4  38 30 9d 05                                      ldreq r3, [sp, #0x38]
005dcbf8  14 20 82 12                                      addne r2, r2, #0x14
005dcbfc  10 20 83 15                                      strne r2, [r3, #0x10]
005dcc00  38 30 9d 15                                      ldrne r3, [sp, #0x38]
005dcc04  14 20 83 02                                      addeq r2, r3, #0x14
005dcc08  4c 20 86 05                                      streq r2, [r6, #0x4c]
005dcc0c  14 20 83 12                                      addne r2, r3, #0x14
005dcc10  50 20 86 e5                                      str r2, [r6, #0x50]
005dcc14  14 60 83 e2                                      add r6, r3, #0x14
005dcc18  00 00 9d e5                                      ldr r0, [sp]
005dcc1c  91 5d fd eb                                      bl #0x534268
005dcc20  05 30 94 e7                                      ldr r3, [r4, r5]
005dcc24  74 20 9d e5                                      ldr r2, [sp, #0x74]
005dcc28  06 00 a0 e1                                      mov r0, r6
005dcc2c  00 30 93 e5                                      ldr r3, [r3]
005dcc30  03 00 52 e1                                      cmp r2, r3
005dcc34  43 00 00 1a                                      bne #0x5dcd48
005dcc38  7c d0 8d e2                                      add sp, sp, #0x7c
005dcc3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005dcc40  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005dcc44  00 00 52 e3                                      cmp r2, #0
005dcc48  38 30 9d 05                                      ldreq r3, [sp, #0x38]
005dcc4c  f0 ff ff 0a                                      beq #0x5dcc14
005dcc50  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
005dcc54  5c 60 8d e2                                      add r6, sp, #0x5c
005dcc58  40 20 8d e2                                      add r2, sp, #0x40
005dcc5c  01 10 8f e0                                      add r1, pc, r1
005dcc60  06 00 a0 e1                                      mov r0, r6
005dcc64  f4 24 f5 eb                                      bl #0x32603c
005dcc68  00 20 97 e5                                      ldr r2, [r7]
005dcc6c  44 70 8d e2                                      add r7, sp, #0x44
005dcc70  07 00 a0 e1                                      mov r0, r7
005dcc74  00 00 52 e3                                      cmp r2, #0
005dcc78  04 20 82 12                                      addne r2, r2, #4
005dcc7c  06 10 a0 e1                                      mov r1, r6
005dcc80  0a 43 fe eb                                      bl #0x56d8b0
005dcc84  58 00 9d e5                                      ldr r0, [sp, #0x58]
005dcc88  03 10 a0 e3                                      mov r1, #3
005dcc8c  03 b8 00 eb                                      bl #0x60aca0
005dcc90  58 00 9d e5                                      ldr r0, [sp, #0x58]
005dcc94  07 00 50 e1                                      cmp r0, r7
005dcc98  02 00 00 0a                                      beq #0x5dcca8
005dcc9c  00 00 50 e3                                      cmp r0, #0
005dcca0  00 00 00 0a                                      beq #0x5dcca8
005dcca4  e9 cd f4 eb                                      bl #0x310450
005dcca8  70 00 9d e5                                      ldr r0, [sp, #0x70]
005dccac  06 00 50 e1                                      cmp r0, r6
005dccb0  22 00 00 0a                                      beq #0x5dcd40
005dccb4  00 00 50 e3                                      cmp r0, #0
005dccb8  20 00 00 0a                                      beq #0x5dcd40
005dccbc  e3 cd f4 eb                                      bl #0x310450
005dccc0  00 60 a0 e3                                      mov r6, #0
005dccc4  d3 ff ff ea                                      b #0x5dcc18
005dccc8  08 00 a0 e1                                      mov r0, r8
005dcccc  32 20 03 eb                                      bl #0x6a4d9c
005dccd0  3c 30 dd e5                                      ldrb r3, [sp, #0x3c]
005dccd4  00 00 53 e3                                      cmp r3, #0
005dccd8  d8 ff ff 0a                                      beq #0x5dcc40
005dccdc  c1 ff ff ea                                      b #0x5dcbe8
005dcce0  2d 20 03 eb                                      bl #0x6a4d9c
005dcce4  b5 ff ff ea                                      b #0x5dcbc0
005dcce8  2b 20 03 eb                                      bl #0x6a4d9c
005dccec  ab ff ff ea                                      b #0x5dcba0
005dccf0  1b 00 59 e3                                      cmp sb, #0x1b
005dccf4  64 ff ff ca                                      bgt #0x5dca8c
005dccf8  58 00 9f e5                                      ldr r0, [pc, #0x58]
005dccfc  03 10 a0 e3                                      mov r1, #3
005dcd00  00 60 a0 e3                                      mov r6, #0
005dcd04  00 00 8f e0                                      add r0, pc, r0
005dcd08  e4 b7 00 eb                                      bl #0x60aca0
005dcd0c  c3 ff ff ea                                      b #0x5dcc20
005dcd10  44 00 9f e5                                      ldr r0, [pc, #0x44]
005dcd14  03 10 a0 e3                                      mov r1, #3
005dcd18  00 60 a0 e3                                      mov r6, #0
005dcd1c  00 00 8f e0                                      add r0, pc, r0
005dcd20  de b7 00 eb                                      bl #0x60aca0
005dcd24  bd ff ff ea                                      b #0x5dcc20
005dcd28  30 00 9f e5                                      ldr r0, [pc, #0x30]
005dcd2c  03 10 a0 e3                                      mov r1, #3
005dcd30  00 60 a0 e3                                      mov r6, #0
005dcd34  00 00 8f e0                                      add r0, pc, r0
005dcd38  d8 b7 00 eb                                      bl #0x60aca0
005dcd3c  b7 ff ff ea                                      b #0x5dcc20
005dcd40  00 60 a0 e3                                      mov r6, #0
005dcd44  b3 ff ff ea                                      b #0x5dcc18
005dcd48  70 c5 f4 eb                                      bl #0x30e310
005dcd4c  40 80 3b 00 ac 40 00 00 34 42 30 00 d4 40 30 00  .byte 0x40, 0x80, 0x3b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0x42, 0x30, 0x00, 0xd4, 0x40, 0x30, 0x00
005dcd5c  04 41 30 00 1c 41 30 00                          .byte 0x04, 0x41, 0x30, 0x00, 0x1c, 0x41, 0x30, 0x00

; EXCERPT material_renderer_binding_array_construction va=0x005d32e0 size=172 source=glitch_video_CMaterialRenderer-a2aa4bc66635-001.asm
; purpose: write two 16-bit selectors per binding, with stage bit combined with shader parameter index
005d32e0  20 20 93 e5                                      ldr r2, [r3, #0x20]
005d32e4  05 10 8b e2                                      add r1, fp, #5
005d32e8  81 11 82 e0                                      add r1, r2, r1, lsl #3
005d32ec  b4 20 d1 e1                                      ldrh r2, [r1, #4]
005d32f0  b6 80 d1 e1                                      ldrh r8, [r1, #6]
005d32f4  02 00 58 e1                                      cmp r8, r2
005d32f8  27 00 00 9a                                      bls #0x5d339c
005d32fc  8b a7 a0 e1                                      lsl sl, fp, #0xf
005d3300  00 70 a0 e3                                      mov r7, #0
005d3304  7a a0 ff e6                                      uxth sl, sl
005d3308  02 60 a0 e1                                      mov r6, r2
005d330c  07 40 a0 e1                                      mov r4, r7
005d3310  0c 20 8d e5                                      str r2, [sp, #0xc]
005d3314  18 30 8d e5                                      str r3, [sp, #0x18]
005d3318  05 00 00 ea                                      b #0x5d3334
005d331c  01 60 86 e2                                      add r6, r6, #1
005d3320  76 60 ff e6                                      uxth r6, r6
005d3324  08 00 56 e1                                      cmp r6, r8
005d3328  04 40 84 e2                                      add r4, r4, #4
005d332c  02 70 87 e2                                      add r7, r7, #2
005d3330  11 00 00 2a                                      bhs #0x5d337c
005d3334  b7 10 99 e1                                      ldrh r1, [sb, r7]
005d3338  06 30 8a e1                                      orr r3, sl, r6
005d333c  04 20 85 e0                                      add r2, r5, r4
005d3340  02 09 11 e3                                      tst r1, #0x8000
005d3344  b2 10 c2 e1                                      strh r1, [r2, #2]
005d3348  b4 30 85 e1                                      strh r3, [r5, r4]
005d334c  f2 ff ff 0a                                      beq #0x5d331c
005d3350  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005d3354  81 18 a0 e1                                      lsl r1, r1, #0x11
005d3358  01 60 86 e2                                      add r6, r6, #1
005d335c  e4 00 9c e5                                      ldr r0, [ip, #0xe4]
005d3360  a1 18 a0 e1                                      lsr r1, r1, #0x11
005d3364  76 60 ff e6                                      uxth r6, r6
005d3368  6f 9a ff eb                                      bl #0x5b9d2c
005d336c  08 00 56 e1                                      cmp r6, r8
005d3370  04 40 84 e2                                      add r4, r4, #4
005d3374  02 70 87 e2                                      add r7, r7, #2
005d3378  ed ff ff 3a                                      blo #0x5d3334
005d337c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005d3380  18 30 9d e5                                      ldr r3, [sp, #0x18]
005d3384  02 20 e0 e1                                      mvn r2, r2
005d3388  02 20 88 e0                                      add r2, r8, r2

; EXCERPT material_renderer_finalization_autobind_call va=0x005de114 size=80 source=glitch_video_CMaterialRendererManager-a4bf824a9f3f-001.asm
; purpose: finalization loop invokes autoAddAndBindParameter
005de114  12 30 43 e2                                      sub r3, r3, #0x12
005de118  0e 00 53 e3                                      cmp r3, #0xe
005de11c  7c 01 00 8a                                      bhi #0x5de714
005de120  00 e0 a0 e3                                      mov lr, #0
005de124  04 e0 8d e5                                      str lr, [sp, #4]
005de128  24 e0 9d e5                                      ldr lr, [sp, #0x24]
005de12c  30 30 9d e5                                      ldr r3, [sp, #0x30]
005de130  44 00 9d e5                                      ldr r0, [sp, #0x44]
005de134  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005de138  04 20 a0 e1                                      mov r2, r4
005de13c  18 c0 8d e5                                      str ip, [sp, #0x18]
005de140  00 e0 8d e5                                      str lr, [sp]
005de144  41 fc ff eb                                      bl #0x5dd250
005de148  05 30 d9 e7                                      ldrb r3, [sb, r5]
005de14c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de150  00 00 53 e3                                      cmp r3, #0
005de154  da ff ff 1a                                      bne #0x5de0c4
005de158  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005de15c  04 b0 90 e5                                      ldr fp, [r0, #4]
005de160  9a ff ff ea                                      b #0x5ddfd0

; EXCERPT material_parameter_commit_selector_decode va=0x005b4df8 size=80 source=void_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHandler-30fe099cd72a-001.asm
; purpose: decode two selector halfwords and select material and reflected shader descriptors
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

; RANGE shader_parameter_name_type_classifier va=0x005e2284 size=9492 source=glitch_video-aadc65bf0959-001.asm
; Full function bytes are mapped and hashed in the manifest; relevant call sites appear in the adjacent function listings.
