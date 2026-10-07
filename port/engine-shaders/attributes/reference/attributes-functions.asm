; Source: lib/armeabi-v7a/libDungeonHunter2.so from APK SHA-256 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; PT_LOAD segment 0 maps file offset to ELF VA directly for every range below.
; ARM32 little-endian code bytes are written in file order; .word rows are literal pool data.

; FUNCTION key=shader_link_attribute_reflection
; symbol=glitch::video::CGLSLShader::linkProgram()
; mangled=_ZN6glitch5video11CGLSLShader11linkProgramEv
; elf_va=0x006de9f8 range_size=1444 file_offset=7203320 sha256=28361c0616a3366900ac7a3dc1c7b5bc77857fb68bb4a3ec4e55529bc4d1d830
; decoder_mode=arm
006de9f8  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
006de9fc  00 40 a0 e1  mov	r4, r0
006dea00  4c d0 4d e2  sub	sp, sp, #76
006dea04  4c 00 90 e5  ldr	r0, [r0, #0x4c]
006dea08  da c0 f0 eb  bl	0x30ed78 <glLinkProgram@plt> @ imm = #-0x3cfc98
006dea0c  00 60 a0 e3  mov	r6, #0
006dea10  48 20 8d e2  add	r2, sp, #72
006dea14  04 60 22 e5  str	r6, [r2, #-0x4]!
006dea18  4c 00 94 e5  ldr	r0, [r4, #0x4c]
006dea1c  82 1b 08 e3  movw	r1, #0x8b82
006dea20  19 be f0 eb  bl	0x30e28c <glGetProgramiv@plt> @ imm = #-0x3d079c
006dea24  44 50 9d e5  ldr	r5, [sp, #0x44]
006dea28  06 00 55 e1  cmp	r5, r6
006dea2c  1a 00 00 1a  bne	0x6dea9c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0xa4> @ imm = #0x68
006dea30  48 20 8d e2  add	r2, sp, #72
006dea34  1c 50 22 e5  str	r5, [r2, #-0x1c]!
006dea38  84 1b 08 e3  movw	r1, #0x8b84
006dea3c  4c 00 94 e5  ldr	r0, [r4, #0x4c]
006dea40  11 be f0 eb  bl	0x30e28c <glGetProgramiv@plt> @ imm = #-0x3d07bc
006dea44  2c 00 9d e5  ldr	r0, [sp, #0x2c]
006dea48  e9 56 f9 eb  bl	0x5345f4 <_ZN6glitch4core18allocProcessBufferEi> @ imm = #-0x1aa45c
006dea4c  00 60 a0 e1  mov	r6, r0
006dea50  2c 10 9d e5  ldr	r1, [sp, #0x2c]
006dea54  4c 00 94 e5  ldr	r0, [r4, #0x4c]
006dea58  30 20 8d e2  add	r2, sp, #48
006dea5c  06 30 a0 e1  mov	r3, r6
006dea60  eb bd f0 eb  bl	0x30e214 <glGetProgramInfoLog@plt> @ imm = #-0x3d0854
006dea64  24 15 9f e5  ldr	r1, [pc, #0x524]        @ 0x6def90 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x598>
006dea68  03 00 a0 e3  mov	r0, #3
006dea6c  20 20 94 e5  ldr	r2, [r4, #0x20]
006dea70  01 10 8f e0  add	r1, pc, r1
006dea74  06 30 a0 e1  mov	r3, r6
006dea78  6d b1 fc eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #-0xd3a4c
006dea7c  00 00 56 e3  cmp	r6, #0
006dea80  3e 50 c4 e5  strb	r5, [r4, #0x3e]
006dea84  ee 00 00 0a  beq	0x6dee44 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x44c> @ imm = #0x3b8
006dea88  06 00 a0 e1  mov	r0, r6
006dea8c  fd 56 f9 eb  bl	0x534688 <_ZN6glitch4core20releaseProcessBufferEPv> @ imm = #-0x1aa40c
006dea90  05 00 a0 e1  mov	r0, r5
006dea94  4c d0 8d e2  add	sp, sp, #76
006dea98  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
006dea9c  48 70 8d e2  add	r7, sp, #72
006deaa0  18 60 27 e5  str	r6, [r7, #-0x18]!
006deaa4  4c 00 94 e5  ldr	r0, [r4, #0x4c]
006deaa8  84 1b 08 e3  movw	r1, #0x8b84
006deaac  07 20 a0 e1  mov	r2, r7
006deab0  f5 bd f0 eb  bl	0x30e28c <glGetProgramiv@plt> @ imm = #-0x3d082c
006deab4  30 00 9d e5  ldr	r0, [sp, #0x30]
006deab8  01 00 50 e3  cmp	r0, #1
006deabc  0a 00 00 da  ble	0x6deaec <_ZN6glitch5video11CGLSLShader11linkProgramEv+0xf4> @ imm = #0x28
006deac0  cb 56 f9 eb  bl	0x5345f4 <_ZN6glitch4core18allocProcessBufferEi> @ imm = #-0x1aa4d4
006deac4  00 50 a0 e1  mov	r5, r0
006deac8  30 10 9d e5  ldr	r1, [sp, #0x30]
006deacc  4c 00 94 e5  ldr	r0, [r4, #0x4c]
006dead0  2c 20 8d e2  add	r2, sp, #44
006dead4  05 30 a0 e1  mov	r3, r5
006dead8  cd bd f0 eb  bl	0x30e214 <glGetProgramInfoLog@plt> @ imm = #-0x3d08cc
006deadc  00 00 55 e3  cmp	r5, #0
006deae0  01 00 00 0a  beq	0x6deaec <_ZN6glitch5video11CGLSLShader11linkProgramEv+0xf4> @ imm = #0x4
006deae4  05 00 a0 e1  mov	r0, r5
006deae8  e6 56 f9 eb  bl	0x534688 <_ZN6glitch4core20releaseProcessBufferEPv> @ imm = #-0x1aa468
006deaec  00 50 a0 e3  mov	r5, #0
006deaf0  48 20 8d e2  add	r2, sp, #72
006deaf4  08 50 22 e5  str	r5, [r2, #-0x8]!
006deaf8  4c 00 94 e5  ldr	r0, [r4, #0x4c]
006deafc  89 1b 08 e3  movw	r1, #0x8b89
006deb00  e1 bd f0 eb  bl	0x30e28c <glGetProgramiv@plt> @ imm = #-0x3d087c
006deb04  48 20 8d e2  add	r2, sp, #72
006deb08  0c 50 22 e5  str	r5, [r2, #-0xc]!
006deb0c  86 1b 08 e3  movw	r1, #0x8b86
006deb10  4c 00 94 e5  ldr	r0, [r4, #0x4c]
006deb14  dc bd f0 eb  bl	0x30e28c <glGetProgramiv@plt> @ imm = #-0x3d0890
006deb18  04 00 a0 e1  mov	r0, r4
006deb1c  80 ff ff eb  bl	0x6de924 <_ZN6glitch5video11CGLSLShader10deleteInfoEv> @ imm = #-0x200
006deb20  48 20 8d e2  add	r2, sp, #72
006deb24  10 50 22 e5  str	r5, [r2, #-0x10]!
006deb28  4c 00 94 e5  ldr	r0, [r4, #0x4c]
006deb2c  8a 1b 08 e3  movw	r1, #0x8b8a
006deb30  d5 bd f0 eb  bl	0x30e28c <glGetProgramiv@plt> @ imm = #-0x3d08ac
006deb34  3c 30 9d e5  ldr	r3, [sp, #0x3c]
006deb38  05 00 53 e1  cmp	r3, r5
006deb3c  02 00 00 da  ble	0x6deb4c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x154> @ imm = #0x8
006deb40  38 60 9d e5  ldr	r6, [sp, #0x38]
006deb44  05 00 56 e1  cmp	r6, r5
006deb48  b8 00 00 0a  beq	0x6dee30 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x438> @ imm = #0x2e0
006deb4c  48 20 8d e2  add	r2, sp, #72
006deb50  00 50 a0 e3  mov	r5, #0
006deb54  14 50 22 e5  str	r5, [r2, #-0x14]!
006deb58  4c 00 94 e5  ldr	r0, [r4, #0x4c]
006deb5c  87 1b 08 e3  movw	r1, #0x8b87
006deb60  c9 bd f0 eb  bl	0x30e28c <glGetProgramiv@plt> @ imm = #-0x3d08dc
006deb64  34 60 9d e5  ldr	r6, [sp, #0x34]
006deb68  05 00 56 e1  cmp	r6, r5
006deb6c  de 00 00 0a  beq	0x6deeec <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x4f4> @ imm = #0x378
006deb70  40 30 9d e5  ldr	r3, [sp, #0x40]
006deb74  3c 00 9d e5  ldr	r0, [sp, #0x3c]
006deb78  05 10 a0 e1  mov	r1, r5
006deb7c  83 31 a0 e1  lsl	r3, r3, #3
006deb80  00 02 83 e0  add	r0, r3, r0, lsl #4
006deb84  1c 30 8d e5  str	r3, [sp, #0x1c]
006deb88  86 55 f9 eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x1aa9e8
006deb8c  18 00 8d e5  str	r0, [sp, #0x18]
006deb90  40 30 9d e5  ldr	r3, [sp, #0x40]
006deb94  38 00 9d e5  ldr	r0, [sp, #0x38]
006deb98  18 10 9d e5  ldr	r1, [sp, #0x18]
006deb9c  3c 30 c4 e5  strb	r3, [r4, #0x3c]
006deba0  01 00 80 e2  add	r0, r0, #1
006deba4  24 10 84 e5  str	r1, [r4, #0x24]
006deba8  91 56 f9 eb  bl	0x5345f4 <_ZN6glitch4core18allocProcessBufferEi> @ imm = #-0x1aa5bc
006debac  40 30 9d e5  ldr	r3, [sp, #0x40]
006debb0  00 60 a0 e1  mov	r6, r0
006debb4  00 00 53 e3  cmp	r3, #0
006debb8  2f 00 00 da  ble	0x6dec7c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x284> @ imm = #0xbc
006debbc  2c a0 8d e2  add	r10, sp, #44
006debc0  01 80 a0 e3  mov	r8, #1
006debc4  06 00 00 ea  b	0x6debe4 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x1ec> @ imm = #0x18
006debc8  38 30 94 e5  ldr	r3, [r4, #0x38]
006debcc  01 50 85 e2  add	r5, r5, #1
006debd0  18 99 83 e1  orr	r9, r3, r8, lsl r9
006debd4  40 30 9d e5  ldr	r3, [sp, #0x40]
006debd8  38 90 84 e5  str	r9, [r4, #0x38]
006debdc  05 00 53 e1  cmp	r3, r5
006debe0  25 00 00 da  ble	0x6dec7c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x284> @ imm = #0x94
006debe4  4c 00 94 e5  ldr	r0, [r4, #0x4c]
006debe8  05 10 a0 e1  mov	r1, r5
006debec  38 20 9d e5  ldr	r2, [sp, #0x38]
006debf0  00 30 a0 e3  mov	r3, #0
006debf4  00 a0 8d e5  str	r10, [sp]
006debf8  04 70 8d e5  str	r7, [sp, #0x4]
006debfc  08 60 8d e5  str	r6, [sp, #0x8]
006dec00  05 bd f0 eb  bl	0x30e01c <glGetActiveAttrib@plt> @ imm = #-0x3d0bec
006dec04  06 00 a0 e1  mov	r0, r6
006dec08  d0 f3 ff eb  bl	0x6dbb50 <_ZN6glitch5video26guessShaderVertexAttributeEPKc> @ imm = #-0x30c0
006dec0c  1d 00 50 e3  cmp	r0, #29
006dec10  00 90 a0 e1  mov	r9, r0
006dec14  eb ff ff ca  bgt	0x6debc8 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x1d0> @ imm = #-0x54
006dec18  06 10 a0 e1  mov	r1, r6
006dec1c  4c 00 94 e5  ldr	r0, [r4, #0x4c]
006dec20  c5 be f0 eb  bl	0x30e73c <glGetAttribLocation@plt> @ imm = #-0x3d04ec
006dec24  01 10 a0 e3  mov	r1, #1
006dec28  70 30 ff e6  uxth	r3, r0
006dec2c  06 00 a0 e1  mov	r0, r6
006dec30  24 b0 94 e5  ldr	r11, [r4, #0x24]
006dec34  14 30 8d e5  str	r3, [sp, #0x14]
006dec38  0d 19 ff eb  bl	0x6a5074 <_ZN6glitch4core6detail22SSharedStringHeapEntry5SData3getEPKcb> @ imm = #-0x39bcc
006dec3c  85 01 8b e7  str	r0, [r11, r5, lsl #3]
006dec40  00 00 50 e3  cmp	r0, #0
006dec44  00 20 90 15  ldrne	r2, [r0]
006dec48  14 30 9d e5  ldr	r3, [sp, #0x14]
006dec4c  85 b1 8b e0  add	r11, r11, r5, lsl #3
006dec50  01 20 82 12  addne	r2, r2, #1
006dec54  00 20 80 15  strne	r2, [r0]
006dec58  b4 90 cb e1  strh	r9, [r11, #4]
006dec5c  b6 30 cb e1  strh	r3, [r11, #6]
006dec60  38 30 94 e5  ldr	r3, [r4, #0x38]
006dec64  01 50 85 e2  add	r5, r5, #1
006dec68  18 99 83 e1  orr	r9, r3, r8, lsl r9
006dec6c  40 30 9d e5  ldr	r3, [sp, #0x40]
006dec70  38 90 84 e5  str	r9, [r4, #0x38]
006dec74  05 00 53 e1  cmp	r3, r5
006dec78  d9 ff ff ca  bgt	0x6debe4 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x1ec> @ imm = #-0x9c
006dec7c  00 00 56 e3  cmp	r6, #0
006dec80  01 00 00 0a  beq	0x6dec8c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x294> @ imm = #0x4
006dec84  06 00 a0 e1  mov	r0, r6
006dec88  7e 56 f9 eb  bl	0x534688 <_ZN6glitch4core20releaseProcessBufferEPv> @ imm = #-0x1aa608
006dec8c  3c 30 9d e5  ldr	r3, [sp, #0x3c]
006dec90  00 00 53 e3  cmp	r3, #0
006dec94  63 00 00 0a  beq	0x6dee28 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x430> @ imm = #0x18c
006dec98  18 20 9d e5  ldr	r2, [sp, #0x18]
006dec9c  1c c0 9d e5  ldr	r12, [sp, #0x1c]
006deca0  34 00 9d e5  ldr	r0, [sp, #0x34]
006deca4  0c 20 82 e0  add	r2, r2, r12
006deca8  24 20 8d e5  str	r2, [sp, #0x24]
006decac  01 00 80 e2  add	r0, r0, #1
006decb0  be 32 c4 e1  strh	r3, [r4, #46]
006decb4  28 20 84 e5  str	r2, [r4, #0x28]
006decb8  4d 56 f9 eb  bl	0x5345f4 <_ZN6glitch4core18allocProcessBufferEi> @ imm = #-0x1aa6cc
006decbc  3c 10 9d e5  ldr	r1, [sp, #0x3c]
006decc0  00 30 e0 e3  mvn	r3, #0
006decc4  00 60 a0 e1  mov	r6, r0
006decc8  00 00 51 e3  cmp	r1, #0
006deccc  3d 30 c4 e5  strb	r3, [r4, #0x3d]
006decd0  4c 00 00 da  ble	0x6dee08 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x410> @ imm = #0x130
006decd4  24 50 9d e5  ldr	r5, [sp, #0x24]
006decd8  2c a0 8d e2  add	r10, sp, #44
006decdc  00 80 a0 e3  mov	r8, #0
006dece0  1c a0 8d e5  str	r10, [sp, #0x1c]
006dece4  20 70 8d e5  str	r7, [sp, #0x20]
006dece8  20 c0 9d e5  ldr	r12, [sp, #0x20]
006decec  4c 00 94 e5  ldr	r0, [r4, #0x4c]
006decf0  08 10 a0 e1  mov	r1, r8
006decf4  00 c0 8d e5  str	r12, [sp]
006decf8  1c c0 9d e5  ldr	r12, [sp, #0x1c]
006decfc  00 30 a0 e3  mov	r3, #0
006ded00  34 20 9d e5  ldr	r2, [sp, #0x34]
006ded04  04 c0 8d e5  str	r12, [sp, #0x4]
006ded08  08 60 8d e5  str	r6, [sp, #0x8]
006ded0c  6f be f0 eb  bl	0x30e6d0 <glGetActiveUniform@plt> @ imm = #-0x3d0644
006ded10  2c 30 9d e5  ldr	r3, [sp, #0x2c]
006ded14  57 1b 08 e3  movw	r1, #0x8b57
006ded18  01 00 53 e1  cmp	r3, r1
006ded1c  85 00 00 0a  beq	0x6def38 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x540> @ imm = #0x214
006ded20  55 00 00 8a  bhi	0x6dee7c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x484> @ imm = #0x154
006ded24  52 2b 08 e3  movw	r2, #0x8b52
006ded28  02 00 53 e1  cmp	r3, r2
006ded2c  08 90 a0 03  moveq	r9, #8
006ded30  09 00 00 0a  beq	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #0x24
006ded34  44 00 00 8a  bhi	0x6dee4c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x454> @ imm = #0x110
006ded38  06 24 01 e3  movw	r2, #0x1406
006ded3c  02 00 53 e1  cmp	r3, r2
006ded40  05 90 a0 03  moveq	r9, #5
006ded44  04 00 00 0a  beq	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #0x10
006ded48  87 00 00 8a  bhi	0x6def6c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x574> @ imm = #0x21c
006ded4c  04 24 01 e3  movw	r2, #0x1404
006ded50  02 00 53 e1  cmp	r3, r2
006ded54  46 00 00 0a  beq	0x6dee74 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x47c> @ imm = #0x118
006ded58  ff 90 a0 e3  mov	r9, #255
006ded5c  06 00 a0 e1  mov	r0, r6
006ded60  47 0d fc eb  bl	0x5e2284 <_ZN6glitch5video24guessShaderParameterTypeEPKc> @ imm = #-0xfcae4
006ded64  ff 00 50 e3  cmp	r0, #255
006ded68  13 10 40 12  subne	r1, r0, #19
006ded6c  00 70 a0 e1  mov	r7, r0
006ded70  18 10 8d 15  strne	r1, [sp, #0x18]
006ded74  70 a0 ff 16  uxthne	r10, r0
006ded78  51 00 00 0a  beq	0x6deec4 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x4cc> @ imm = #0x144
006ded7c  06 10 a0 e1  mov	r1, r6
006ded80  4c 00 94 e5  ldr	r0, [r4, #0x4c]
006ded84  ec bc f0 eb  bl	0x30e13c <glGetUniformLocation@plt> @ imm = #-0x3d0c50
006ded88  07 10 a0 e1  mov	r1, r7
006ded8c  00 30 a0 e1  mov	r3, r0
006ded90  06 00 a0 e1  mov	r0, r6
006ded94  14 30 8d e5  str	r3, [sp, #0x14]
006ded98  78 24 fc eb  bl	0x5e7f80 <_ZN6glitch5video18guessSubIdFromNameEPKcNS0_23E_SHADER_PARAMETER_TYPEE> @ imm = #-0xf6e20
006ded9c  01 10 a0 e3  mov	r1, #1
006deda0  00 70 a0 e1  mov	r7, r0
006deda4  06 00 a0 e1  mov	r0, r6
006deda8  30 b0 9d e5  ldr	r11, [sp, #0x30]
006dedac  b0 18 ff eb  bl	0x6a5074 <_ZN6glitch4core6detail22SSharedStringHeapEntry5SData3getEPKcb> @ imm = #-0x39d40
006dedb0  00 00 50 e3  cmp	r0, #0
006dedb4  00 00 85 e5  str	r0, [r5]
006dedb8  00 20 90 15  ldrne	r2, [r0]
006dedbc  14 30 9d e5  ldr	r3, [sp, #0x14]
006dedc0  01 20 82 12  addne	r2, r2, #1
006dedc4  00 20 80 15  strne	r2, [r0]
006dedc8  18 c0 9d e5  ldr	r12, [sp, #0x18]
006dedcc  b4 a0 c5 e1  strh	r10, [r5, #4]
006dedd0  06 90 c5 e5  strb	r9, [r5, #0x6]
006dedd4  08 00 5c e3  cmp	r12, #8
006dedd8  08 b0 85 e5  str	r11, [r5, #0x8]
006deddc  0c 30 85 e5  str	r3, [r5, #0xc]
006dede0  07 70 c5 e5  strb	r7, [r5, #0x7]
006dede4  02 00 00 8a  bhi	0x6dedf4 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x3fc> @ imm = #0x8
006dede8  3d 30 d4 e5  ldrb	r3, [r4, #0x3d]
006dedec  07 00 53 e1  cmp	r3, r7
006dedf0  3d 70 c4 85  strbhi	r7, [r4, #0x3d]
006dedf4  3c 10 9d e5  ldr	r1, [sp, #0x3c]
006dedf8  01 80 88 e2  add	r8, r8, #1
006dedfc  10 50 85 e2  add	r5, r5, #16
006dee00  08 00 51 e1  cmp	r1, r8
006dee04  b7 ff ff ca  bgt	0x6dece8 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x2f0> @ imm = #-0x124
006dee08  01 50 a0 e3  mov	r5, #1
006dee0c  50 50 c4 e5  strb	r5, [r4, #0x50]
006dee10  24 00 9d e5  ldr	r0, [sp, #0x24]
006dee14  71 10 ff e6  uxth	r1, r1
006dee18  4c 23 fc eb  bl	0x5e7b50 <_ZN6glitch5video14sortParametersEPNS0_19SShaderParameterDefEt> @ imm = #-0xf72d0
006dee1c  00 00 56 e3  cmp	r6, #0
006dee20  bc 02 c4 e1  strh	r0, [r4, #44]
006dee24  17 ff ff 1a  bne	0x6dea88 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x90> @ imm = #-0x3a4
006dee28  01 00 a0 e3  mov	r0, #1
006dee2c  18 ff ff ea  b	0x6dea94 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x9c> @ imm = #-0x3a0
006dee30  5c 11 9f e5  ldr	r1, [pc, #0x15c]        @ 0x6def94 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x59c>
006dee34  20 00 94 e5  ldr	r0, [r4, #0x20]
006dee38  03 20 a0 e3  mov	r2, #3
006dee3c  01 10 8f e0  add	r1, pc, r1
006dee40  a8 af fc eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #-0xd4160
006dee44  06 00 a0 e1  mov	r0, r6
006dee48  11 ff ff ea  b	0x6dea94 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x9c> @ imm = #-0x3bc
006dee4c  54 2b 08 e3  movw	r2, #0x8b54
006dee50  02 00 53 e1  cmp	r3, r2
006dee54  39 00 00 0a  beq	0x6def40 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x548> @ imm = #0xe4
006dee58  36 00 00 3a  blo	0x6def38 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x540> @ imm = #0xd8
006dee5c  55 2b 08 e3  movw	r2, #0x8b55
006dee60  02 00 53 e1  cmp	r3, r2
006dee64  27 00 00 0a  beq	0x6def08 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x510> @ imm = #0x9c
006dee68  56 2b 08 e3  movw	r2, #0x8b56
006dee6c  02 00 53 e1  cmp	r3, r2
006dee70  b8 ff ff 1a  bne	0x6ded58 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x360> @ imm = #-0x120
006dee74  01 90 a0 e3  mov	r9, #1
006dee78  b7 ff ff ea  b	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #-0x124
006dee7c  5c 2b 08 e3  movw	r2, #0x8b5c
006dee80  02 00 53 e1  cmp	r3, r2
006dee84  0b 90 a0 03  moveq	r9, #11
006dee88  b3 ff ff 0a  beq	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #-0x134
006dee8c  1f 00 00 8a  bhi	0x6def10 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x518> @ imm = #0x7c
006dee90  59 2b 08 e3  movw	r2, #0x8b59
006dee94  02 00 53 e1  cmp	r3, r2
006dee98  1a 00 00 0a  beq	0x6def08 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x510> @ imm = #0x68
006dee9c  27 00 00 3a  blo	0x6def40 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x548> @ imm = #0x9c
006deea0  5a 2b 08 e3  movw	r2, #0x8b5a
006deea4  02 00 53 e1  cmp	r3, r2
006deea8  09 90 a0 03  moveq	r9, #9
006deeac  aa ff ff 0a  beq	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #-0x158
006deeb0  5b 2b 08 e3  movw	r2, #0x8b5b
006deeb4  02 00 53 e1  cmp	r3, r2
006deeb8  a6 ff ff 1a  bne	0x6ded58 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x360> @ imm = #-0x168
006deebc  0a 90 a0 e3  mov	r9, #10
006deec0  a5 ff ff ea  b	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #-0x16c
006deec4  0c 30 49 e2  sub	r3, r9, #12
006deec8  03 00 53 e3  cmp	r3, #3
006deecc  00 a0 a0 83  movhi	r10, #0
006deed0  12 20 e0 83  mvnhi	r2, #18
006deed4  02 a0 a0 93  movls	r10, #2
006deed8  10 30 e0 93  mvnls	r3, #16
006deedc  18 20 8d 85  strhi	r2, [sp, #0x18]
006deee0  18 30 8d 95  strls	r3, [sp, #0x18]
006deee4  0a 70 a0 e1  mov	r7, r10
006deee8  a3 ff ff ea  b	0x6ded7c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x384> @ imm = #-0x174
006deeec  a4 10 9f e5  ldr	r1, [pc, #0xa4]         @ 0x6def98 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x5a0>
006deef0  20 00 94 e5  ldr	r0, [r4, #0x20]
006deef4  03 20 a0 e3  mov	r2, #3
006deef8  01 10 8f e0  add	r1, pc, r1
006deefc  79 af fc eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #-0xd421c
006def00  06 00 a0 e1  mov	r0, r6
006def04  e2 fe ff ea  b	0x6dea94 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x9c> @ imm = #-0x478
006def08  04 90 a0 e3  mov	r9, #4
006def0c  92 ff ff ea  b	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #-0x1b8
006def10  5f cb 08 e3  movw	r12, #0x8b5f
006def14  0c 00 53 e1  cmp	r3, r12
006def18  0d 90 a0 03  moveq	r9, #13
006def1c  8e ff ff 0a  beq	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #-0x1c8
006def20  08 00 00 8a  bhi	0x6def48 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x550> @ imm = #0x20
006def24  5e 2b 08 e3  movw	r2, #0x8b5e
006def28  02 00 53 e1  cmp	r3, r2
006def2c  89 ff ff 1a  bne	0x6ded58 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x360> @ imm = #-0x1dc
006def30  0c 90 a0 e3  mov	r9, #12
006def34  88 ff ff ea  b	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #-0x1e0
006def38  02 90 a0 e3  mov	r9, #2
006def3c  86 ff ff ea  b	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #-0x1e8
006def40  03 90 a0 e3  mov	r9, #3
006def44  84 ff ff ea  b	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #-0x1f0
006def48  60 2b 08 e3  movw	r2, #0x8b60
006def4c  02 00 53 e1  cmp	r3, r2
006def50  0e 90 a0 03  moveq	r9, #14
006def54  80 ff ff 0a  beq	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #-0x200
006def58  63 2b 08 e3  movw	r2, #0x8b63
006def5c  02 00 53 e1  cmp	r3, r2
006def60  7c ff ff 1a  bne	0x6ded58 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x360> @ imm = #-0x210
006def64  0f 90 a0 e3  mov	r9, #15
006def68  7b ff ff ea  b	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #-0x214
006def6c  50 2b 08 e3  movw	r2, #0x8b50
006def70  02 00 53 e1  cmp	r3, r2
006def74  06 90 a0 03  moveq	r9, #6
006def78  77 ff ff 0a  beq	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #-0x224
006def7c  51 2b 08 e3  movw	r2, #0x8b51
006def80  02 00 53 e1  cmp	r3, r2
006def84  73 ff ff 1a  bne	0x6ded58 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x360> @ imm = #-0x234
006def88  07 90 a0 e3  mov	r9, #7
006def8c  72 ff ff ea  b	0x6ded5c <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x364> @ imm = #-0x238
006def90  58 03 21 00  .word	0x00210358
006def94  bc ff 20 00  .word	0x0020ffbc
006def98  28 ff 20 00  .word	0x0020ff28
; FUNCTION key=shader_attribute_name_classifier
; symbol=glitch::video::guessShaderVertexAttribute(char const*)
; mangled=_ZN6glitch5video26guessShaderVertexAttributeEPKc
; elf_va=0x006dbb50 range_size=2452 file_offset=7191376 sha256=65660efe31f77bde4d7f1ec7b6aee862f0fe66799ab6564b9380b834e6befbcd
; decoder_mode=arm
006dbb50  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
006dbb54  a4 38 9f e5  ldr	r3, [pc, #0x8a4]        @ 0x6dc400 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8b0>
006dbb58  a4 68 9f e5  ldr	r6, [pc, #0x8a4]        @ 0x6dc404 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8b4>
006dbb5c  79 df 4d e2  sub	sp, sp, #484
006dbb60  03 30 8f e0  add	r3, pc, r3
006dbb64  0c 50 93 e5  ldr	r5, [r3, #0xc]
006dbb68  06 60 8f e0  add	r6, pc, r6
006dbb6c  00 40 a0 e1  mov	r4, r0
006dbb70  01 50 15 e2  ands	r5, r5, #1
006dbb74  4c 00 00 0a  beq	0x6dbcac <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x15c> @ imm = #0x130
006dbb78  2e 10 a0 e3  mov	r1, #46
006dbb7c  04 00 a0 e1  mov	r0, r4
006dbb80  28 cc f0 eb  bl	0x30ec28 <strchr@plt>   @ imm = #-0x3ccf60
006dbb84  00 00 50 e3  cmp	r0, #0
006dbb88  01 40 80 12  addne	r4, r0, #1
006dbb8c  04 00 a0 e1  mov	r0, r4
006dbb90  af c8 f0 eb  bl	0x30de54 <strlen@plt>   @ imm = #-0x3cdd44
006dbb94  00 80 a0 e1  mov	r8, r0
006dbb98  ad 61 f9 eb  bl	0x534254 <_ZN6glitch4core32isProcessBufferHeapExcessEnabledEv> @ imm = #-0x1a794c
006dbb9c  00 70 a0 e1  mov	r7, r0
006dbba0  01 00 a0 e3  mov	r0, #1
006dbba4  af 61 f9 eb  bl	0x534268 <_ZN6glitch4core33setProcessBufferHeapExcessEnabledEb> @ imm = #-0x1a7944
006dbba8  01 00 88 e2  add	r0, r8, #1
006dbbac  90 62 f9 eb  bl	0x5345f4 <_ZN6glitch4core18allocProcessBufferEi> @ imm = #-0x1a75c0
006dbbb0  00 50 a0 e1  mov	r5, r0
006dbbb4  08 00 84 e0  add	r0, r4, r8
006dbbb8  00 00 54 e1  cmp	r4, r0
006dbbbc  0c 00 00 0a  beq	0x6dbbf4 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0xa4> @ imm = #0x30
006dbbc0  40 c8 9f e5  ldr	r12, [pc, #0x840]       @ 0x6dc408 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8b8>
006dbbc4  00 00 64 e0  rsb	r0, r4, r0
006dbbc8  00 30 a0 e3  mov	r3, #0
006dbbcc  d3 20 94 e1  ldrsb	r2, [r4, r3]
006dbbd0  ff 00 52 e3  cmp	r2, #255
006dbbd4  0c 10 96 97  ldrls	r1, [r6, r12]
006dbbd8  00 10 91 95  ldrls	r1, [r1]
006dbbdc  82 20 81 90  addls	r2, r1, r2, lsl #1
006dbbe0  f2 20 d2 91  ldrshls	r2, [r2, #2]
006dbbe4  03 20 c5 e7  strb	r2, [r5, r3]
006dbbe8  01 30 83 e2  add	r3, r3, #1
006dbbec  00 00 53 e1  cmp	r3, r0
006dbbf0  f5 ff ff 1a  bne	0x6dbbcc <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x7c> @ imm = #-0x2c
006dbbf4  10 68 9f e5  ldr	r6, [pc, #0x810]        @ 0x6dc40c <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8bc>
006dbbf8  00 30 a0 e3  mov	r3, #0
006dbbfc  08 30 c5 e7  strb	r3, [r5, r8]
006dbc00  06 60 8f e0  add	r6, pc, r6
006dbc04  14 40 96 e5  ldr	r4, [r6, #0x14]
006dbc08  03 00 54 e1  cmp	r4, r3
006dbc0c  10 40 86 02  addeq	r4, r6, #16
006dbc10  16 00 00 0a  beq	0x6dbc70 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x120> @ imm = #0x58
006dbc14  10 60 86 e2  add	r6, r6, #16
006dbc18  00 00 00 ea  b	0x6dbc20 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0xd0> @ imm = #0x0
006dbc1c  03 40 a0 e1  mov	r4, r3
006dbc20  10 00 94 e5  ldr	r0, [r4, #0x10]
006dbc24  05 10 a0 e1  mov	r1, r5
006dbc28  bb c9 f0 eb  bl	0x30e31c <strcmp@plt>   @ imm = #-0x3cd914
006dbc2c  00 00 50 e3  cmp	r0, #0
006dbc30  0c 30 94 b5  ldrlt	r3, [r4, #0xc]
006dbc34  08 30 94 a5  ldrge	r3, [r4, #0x8]
006dbc38  06 40 a0 b1  movlt	r4, r6
006dbc3c  04 60 a0 e1  mov	r6, r4
006dbc40  00 00 53 e3  cmp	r3, #0
006dbc44  f4 ff ff 1a  bne	0x6dbc1c <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0xcc> @ imm = #-0x30
006dbc48  c0 67 9f e5  ldr	r6, [pc, #0x7c0]        @ 0x6dc410 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8c0>
006dbc4c  06 60 8f e0  add	r6, pc, r6
006dbc50  10 60 86 e2  add	r6, r6, #16
006dbc54  06 00 54 e1  cmp	r4, r6
006dbc58  04 00 00 0a  beq	0x6dbc70 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x120> @ imm = #0x10
006dbc5c  10 10 94 e5  ldr	r1, [r4, #0x10]
006dbc60  05 00 a0 e1  mov	r0, r5
006dbc64  ac c9 f0 eb  bl	0x30e31c <strcmp@plt>   @ imm = #-0x3cd950
006dbc68  00 00 50 e3  cmp	r0, #0
006dbc6c  06 40 a0 b1  movlt	r4, r6
006dbc70  9c 37 9f e5  ldr	r3, [pc, #0x79c]        @ 0x6dc414 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8c4>
006dbc74  03 30 8f e0  add	r3, pc, r3
006dbc78  10 30 83 e2  add	r3, r3, #16
006dbc7c  03 00 54 e1  cmp	r4, r3
006dbc80  ff 40 a0 03  moveq	r4, #255
006dbc84  14 40 94 15  ldrne	r4, [r4, #0x14]
006dbc88  00 00 55 e3  cmp	r5, #0
006dbc8c  01 00 00 0a  beq	0x6dbc98 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x148> @ imm = #0x4
006dbc90  05 00 a0 e1  mov	r0, r5
006dbc94  7b 62 f9 eb  bl	0x534688 <_ZN6glitch4core20releaseProcessBufferEPv> @ imm = #-0x1a7614
006dbc98  07 00 a0 e1  mov	r0, r7
006dbc9c  71 61 f9 eb  bl	0x534268 <_ZN6glitch4core33setProcessBufferHeapExcessEnabledEb> @ imm = #-0x1a7a3c
006dbca0  04 00 a0 e1  mov	r0, r4
006dbca4  79 df 8d e2  add	sp, sp, #484
006dbca8  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
006dbcac  0c 00 83 e2  add	r0, r3, #12
006dbcb0  ad ca f0 eb  bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x3cd54c
006dbcb4  00 00 50 e3  cmp	r0, #0
006dbcb8  ae ff ff 0a  beq	0x6dbb78 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x28> @ imm = #-0x148
006dbcbc  18 80 8d e2  add	r8, sp, #24
006dbcc0  05 10 a0 e1  mov	r1, r5
006dbcc4  08 00 a0 e1  mov	r0, r8
006dbcc8  18 50 8d e5  str	r5, [sp, #0x18]
006dbccc  1c 50 8d e5  str	r5, [sp, #0x1c]
006dbcd0  20 50 8d e5  str	r5, [sp, #0x20]
006dbcd4  24 50 8d e5  str	r5, [sp, #0x24]
006dbcd8  28 50 8d e5  str	r5, [sp, #0x28]
006dbcdc  2c 50 8d e5  str	r5, [sp, #0x2c]
006dbce0  30 50 8d e5  str	r5, [sp, #0x30]
006dbce4  34 50 8d e5  str	r5, [sp, #0x34]
006dbce8  38 50 8d e5  str	r5, [sp, #0x38]
006dbcec  3c 50 8d e5  str	r5, [sp, #0x3c]
006dbcf0  b7 fe ff eb  bl	0x6db7d4 <_ZNSt4priv11_Deque_baseISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEESaIS7_EE17_M_initialize_mapEj> @ imm = #-0x524
006dbcf4  30 10 9d e5  ldr	r1, [sp, #0x30]
006dbcf8  18 37 9f e5  ldr	r3, [pc, #0x718]        @ 0x6dc418 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8c8>
006dbcfc  28 20 9d e5  ldr	r2, [sp, #0x28]
006dbd00  08 10 41 e2  sub	r1, r1, #8
006dbd04  03 30 8f e0  add	r3, pc, r3
006dbd08  01 00 52 e1  cmp	r2, r1
006dbd0c  74 50 8d e5  str	r5, [sp, #0x74]
006dbd10  70 30 8d e5  str	r3, [sp, #0x70]
006dbd14  b5 01 00 0a  beq	0x6dc3f0 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8a0> @ imm = #0x6d4
006dbd18  00 30 82 e5  str	r3, [r2]
006dbd1c  74 30 9d e5  ldr	r3, [sp, #0x74]
006dbd20  04 30 82 e5  str	r3, [r2, #0x4]
006dbd24  28 30 9d e5  ldr	r3, [sp, #0x28]
006dbd28  08 30 83 e2  add	r3, r3, #8
006dbd2c  28 30 8d e5  str	r3, [sp, #0x28]
006dbd30  40 70 8d e2  add	r7, sp, #64
006dbd34  08 10 a0 e1  mov	r1, r8
006dbd38  07 00 a0 e1  mov	r0, r7
006dbd3c  cf fe ff eb  bl	0x6db880 <_ZNSt5dequeISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEESaIS6_EEC1ERKS8_> @ imm = #-0x4c4
006dbd40  18 30 9d e5  ldr	r3, [sp, #0x18]
006dbd44  20 20 9d e5  ldr	r2, [sp, #0x20]
006dbd48  28 10 9d e5  ldr	r1, [sp, #0x28]
006dbd4c  24 00 9d e5  ldr	r0, [sp, #0x24]
006dbd50  03 00 51 e1  cmp	r1, r3
006dbd54  0a 00 00 0a  beq	0x6dbd84 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x234> @ imm = #0x28
006dbd58  08 30 83 e2  add	r3, r3, #8
006dbd5c  02 00 53 e1  cmp	r3, r2
006dbd60  04 00 00 0a  beq	0x6dbd78 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x228> @ imm = #0x10
006dbd64  03 00 51 e1  cmp	r1, r3
006dbd68  08 30 83 e2  add	r3, r3, #8
006dbd6c  04 00 00 0a  beq	0x6dbd84 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x234> @ imm = #0x10
006dbd70  03 00 52 e1  cmp	r2, r3
006dbd74  fa ff ff 1a  bne	0x6dbd64 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x214> @ imm = #-0x18
006dbd78  04 30 b0 e5  ldr	r3, [r0, #0x4]!
006dbd7c  80 20 83 e2  add	r2, r3, #128
006dbd80  f2 ff ff ea  b	0x6dbd50 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x200> @ imm = #-0x38
006dbd84  08 00 a0 e1  mov	r0, r8
006dbd88  58 fe ff eb  bl	0x6db6f0 <_ZNSt4priv11_Deque_baseISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEESaIS7_EED2Ev> @ imm = #-0x6a0
006dbd8c  88 36 9f e5  ldr	r3, [pc, #0x688]        @ 0x6dc41c <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8cc>
006dbd90  00 50 a0 e3  mov	r5, #0
006dbd94  07 00 a0 e1  mov	r0, r7
006dbd98  03 30 8f e0  add	r3, pc, r3
006dbd9c  76 1f 8d e2  add	r1, sp, #472
006dbda0  d8 31 8d e5  str	r3, [sp, #0x1d8]
006dbda4  dc 51 8d e5  str	r5, [sp, #0x1dc]
006dbda8  56 ff ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x2a8
006dbdac  6c 36 9f e5  ldr	r3, [pc, #0x66c]        @ 0x6dc420 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8d0>
006dbdb0  07 00 a0 e1  mov	r0, r7
006dbdb4  1d 1e 8d e2  add	r1, sp, #464
006dbdb8  03 30 8f e0  add	r3, pc, r3
006dbdbc  d0 31 8d e5  str	r3, [sp, #0x1d0]
006dbdc0  d4 51 8d e5  str	r5, [sp, #0x1d4]
006dbdc4  4f ff ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x2c4
006dbdc8  54 36 9f e5  ldr	r3, [pc, #0x654]        @ 0x6dc424 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8d4>
006dbdcc  07 00 a0 e1  mov	r0, r7
006dbdd0  72 1f 8d e2  add	r1, sp, #456
006dbdd4  03 30 8f e0  add	r3, pc, r3
006dbdd8  c8 31 8d e5  str	r3, [sp, #0x1c8]
006dbddc  cc 51 8d e5  str	r5, [sp, #0x1cc]
006dbde0  48 ff ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x2e0
006dbde4  3c 36 9f e5  ldr	r3, [pc, #0x63c]        @ 0x6dc428 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8d8>
006dbde8  11 80 a0 e3  mov	r8, #17
006dbdec  07 00 a0 e1  mov	r0, r7
006dbdf0  03 30 8f e0  add	r3, pc, r3
006dbdf4  07 1d 8d e2  add	r1, sp, #448
006dbdf8  c0 31 8d e5  str	r3, [sp, #0x1c0]
006dbdfc  c4 81 8d e5  str	r8, [sp, #0x1c4]
006dbe00  40 ff ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x300
006dbe04  20 36 9f e5  ldr	r3, [pc, #0x620]        @ 0x6dc42c <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8dc>
006dbe08  07 00 a0 e1  mov	r0, r7
006dbe0c  6e 1f 8d e2  add	r1, sp, #440
006dbe10  03 30 8f e0  add	r3, pc, r3
006dbe14  b8 31 8d e5  str	r3, [sp, #0x1b8]
006dbe18  bc 81 8d e5  str	r8, [sp, #0x1bc]
006dbe1c  39 ff ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x31c
006dbe20  08 36 9f e5  ldr	r3, [pc, #0x608]        @ 0x6dc430 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8e0>
006dbe24  14 80 a0 e3  mov	r8, #20
006dbe28  07 00 a0 e1  mov	r0, r7
006dbe2c  03 30 8f e0  add	r3, pc, r3
006dbe30  1b 1e 8d e2  add	r1, sp, #432
006dbe34  b0 31 8d e5  str	r3, [sp, #0x1b0]
006dbe38  b4 81 8d e5  str	r8, [sp, #0x1b4]
006dbe3c  31 ff ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x33c
006dbe40  ec 35 9f e5  ldr	r3, [pc, #0x5ec]        @ 0x6dc434 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8e4>
006dbe44  07 00 a0 e1  mov	r0, r7
006dbe48  6a 1f 8d e2  add	r1, sp, #424
006dbe4c  03 30 8f e0  add	r3, pc, r3
006dbe50  a8 31 8d e5  str	r3, [sp, #0x1a8]
006dbe54  ac 81 8d e5  str	r8, [sp, #0x1ac]
006dbe58  2a ff ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x358
006dbe5c  d4 35 9f e5  ldr	r3, [pc, #0x5d4]        @ 0x6dc438 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8e8>
006dbe60  07 00 a0 e1  mov	r0, r7
006dbe64  1a 1e 8d e2  add	r1, sp, #416
006dbe68  03 30 8f e0  add	r3, pc, r3
006dbe6c  a0 31 8d e5  str	r3, [sp, #0x1a0]
006dbe70  a4 81 8d e5  str	r8, [sp, #0x1a4]
006dbe74  23 ff ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x374
006dbe78  bc 35 9f e5  ldr	r3, [pc, #0x5bc]        @ 0x6dc43c <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8ec>
006dbe7c  07 00 a0 e1  mov	r0, r7
006dbe80  66 1f 8d e2  add	r1, sp, #408
006dbe84  03 30 8f e0  add	r3, pc, r3
006dbe88  98 31 8d e5  str	r3, [sp, #0x198]
006dbe8c  15 30 a0 e3  mov	r3, #21
006dbe90  9c 31 8d e5  str	r3, [sp, #0x19c]
006dbe94  1b ff ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x394
006dbe98  a0 35 9f e5  ldr	r3, [pc, #0x5a0]        @ 0x6dc440 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8f0>
006dbe9c  07 00 a0 e1  mov	r0, r7
006dbea0  19 1e 8d e2  add	r1, sp, #400
006dbea4  03 30 8f e0  add	r3, pc, r3
006dbea8  90 31 8d e5  str	r3, [sp, #0x190]
006dbeac  16 30 a0 e3  mov	r3, #22
006dbeb0  94 31 8d e5  str	r3, [sp, #0x194]
006dbeb4  13 ff ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x3b4
006dbeb8  84 35 9f e5  ldr	r3, [pc, #0x584]        @ 0x6dc444 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8f4>
006dbebc  07 00 a0 e1  mov	r0, r7
006dbec0  62 1f 8d e2  add	r1, sp, #392
006dbec4  03 30 8f e0  add	r3, pc, r3
006dbec8  88 31 8d e5  str	r3, [sp, #0x188]
006dbecc  17 30 a0 e3  mov	r3, #23
006dbed0  8c 31 8d e5  str	r3, [sp, #0x18c]
006dbed4  0b ff ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x3d4
006dbed8  68 35 9f e5  ldr	r3, [pc, #0x568]        @ 0x6dc448 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8f8>
006dbedc  18 80 a0 e3  mov	r8, #24
006dbee0  07 00 a0 e1  mov	r0, r7
006dbee4  03 30 8f e0  add	r3, pc, r3
006dbee8  06 1d 8d e2  add	r1, sp, #384
006dbeec  80 31 8d e5  str	r3, [sp, #0x180]
006dbef0  84 81 8d e5  str	r8, [sp, #0x184]
006dbef4  03 ff ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x3f4
006dbef8  4c 35 9f e5  ldr	r3, [pc, #0x54c]        @ 0x6dc44c <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x8fc>
006dbefc  07 00 a0 e1  mov	r0, r7
006dbf00  5e 1f 8d e2  add	r1, sp, #376
006dbf04  03 30 8f e0  add	r3, pc, r3
006dbf08  78 31 8d e5  str	r3, [sp, #0x178]
006dbf0c  7c 81 8d e5  str	r8, [sp, #0x17c]
006dbf10  fc fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x410
006dbf14  34 35 9f e5  ldr	r3, [pc, #0x534]        @ 0x6dc450 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x900>
006dbf18  07 00 a0 e1  mov	r0, r7
006dbf1c  17 1e 8d e2  add	r1, sp, #368
006dbf20  03 30 8f e0  add	r3, pc, r3
006dbf24  70 31 8d e5  str	r3, [sp, #0x170]
006dbf28  74 81 8d e5  str	r8, [sp, #0x174]
006dbf2c  f5 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x42c
006dbf30  1c 35 9f e5  ldr	r3, [pc, #0x51c]        @ 0x6dc454 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x904>
006dbf34  07 00 a0 e1  mov	r0, r7
006dbf38  5a 1f 8d e2  add	r1, sp, #360
006dbf3c  03 30 8f e0  add	r3, pc, r3
006dbf40  68 31 8d e5  str	r3, [sp, #0x168]
006dbf44  19 30 a0 e3  mov	r3, #25
006dbf48  6c 31 8d e5  str	r3, [sp, #0x16c]
006dbf4c  ed fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x44c
006dbf50  00 35 9f e5  ldr	r3, [pc, #0x500]        @ 0x6dc458 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x908>
006dbf54  07 00 a0 e1  mov	r0, r7
006dbf58  16 1e 8d e2  add	r1, sp, #352
006dbf5c  03 30 8f e0  add	r3, pc, r3
006dbf60  60 31 8d e5  str	r3, [sp, #0x160]
006dbf64  1a 30 a0 e3  mov	r3, #26
006dbf68  64 31 8d e5  str	r3, [sp, #0x164]
006dbf6c  e5 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x46c
006dbf70  e4 34 9f e5  ldr	r3, [pc, #0x4e4]        @ 0x6dc45c <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x90c>
006dbf74  07 00 a0 e1  mov	r0, r7
006dbf78  56 1f 8d e2  add	r1, sp, #344
006dbf7c  03 30 8f e0  add	r3, pc, r3
006dbf80  58 31 8d e5  str	r3, [sp, #0x158]
006dbf84  1b 30 a0 e3  mov	r3, #27
006dbf88  5c 31 8d e5  str	r3, [sp, #0x15c]
006dbf8c  dd fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x48c
006dbf90  c8 34 9f e5  ldr	r3, [pc, #0x4c8]        @ 0x6dc460 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x910>
006dbf94  12 80 a0 e3  mov	r8, #18
006dbf98  07 00 a0 e1  mov	r0, r7
006dbf9c  03 30 8f e0  add	r3, pc, r3
006dbfa0  15 1e 8d e2  add	r1, sp, #336
006dbfa4  50 31 8d e5  str	r3, [sp, #0x150]
006dbfa8  54 81 8d e5  str	r8, [sp, #0x154]
006dbfac  d5 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x4ac
006dbfb0  ac 34 9f e5  ldr	r3, [pc, #0x4ac]        @ 0x6dc464 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x914>
006dbfb4  07 00 a0 e1  mov	r0, r7
006dbfb8  52 1f 8d e2  add	r1, sp, #328
006dbfbc  03 30 8f e0  add	r3, pc, r3
006dbfc0  48 31 8d e5  str	r3, [sp, #0x148]
006dbfc4  4c 81 8d e5  str	r8, [sp, #0x14c]
006dbfc8  ce fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x4c8
006dbfcc  94 34 9f e5  ldr	r3, [pc, #0x494]        @ 0x6dc468 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x918>
006dbfd0  07 00 a0 e1  mov	r0, r7
006dbfd4  05 1d 8d e2  add	r1, sp, #320
006dbfd8  03 30 8f e0  add	r3, pc, r3
006dbfdc  40 31 8d e5  str	r3, [sp, #0x140]
006dbfe0  44 81 8d e5  str	r8, [sp, #0x144]
006dbfe4  c7 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x4e4
006dbfe8  7c 34 9f e5  ldr	r3, [pc, #0x47c]        @ 0x6dc46c <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x91c>
006dbfec  13 80 a0 e3  mov	r8, #19
006dbff0  07 00 a0 e1  mov	r0, r7
006dbff4  03 30 8f e0  add	r3, pc, r3
006dbff8  4e 1f 8d e2  add	r1, sp, #312
006dbffc  38 31 8d e5  str	r3, [sp, #0x138]
006dc000  3c 81 8d e5  str	r8, [sp, #0x13c]
006dc004  bf fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x504
006dc008  60 34 9f e5  ldr	r3, [pc, #0x460]        @ 0x6dc470 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x920>
006dc00c  07 00 a0 e1  mov	r0, r7
006dc010  13 1e 8d e2  add	r1, sp, #304
006dc014  03 30 8f e0  add	r3, pc, r3
006dc018  30 31 8d e5  str	r3, [sp, #0x130]
006dc01c  34 81 8d e5  str	r8, [sp, #0x134]
006dc020  b8 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x520
006dc024  48 34 9f e5  ldr	r3, [pc, #0x448]        @ 0x6dc474 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x924>
006dc028  07 00 a0 e1  mov	r0, r7
006dc02c  4a 1f 8d e2  add	r1, sp, #296
006dc030  03 30 8f e0  add	r3, pc, r3
006dc034  28 31 8d e5  str	r3, [sp, #0x128]
006dc038  2c 81 8d e5  str	r8, [sp, #0x12c]
006dc03c  b1 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x53c
006dc040  30 34 9f e5  ldr	r3, [pc, #0x430]        @ 0x6dc478 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x928>
006dc044  01 80 a0 e3  mov	r8, #1
006dc048  07 00 a0 e1  mov	r0, r7
006dc04c  03 30 8f e0  add	r3, pc, r3
006dc050  12 1e 8d e2  add	r1, sp, #288
006dc054  20 31 8d e5  str	r3, [sp, #0x120]
006dc058  24 81 8d e5  str	r8, [sp, #0x124]
006dc05c  a9 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x55c
006dc060  14 34 9f e5  ldr	r3, [pc, #0x414]        @ 0x6dc47c <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x92c>
006dc064  07 00 a0 e1  mov	r0, r7
006dc068  46 1f 8d e2  add	r1, sp, #280
006dc06c  03 30 8f e0  add	r3, pc, r3
006dc070  18 31 8d e5  str	r3, [sp, #0x118]
006dc074  1c 81 8d e5  str	r8, [sp, #0x11c]
006dc078  a2 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x578
006dc07c  fc 33 9f e5  ldr	r3, [pc, #0x3fc]        @ 0x6dc480 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x930>
006dc080  02 b0 a0 e3  mov	r11, #2
006dc084  07 00 a0 e1  mov	r0, r7
006dc088  03 30 8f e0  add	r3, pc, r3
006dc08c  11 1e 8d e2  add	r1, sp, #272
006dc090  10 31 8d e5  str	r3, [sp, #0x110]
006dc094  14 b1 8d e5  str	r11, [sp, #0x114]
006dc098  9a fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x598
006dc09c  e0 33 9f e5  ldr	r3, [pc, #0x3e0]        @ 0x6dc484 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x934>
006dc0a0  03 90 a0 e3  mov	r9, #3
006dc0a4  07 00 a0 e1  mov	r0, r7
006dc0a8  03 30 8f e0  add	r3, pc, r3
006dc0ac  42 1f 8d e2  add	r1, sp, #264
006dc0b0  08 31 8d e5  str	r3, [sp, #0x108]
006dc0b4  0c 91 8d e5  str	r9, [sp, #0x10c]
006dc0b8  92 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x5b8
006dc0bc  c4 33 9f e5  ldr	r3, [pc, #0x3c4]        @ 0x6dc488 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x938>
006dc0c0  04 a0 a0 e3  mov	r10, #4
006dc0c4  07 00 a0 e1  mov	r0, r7
006dc0c8  03 30 8f e0  add	r3, pc, r3
006dc0cc  01 1c 8d e2  add	r1, sp, #256
006dc0d0  00 31 8d e5  str	r3, [sp, #0x100]
006dc0d4  04 a1 8d e5  str	r10, [sp, #0x104]
006dc0d8  8a fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x5d8
006dc0dc  a8 23 9f e5  ldr	r2, [pc, #0x3a8]        @ 0x6dc48c <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x93c>
006dc0e0  05 30 a0 e3  mov	r3, #5
006dc0e4  07 00 a0 e1  mov	r0, r7
006dc0e8  02 20 8f e0  add	r2, pc, r2
006dc0ec  f8 10 8d e2  add	r1, sp, #248
006dc0f0  fc 30 8d e5  str	r3, [sp, #0xfc]
006dc0f4  04 30 8d e5  str	r3, [sp, #0x4]
006dc0f8  f8 20 8d e5  str	r2, [sp, #0xf8]
006dc0fc  81 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x5fc
006dc100  88 23 9f e5  ldr	r2, [pc, #0x388]        @ 0x6dc490 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x940>
006dc104  07 00 a0 e1  mov	r0, r7
006dc108  f0 10 8d e2  add	r1, sp, #240
006dc10c  02 20 8f e0  add	r2, pc, r2
006dc110  f0 20 8d e5  str	r2, [sp, #0xf0]
006dc114  06 20 a0 e3  mov	r2, #6
006dc118  f4 20 8d e5  str	r2, [sp, #0xf4]
006dc11c  79 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x61c
006dc120  6c 23 9f e5  ldr	r2, [pc, #0x36c]        @ 0x6dc494 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x944>
006dc124  07 c0 a0 e3  mov	r12, #7
006dc128  07 00 a0 e1  mov	r0, r7
006dc12c  02 20 8f e0  add	r2, pc, r2
006dc130  e8 10 8d e2  add	r1, sp, #232
006dc134  ec c0 8d e5  str	r12, [sp, #0xec]
006dc138  00 c0 8d e5  str	r12, [sp]
006dc13c  e8 20 8d e5  str	r2, [sp, #0xe8]
006dc140  70 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x640
006dc144  4c 23 9f e5  ldr	r2, [pc, #0x34c]        @ 0x6dc498 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x948>
006dc148  07 00 a0 e1  mov	r0, r7
006dc14c  e0 10 8d e2  add	r1, sp, #224
006dc150  02 20 8f e0  add	r2, pc, r2
006dc154  e0 20 8d e5  str	r2, [sp, #0xe0]
006dc158  08 20 a0 e3  mov	r2, #8
006dc15c  e4 20 8d e5  str	r2, [sp, #0xe4]
006dc160  68 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x660
006dc164  30 23 9f e5  ldr	r2, [pc, #0x330]        @ 0x6dc49c <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x94c>
006dc168  07 00 a0 e1  mov	r0, r7
006dc16c  d8 10 8d e2  add	r1, sp, #216
006dc170  02 20 8f e0  add	r2, pc, r2
006dc174  d8 20 8d e5  str	r2, [sp, #0xd8]
006dc178  dc 80 8d e5  str	r8, [sp, #0xdc]
006dc17c  61 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x67c
006dc180  18 23 9f e5  ldr	r2, [pc, #0x318]        @ 0x6dc4a0 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x950>
006dc184  07 00 a0 e1  mov	r0, r7
006dc188  d0 10 8d e2  add	r1, sp, #208
006dc18c  02 20 8f e0  add	r2, pc, r2
006dc190  d0 20 8d e5  str	r2, [sp, #0xd0]
006dc194  d4 80 8d e5  str	r8, [sp, #0xd4]
006dc198  5a fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x698
006dc19c  00 23 9f e5  ldr	r2, [pc, #0x300]        @ 0x6dc4a4 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x954>
006dc1a0  07 00 a0 e1  mov	r0, r7
006dc1a4  c8 10 8d e2  add	r1, sp, #200
006dc1a8  02 20 8f e0  add	r2, pc, r2
006dc1ac  c8 20 8d e5  str	r2, [sp, #0xc8]
006dc1b0  cc b0 8d e5  str	r11, [sp, #0xcc]
006dc1b4  53 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x6b4
006dc1b8  e8 22 9f e5  ldr	r2, [pc, #0x2e8]        @ 0x6dc4a8 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x958>
006dc1bc  07 00 a0 e1  mov	r0, r7
006dc1c0  c0 10 8d e2  add	r1, sp, #192
006dc1c4  02 20 8f e0  add	r2, pc, r2
006dc1c8  c0 20 8d e5  str	r2, [sp, #0xc0]
006dc1cc  c4 90 8d e5  str	r9, [sp, #0xc4]
006dc1d0  4c fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x6d0
006dc1d4  d0 22 9f e5  ldr	r2, [pc, #0x2d0]        @ 0x6dc4ac <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x95c>
006dc1d8  07 00 a0 e1  mov	r0, r7
006dc1dc  b8 10 8d e2  add	r1, sp, #184
006dc1e0  02 20 8f e0  add	r2, pc, r2
006dc1e4  b8 20 8d e5  str	r2, [sp, #0xb8]
006dc1e8  bc a0 8d e5  str	r10, [sp, #0xbc]
006dc1ec  45 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x6ec
006dc1f0  b8 22 9f e5  ldr	r2, [pc, #0x2b8]        @ 0x6dc4b0 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x960>
006dc1f4  04 30 9d e5  ldr	r3, [sp, #0x4]
006dc1f8  07 00 a0 e1  mov	r0, r7
006dc1fc  02 20 8f e0  add	r2, pc, r2
006dc200  b0 10 8d e2  add	r1, sp, #176
006dc204  b0 20 8d e5  str	r2, [sp, #0xb0]
006dc208  b4 30 8d e5  str	r3, [sp, #0xb4]
006dc20c  3d fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x70c
006dc210  9c 32 9f e5  ldr	r3, [pc, #0x29c]        @ 0x6dc4b4 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x964>
006dc214  07 00 a0 e1  mov	r0, r7
006dc218  a8 10 8d e2  add	r1, sp, #168
006dc21c  03 30 8f e0  add	r3, pc, r3
006dc220  a8 30 8d e5  str	r3, [sp, #0xa8]
006dc224  06 30 a0 e3  mov	r3, #6
006dc228  ac 30 8d e5  str	r3, [sp, #0xac]
006dc22c  35 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x72c
006dc230  80 32 9f e5  ldr	r3, [pc, #0x280]        @ 0x6dc4b8 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x968>
006dc234  00 c0 9d e5  ldr	r12, [sp]
006dc238  07 00 a0 e1  mov	r0, r7
006dc23c  03 30 8f e0  add	r3, pc, r3
006dc240  a0 10 8d e2  add	r1, sp, #160
006dc244  a4 c0 8d e5  str	r12, [sp, #0xa4]
006dc248  a0 30 8d e5  str	r3, [sp, #0xa0]
006dc24c  2d fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x74c
006dc250  64 32 9f e5  ldr	r3, [pc, #0x264]        @ 0x6dc4bc <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x96c>
006dc254  08 20 a0 e3  mov	r2, #8
006dc258  07 00 a0 e1  mov	r0, r7
006dc25c  03 30 8f e0  add	r3, pc, r3
006dc260  98 10 8d e2  add	r1, sp, #152
006dc264  9c 20 8d e5  str	r2, [sp, #0x9c]
006dc268  98 30 8d e5  str	r3, [sp, #0x98]
006dc26c  25 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x76c
006dc270  48 32 9f e5  ldr	r3, [pc, #0x248]        @ 0x6dc4c0 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x970>
006dc274  1c 80 a0 e3  mov	r8, #28
006dc278  07 00 a0 e1  mov	r0, r7
006dc27c  03 30 8f e0  add	r3, pc, r3
006dc280  90 10 8d e2  add	r1, sp, #144
006dc284  90 30 8d e5  str	r3, [sp, #0x90]
006dc288  94 80 8d e5  str	r8, [sp, #0x94]
006dc28c  1d fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x78c
006dc290  2c 32 9f e5  ldr	r3, [pc, #0x22c]        @ 0x6dc4c4 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x974>
006dc294  07 00 a0 e1  mov	r0, r7
006dc298  88 10 8d e2  add	r1, sp, #136
006dc29c  03 30 8f e0  add	r3, pc, r3
006dc2a0  88 30 8d e5  str	r3, [sp, #0x88]
006dc2a4  8c 80 8d e5  str	r8, [sp, #0x8c]
006dc2a8  16 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x7a8
006dc2ac  14 32 9f e5  ldr	r3, [pc, #0x214]        @ 0x6dc4c8 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x978>
006dc2b0  1d 80 a0 e3  mov	r8, #29
006dc2b4  07 00 a0 e1  mov	r0, r7
006dc2b8  03 30 8f e0  add	r3, pc, r3
006dc2bc  80 10 8d e2  add	r1, sp, #128
006dc2c0  80 30 8d e5  str	r3, [sp, #0x80]
006dc2c4  84 80 8d e5  str	r8, [sp, #0x84]
006dc2c8  0e fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x7c8
006dc2cc  f8 31 9f e5  ldr	r3, [pc, #0x1f8]        @ 0x6dc4cc <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x97c>
006dc2d0  07 00 a0 e1  mov	r0, r7
006dc2d4  78 10 8d e2  add	r1, sp, #120
006dc2d8  03 30 8f e0  add	r3, pc, r3
006dc2dc  78 30 8d e5  str	r3, [sp, #0x78]
006dc2e0  7c 80 8d e5  str	r8, [sp, #0x7c]
006dc2e4  07 fe ff eb  bl	0x6dbb08 <_ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_> @ imm = #-0x7e4
006dc2e8  e0 31 9f e5  ldr	r3, [pc, #0x1e0]        @ 0x6dc4d0 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x980>
006dc2ec  4c 20 9d e5  ldr	r2, [sp, #0x4c]
006dc2f0  dc a1 9f e5  ldr	r10, [pc, #0x1dc]       @ 0x6dc4d4 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x984>
006dc2f4  03 30 8f e0  add	r3, pc, r3
006dc2f8  0c 20 8d e5  str	r2, [sp, #0xc]
006dc2fc  03 20 a0 e1  mov	r2, r3
006dc300  10 50 e2 e5  strb	r5, [r2, #0x10]!
006dc304  20 50 83 e5  str	r5, [r3, #0x20]
006dc308  14 50 83 e5  str	r5, [r3, #0x14]
006dc30c  0a a0 8f e0  add	r10, pc, r10
006dc310  1c 20 83 e5  str	r2, [r3, #0x1c]
006dc314  18 20 83 e5  str	r2, [r3, #0x18]
006dc318  68 30 8d e2  add	r3, sp, #104
006dc31c  10 a0 8a e2  add	r10, r10, #16
006dc320  48 80 9d e5  ldr	r8, [sp, #0x48]
006dc324  40 50 9d e5  ldr	r5, [sp, #0x40]
006dc328  50 90 9d e5  ldr	r9, [sp, #0x50]
006dc32c  10 b0 8d e2  add	r11, sp, #16
006dc330  08 30 8d e5  str	r3, [sp, #0x8]
006dc334  0a 00 00 ea  b	0x6dc364 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x814> @ imm = #0x28
006dc338  00 30 95 e5  ldr	r3, [r5]
006dc33c  68 30 8d e5  str	r3, [sp, #0x68]
006dc340  04 30 95 e5  ldr	r3, [r5, #0x4]
006dc344  08 50 85 e2  add	r5, r5, #8
006dc348  6c 30 8d e5  str	r3, [sp, #0x6c]
006dc34c  71 fc ff eb  bl	0x6db518 <_ZNSt4priv8_Rb_treeIPKcN6glitch4core11SStringLessESt4pairIKS2_NS3_5video18E_VERTEX_ATTRIBUTEEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EENS4_10SAllocatorISA_LNS3_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueERKSA_> @ imm = #-0xe3c
006dc350  08 00 55 e1  cmp	r5, r8
006dc354  0c 20 9d 05  ldreq	r2, [sp, #0xc]
006dc358  04 50 b2 05  ldreq	r5, [r2, #0x4]!
006dc35c  0c 20 8d 05  streq	r2, [sp, #0xc]
006dc360  80 80 85 02  addeq	r8, r5, #128
006dc364  05 00 59 e1  cmp	r9, r5
006dc368  0b 00 a0 e1  mov	r0, r11
006dc36c  0a 10 a0 e1  mov	r1, r10
006dc370  08 20 9d e5  ldr	r2, [sp, #0x8]
006dc374  ef ff ff 1a  bne	0x6dc338 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x7e8> @ imm = #-0x44
006dc378  58 51 9f e5  ldr	r5, [pc, #0x158]        @ 0x6dc4d8 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x988>
006dc37c  05 50 8f e0  add	r5, pc, r5
006dc380  0c 00 85 e2  add	r0, r5, #12
006dc384  ac c9 f0 eb  bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x3cd950
006dc388  4c 31 9f e5  ldr	r3, [pc, #0x14c]        @ 0x6dc4dc <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x98c>
006dc38c  10 00 85 e2  add	r0, r5, #16
006dc390  03 10 96 e7  ldr	r1, [r6, r3]
006dc394  44 31 9f e5  ldr	r3, [pc, #0x144]        @ 0x6dc4e0 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x990>
006dc398  03 20 96 e7  ldr	r2, [r6, r3]
006dc39c  d8 c7 f0 eb  bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x3ce0a0
006dc3a0  40 30 9d e5  ldr	r3, [sp, #0x40]
006dc3a4  48 20 9d e5  ldr	r2, [sp, #0x48]
006dc3a8  50 10 9d e5  ldr	r1, [sp, #0x50]
006dc3ac  4c 00 9d e5  ldr	r0, [sp, #0x4c]
006dc3b0  03 00 51 e1  cmp	r1, r3
006dc3b4  0a 00 00 0a  beq	0x6dc3e4 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x894> @ imm = #0x28
006dc3b8  08 30 83 e2  add	r3, r3, #8
006dc3bc  02 00 53 e1  cmp	r3, r2
006dc3c0  04 00 00 0a  beq	0x6dc3d8 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x888> @ imm = #0x10
006dc3c4  03 00 51 e1  cmp	r1, r3
006dc3c8  08 30 83 e2  add	r3, r3, #8
006dc3cc  04 00 00 0a  beq	0x6dc3e4 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x894> @ imm = #0x10
006dc3d0  03 00 52 e1  cmp	r2, r3
006dc3d4  fa ff ff 1a  bne	0x6dc3c4 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x874> @ imm = #-0x18
006dc3d8  04 30 b0 e5  ldr	r3, [r0, #0x4]!
006dc3dc  80 20 83 e2  add	r2, r3, #128
006dc3e0  f2 ff ff ea  b	0x6dc3b0 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x860> @ imm = #-0x38
006dc3e4  07 00 a0 e1  mov	r0, r7
006dc3e8  c0 fc ff eb  bl	0x6db6f0 <_ZNSt4priv11_Deque_baseISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEESaIS7_EED2Ev> @ imm = #-0xd00
006dc3ec  e1 fd ff ea  b	0x6dbb78 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x28> @ imm = #-0x87c
006dc3f0  08 00 a0 e1  mov	r0, r8
006dc3f4  70 10 8d e2  add	r1, sp, #112
006dc3f8  5f fd ff eb  bl	0x6db97c <_ZNSt5dequeISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEESaIS6_EE18_M_push_back_aux_vERKS6_> @ imm = #-0xa84
006dc3fc  4b fe ff ea  b	0x6dbd30 <_ZN6glitch5video26guessShaderVertexAttributeEPKc+0x1e0> @ imm = #-0x6d4
006dc400  14 c7 31 00  .word	0x0031c714
006dc404  28 8f 2b 00  .word	0x002b8f28
006dc408  e0 36 00 00  .word	0x000036e0
006dc40c  74 c6 31 00  .word	0x0031c674
006dc410  28 c6 31 00  .word	0x0031c628
006dc414  00 c6 31 00  .word	0x0031c600
006dc418  34 fb 20 00  .word	0x0020fb34
006dc41c  a8 fa 20 00  .word	0x0020faa8
006dc420  70 64 1e 00  .word	0x001e6470
006dc424  74 fa 20 00  .word	0x0020fa74
006dc428  88 13 20 00  .word	0x00201388
006dc42c  48 fa 20 00  .word	0x0020fa48
006dc430  34 fa 20 00  .word	0x0020fa34
006dc434  1c fa 20 00  .word	0x0020fa1c
006dc438  10 fa 20 00  .word	0x0020fa10
006dc43c  04 fa 20 00  .word	0x0020fa04
006dc440  f4 f9 20 00  .word	0x0020f9f4
006dc444  e4 f9 20 00  .word	0x0020f9e4
006dc448  d4 f9 20 00  .word	0x0020f9d4
006dc44c  c4 f9 20 00  .word	0x0020f9c4
006dc450  b8 f9 20 00  .word	0x0020f9b8
006dc454  ac f9 20 00  .word	0x0020f9ac
006dc458  9c f9 20 00  .word	0x0020f99c
006dc45c  8c f9 20 00  .word	0x0020f98c
006dc460  7c f9 20 00  .word	0x0020f97c
006dc464  a4 6b 20 00  .word	0x00206ba4
006dc468  48 f9 20 00  .word	0x0020f948
006dc46c  34 f9 20 00  .word	0x0020f934
006dc470  1c f9 20 00  .word	0x0020f91c
006dc474  10 f9 20 00  .word	0x0020f910
006dc478  04 f9 20 00  .word	0x0020f904
006dc47c  ec f8 20 00  .word	0x0020f8ec
006dc480  d8 f8 20 00  .word	0x0020f8d8
006dc484  c0 f8 20 00  .word	0x0020f8c0
006dc488  a8 f8 20 00  .word	0x0020f8a8
006dc48c  90 f8 20 00  .word	0x0020f890
006dc490  74 f8 20 00  .word	0x0020f874
006dc494  5c f8 20 00  .word	0x0020f85c
006dc498  40 f8 20 00  .word	0x0020f840
006dc49c  28 f8 20 00  .word	0x0020f828
006dc4a0  1c f8 20 00  .word	0x0020f81c
006dc4a4  10 f8 20 00  .word	0x0020f810
006dc4a8  04 f8 20 00  .word	0x0020f804
006dc4ac  f8 f7 20 00  .word	0x0020f7f8
006dc4b0  ec f7 20 00  .word	0x0020f7ec
006dc4b4  dc f7 20 00  .word	0x0020f7dc
006dc4b8  cc f7 20 00  .word	0x0020f7cc
006dc4bc  bc f7 20 00  .word	0x0020f7bc
006dc4c0  ac f7 20 00  .word	0x0020f7ac
006dc4c4  9c f7 20 00  .word	0x0020f79c
006dc4c8  90 f7 20 00  .word	0x0020f790
006dc4cc  80 f7 20 00  .word	0x0020f780
006dc4d0  80 bf 31 00  .word	0x0031bf80
006dc4d4  68 bf 31 00  .word	0x0031bf68
006dc4d8  f8 be 31 00  .word	0x0031bef8
006dc4dc  3c 11 00 00  .word	0x0000113c
006dc4e0  90 18 00 00  .word	0x00001890
; FUNCTION key=vertex_stream_exact_search
; symbol=glitch::video::CVertexStreams::getStream(glitch::video::E_VERTEX_ATTRIBUTE, glitch::video::SVertexStream const*, glitch::video::SVertexStream const*) const
; mangled=_ZNK6glitch5video14CVertexStreams9getStreamENS0_18E_VERTEX_ATTRIBUTEEPKNS0_13SVertexStreamES5_
; elf_va=0x005a0aac range_size=68 file_offset=5900972 sha256=325770b6c97267f20d014c5740327d74c5e3249f07bd4ef982b45547c310d718
; decoder_mode=arm
005a0aac  03 00 52 e1  cmp	r2, r3
005a0ab0  09 00 00 0a  beq	0x5a0adc <_ZNK6glitch5video14CVertexStreams9getStreamENS0_18E_VERTEX_ATTRIBUTEEPKNS0_13SVertexStreamES5_+0x30> @ imm = #0x24
005a0ab4  b8 c0 d2 e1  ldrh	r12, [r2, #8]
005a0ab8  01 00 5c e1  cmp	r12, r1
005a0abc  03 00 00 ba  blt	0x5a0ad0 <_ZNK6glitch5video14CVertexStreams9getStreamENS0_18E_VERTEX_ATTRIBUTEEPKNS0_13SVertexStreamES5_+0x24> @ imm = #0xc
005a0ac0  0c 00 51 e1  cmp	r1, r12
005a0ac4  10 20 90 15  ldrne	r2, [r0, #0x10]
005a0ac8  02 00 a0 e1  mov	r0, r2
005a0acc  1e ff 2f e1  bx	lr
005a0ad0  10 20 82 e2  add	r2, r2, #16
005a0ad4  02 00 53 e1  cmp	r3, r2
005a0ad8  f5 ff ff 1a  bne	0x5a0ab4 <_ZNK6glitch5video14CVertexStreams9getStreamENS0_18E_VERTEX_ATTRIBUTEEPKNS0_13SVertexStreamES5_+0x8> @ imm = #-0x2c
005a0adc  b8 c0 d2 e1  ldrh	r12, [r2, #8]
005a0ae0  0c 00 51 e1  cmp	r1, r12
005a0ae4  10 20 90 15  ldrne	r2, [r0, #0x10]
005a0ae8  02 00 a0 e1  mov	r0, r2
005a0aec  1e ff 2f e1  bx	lr
; FUNCTION key=vertex_attribute_map_copy_30_bytes
; symbol=glitch::video::CVertexAttributeMap::CVertexAttributeMap(unsigned char const*)
; mangled=_ZN6glitch5video19CVertexAttributeMapC1EPKh
; elf_va=0x005a07f4 range_size=32 file_offset=5900276 sha256=dff4c21d421f0efff8cf8fa5fa64049c9105ae980adb42ecd795bc07fc0390ad
; decoder_mode=arm
005a07f4  00 30 a0 e3  mov	r3, #0
005a07f8  10 40 2d e9  push	{r4, lr}
005a07fc  1e 20 a0 e3  mov	r2, #30
005a0800  00 40 a0 e1  mov	r4, r0
005a0804  04 30 80 e4  str	r3, [r0], #4
005a0808  16 b8 f5 eb  bl	0x30e868 <memcpy@plt>   @ imm = #-0x291fa8
005a080c  04 00 a0 e1  mov	r0, r4
005a0810  10 80 bd e8  pop	{r4, pc}
; FUNCTION key=vertex_attribute_map_default_from_streams
; symbol=glitch::video::CVertexAttributeMap::CVertexAttributeMap(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&)
; mangled=_ZN6glitch5video19CVertexAttributeMapC1ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEE
; elf_va=0x005a0958 range_size=68 file_offset=5900632 sha256=4646be26d30a8e7c65b1f82fdc27610e80e345da983b0635300844d2e1e1c8d2
; decoder_mode=arm
005a0958  10 40 2d e9  push	{r4, lr}
005a095c  00 30 a0 e3  mov	r3, #0
005a0960  00 30 80 e5  str	r3, [r0]
005a0964  00 40 a0 e1  mov	r4, r0
005a0968  00 00 91 e5  ldr	r0, [r1]
005a096c  03 00 50 e1  cmp	r0, r3
005a0970  03 00 00 0a  beq	0x5a0984 <_ZN6glitch5video19CVertexAttributeMapC1ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEE+0x2c> @ imm = #0xc
005a0974  04 10 84 e2  add	r1, r4, #4
005a0978  dd ff ff eb  bl	0x5a08f4 <_ZN6glitch5video23makeDefaultAttributeMapEPKNS0_14CVertexStreamsEPh> @ imm = #-0x8c
005a097c  04 00 a0 e1  mov	r0, r4
005a0980  10 80 bd e8  pop	{r4, pc}
005a0984  04 00 84 e2  add	r0, r4, #4
005a0988  ff 10 a0 e3  mov	r1, #255
005a098c  1e 20 a0 e3  mov	r2, #30
005a0990  b2 b6 f5 eb  bl	0x30e460 <memset@plt>   @ imm = #-0x292538
005a0994  04 00 a0 e1  mov	r0, r4
005a0998  10 80 bd e8  pop	{r4, pc}
; FUNCTION key=vertex_attribute_map_pair_constructor
; symbol=glitch::video::CVertexAttributeMap::CVertexAttributeMap(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, unsigned int, unsigned char const*, bool)
; mangled=_ZN6glitch5video19CVertexAttributeMapC1ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb
; elf_va=0x005a0834 range_size=96 file_offset=5900340 sha256=7451a1733bff22a190b9c048b8d41b142a62e0a8f2b6a748c6fa9376a6e544a7
; decoder_mode=arm
005a0834  f0 41 2d e9  push	{r4, r5, r6, r7, r8, lr}
005a0838  00 c0 a0 e3  mov	r12, #0
005a083c  08 d0 4d e2  sub	sp, sp, #8
005a0840  00 40 a0 e1  mov	r4, r0
005a0844  01 50 a0 e1  mov	r5, r1
005a0848  04 c0 80 e4  str	r12, [r0], #4
005a084c  02 70 a0 e1  mov	r7, r2
005a0850  ff 10 a0 e3  mov	r1, #255
005a0854  1e 20 a0 e3  mov	r2, #30
005a0858  03 80 a0 e1  mov	r8, r3
005a085c  20 60 dd e5  ldrb	r6, [sp, #0x20]
005a0860  fe b6 f5 eb  bl	0x30e460 <memset@plt>   @ imm = #-0x292408
005a0864  00 30 95 e5  ldr	r3, [r5]
005a0868  00 00 53 e3  cmp	r3, #0
005a086c  05 00 00 0a  beq	0x5a0888 <_ZN6glitch5video19CVertexAttributeMapC1ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb+0x54> @ imm = #0x14
005a0870  05 10 a0 e1  mov	r1, r5
005a0874  07 20 a0 e1  mov	r2, r7
005a0878  08 30 a0 e1  mov	r3, r8
005a087c  04 00 a0 e1  mov	r0, r4
005a0880  00 60 8d e5  str	r6, [sp]
005a0884  9f ff ff eb  bl	0x5a0708 <_ZN6glitch5video19CVertexAttributeMap3setERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb> @ imm = #-0x184
005a0888  04 00 a0 e1  mov	r0, r4
005a088c  08 d0 8d e2  add	sp, sp, #8
005a0890  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
; FUNCTION key=vertex_attribute_map_set_pairs
; symbol=glitch::video::CVertexAttributeMap::set(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, unsigned int, unsigned char const*, bool)
; mangled=_ZN6glitch5video19CVertexAttributeMap3setERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb
; elf_va=0x005a0708 range_size=128 file_offset=5900040 sha256=3429093c705e188296b049b6cb906bd0cc3ee878784d5884e6431e1f8ea7b8ad
; decoder_mode=arm
005a0708  f0 47 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, lr}
005a070c  82 70 83 e0  add	r7, r3, r2, lsl #1
005a0710  07 00 53 e1  cmp	r3, r7
005a0714  00 a0 a0 e1  mov	r10, r0
005a0718  03 40 a0 e1  mov	r4, r3
005a071c  01 60 a0 e1  mov	r6, r1
005a0720  20 80 dd e5  ldrb	r8, [sp, #0x20]
005a0724  00 00 91 e5  ldr	r0, [r1]
005a0728  15 00 00 0a  beq	0x5a0784 <_ZN6glitch5video19CVertexAttributeMap3setERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb+0x7c> @ imm = #0x54
005a072c  14 50 80 e2  add	r5, r0, #20
005a0730  00 00 00 ea  b	0x5a0738 <_ZN6glitch5video19CVertexAttributeMap3setERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb+0x30> @ imm = #0x0
005a0734  00 00 96 e5  ldr	r0, [r6]
005a0738  05 20 a0 e1  mov	r2, r5
005a073c  10 30 90 e5  ldr	r3, [r0, #0x10]
005a0740  01 10 d4 e5  ldrb	r1, [r4, #0x1]
005a0744  d8 00 00 eb  bl	0x5a0aac <_ZNK6glitch5video14CVertexStreams9getStreamENS0_18E_VERTEX_ATTRIBUTEEPKNS0_13SVertexStreamES5_> @ imm = #0x360
005a0748  00 30 96 e5  ldr	r3, [r6]
005a074c  10 20 93 e5  ldr	r2, [r3, #0x10]
005a0750  14 30 83 e2  add	r3, r3, #20
005a0754  00 30 63 e0  rsb	r3, r3, r0
005a0758  02 00 50 e1  cmp	r0, r2
005a075c  05 00 00 0a  beq	0x5a0778 <_ZN6glitch5video19CVertexAttributeMap3setERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb+0x70> @ imm = #0x14
005a0760  00 20 d4 e5  ldrb	r2, [r4]
005a0764  43 32 a0 e1  asr	r3, r3, #4
005a0768  00 00 58 e3  cmp	r8, #0
005a076c  02 20 8a e0  add	r2, r10, r2
005a0770  00 50 a0 11  movne	r5, r0
005a0774  04 30 c2 e5  strb	r3, [r2, #0x4]
005a0778  02 40 84 e2  add	r4, r4, #2
005a077c  04 00 57 e1  cmp	r7, r4
005a0780  eb ff ff 1a  bne	0x5a0734 <_ZN6glitch5video19CVertexAttributeMap3setERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb+0x2c> @ imm = #-0x54
005a0784  f0 87 bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, pc}
; FUNCTION key=vertex_attribute_map_default_population
; symbol=glitch::video::makeDefaultAttributeMap(glitch::video::CVertexStreams const*, unsigned char*)
; mangled=_ZN6glitch5video23makeDefaultAttributeMapEPKNS0_14CVertexStreamsEPh
; elf_va=0x005a08f4 range_size=100 file_offset=5900532 sha256=014bb273bffac68596528c0474e7d36bbf8a0f4db55037a97c4b59897bae6fe2
; decoder_mode=arm
005a08f4  70 40 2d e9  push	{r4, r5, r6, lr}
005a08f8  01 40 a0 e1  mov	r4, r1
005a08fc  00 50 a0 e1  mov	r5, r0
005a0900  1e 20 a0 e3  mov	r2, #30
005a0904  ff 10 a0 e3  mov	r1, #255
005a0908  04 00 a0 e1  mov	r0, r4
005a090c  d3 b6 f5 eb  bl	0x30e460 <memset@plt>   @ imm = #-0x2924b4
005a0910  10 30 95 e5  ldr	r3, [r5, #0x10]
005a0914  14 20 85 e2  add	r2, r5, #20
005a0918  02 00 53 e1  cmp	r3, r2
005a091c  0b 00 00 0a  beq	0x5a0950 <_ZN6glitch5video23makeDefaultAttributeMapEPKNS0_14CVertexStreamsEPh+0x5c> @ imm = #0x2c
005a0920  24 00 85 e2  add	r0, r5, #36
005a0924  03 00 60 e0  rsb	r0, r0, r3
005a0928  0f 00 c0 e3  bic	r0, r0, #15
005a092c  10 00 80 e2  add	r0, r0, #16
005a0930  00 30 a0 e3  mov	r3, #0
005a0934  bc 21 d5 e1  ldrh	r2, [r5, #28]
005a0938  43 12 a0 e1  asr	r1, r3, #4
005a093c  10 30 83 e2  add	r3, r3, #16
005a0940  00 00 53 e1  cmp	r3, r0
005a0944  02 10 c4 e7  strb	r1, [r4, r2]
005a0948  10 50 85 e2  add	r5, r5, #16
005a094c  f8 ff ff 1a  bne	0x5a0934 <_ZN6glitch5video23makeDefaultAttributeMapEPKNS0_14CVertexStreamsEPh+0x40> @ imm = #-0x20
005a0950  04 00 a0 e1  mov	r0, r4
005a0954  70 80 bd e8  pop	{r4, r5, r6, pc}
; FUNCTION key=material_vertex_attribute_map_set
; symbol=glitch::video::CMaterialVertexAttributeMap::set(unsigned char, unsigned char, boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const&)
; mangled=_ZN6glitch5video27CMaterialVertexAttributeMap3setEhhRKN5boost13intrusive_ptrINS0_19CVertexAttributeMapEEE
; elf_va=0x005df814 range_size=132 file_offset=6158356 sha256=1f12001d9ca601aa13d896a1562acd995d525c502e1a55ae940fb071f2e1470b
; decoder_mode=arm
005df814  70 00 2d e9  push	{r4, r5, r6}
005df818  04 c0 90 e5  ldr	r12, [r0, #0x4]
005df81c  0c 50 a0 e3  mov	r5, #12
005df820  00 30 93 e5  ldr	r3, [r3]
005df824  18 40 9c e5  ldr	r4, [r12, #0x18]
005df828  1c c0 9c e5  ldr	r12, [r12, #0x1c]
005df82c  00 00 53 e3  cmp	r3, #0
005df830  95 41 24 e0  mla	r4, r5, r1, r4
005df834  c5 6e 04 e3  movw	r6, #0x4ec5
005df838  08 10 94 e5  ldr	r1, [r4, #0x8]
005df83c  34 40 a0 e3  mov	r4, #52
005df840  ec 64 4c e3  movt	r6, #0xc4ec
005df844  94 12 21 e0  mla	r1, r4, r2, r1
005df848  00 20 93 15  ldrne	r2, [r3]
005df84c  01 c0 6c e0  rsb	r12, r12, r1
005df850  4c c1 a0 e1  asr	r12, r12, #2
005df854  96 0c 06 e0  mul	r6, r6, r12
005df858  01 20 82 12  addne	r2, r2, #1
005df85c  00 20 83 15  strne	r2, [r3]
005df860  08 50 80 e2  add	r5, r0, #8
005df864  06 01 95 e7  ldr	r0, [r5, r6, lsl #2]
005df868  06 31 85 e7  str	r3, [r5, r6, lsl #2]
005df86c  00 00 50 e3  cmp	r0, #0
005df870  06 00 00 0a  beq	0x5df890 <_ZN6glitch5video27CMaterialVertexAttributeMap3setEhhRKN5boost13intrusive_ptrINS0_19CVertexAttributeMapEEE+0x7c> @ imm = #0x18
005df874  00 30 90 e5  ldr	r3, [r0]
005df878  01 30 43 e2  sub	r3, r3, #1
005df87c  00 00 53 e3  cmp	r3, #0
005df880  00 30 80 e5  str	r3, [r0]
005df884  01 00 00 1a  bne	0x5df890 <_ZN6glitch5video27CMaterialVertexAttributeMap3setEhhRKN5boost13intrusive_ptrINS0_19CVertexAttributeMapEEE+0x7c> @ imm = #0x4
005df888  70 00 bd e8  pop	{r4, r5, r6}
005df88c  87 ba f4 ea  b	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x2d15e4
005df890  70 00 bd e8  pop	{r4, r5, r6}
005df894  1e ff 2f e1  bx	lr
; FUNCTION key=collada_material_vertex_attribute_maps
; symbol=glitch::collada::CColladaFactory::createMaterialVertexAttributeMap(glitch::collada::CColladaDatabase const&, glitch::collada::SInstanceMaterial*, boost::intrusive_ptr<glitch::collada::IMesh> const&, boost::intrusive_ptr<glitch::video::CMaterial> const&, unsigned int, bool)
; mangled=_ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb
; elf_va=0x00634520 range_size=1152 file_offset=6505760 sha256=2181e4833f595b9c3d200b08299e98536b25e9e78df902c4c5fe8c209c8485fd
; decoder_mode=arm
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
; FUNCTION key=gles_setup_arrays
; symbol=glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)
; mangled=_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh
; elf_va=0x005b6584 range_size=484 file_offset=5989764 sha256=6f2a62d4dcd27b55bde8de4f2c4b15dc237474b8ddef46b64564fd09ad96b4d5
; decoder_mode=arm
005b6584  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
005b6588  24 40 91 e5  ldr	r4, [r1, #0x24]
005b658c  3c 80 d1 e5  ldrb	r8, [r1, #0x3c]
005b6590  2c d0 4d e2  sub	sp, sp, #44
005b6594  18 00 8d e5  str	r0, [sp, #0x18]
005b6598  88 81 84 e0  add	r8, r4, r8, lsl #3
005b659c  08 00 54 e1  cmp	r4, r8
005b65a0  14 20 8d e5  str	r2, [sp, #0x14]
005b65a4  10 30 8d e5  str	r3, [sp, #0x10]
005b65a8  00 70 a0 03  moveq	r7, #0
005b65ac  4e 00 00 0a  beq	0x5b66ec <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x168> @ imm = #0x138
005b65b0  a4 11 9f e5  ldr	r1, [pc, #0x1a4]        @ 0x5b675c <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x1d8>
005b65b4  a4 21 9f e5  ldr	r2, [pc, #0x1a4]        @ 0x5b6760 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x1dc>
005b65b8  a4 31 9f e5  ldr	r3, [pc, #0x1a4]        @ 0x5b6764 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x1e0>
005b65bc  01 10 8f e0  add	r1, pc, r1
005b65c0  02 20 8f e0  add	r2, pc, r2
005b65c4  03 30 8f e0  add	r3, pc, r3
005b65c8  00 70 a0 e3  mov	r7, #0
005b65cc  15 1e 81 e2  add	r1, r1, #336
005b65d0  33 2e 82 e2  add	r2, r2, #816
005b65d4  15 3e 83 e2  add	r3, r3, #336
005b65d8  20 10 8d e5  str	r1, [sp, #0x20]
005b65dc  1c 20 8d e5  str	r2, [sp, #0x1c]
005b65e0  24 30 8d e5  str	r3, [sp, #0x24]
005b65e4  07 a0 a0 e1  mov	r10, r7
005b65e8  07 c0 a0 e1  mov	r12, r7
005b65ec  1e 00 00 ea  b	0x5b666c <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0xe8> @ imm = #0x78
005b65f0  05 00 5c e1  cmp	r12, r5
005b65f4  03 00 00 0a  beq	0x5b6608 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x84> @ imm = #0xc
005b65f8  18 00 9d e5  ldr	r0, [sp, #0x18]
005b65fc  05 10 a0 e1  mov	r1, r5
005b6600  c3 ff ff eb  bl	0x5b6514 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE9setBufferEPNS0_7IBufferE> @ imm = #-0xf4
005b6604  00 a0 a0 e1  mov	r10, r0
005b6608  ba 30 d9 e1  ldrh	r3, [r9, #10]
005b660c  1c 00 9d e5  ldr	r0, [sp, #0x1c]
005b6610  bc 10 d9 e1  ldrh	r1, [r9, #12]
005b6614  06 00 53 e3  cmp	r3, #6
005b6618  03 21 90 e7  ldr	r2, [r0, r3, lsl #2]
005b661c  00 30 a0 03  moveq	r3, #0
005b6620  04 00 00 0a  beq	0x5b6638 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0xb4> @ imm = #0x10
005b6624  01 30 a0 e3  mov	r3, #1
005b6628  13 bb a0 e1  lsl	r11, r3, r11
005b662c  12 32 db e3  bics	r3, r11, #536870913
005b6630  00 30 a0 03  moveq	r3, #0
005b6634  01 30 a0 13  movne	r3, #1
005b6638  04 c0 99 e5  ldr	r12, [r9, #0x4]
005b663c  be e0 d9 e1  ldrh	lr, [r9, #14]
005b6640  06 00 a0 e1  mov	r0, r6
005b6644  0c c0 8a e0  add	r12, r10, r12
005b6648  08 40 84 e2  add	r4, r4, #8
005b664c  04 c0 8d e5  str	r12, [sp, #0x4]
005b6650  00 e0 8d e5  str	lr, [sp]
005b6654  85 61 f5 eb  bl	0x30ec70 <glVertexAttribPointer@plt> @ imm = #-0x2a79ec
005b6658  01 30 a0 e3  mov	r3, #1
005b665c  08 00 54 e1  cmp	r4, r8
005b6660  13 76 87 e1  orr	r7, r7, r3, lsl r6
005b6664  05 c0 a0 e1  mov	r12, r5
005b6668  1f 00 00 0a  beq	0x5b66ec <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x168> @ imm = #0x7c
005b666c  b4 b0 d4 e1  ldrh	r11, [r4, #4]
005b6670  10 00 9d e5  ldr	r0, [sp, #0x10]
005b6674  b6 60 d4 e1  ldrh	r6, [r4, #6]
005b6678  0b 30 d0 e7  ldrb	r3, [r0, r11]
005b667c  ff 00 53 e3  cmp	r3, #255
005b6680  2b 00 00 0a  beq	0x5b6734 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x1b0> @ imm = #0xac
005b6684  14 00 9d e5  ldr	r0, [sp, #0x14]
005b6688  14 90 80 e2  add	r9, r0, #20
005b668c  03 52 99 e7  ldr	r5, [r9, r3, lsl #4]
005b6690  03 92 89 e0  add	r9, r9, r3, lsl #4
005b6694  00 00 55 e3  cmp	r5, #0
005b6698  05 00 00 0a  beq	0x5b66b4 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x130> @ imm = #0x14
005b669c  11 30 d5 e5  ldrb	r3, [r5, #0x11]
005b66a0  04 00 53 e3  cmp	r3, #4
005b66a4  d1 ff ff 1a  bne	0x5b65f0 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x6c> @ imm = #-0xbc
005b66a8  08 30 95 e5  ldr	r3, [r5, #0x8]
005b66ac  00 00 53 e3  cmp	r3, #0
005b66b0  ce ff ff 1a  bne	0x5b65f0 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x6c> @ imm = #-0xc8
005b66b4  20 30 9d e5  ldr	r3, [sp, #0x20]
005b66b8  0b 12 93 e7  ldr	r1, [r3, r11, lsl #4]
005b66bc  0b 02 83 e0  add	r0, r3, r11, lsl #4
005b66c0  0c e0 90 e5  ldr	lr, [r0, #0xc]
005b66c4  04 20 90 e5  ldr	r2, [r0, #0x4]
005b66c8  08 30 90 e5  ldr	r3, [r0, #0x8]
005b66cc  08 40 84 e2  add	r4, r4, #8
005b66d0  06 00 a0 e1  mov	r0, r6
005b66d4  0c c0 8d e5  str	r12, [sp, #0xc]
005b66d8  00 e0 8d e5  str	lr, [sp]
005b66dc  a9 60 f5 eb  bl	0x30e988 <glVertexAttrib4f@plt> @ imm = #-0x2a7d5c
005b66e0  08 00 54 e1  cmp	r4, r8
005b66e4  0c c0 9d e5  ldr	r12, [sp, #0xc]
005b66e8  df ff ff 1a  bne	0x5b666c <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0xe8> @ imm = #-0x84
005b66ec  18 00 9d e5  ldr	r0, [sp, #0x18]
005b66f0  70 52 90 e5  ldr	r5, [r0, #0x270]
005b66f4  05 50 37 e0  eors	r5, r7, r5
005b66f8  13 00 00 0a  beq	0x5b674c <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x1c8> @ imm = #0x4c
005b66fc  00 40 a0 e3  mov	r4, #0
005b6700  01 80 a0 e3  mov	r8, #1
005b6704  18 64 a0 e1  lsl	r6, r8, r4
005b6708  05 00 16 e1  tst	r6, r5
005b670c  04 00 00 0a  beq	0x5b6724 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x1a0> @ imm = #0x10
005b6710  07 00 16 e1  tst	r6, r7
005b6714  04 00 a0 e1  mov	r0, r4
005b6718  09 00 00 0a  beq	0x5b6744 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x1c0> @ imm = #0x24
005b671c  ed 5d f5 eb  bl	0x30ded8 <glEnableVertexAttribArray@plt> @ imm = #-0x2a884c
005b6720  06 50 c5 e1  bic	r5, r5, r6
005b6724  00 00 55 e3  cmp	r5, #0
005b6728  07 00 00 0a  beq	0x5b674c <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x1c8> @ imm = #0x1c
005b672c  01 40 84 e2  add	r4, r4, #1
005b6730  f3 ff ff ea  b	0x5b6704 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x180> @ imm = #-0x34
005b6734  24 20 9d e5  ldr	r2, [sp, #0x24]
005b6738  0b 02 82 e0  add	r0, r2, r11, lsl #4
005b673c  0b 12 92 e7  ldr	r1, [r2, r11, lsl #4]
005b6740  de ff ff ea  b	0x5b66c0 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x13c> @ imm = #-0x88
005b6744  6a 61 f5 eb  bl	0x30ecf4 <glDisableVertexAttribArray@plt> @ imm = #-0x2a7a58
005b6748  f4 ff ff ea  b	0x5b6720 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh+0x19c> @ imm = #-0x30
005b674c  18 20 9d e5  ldr	r2, [sp, #0x18]
005b6750  70 72 82 e5  str	r7, [r2, #0x270]
005b6754  2c d0 8d e2  add	sp, sp, #44
005b6758  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
005b675c  78 9a 32 00  .word	0x00329a78
005b6760  74 9a 32 00  .word	0x00329a74
005b6764  70 9a 32 00  .word	0x00329a70
