; Selected original ARM rows for the DH2 material vec4 uniform trace.
; Each function's full range and PT_LOAD hash are in ../uniform-ranges.json.
; These rows were checked byte-for-byte against the APK ELF PT_LOAD slices.

; EXCERPT set_material_internal va=0x005aa52c size=16 source=glitch_video_IVideoDriver-128257112762-001.asm
005aa52c  e8 30 84 e5                                      str r3, [r4, #0xe8]
005aa530  00 00 51 e1                                      cmp r1, r0
005aa534  ec 10 84 e5                                      str r1, [r4, #0xec]
005aa538  f8 20 c4 e5                                      strb r2, [r4, #0xf8]

; EXCERPT linked_shader_uniform_reflection va=0x006dece8 size=284 source=glitch_video_CGLSLShader-48e3be0db2af-001.asm
006dece8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006decec  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006decf0  08 10 a0 e1                                      mov r1, r8
006decf4  00 c0 8d e5                                      str ip, [sp]
006decf8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006decfc  00 30 a0 e3                                      mov r3, #0
006ded00  34 20 9d e5                                      ldr r2, [sp, #0x34]
006ded04  04 c0 8d e5                                      str ip, [sp, #4]
006ded08  08 60 8d e5                                      str r6, [sp, #8]
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
006dedf4  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006dedf8  01 80 88 e2                                      add r8, r8, #1
006dedfc  10 50 85 e2                                      add r5, r5, #0x10
006dee00  08 00 51 e1                                      cmp r1, r8

; EXCERPT cmaterial_vec4_parameter_write va=0x005c9d3c size=192 source=boost_enable_if_glitch_video_detail_SIsValidSetMaterialParamaterOverload_glitch_core_vecto-427b9132ac06-001.asm
005c9d3c  10 40 2d e9                                      push {r4, lr}
005c9d40  04 c0 90 e5                                      ldr ip, [r0, #4]
005c9d44  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c9d48  01 00 54 e1                                      cmp r4, r1
005c9d4c  05 00 00 9a                                      bls #0x5c9d68
005c9d50  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c9d54  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c9d58  02 00 00 0a                                      beq #0x5c9d68
005c9d5c  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c9d60  08 00 5c e3                                      cmp ip, #8
005c9d64  01 00 00 0a                                      beq #0x5c9d70
005c9d68  00 00 a0 e3                                      mov r0, #0
005c9d6c  10 80 bd e8                                      pop {r4, pc}
005c9d70  00 c0 e0 e3                                      mvn ip, #0
005c9d74  00 00 53 e3                                      cmp r3, #0
005c9d78  10 00 53 13                                      cmpne r3, #0x10
005c9d7c  0c c0 80 e5                                      str ip, [r0, #0xc]
005c9d80  10 c0 80 e5                                      str ip, [r0, #0x10]
005c9d84  13 00 00 0a                                      beq #0x5c9dd8
005c9d88  08 c0 91 e5                                      ldr ip, [r1, #8]
005c9d8c  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c9d90  00 00 5c e3                                      cmp ip, #0
005c9d94  0d 00 00 0a                                      beq #0x5c9dd0
005c9d98  20 00 80 e2                                      add r0, r0, #0x20
005c9d9c  01 00 80 e0                                      add r0, r0, r1
005c9da0  00 10 92 e5                                      ldr r1, [r2]
005c9da4  01 c0 5c e2                                      subs ip, ip, #1
005c9da8  00 10 80 e5                                      str r1, [r0]
005c9dac  04 10 92 e5                                      ldr r1, [r2, #4]
005c9db0  04 10 80 e5                                      str r1, [r0, #4]
005c9db4  08 10 92 e5                                      ldr r1, [r2, #8]
005c9db8  08 10 80 e5                                      str r1, [r0, #8]
005c9dbc  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005c9dc0  03 20 82 e0                                      add r2, r2, r3
005c9dc4  0c 10 80 e5                                      str r1, [r0, #0xc]
005c9dc8  10 00 80 e2                                      add r0, r0, #0x10
005c9dcc  f3 ff ff 1a                                      bne #0x5c9da0
005c9dd0  01 00 a0 e3                                      mov r0, #1
005c9dd4  10 80 bd e8                                      pop {r4, pc}
005c9dd8  08 30 91 e5                                      ldr r3, [r1, #8]
005c9ddc  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c9de0  20 00 80 e2                                      add r0, r0, #0x20
005c9de4  02 10 a0 e1                                      mov r1, r2
005c9de8  0c 00 80 e0                                      add r0, r0, ip
005c9dec  03 22 a0 e1                                      lsl r2, r3, #4
005c9df0  9c 12 f5 eb                                      bl #0x30e868
005c9df4  01 00 a0 e3                                      mov r0, #1
005c9df8  10 80 bd e8                                      pop {r4, pc}

; EXCERPT current_material_commit va=0x005b74e8 size=172 source=glitch_video_CCommonGLDriver_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHa-569492699322-001.asm
005b74e8  70 40 2d e9                                      push {r4, r5, r6, lr}
005b74ec  00 40 a0 e1                                      mov r4, r0
005b74f0  01 50 a0 e1                                      mov r5, r1
005b74f4  05 20 a0 e1                                      mov r2, r5
005b74f8  ec 00 90 e5                                      ldr r0, [r0, #0xec]
005b74fc  f8 10 d4 e5                                      ldrb r1, [r4, #0xf8]
005b7500  04 30 a0 e1                                      mov r3, r4
005b7504  08 d0 4d e2                                      sub sp, sp, #8
005b7508  b4 ff ff eb                                      bl #0x5b73e0
005b750c  ec 30 94 e5                                      ldr r3, [r4, #0xec]
005b7510  34 10 a0 e3                                      mov r1, #0x34
005b7514  91 05 05 e0                                      mul r5, r1, r5
005b7518  04 30 93 e5                                      ldr r3, [r3, #4]
005b751c  f8 20 d4 e5                                      ldrb r2, [r4, #0xf8]
005b7520  0c 00 a0 e3                                      mov r0, #0xc
005b7524  18 10 93 e5                                      ldr r1, [r3, #0x18]
005b7528  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
005b752c  90 12 22 e0                                      mla r2, r0, r2, r1
005b7530  08 20 92 e5                                      ldr r2, [r2, #8]
005b7534  05 20 82 e0                                      add r2, r2, r5
005b7538  20 60 92 e5                                      ldr r6, [r2, #0x20]
005b753c  03 00 56 e1                                      cmp r6, r3
005b7540  02 00 00 0a                                      beq #0x5b7550
005b7544  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
005b7548  db 5c f5 eb                                      bl #0x30e8bc
005b754c  f4 60 84 e5                                      str r6, [r4, #0xf4]
005b7550  ec 20 94 e5                                      ldr r2, [r4, #0xec]
005b7554  f8 30 d4 e5                                      ldrb r3, [r4, #0xf8]
005b7558  0c e0 a0 e3                                      mov lr, #0xc
005b755c  04 c0 92 e5                                      ldr ip, [r2, #4]
005b7560  f4 10 94 e5                                      ldr r1, [r4, #0xf4]
005b7564  04 00 a0 e1                                      mov r0, r4
005b7568  18 c0 9c e5                                      ldr ip, [ip, #0x18]
005b756c  9e c3 23 e0                                      mla r3, lr, r3, ip
005b7570  08 30 93 e5                                      ldr r3, [r3, #8]
005b7574  05 50 83 e0                                      add r5, r3, r5
005b7578  bc c2 d5 e1                                      ldrh ip, [r5, #0x2c]
005b757c  28 30 95 e5                                      ldr r3, [r5, #0x28]
005b7580  0c c1 83 e0                                      add ip, r3, ip, lsl #2
005b7584  00 c0 8d e5                                      str ip, [sp]
005b7588  04 f6 ff eb                                      bl #0x5b4da0
005b758c  08 d0 8d e2                                      add sp, sp, #8
005b7590  70 80 bd e8                                      pop {r4, r5, r6, pc}

; EXCERPT cmaterial_parameter_uniform_commit va=0x005b4da0 size=528 source=void_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHandler-30fe099cd72a-001.asm
005b4da0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b4da4  44 d0 4d e2                                      sub sp, sp, #0x44
005b4da8  04 20 8d e5                                      str r2, [sp, #4]
005b4dac  68 20 9d e5                                      ldr r2, [sp, #0x68]
005b4db0  7c c5 9f e5                                      ldr ip, [pc, #0x57c]
005b4db4  03 40 a0 e1                                      mov r4, r3
005b4db8  02 00 53 e1                                      cmp r3, r2
005b4dbc  04 30 9d e5                                      ldr r3, [sp, #4]
005b4dc0  0c c0 8f e0                                      add ip, pc, ip
005b4dc4  14 c0 8d e5                                      str ip, [sp, #0x14]
005b4dc8  1c 00 8d e5                                      str r0, [sp, #0x1c]
005b4dcc  08 10 8d e5                                      str r1, [sp, #8]
005b4dd0  20 70 83 e2                                      add r7, r3, #0x20
005b4dd4  6b 00 00 0a                                      beq #0x5b4f88
005b4dd8  58 c5 9f e5                                      ldr ip, [pc, #0x558]
005b4ddc  58 15 9f e5                                      ldr r1, [pc, #0x558]
005b4de0  00 20 a0 e3                                      mov r2, #0
005b4de4  30 30 8d e2                                      add r3, sp, #0x30
005b4de8  20 c0 8d e5                                      str ip, [sp, #0x20]
005b4dec  2c 10 8d e5                                      str r1, [sp, #0x2c]
005b4df0  18 20 8d e5                                      str r2, [sp, #0x18]
005b4df4  10 30 8d e5                                      str r3, [sp, #0x10]
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
005b4e48  4a 00 00 ea                                      b #0x5b4f78
005b4e4c  fd 00 00 ea                                      b #0x5b5248
005b4e50  f2 00 00 ea                                      b #0x5b5220
005b4e54  e7 00 00 ea                                      b #0x5b51f8
005b4e58  dc 00 00 ea                                      b #0x5b51d0
005b4e5c  d1 00 00 ea                                      b #0x5b51a8
005b4e60  c6 00 00 ea                                      b #0x5b5180
005b4e64  bb 00 00 ea                                      b #0x5b5158
005b4e68  48 00 00 ea                                      b #0x5b4f90
005b4e6c  41 00 00 ea                                      b #0x5b4f78
005b4e70  40 00 00 ea                                      b #0x5b4f78
005b4e74  8a 00 00 ea                                      b #0x5b50a4
005b4e78  5c 00 00 ea                                      b #0x5b4ff0
005b4e7c  5b 00 00 ea                                      b #0x5b4ff0
005b4e80  5a 00 00 ea                                      b #0x5b4ff0
005b4e84  59 00 00 ea                                      b #0x5b4ff0
005b4e88  01 00 00 ea                                      b #0x5b4e94
005b4e8c  42 00 00 ea                                      b #0x5b4f9c
005b4e90  4b 00 00 ea                                      b #0x5b4fc4
005b4e94  08 10 96 e5                                      ldr r1, [r6, #8]
005b4e98  01 02 a0 e1                                      lsl r0, r1, #4
005b4e9c  0c 10 8d e5                                      str r1, [sp, #0xc]
005b4ea0  d3 fd fd eb                                      bl #0x5345f4
005b4ea4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b4ea8  00 80 a0 e1                                      mov r8, r0
005b4eac  00 00 52 e3                                      cmp r2, #0
005b4eb0  28 00 00 0a                                      beq #0x5b4f58
005b4eb4  00 a0 a0 e3                                      mov sl, #0
005b4eb8  24 60 8d e5                                      str r6, [sp, #0x24]
005b4ebc  28 40 8d e5                                      str r4, [sp, #0x28]
005b4ec0  0c 60 95 e5                                      ldr r6, [r5, #0xc]
005b4ec4  0a 42 88 e0                                      add r4, r8, sl, lsl #4
005b4ec8  06 00 d7 e7                                      ldrb r0, [r7, r6]
005b4ecc  a4 66 f5 eb                                      bl #0x30e964
005b4ed0  81 10 08 e3                                      movw r1, #0x8081
005b4ed4  80 1b 43 e3                                      movt r1, #0x3b80
005b4ed8  a3 67 f5 eb                                      bl #0x30ed6c
005b4edc  06 60 87 e0                                      add r6, r7, r6
005b4ee0  00 30 a0 e1                                      mov r3, r0
005b4ee4  01 00 d6 e5                                      ldrb r0, [r6, #1]
005b4ee8  00 30 8d e5                                      str r3, [sp]
005b4eec  9c 66 f5 eb                                      bl #0x30e964
005b4ef0  81 10 08 e3                                      movw r1, #0x8081
005b4ef4  80 1b 43 e3                                      movt r1, #0x3b80
005b4ef8  9b 67 f5 eb                                      bl #0x30ed6c
005b4efc  00 b0 a0 e1                                      mov fp, r0
005b4f00  02 00 d6 e5                                      ldrb r0, [r6, #2]
005b4f04  96 66 f5 eb                                      bl #0x30e964
005b4f08  81 10 08 e3                                      movw r1, #0x8081
005b4f0c  80 1b 43 e3                                      movt r1, #0x3b80
005b4f10  95 67 f5 eb                                      bl #0x30ed6c
005b4f14  00 90 a0 e1                                      mov sb, r0
005b4f18  03 00 d6 e5                                      ldrb r0, [r6, #3]
005b4f1c  90 66 f5 eb                                      bl #0x30e964
005b4f20  81 10 08 e3                                      movw r1, #0x8081
005b4f24  80 1b 43 e3                                      movt r1, #0x3b80
005b4f28  8f 67 f5 eb                                      bl #0x30ed6c
005b4f2c  04 b0 84 e5                                      str fp, [r4, #4]
005b4f30  0c 00 84 e5                                      str r0, [r4, #0xc]
005b4f34  08 90 84 e5                                      str sb, [r4, #8]
005b4f38  00 30 9d e5                                      ldr r3, [sp]
005b4f3c  0a 32 88 e7                                      str r3, [r8, sl, lsl #4]
005b4f40  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005b4f44  01 a0 8a e2                                      add sl, sl, #1
005b4f48  03 00 5a e1                                      cmp sl, r3
005b4f4c  db ff ff 1a                                      bne #0x5b4ec0
005b4f50  24 60 9d e5                                      ldr r6, [sp, #0x24]
005b4f54  28 40 9d e5                                      ldr r4, [sp, #0x28]
005b4f58  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b4f5c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005b4f60  08 20 a0 e1                                      mov r2, r8
005b4f64  8d 66 f5 eb                                      bl #0x30e9a0
005b4f68  00 00 58 e3                                      cmp r8, #0
005b4f6c  01 00 00 0a                                      beq #0x5b4f78
005b4f70  08 00 a0 e1                                      mov r0, r8
005b4f74  c3 fd fd eb                                      bl #0x534688
005b4f78  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b4f7c  04 40 84 e2                                      add r4, r4, #4
005b4f80  04 00 5c e1                                      cmp ip, r4
005b4f84  9b ff ff 1a                                      bne #0x5b4df8
005b4f88  44 d0 8d e2                                      add sp, sp, #0x44
005b4f8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b4f90  b4 30 d6 e1                                      ldrh r3, [r6, #4]
005b4f94  11 00 53 e3                                      cmp r3, #0x11
005b4f98  c3 00 00 0a                                      beq #0x5b52ac
005b4f9c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005b4fa0  08 10 96 e5                                      ldr r1, [r6, #8]
005b4fa4  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b4fa8  02 20 87 e0                                      add r2, r7, r2
005b4fac  7b 66 f5 eb                                      bl #0x30e9a0

; PLT glGetActiveUniform va=0x0030e6d0 size=12 call_sites=0x006ded0c
0030e6d0  06 c6 8f e2                                     add r12, pc, #6291456
0030e6d4  86 ca 8c e2                                     add r12, r12, #548864
0030e6d8  e4 f6 bc e5                                     ldr pc, [r12, #0x6e4]!

; PLT glGetUniformLocation va=0x0030e13c size=12 call_sites=0x006ded84
0030e13c  06 c6 8f e2                                     add r12, pc, #6291456
0030e140  86 ca 8c e2                                     add r12, r12, #548864
0030e144  9c fa bc e5                                     ldr pc, [r12, #0xa9c]!

; PLT glUseProgram va=0x0030e8bc size=12 call_sites=0x005b7548
0030e8bc  06 c6 8f e2                                     add r12, pc, #6291456
0030e8c0  86 ca 8c e2                                     add r12, r12, #548864
0030e8c4  9c f5 bc e5                                     ldr pc, [r12, #0x59c]!

; PLT glUniform4fv va=0x0030e9a0 size=12 call_sites=0x005b4fac
0030e9a0  06 c6 8f e2                                     add r12, pc, #6291456
0030e9a4  86 ca 8c e2                                     add r12, r12, #548864
0030e9a8  04 f5 bc e5                                     ldr pc, [r12, #0x504]!
