; Selected exact ARM function listings copied from the recovered original ELF.
; Annotated evidence only; this is not assembler-ready replacement source.

; FUNCTION 0x006df3c0, declared_size=416, range_size=416, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZNK6glitch5video15CGLSLShaderCode13compileShaderEv
; demangled: glitch::video::CGLSLShaderCode::compileShader() const
; decoder-mode: arm
006df3c0  30 40 2d e9                                      push {r4, r5, lr}
006df3c4  34 50 d0 e5                                      ldrb r5, [r0, #0x34]
006df3c8  14 d0 4d e2                                      sub sp, sp, #0x14
006df3cc  00 40 a0 e1                                      mov r4, r0
006df3d0  00 00 55 e3                                      cmp r5, #0
006df3d4  02 00 00 0a                                      beq #0x6df3e4
006df3d8  00 00 a0 e3                                      mov r0, #0
006df3dc  14 d0 8d e2                                      add sp, sp, #0x14
006df3e0  30 80 bd e8                                      pop {r4, r5, pc}
006df3e4  30 00 90 e5                                      ldr r0, [r0, #0x30]
006df3e8  1f bc f0 eb                                      bl #0x30e46c
006df3ec  10 20 8d e2                                      add r2, sp, #0x10
006df3f0  04 50 22 e5                                      str r5, [r2, #-4]!
006df3f4  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df3f8  81 1b 08 e3                                      movw r1, #0x8b81
006df3fc  54 be f0 eb                                      bl #0x30ed54
006df400  10 20 8d e2                                      add r2, sp, #0x10
006df404  08 50 22 e5                                      str r5, [r2, #-8]!
006df408  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df40c  84 1b 08 e3                                      movw r1, #0x8b84
006df410  4f be f0 eb                                      bl #0x30ed54
006df414  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006df418  00 00 53 e3                                      cmp r3, #0
006df41c  25 00 00 0a                                      beq #0x6df4b8
006df420  08 00 9d e5                                      ldr r0, [sp, #8]
006df424  01 00 50 e3                                      cmp r0, #1
006df428  1f 00 00 da                                      ble #0x6df4ac
006df42c  70 54 f9 eb                                      bl #0x5345f4
006df430  08 10 9d e5                                      ldr r1, [sp, #8]
006df434  00 30 a0 e1                                      mov r3, r0
006df438  00 50 a0 e1                                      mov r5, r0
006df43c  04 20 8d e2                                      add r2, sp, #4
006df440  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df444  72 bb f0 eb                                      bl #0x30e214
006df448  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df44c  4f 1b 08 e3                                      movw r1, #0x8b4f
006df450  0d 20 a0 e1                                      mov r2, sp
006df454  3e be f0 eb                                      bl #0x30ed54
006df458  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
006df45c  05 00 a0 e1                                      mov r0, r5
006df460  01 10 8f e0                                      add r1, pc, r1
006df464  da bd f0 eb                                      bl #0x30ebd4
006df468  00 00 50 e3                                      cmp r0, #0
006df46c  0a 00 00 0a                                      beq #0x6df49c
006df470  00 20 9d e5                                      ldr r2, [sp]
006df474  31 3b 08 e3                                      movw r3, #0x8b31
006df478  03 00 52 e1                                      cmp r2, r3
006df47c  2a 00 00 0a                                      beq #0x6df52c
006df480  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
006df484  02 20 8f e0                                      add r2, pc, r2
006df488  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
006df48c  02 00 a0 e3                                      mov r0, #2
006df490  05 30 a0 e1                                      mov r3, r5
006df494  01 10 8f e0                                      add r1, pc, r1
006df498  e5 ae fc eb                                      bl #0x60b034
006df49c  00 00 55 e3                                      cmp r5, #0
006df4a0  01 00 00 0a                                      beq #0x6df4ac
006df4a4  05 00 a0 e1                                      mov r0, r5
006df4a8  76 54 f9 eb                                      bl #0x534688
006df4ac  01 00 a0 e3                                      mov r0, #1
006df4b0  34 00 c4 e5                                      strb r0, [r4, #0x34]
006df4b4  c8 ff ff ea                                      b #0x6df3dc
006df4b8  08 00 9d e5                                      ldr r0, [sp, #8]
006df4bc  4c 54 f9 eb                                      bl #0x5345f4
006df4c0  00 50 a0 e1                                      mov r5, r0
006df4c4  05 30 a0 e1                                      mov r3, r5
006df4c8  08 10 9d e5                                      ldr r1, [sp, #8]
006df4cc  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df4d0  0d 20 a0 e1                                      mov r2, sp
006df4d4  b8 ba f0 eb                                      bl #0x30dfbc
006df4d8  04 20 8d e2                                      add r2, sp, #4
006df4dc  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df4e0  4f 1b 08 e3                                      movw r1, #0x8b4f
006df4e4  1a be f0 eb                                      bl #0x30ed54
006df4e8  04 20 9d e5                                      ldr r2, [sp, #4]
006df4ec  31 3b 08 e3                                      movw r3, #0x8b31
006df4f0  03 00 52 e1                                      cmp r2, r3
006df4f4  0f 00 00 0a                                      beq #0x6df538
006df4f8  50 20 9f e5                                      ldr r2, [pc, #0x50]
006df4fc  02 20 8f e0                                      add r2, pc, r2
006df500  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
006df504  03 00 a0 e3                                      mov r0, #3
006df508  05 30 a0 e1                                      mov r3, r5
006df50c  01 10 8f e0                                      add r1, pc, r1
006df510  c7 ae fc eb                                      bl #0x60b034
006df514  00 00 55 e3                                      cmp r5, #0
006df518  ae ff ff 0a                                      beq #0x6df3d8
006df51c  05 00 a0 e1                                      mov r0, r5
006df520  58 54 f9 eb                                      bl #0x534688
006df524  00 00 a0 e3                                      mov r0, #0
006df528  ab ff ff ea                                      b #0x6df3dc
006df52c  24 20 9f e5                                      ldr r2, [pc, #0x24]
006df530  02 20 8f e0                                      add r2, pc, r2
006df534  d3 ff ff ea                                      b #0x6df488
006df538  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
006df53c  02 20 8f e0                                      add r2, pc, r2
006df540  ee ff ff ea                                      b #0x6df500
; mapping-symbol data/literal pool
006df544  20 fa 20 00 c4 f9 20 00 f4 f9 20 00 4c f9 20 00  .byte 0x20, 0xfa, 0x20, 0x00, 0xc4, 0xf9, 0x20, 0x00, 0xf4, 0xf9, 0x20, 0x00, 0x4c, 0xf9, 0x20, 0x00
006df554  4c f9 20 00 08 c3 20 00 fc c2 20 00              .byte 0x4c, 0xf9, 0x20, 0x00, 0x08, 0xc3, 0x20, 0x00, 0xfc, 0xc2, 0x20, 0x00


; FUNCTION 0x006df560, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZN6glitch5video15CGLSLShaderCode12createShaderEiPPKci
; demangled: glitch::video::CGLSLShaderCode::createShader(int, char const**, int)
; decoder-mode: arm
006df560  30 40 2d e9                                      push {r4, r5, lr}
006df564  00 40 a0 e1                                      mov r4, r0
006df568  30 00 90 e5                                      ldr r0, [r0, #0x30]
006df56c  0c d0 4d e2                                      sub sp, sp, #0xc
006df570  03 50 a0 e1                                      mov r5, r3
006df574  00 00 50 e3                                      cmp r0, #0
006df578  04 00 00 1a                                      bne #0x6df590
006df57c  01 00 a0 e1                                      mov r0, r1
006df580  04 20 8d e5                                      str r2, [sp, #4]
006df584  eb bb f0 eb                                      bl #0x30e538
006df588  30 00 84 e5                                      str r0, [r4, #0x30]
006df58c  04 20 9d e5                                      ldr r2, [sp, #4]
006df590  05 10 a0 e1                                      mov r1, r5
006df594  00 30 a0 e3                                      mov r3, #0
006df598  0c d0 8d e2                                      add sp, sp, #0xc
006df59c  30 40 bd e8                                      pop {r4, r5, lr}
006df5a0  f7 bd f0 ea                                      b #0x30ed84


; FUNCTION 0x006df738, declared_size=320, range_size=320, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZN6glitch5video15CGLSLShaderCodeC1EPKcPS3_NS0_13E_SHADER_TYPEEPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEb
; demangled: glitch::video::CGLSLShaderCode::CGLSLShaderCode(char const*, char const**, glitch::video::E_SHADER_TYPE, glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*, bool)
; decoder-mode: arm
006df738  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006df73c  2c 61 9f e5                                      ldr r6, [pc, #0x12c]
006df740  00 40 a0 e1                                      mov r4, r0
006df744  02 50 a0 e1                                      mov r5, r2
006df748  03 80 a0 e1                                      mov r8, r3
006df74c  2c 90 dd e5                                      ldrb sb, [sp, #0x2c]
006df750  88 0a 00 eb                                      bl #0x6e2178
006df754  18 31 9f e5                                      ldr r3, [pc, #0x118]
006df758  06 60 8f e0                                      add r6, pc, r6
006df75c  28 10 9d e5                                      ldr r1, [sp, #0x28]
006df760  03 30 96 e7                                      ldr r3, [r6, r3]
006df764  00 20 a0 e3                                      mov r2, #0
006df768  2c 10 84 e5                                      str r1, [r4, #0x2c]
006df76c  08 30 83 e2                                      add r3, r3, #8
006df770  34 20 c4 e5                                      strb r2, [r4, #0x34]
006df774  00 30 84 e5                                      str r3, [r4]
006df778  30 20 84 e5                                      str r2, [r4, #0x30]
006df77c  00 00 95 e5                                      ldr r0, [r5]
006df780  02 00 50 e1                                      cmp r0, r2
006df784  00 a0 a0 01                                      moveq sl, r0
006df788  06 00 00 0a                                      beq #0x6df7a8
006df78c  05 a0 a0 e1                                      mov sl, r5
006df790  04 30 ba e5                                      ldr r3, [sl, #4]!
006df794  00 00 53 e3                                      cmp r3, #0
006df798  fc ff ff 1a                                      bne #0x6df790
006df79c  0a a0 65 e0                                      rsb sl, r5, sl
006df7a0  4a a1 a0 e1                                      asr sl, sl, #2
006df7a4  0a 01 a0 e1                                      lsl r0, sl, #2
006df7a8  04 00 58 e3                                      cmp r8, #4
006df7ac  31 2b 08 e3                                      movw r2, #0x8b31
006df7b0  30 3b 08 e3                                      movw r3, #0x8b30
006df7b4  02 30 a0 01                                      moveq r3, r2
006df7b8  28 30 84 e5                                      str r3, [r4, #0x28]
006df7bc  24 a0 84 e5                                      str sl, [r4, #0x24]
006df7c0  00 10 a0 e3                                      mov r1, #0
006df7c4  77 52 f9 eb                                      bl #0x5341a8
006df7c8  24 30 94 e5                                      ldr r3, [r4, #0x24]
006df7cc  00 b0 a0 e1                                      mov fp, r0
006df7d0  20 00 84 e5                                      str r0, [r4, #0x20]
006df7d4  00 00 53 e3                                      cmp r3, #0
006df7d8  16 00 00 da                                      ble #0x6df838
006df7dc  00 60 a0 e3                                      mov r6, #0
006df7e0  06 70 a0 e1                                      mov r7, r6
006df7e4  00 00 00 ea                                      b #0x6df7ec
006df7e8  20 b0 94 e5                                      ldr fp, [r4, #0x20]
006df7ec  06 00 95 e7                                      ldr r0, [r5, r6]
006df7f0  97 b9 f0 eb                                      bl #0x30de54
006df7f4  00 10 a0 e3                                      mov r1, #0
006df7f8  01 00 80 e2                                      add r0, r0, #1
006df7fc  69 52 f9 eb                                      bl #0x5341a8
006df800  06 00 8b e7                                      str r0, [fp, r6]
006df804  06 b0 95 e7                                      ldr fp, [r5, r6]
006df808  01 70 87 e2                                      add r7, r7, #1
006df80c  0b 00 a0 e1                                      mov r0, fp
006df810  8f b9 f0 eb                                      bl #0x30de54
006df814  20 30 94 e5                                      ldr r3, [r4, #0x20]
006df818  01 20 80 e2                                      add r2, r0, #1
006df81c  0b 10 a0 e1                                      mov r1, fp
006df820  06 00 93 e7                                      ldr r0, [r3, r6]
006df824  0f bc f0 eb                                      bl #0x30e868
006df828  24 30 94 e5                                      ldr r3, [r4, #0x24]
006df82c  04 60 86 e2                                      add r6, r6, #4
006df830  07 00 53 e1                                      cmp r3, r7
006df834  eb ff ff ca                                      bgt #0x6df7e8
006df838  04 00 58 e3                                      cmp r8, #4
006df83c  30 3b 08 e3                                      movw r3, #0x8b30
006df840  31 1b 08 e3                                      movw r1, #0x8b31
006df844  05 20 a0 e1                                      mov r2, r5
006df848  03 10 a0 11                                      movne r1, r3
006df84c  04 00 a0 e1                                      mov r0, r4
006df850  0a 30 a0 e1                                      mov r3, sl
006df854  41 ff ff eb                                      bl #0x6df560
006df858  00 00 59 e3                                      cmp sb, #0
006df85c  01 00 00 0a                                      beq #0x6df868
006df860  04 00 a0 e1                                      mov r0, r4
006df864  d5 fe ff eb                                      bl #0x6df3c0
006df868  04 00 a0 e1                                      mov r0, r4
006df86c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006df870  38 53 2b 00 0c 29 00 00                          .byte 0x38, 0x53, 0x2b, 0x00, 0x0c, 0x29, 0x00, 0x00


; FUNCTION 0x006df5d4, declared_size=80, range_size=80, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZN6glitch5video15CGLSLShaderCodeD1Ev
; demangled: glitch::video::CGLSLShaderCode::~CGLSLShaderCode()
; decoder-mode: arm
006df5d4  10 40 2d e9                                      push {r4, lr}
006df5d8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006df5dc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
006df5e0  00 40 a0 e1                                      mov r4, r0
006df5e4  03 30 8f e0                                      add r3, pc, r3
006df5e8  20 00 90 e5                                      ldr r0, [r0, #0x20]
006df5ec  02 20 93 e7                                      ldr r2, [r3, r2]
006df5f0  00 00 50 e3                                      cmp r0, #0
006df5f4  08 20 82 e2                                      add r2, r2, #8
006df5f8  00 20 84 e5                                      str r2, [r4]
006df5fc  00 00 00 0a                                      beq #0x6df604
006df600  2a bb f0 eb                                      bl #0x30e2b0
006df604  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df608  06 bc f0 eb                                      bl #0x30e628
006df60c  04 00 a0 e1                                      mov r0, r4
006df610  b3 0a 00 eb                                      bl #0x6e20e4
006df614  04 00 a0 e1                                      mov r0, r4
006df618  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006df61c  ac 54 2b 00 0c 29 00 00                          .byte 0xac, 0x54, 0x2b, 0x00, 0x0c, 0x29, 0x00, 0x00


; FUNCTION 0x006de8e0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShader13createProgramEv
; demangled: glitch::video::CGLSLShader::createProgram()
; decoder-mode: arm
006de8e0  10 40 2d e9                                      push {r4, lr}
006de8e4  00 40 a0 e1                                      mov r4, r0
006de8e8  cb c0 f0 eb                                      bl #0x30ec1c
006de8ec  4c 00 84 e5                                      str r0, [r4, #0x4c]
006de8f0  01 00 a0 e3                                      mov r0, #1
006de8f4  10 80 bd e8                                      pop {r4, pc}


; FUNCTION 0x006de9f8, declared_size=1444, range_size=1444, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShader11linkProgramEv
; demangled: glitch::video::CGLSLShader::linkProgram()
; decoder-mode: arm
006de9f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006de9fc  00 40 a0 e1                                      mov r4, r0
006dea00  4c d0 4d e2                                      sub sp, sp, #0x4c
006dea04  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
006dea08  da c0 f0 eb                                      bl #0x30ed78
006dea0c  00 60 a0 e3                                      mov r6, #0
006dea10  48 20 8d e2                                      add r2, sp, #0x48
006dea14  04 60 22 e5                                      str r6, [r2, #-4]!
006dea18  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006dea1c  82 1b 08 e3                                      movw r1, #0x8b82
006dea20  19 be f0 eb                                      bl #0x30e28c
006dea24  44 50 9d e5                                      ldr r5, [sp, #0x44]
006dea28  06 00 55 e1                                      cmp r5, r6
006dea2c  1a 00 00 1a                                      bne #0x6dea9c
006dea30  48 20 8d e2                                      add r2, sp, #0x48
006dea34  1c 50 22 e5                                      str r5, [r2, #-0x1c]!
006dea38  84 1b 08 e3                                      movw r1, #0x8b84
006dea3c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006dea40  11 be f0 eb                                      bl #0x30e28c
006dea44  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006dea48  e9 56 f9 eb                                      bl #0x5345f4
006dea4c  00 60 a0 e1                                      mov r6, r0
006dea50  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006dea54  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006dea58  30 20 8d e2                                      add r2, sp, #0x30
006dea5c  06 30 a0 e1                                      mov r3, r6
006dea60  eb bd f0 eb                                      bl #0x30e214
006dea64  24 15 9f e5                                      ldr r1, [pc, #0x524]
006dea68  03 00 a0 e3                                      mov r0, #3
006dea6c  20 20 94 e5                                      ldr r2, [r4, #0x20]
006dea70  01 10 8f e0                                      add r1, pc, r1
006dea74  06 30 a0 e1                                      mov r3, r6
006dea78  6d b1 fc eb                                      bl #0x60b034
006dea7c  00 00 56 e3                                      cmp r6, #0
006dea80  3e 50 c4 e5                                      strb r5, [r4, #0x3e]
006dea84  ee 00 00 0a                                      beq #0x6dee44
006dea88  06 00 a0 e1                                      mov r0, r6
006dea8c  fd 56 f9 eb                                      bl #0x534688
006dea90  05 00 a0 e1                                      mov r0, r5
006dea94  4c d0 8d e2                                      add sp, sp, #0x4c
006dea98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006dea9c  48 70 8d e2                                      add r7, sp, #0x48
006deaa0  18 60 27 e5                                      str r6, [r7, #-0x18]!
006deaa4  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006deaa8  84 1b 08 e3                                      movw r1, #0x8b84
006deaac  07 20 a0 e1                                      mov r2, r7
006deab0  f5 bd f0 eb                                      bl #0x30e28c
006deab4  30 00 9d e5                                      ldr r0, [sp, #0x30]
006deab8  01 00 50 e3                                      cmp r0, #1
006deabc  0a 00 00 da                                      ble #0x6deaec
006deac0  cb 56 f9 eb                                      bl #0x5345f4
006deac4  00 50 a0 e1                                      mov r5, r0
006deac8  30 10 9d e5                                      ldr r1, [sp, #0x30]
006deacc  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006dead0  2c 20 8d e2                                      add r2, sp, #0x2c
006dead4  05 30 a0 e1                                      mov r3, r5
006dead8  cd bd f0 eb                                      bl #0x30e214
006deadc  00 00 55 e3                                      cmp r5, #0
006deae0  01 00 00 0a                                      beq #0x6deaec
006deae4  05 00 a0 e1                                      mov r0, r5
006deae8  e6 56 f9 eb                                      bl #0x534688
006deaec  00 50 a0 e3                                      mov r5, #0
006deaf0  48 20 8d e2                                      add r2, sp, #0x48
006deaf4  08 50 22 e5                                      str r5, [r2, #-8]!
006deaf8  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006deafc  89 1b 08 e3                                      movw r1, #0x8b89
006deb00  e1 bd f0 eb                                      bl #0x30e28c
006deb04  48 20 8d e2                                      add r2, sp, #0x48
006deb08  0c 50 22 e5                                      str r5, [r2, #-0xc]!
006deb0c  86 1b 08 e3                                      movw r1, #0x8b86
006deb10  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006deb14  dc bd f0 eb                                      bl #0x30e28c
006deb18  04 00 a0 e1                                      mov r0, r4
006deb1c  80 ff ff eb                                      bl #0x6de924
006deb20  48 20 8d e2                                      add r2, sp, #0x48
006deb24  10 50 22 e5                                      str r5, [r2, #-0x10]!
006deb28  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006deb2c  8a 1b 08 e3                                      movw r1, #0x8b8a
006deb30  d5 bd f0 eb                                      bl #0x30e28c
006deb34  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006deb38  05 00 53 e1                                      cmp r3, r5
006deb3c  02 00 00 da                                      ble #0x6deb4c
006deb40  38 60 9d e5                                      ldr r6, [sp, #0x38]
006deb44  05 00 56 e1                                      cmp r6, r5
006deb48  b8 00 00 0a                                      beq #0x6dee30
006deb4c  48 20 8d e2                                      add r2, sp, #0x48
006deb50  00 50 a0 e3                                      mov r5, #0
006deb54  14 50 22 e5                                      str r5, [r2, #-0x14]!
006deb58  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006deb5c  87 1b 08 e3                                      movw r1, #0x8b87
006deb60  c9 bd f0 eb                                      bl #0x30e28c
006deb64  34 60 9d e5                                      ldr r6, [sp, #0x34]
006deb68  05 00 56 e1                                      cmp r6, r5
006deb6c  de 00 00 0a                                      beq #0x6deeec
006deb70  40 30 9d e5                                      ldr r3, [sp, #0x40]
006deb74  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006deb78  05 10 a0 e1                                      mov r1, r5
006deb7c  83 31 a0 e1                                      lsl r3, r3, #3
006deb80  00 02 83 e0                                      add r0, r3, r0, lsl #4
006deb84  1c 30 8d e5                                      str r3, [sp, #0x1c]
006deb88  86 55 f9 eb                                      bl #0x5341a8
006deb8c  18 00 8d e5                                      str r0, [sp, #0x18]
006deb90  40 30 9d e5                                      ldr r3, [sp, #0x40]
006deb94  38 00 9d e5                                      ldr r0, [sp, #0x38]
006deb98  18 10 9d e5                                      ldr r1, [sp, #0x18]
006deb9c  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
006deba0  01 00 80 e2                                      add r0, r0, #1
006deba4  24 10 84 e5                                      str r1, [r4, #0x24]
006deba8  91 56 f9 eb                                      bl #0x5345f4
006debac  40 30 9d e5                                      ldr r3, [sp, #0x40]
006debb0  00 60 a0 e1                                      mov r6, r0
006debb4  00 00 53 e3                                      cmp r3, #0
006debb8  2f 00 00 da                                      ble #0x6dec7c
006debbc  2c a0 8d e2                                      add sl, sp, #0x2c
006debc0  01 80 a0 e3                                      mov r8, #1
006debc4  06 00 00 ea                                      b #0x6debe4
006debc8  38 30 94 e5                                      ldr r3, [r4, #0x38]
006debcc  01 50 85 e2                                      add r5, r5, #1
006debd0  18 99 83 e1                                      orr sb, r3, r8, lsl sb
006debd4  40 30 9d e5                                      ldr r3, [sp, #0x40]
006debd8  38 90 84 e5                                      str sb, [r4, #0x38]
006debdc  05 00 53 e1                                      cmp r3, r5
006debe0  25 00 00 da                                      ble #0x6dec7c
006debe4  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006debe8  05 10 a0 e1                                      mov r1, r5
006debec  38 20 9d e5                                      ldr r2, [sp, #0x38]
006debf0  00 30 a0 e3                                      mov r3, #0
006debf4  00 a0 8d e5                                      str sl, [sp]
006debf8  04 70 8d e5                                      str r7, [sp, #4]
006debfc  08 60 8d e5                                      str r6, [sp, #8]
006dec00  05 bd f0 eb                                      bl #0x30e01c
006dec04  06 00 a0 e1                                      mov r0, r6
006dec08  d0 f3 ff eb                                      bl #0x6dbb50
006dec0c  1d 00 50 e3                                      cmp r0, #0x1d
006dec10  00 90 a0 e1                                      mov sb, r0
006dec14  eb ff ff ca                                      bgt #0x6debc8
006dec18  06 10 a0 e1                                      mov r1, r6
006dec1c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006dec20  c5 be f0 eb                                      bl #0x30e73c
006dec24  01 10 a0 e3                                      mov r1, #1
006dec28  70 30 ff e6                                      uxth r3, r0
006dec2c  06 00 a0 e1                                      mov r0, r6
006dec30  24 b0 94 e5                                      ldr fp, [r4, #0x24]
006dec34  14 30 8d e5                                      str r3, [sp, #0x14]
006dec38  0d 19 ff eb                                      bl #0x6a5074
006dec3c  85 01 8b e7                                      str r0, [fp, r5, lsl #3]
006dec40  00 00 50 e3                                      cmp r0, #0
006dec44  00 20 90 15                                      ldrne r2, [r0]
006dec48  14 30 9d e5                                      ldr r3, [sp, #0x14]
006dec4c  85 b1 8b e0                                      add fp, fp, r5, lsl #3
006dec50  01 20 82 12                                      addne r2, r2, #1
006dec54  00 20 80 15                                      strne r2, [r0]
006dec58  b4 90 cb e1                                      strh sb, [fp, #4]
006dec5c  b6 30 cb e1                                      strh r3, [fp, #6]
006dec60  38 30 94 e5                                      ldr r3, [r4, #0x38]
006dec64  01 50 85 e2                                      add r5, r5, #1
006dec68  18 99 83 e1                                      orr sb, r3, r8, lsl sb
006dec6c  40 30 9d e5                                      ldr r3, [sp, #0x40]
006dec70  38 90 84 e5                                      str sb, [r4, #0x38]
006dec74  05 00 53 e1                                      cmp r3, r5
006dec78  d9 ff ff ca                                      bgt #0x6debe4
006dec7c  00 00 56 e3                                      cmp r6, #0
006dec80  01 00 00 0a                                      beq #0x6dec8c
006dec84  06 00 a0 e1                                      mov r0, r6
006dec88  7e 56 f9 eb                                      bl #0x534688
006dec8c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006dec90  00 00 53 e3                                      cmp r3, #0
006dec94  63 00 00 0a                                      beq #0x6dee28
006dec98  18 20 9d e5                                      ldr r2, [sp, #0x18]
006dec9c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006deca0  34 00 9d e5                                      ldr r0, [sp, #0x34]
006deca4  0c 20 82 e0                                      add r2, r2, ip
006deca8  24 20 8d e5                                      str r2, [sp, #0x24]
006decac  01 00 80 e2                                      add r0, r0, #1
006decb0  be 32 c4 e1                                      strh r3, [r4, #0x2e]
006decb4  28 20 84 e5                                      str r2, [r4, #0x28]
006decb8  4d 56 f9 eb                                      bl #0x5345f4
006decbc  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006decc0  00 30 e0 e3                                      mvn r3, #0
006decc4  00 60 a0 e1                                      mov r6, r0
006decc8  00 00 51 e3                                      cmp r1, #0
006deccc  3d 30 c4 e5                                      strb r3, [r4, #0x3d]
006decd0  4c 00 00 da                                      ble #0x6dee08
006decd4  24 50 9d e5                                      ldr r5, [sp, #0x24]
006decd8  2c a0 8d e2                                      add sl, sp, #0x2c
006decdc  00 80 a0 e3                                      mov r8, #0
006dece0  1c a0 8d e5                                      str sl, [sp, #0x1c]
006dece4  20 70 8d e5                                      str r7, [sp, #0x20]
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
006dee04  b7 ff ff ca                                      bgt #0x6dece8
006dee08  01 50 a0 e3                                      mov r5, #1
006dee0c  50 50 c4 e5                                      strb r5, [r4, #0x50]
006dee10  24 00 9d e5                                      ldr r0, [sp, #0x24]
006dee14  71 10 ff e6                                      uxth r1, r1
006dee18  4c 23 fc eb                                      bl #0x5e7b50
006dee1c  00 00 56 e3                                      cmp r6, #0
006dee20  bc 02 c4 e1                                      strh r0, [r4, #0x2c]
006dee24  17 ff ff 1a                                      bne #0x6dea88
006dee28  01 00 a0 e3                                      mov r0, #1
006dee2c  18 ff ff ea                                      b #0x6dea94
006dee30  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
006dee34  20 00 94 e5                                      ldr r0, [r4, #0x20]
006dee38  03 20 a0 e3                                      mov r2, #3
006dee3c  01 10 8f e0                                      add r1, pc, r1
006dee40  a8 af fc eb                                      bl #0x60ace8
006dee44  06 00 a0 e1                                      mov r0, r6
006dee48  11 ff ff ea                                      b #0x6dea94
006dee4c  54 2b 08 e3                                      movw r2, #0x8b54
006dee50  02 00 53 e1                                      cmp r3, r2
006dee54  39 00 00 0a                                      beq #0x6def40
006dee58  36 00 00 3a                                      blo #0x6def38
006dee5c  55 2b 08 e3                                      movw r2, #0x8b55
006dee60  02 00 53 e1                                      cmp r3, r2
006dee64  27 00 00 0a                                      beq #0x6def08
006dee68  56 2b 08 e3                                      movw r2, #0x8b56
006dee6c  02 00 53 e1                                      cmp r3, r2
006dee70  b8 ff ff 1a                                      bne #0x6ded58
006dee74  01 90 a0 e3                                      mov sb, #1
006dee78  b7 ff ff ea                                      b #0x6ded5c
006dee7c  5c 2b 08 e3                                      movw r2, #0x8b5c
006dee80  02 00 53 e1                                      cmp r3, r2
006dee84  0b 90 a0 03                                      moveq sb, #0xb
006dee88  b3 ff ff 0a                                      beq #0x6ded5c
006dee8c  1f 00 00 8a                                      bhi #0x6def10
006dee90  59 2b 08 e3                                      movw r2, #0x8b59
006dee94  02 00 53 e1                                      cmp r3, r2
006dee98  1a 00 00 0a                                      beq #0x6def08
006dee9c  27 00 00 3a                                      blo #0x6def40
006deea0  5a 2b 08 e3                                      movw r2, #0x8b5a
006deea4  02 00 53 e1                                      cmp r3, r2
006deea8  09 90 a0 03                                      moveq sb, #9
006deeac  aa ff ff 0a                                      beq #0x6ded5c
006deeb0  5b 2b 08 e3                                      movw r2, #0x8b5b
006deeb4  02 00 53 e1                                      cmp r3, r2
006deeb8  a6 ff ff 1a                                      bne #0x6ded58
006deebc  0a 90 a0 e3                                      mov sb, #0xa
006deec0  a5 ff ff ea                                      b #0x6ded5c
006deec4  0c 30 49 e2                                      sub r3, sb, #0xc
006deec8  03 00 53 e3                                      cmp r3, #3
006deecc  00 a0 a0 83                                      movhi sl, #0
006deed0  12 20 e0 83                                      mvnhi r2, #0x12
006deed4  02 a0 a0 93                                      movls sl, #2
006deed8  10 30 e0 93                                      mvnls r3, #0x10
006deedc  18 20 8d 85                                      strhi r2, [sp, #0x18]
006deee0  18 30 8d 95                                      strls r3, [sp, #0x18]
006deee4  0a 70 a0 e1                                      mov r7, sl
006deee8  a3 ff ff ea                                      b #0x6ded7c
006deeec  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
006deef0  20 00 94 e5                                      ldr r0, [r4, #0x20]
006deef4  03 20 a0 e3                                      mov r2, #3
006deef8  01 10 8f e0                                      add r1, pc, r1
006deefc  79 af fc eb                                      bl #0x60ace8
006def00  06 00 a0 e1                                      mov r0, r6
006def04  e2 fe ff ea                                      b #0x6dea94
006def08  04 90 a0 e3                                      mov sb, #4
006def0c  92 ff ff ea                                      b #0x6ded5c
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
006def68  7b ff ff ea                                      b #0x6ded5c
006def6c  50 2b 08 e3                                      movw r2, #0x8b50
006def70  02 00 53 e1                                      cmp r3, r2
006def74  06 90 a0 03                                      moveq sb, #6
006def78  77 ff ff 0a                                      beq #0x6ded5c
006def7c  51 2b 08 e3                                      movw r2, #0x8b51
006def80  02 00 53 e1                                      cmp r3, r2
006def84  73 ff ff 1a                                      bne #0x6ded58
006def88  07 90 a0 e3                                      mov sb, #7
006def8c  72 ff ff ea                                      b #0x6ded5c
; mapping-symbol data/literal pool
006def90  58 03 21 00 bc ff 20 00 28 ff 20 00              .byte 0x58, 0x03, 0x21, 0x00, 0xbc, 0xff, 0x20, 0x00, 0x28, 0xff, 0x20, 0x00


; FUNCTION 0x006def9c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShader14compileAndLinkEv
; demangled: glitch::video::CGLSLShader::compileAndLink()
; decoder-mode: arm
006def9c  10 40 2d e9                                      push {r4, lr}
006defa0  00 40 a0 e1                                      mov r4, r0
006defa4  44 00 90 e5                                      ldr r0, [r0, #0x44]
006defa8  04 01 00 eb                                      bl #0x6df3c0
006defac  48 00 94 e5                                      ldr r0, [r4, #0x48]
006defb0  02 01 00 eb                                      bl #0x6df3c0
006defb4  04 00 a0 e1                                      mov r0, r4
006defb8  10 40 bd e8                                      pop {r4, lr}
006defbc  8d fe ff ea                                      b #0x6de9f8


; FUNCTION 0x006df1f0, declared_size=212, range_size=212, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShaderC1EtPKcRKN5boost13intrusive_ptrINS0_15CGLSLShaderCodeEEES9_PNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEb
; demangled: glitch::video::CGLSLShader::CGLSLShader(unsigned short, char const*, boost::intrusive_ptr<glitch::video::CGLSLShaderCode> const&, boost::intrusive_ptr<glitch::video::CGLSLShaderCode> const&, glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*, bool)
; decoder-mode: arm
006df1f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006df1f4  03 70 a0 e1                                      mov r7, r3
006df1f8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006df1fc  00 40 a0 e1                                      mov r4, r0
006df200  20 60 dd e5                                      ldrb r6, [sp, #0x20]
006df204  35 16 fc eb                                      bl #0x5e4ae0
006df208  ac 50 9f e5                                      ldr r5, [pc, #0xac]
006df20c  ac 30 9f e5                                      ldr r3, [pc, #0xac]
006df210  04 00 a0 e1                                      mov r0, r4
006df214  05 50 8f e0                                      add r5, pc, r5
006df218  03 30 95 e7                                      ldr r3, [r5, r3]
006df21c  08 30 83 e2                                      add r3, r3, #8
006df220  00 30 84 e5                                      str r3, [r4]
006df224  00 30 97 e5                                      ldr r3, [r7]
006df228  44 30 84 e5                                      str r3, [r4, #0x44]
006df22c  00 00 53 e3                                      cmp r3, #0
006df230  04 20 93 15                                      ldrne r2, [r3, #4]
006df234  01 20 82 12                                      addne r2, r2, #1
006df238  04 20 83 15                                      strne r2, [r3, #4]
006df23c  18 30 9d e5                                      ldr r3, [sp, #0x18]
006df240  00 30 93 e5                                      ldr r3, [r3]
006df244  00 00 53 e3                                      cmp r3, #0
006df248  48 30 84 e5                                      str r3, [r4, #0x48]
006df24c  04 20 93 15                                      ldrne r2, [r3, #4]
006df250  01 20 82 12                                      addne r2, r2, #1
006df254  04 20 83 15                                      strne r2, [r3, #4]
006df258  00 30 a0 e3                                      mov r3, #0
006df25c  50 30 c4 e5                                      strb r3, [r4, #0x50]
006df260  4c 30 84 e5                                      str r3, [r4, #0x4c]
006df264  9d fd ff eb                                      bl #0x6de8e0
006df268  44 30 94 e5                                      ldr r3, [r4, #0x44]
006df26c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006df270  30 10 93 e5                                      ldr r1, [r3, #0x30]
006df274  5f be f0 eb                                      bl #0x30ebf8
006df278  48 30 94 e5                                      ldr r3, [r4, #0x48]
006df27c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006df280  30 10 93 e5                                      ldr r1, [r3, #0x30]
006df284  5b be f0 eb                                      bl #0x30ebf8
006df288  00 00 56 e3                                      cmp r6, #0
006df28c  01 00 00 1a                                      bne #0x6df298
006df290  04 00 a0 e1                                      mov r0, r4
006df294  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006df298  04 00 a0 e1                                      mov r0, r4
006df29c  d5 fd ff eb                                      bl #0x6de9f8
006df2a0  00 50 50 e2                                      subs r5, r0, #0
006df2a4  f9 ff ff 1a                                      bne #0x6df290
006df2a8  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006df2ac  7b bb f0 eb                                      bl #0x30e0a0
006df2b0  4c 50 84 e5                                      str r5, [r4, #0x4c]
006df2b4  04 00 a0 e1                                      mov r0, r4
006df2b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006df2bc  7c 58 2b 00 38 19 00 00                          .byte 0x7c, 0x58, 0x2b, 0x00, 0x38, 0x19, 0x00, 0x00


; FUNCTION 0x006dfd8c, declared_size=220, range_size=220, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManager20createShaderInternalEPKcN5boost13intrusive_ptrINS0_15CGLSLShaderCodeEEES7_
; demangled: glitch::video::CGLSLShaderManager::createShaderInternal(char const*, boost::intrusive_ptr<glitch::video::CGLSLShaderCode>, boost::intrusive_ptr<glitch::video::CGLSLShaderCode>)
; decoder-mode: arm
006dfd8c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006dfd90  01 50 a0 e1                                      mov r5, r1
006dfd94  1c d0 4d e2                                      sub sp, sp, #0x1c
006dfd98  b8 72 d1 e1                                      ldrh r7, [r1, #0x28]
006dfd9c  00 60 a0 e1                                      mov r6, r0
006dfda0  00 10 a0 e3                                      mov r1, #0
006dfda4  54 00 a0 e3                                      mov r0, #0x54
006dfda8  02 a0 a0 e1                                      mov sl, r2
006dfdac  03 80 a0 e1                                      mov r8, r3
006dfdb0  fd 50 f9 eb                                      bl #0x5341ac
006dfdb4  2c c0 95 e5                                      ldr ip, [r5, #0x2c]
006dfdb8  38 e0 9d e5                                      ldr lr, [sp, #0x38]
006dfdbc  08 30 a0 e1                                      mov r3, r8
006dfdc0  0a 20 a0 e1                                      mov r2, sl
006dfdc4  04 c0 8d e5                                      str ip, [sp, #4]
006dfdc8  07 10 a0 e1                                      mov r1, r7
006dfdcc  01 c0 a0 e3                                      mov ip, #1
006dfdd0  00 40 a0 e1                                      mov r4, r0
006dfdd4  00 e0 8d e5                                      str lr, [sp]
006dfdd8  08 c0 8d e5                                      str ip, [sp, #8]
006dfddc  03 fd ff eb                                      bl #0x6df1f0
006dfde0  00 00 54 e3                                      cmp r4, #0
006dfde4  14 40 8d e5                                      str r4, [sp, #0x14]
006dfde8  04 30 94 15                                      ldrne r3, [r4, #4]
006dfdec  01 30 83 12                                      addne r3, r3, #1
006dfdf0  04 30 84 15                                      strne r3, [r4, #4]
006dfdf4  14 40 9d 15                                      ldrne r4, [sp, #0x14]
006dfdf8  ff 3f 0f e3                                      movw r3, #0xffff
006dfdfc  b0 24 d4 e1                                      ldrh r2, [r4, #0x40]
006dfe00  03 00 52 e1                                      cmp r2, r3
006dfe04  13 00 00 0a                                      beq #0x6dfe58
006dfe08  3e 30 d4 e5                                      ldrb r3, [r4, #0x3e]
006dfe0c  00 00 53 e3                                      cmp r3, #0
006dfe10  10 00 00 0a                                      beq #0x6dfe58
006dfe14  05 00 a0 e1                                      mov r0, r5
006dfe18  14 10 8d e2                                      add r1, sp, #0x14
006dfe1c  1d 1d fc eb                                      bl #0x5e7298
006dfe20  14 00 9d e5                                      ldr r0, [sp, #0x14]
006dfe24  00 00 50 e3                                      cmp r0, #0
006dfe28  00 00 86 e5                                      str r0, [r6]
006dfe2c  03 00 00 0a                                      beq #0x6dfe40
006dfe30  04 30 90 e5                                      ldr r3, [r0, #4]
006dfe34  01 30 83 e2                                      add r3, r3, #1
006dfe38  04 30 80 e5                                      str r3, [r0, #4]
006dfe3c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006dfe40  00 00 50 e3                                      cmp r0, #0
006dfe44  00 00 00 0a                                      beq #0x6dfe4c
006dfe48  cd f5 f0 eb                                      bl #0x31d584
006dfe4c  06 00 a0 e1                                      mov r0, r6
006dfe50  1c d0 8d e2                                      add sp, sp, #0x1c
006dfe54  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006dfe58  00 30 a0 e3                                      mov r3, #0
006dfe5c  00 30 86 e5                                      str r3, [r6]
006dfe60  14 00 9d e5                                      ldr r0, [sp, #0x14]
006dfe64  f5 ff ff ea                                      b #0x6dfe40


; FUNCTION 0x006dfe68, declared_size=844, range_size=844, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManager16createShaderCodeEPKcNS0_13E_SHADER_TYPEES3_PNS_2io9IReadFileE
; demangled: glitch::video::CGLSLShaderManager::createShaderCode(char const*, glitch::video::E_SHADER_TYPE, char const*, glitch::io::IReadFile*)
; decoder-mode: arm
006dfe68  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006dfe6c  01 40 a0 e1                                      mov r4, r1
006dfe70  80 10 91 e5                                      ldr r1, [r1, #0x80]
006dfe74  3c d0 4d e2                                      sub sp, sp, #0x3c
006dfe78  00 60 a0 e1                                      mov r6, r0
006dfe7c  01 00 71 e3                                      cmn r1, #1
006dfe80  02 70 a0 e1                                      mov r7, r2
006dfe84  03 b0 a0 e1                                      mov fp, r3
006dfe88  60 90 9d e5                                      ldr sb, [sp, #0x60]
006dfe8c  9e 00 00 0a                                      beq #0x6e010c
006dfe90  00 c0 a0 e3                                      mov ip, #0
006dfe94  0c 20 a0 e1                                      mov r2, ip
006dfe98  09 30 a0 e1                                      mov r3, sb
006dfe9c  07 10 a0 e1                                      mov r1, r7
006dfea0  04 00 a0 e1                                      mov r0, r4
006dfea4  00 c0 8d e5                                      str ip, [sp]
006dfea8  58 03 00 eb                                      bl #0x6e0c10
006dfeac  00 50 a0 e1                                      mov r5, r0
006dfeb0  04 10 a0 e1                                      mov r1, r4
006dfeb4  34 00 8d e2                                      add r0, sp, #0x34
006dfeb8  05 20 a0 e1                                      mov r2, r5
006dfebc  11 07 00 eb                                      bl #0x6e1b08
006dfec0  34 30 9d e5                                      ldr r3, [sp, #0x34]
006dfec4  00 00 53 e3                                      cmp r3, #0
006dfec8  0e 00 00 0a                                      beq #0x6dff08
006dfecc  00 30 86 e5                                      str r3, [r6]
006dfed0  04 20 93 e5                                      ldr r2, [r3, #4]
006dfed4  01 20 82 e2                                      add r2, r2, #1
006dfed8  04 20 83 e5                                      str r2, [r3, #4]
006dfedc  34 00 9d e5                                      ldr r0, [sp, #0x34]
006dfee0  00 00 50 e3                                      cmp r0, #0
006dfee4  00 00 00 0a                                      beq #0x6dfeec
006dfee8  a5 f5 f0 eb                                      bl #0x31d584
006dfeec  00 00 55 e3                                      cmp r5, #0
006dfef0  01 00 00 0a                                      beq #0x6dfefc
006dfef4  05 00 a0 e1                                      mov r0, r5
006dfef8  e2 51 f9 eb                                      bl #0x534688
006dfefc  06 00 a0 e1                                      mov r0, r6
006dff00  3c d0 8d e2                                      add sp, sp, #0x3c
006dff04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006dff08  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
006dff0c  d4 30 93 e5                                      ldr r3, [r3, #0xd4]
006dff10  34 a0 93 e5                                      ldr sl, [r3, #0x34]
006dff14  00 00 5a e3                                      cmp sl, #0
006dff18  04 30 9a 15                                      ldrne r3, [sl, #4]
006dff1c  01 30 83 12                                      addne r3, r3, #1
006dff20  04 30 8a 15                                      strne r3, [sl, #4]
006dff24  64 10 9d e5                                      ldr r1, [sp, #0x64]
006dff28  00 00 51 e3                                      cmp r1, #0
006dff2c  64 80 9d 15                                      ldrne r8, [sp, #0x64]
006dff30  83 00 00 0a                                      beq #0x6e0144
006dff34  00 30 98 e5                                      ldr r3, [r8]
006dff38  08 00 a0 e1                                      mov r0, r8
006dff3c  0f e0 a0 e1                                      mov lr, pc
006dff40  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006dff44  0c 00 8d e5                                      str r0, [sp, #0xc]
006dff48  00 30 98 e5                                      ldr r3, [r8]
006dff4c  08 00 a0 e1                                      mov r0, r8
006dff50  0f e0 a0 e1                                      mov lr, pc
006dff54  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006dff58  01 00 80 e2                                      add r0, r0, #1
006dff5c  a4 51 f9 eb                                      bl #0x5345f4
006dff60  08 00 8d e5                                      str r0, [sp, #8]
006dff64  00 30 98 e5                                      ldr r3, [r8]
006dff68  08 00 a0 e1                                      mov r0, r8
006dff6c  08 10 9d e5                                      ldr r1, [sp, #8]
006dff70  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006dff74  0f e0 a0 e1                                      mov lr, pc
006dff78  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006dff7c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006dff80  00 00 53 e1                                      cmp r3, r0
006dff84  0f 00 00 0a                                      beq #0x6dffc8
006dff88  f4 11 9f e5                                      ldr r1, [pc, #0x1f4]
006dff8c  07 20 a0 e1                                      mov r2, r7
006dff90  03 00 a0 e3                                      mov r0, #3
006dff94  01 10 8f e0                                      add r1, pc, r1
006dff98  25 ac fc eb                                      bl #0x60b034
006dff9c  00 30 a0 e3                                      mov r3, #0
006dffa0  00 30 86 e5                                      str r3, [r6]
006dffa4  08 30 9d e5                                      ldr r3, [sp, #8]
006dffa8  00 00 53 e3                                      cmp r3, #0
006dffac  01 00 00 0a                                      beq #0x6dffb8
006dffb0  03 00 a0 e1                                      mov r0, r3
006dffb4  b3 51 f9 eb                                      bl #0x534688
006dffb8  00 00 5a e3                                      cmp sl, #0
006dffbc  ca ff ff 0a                                      beq #0x6dfeec
006dffc0  0a 00 a0 e1                                      mov r0, sl
006dffc4  c7 ff ff ea                                      b #0x6dfee8
006dffc8  64 10 9d e5                                      ldr r1, [sp, #0x64]
006dffcc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006dffd0  00 30 a0 e3                                      mov r3, #0
006dffd4  01 00 58 e1                                      cmp r8, r1
006dffd8  08 10 9d e5                                      ldr r1, [sp, #8]
006dffdc  02 30 c1 e7                                      strb r3, [r1, r2]
006dffe0  01 00 00 0a                                      beq #0x6dffec
006dffe4  08 00 a0 e1                                      mov r0, r8
006dffe8  65 f5 f0 eb                                      bl #0x31d584
006dffec  10 80 8d e2                                      add r8, sp, #0x10
006dfff0  00 20 a0 e3                                      mov r2, #0
006dfff4  04 30 88 e2                                      add r3, r8, #4
006dfff8  04 20 83 e4                                      str r2, [r3], #4
006dfffc  04 20 83 e4                                      str r2, [r3], #4
006e0000  04 20 83 e4                                      str r2, [r3], #4
006e0004  04 20 83 e4                                      str r2, [r3], #4
006e0008  04 20 83 e4                                      str r2, [r3], #4
006e000c  74 c1 9f e5                                      ldr ip, [pc, #0x174]
006e0010  74 01 9f e5                                      ldr r0, [pc, #0x174]
006e0014  04 20 83 e4                                      str r2, [r3], #4
006e0018  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
006e001c  0c c0 8f e0                                      add ip, pc, ip
006e0020  04 20 83 e4                                      str r2, [r3], #4
006e0024  00 00 8f e0                                      add r0, pc, r0
006e0028  00 20 83 e5                                      str r2, [r3]
006e002c  1c c0 8d e5                                      str ip, [sp, #0x1c]
006e0030  28 00 8d e5                                      str r0, [sp, #0x28]
006e0034  10 20 8d e5                                      str r2, [sp, #0x10]
006e0038  88 30 91 e5                                      ldr r3, [r1, #0x88]
006e003c  01 0b 13 e3                                      tst r3, #0x400
006e0040  36 00 00 1a                                      bne #0x6e0120
006e0044  44 31 9f e5                                      ldr r3, [pc, #0x144]
006e0048  03 30 8f e0                                      add r3, pc, r3
006e004c  10 30 8d e5                                      str r3, [sp, #0x10]
006e0050  88 30 91 e5                                      ldr r3, [r1, #0x88]
006e0054  02 0b 13 e3                                      tst r3, #0x800
006e0058  36 00 00 1a                                      bne #0x6e0138
006e005c  30 31 9f e5                                      ldr r3, [pc, #0x130]
006e0060  03 30 8f e0                                      add r3, pc, r3
006e0064  14 30 8d e5                                      str r3, [sp, #0x14]
006e0068  88 30 91 e5                                      ldr r3, [r1, #0x88]
006e006c  01 0a 13 e3                                      tst r3, #0x1000
006e0070  2d 00 00 1a                                      bne #0x6e012c
006e0074  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
006e0078  02 20 8f e0                                      add r2, pc, r2
006e007c  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
006e0080  18 20 8d e5                                      str r2, [sp, #0x18]
006e0084  00 00 53 e3                                      cmp r3, #0
006e0088  3a 00 00 0a                                      beq #0x6e0178
006e008c  00 00 59 e3                                      cmp sb, #0
006e0090  20 30 8d e5                                      str r3, [sp, #0x20]
006e0094  34 00 00 0a                                      beq #0x6e016c
006e0098  08 20 9d e5                                      ldr r2, [sp, #8]
006e009c  00 10 a0 e3                                      mov r1, #0
006e00a0  38 00 a0 e3                                      mov r0, #0x38
006e00a4  2c 20 8d e5                                      str r2, [sp, #0x2c]
006e00a8  24 90 8d e5                                      str sb, [sp, #0x24]
006e00ac  3e 50 f9 eb                                      bl #0x5341ac
006e00b0  2c c0 94 e5                                      ldr ip, [r4, #0x2c]
006e00b4  0b 30 a0 e1                                      mov r3, fp
006e00b8  08 20 a0 e1                                      mov r2, r8
006e00bc  00 c0 8d e5                                      str ip, [sp]
006e00c0  05 10 a0 e1                                      mov r1, r5
006e00c4  01 c0 a0 e3                                      mov ip, #1
006e00c8  00 70 a0 e1                                      mov r7, r0
006e00cc  04 c0 8d e5                                      str ip, [sp, #4]
006e00d0  98 fd ff eb                                      bl #0x6df738
006e00d4  00 00 57 e3                                      cmp r7, #0
006e00d8  04 30 97 15                                      ldrne r3, [r7, #4]
006e00dc  07 00 a0 e1                                      mov r0, r7
006e00e0  01 30 83 12                                      addne r3, r3, #1
006e00e4  04 30 87 15                                      strne r3, [r7, #4]
006e00e8  34 30 d7 e5                                      ldrb r3, [r7, #0x34]
006e00ec  00 00 53 e3                                      cmp r3, #0
006e00f0  00 70 86 15                                      strne r7, [r6]
006e00f4  04 30 97 15                                      ldrne r3, [r7, #4]
006e00f8  00 30 86 05                                      streq r3, [r6]
006e00fc  01 30 83 12                                      addne r3, r3, #1
006e0100  04 30 87 15                                      strne r3, [r7, #4]
006e0104  1e f5 f0 eb                                      bl #0x31d584
006e0108  a5 ff ff ea                                      b #0x6dffa4
006e010c  88 10 9f e5                                      ldr r1, [pc, #0x88]
006e0110  04 00 a0 e1                                      mov r0, r4
006e0114  01 10 8f e0                                      add r1, pc, r1
006e0118  47 02 00 eb                                      bl #0x6e0a3c
006e011c  5b ff ff ea                                      b #0x6dfe90
006e0120  78 30 9f e5                                      ldr r3, [pc, #0x78]
006e0124  03 30 8f e0                                      add r3, pc, r3
006e0128  c7 ff ff ea                                      b #0x6e004c
006e012c  70 20 9f e5                                      ldr r2, [pc, #0x70]
006e0130  02 20 8f e0                                      add r2, pc, r2
006e0134  d0 ff ff ea                                      b #0x6e007c
006e0138  68 30 9f e5                                      ldr r3, [pc, #0x68]
006e013c  03 30 8f e0                                      add r3, pc, r3
006e0140  c7 ff ff ea                                      b #0x6e0064
006e0144  00 30 9a e5                                      ldr r3, [sl]
006e0148  0a 00 a0 e1                                      mov r0, sl
006e014c  07 10 a0 e1                                      mov r1, r7
006e0150  0f e0 a0 e1                                      mov lr, pc
006e0154  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006e0158  00 80 50 e2                                      subs r8, r0, #0
006e015c  74 ff ff 1a                                      bne #0x6dff34
006e0160  64 20 9d e5                                      ldr r2, [sp, #0x64]
006e0164  00 20 86 e5                                      str r2, [r6]
006e0168  92 ff ff ea                                      b #0x6dffb8
006e016c  38 90 9f e5                                      ldr sb, [pc, #0x38]
006e0170  09 90 8f e0                                      add sb, pc, sb
006e0174  c7 ff ff ea                                      b #0x6e0098
006e0178  30 30 9f e5                                      ldr r3, [pc, #0x30]
006e017c  03 30 8f e0                                      add r3, pc, r3
006e0180  c1 ff ff ea                                      b #0x6e008c
; mapping-symbol data/literal pool
006e0184  dc ef 20 00 6c ef 20 00 cc b9 1e 00 c0 b7 1e 00  .byte 0xdc, 0xef, 0x20, 0x00, 0x6c, 0xef, 0x20, 0x00, 0xcc, 0xb9, 0x1e, 0x00, 0xc0, 0xb7, 0x1e, 0x00
006e0194  a8 b7 1e 00 90 b7 1e 00 4c ee 20 00 84 ee 20 00  .byte 0xa8, 0xb7, 0x1e, 0x00, 0x90, 0xb7, 0x1e, 0x00, 0x4c, 0xee, 0x20, 0x00, 0x84, 0xee, 0x20, 0x00
006e01a4  b8 ee 20 00 8c ee 20 00 98 b6 1e 00 8c b6 1e 00  .byte 0xb8, 0xee, 0x20, 0x00, 0x8c, 0xee, 0x20, 0x00, 0x98, 0xb6, 0x1e, 0x00, 0x8c, 0xb6, 0x1e, 0x00


; FUNCTION 0x006e01b4, declared_size=404, range_size=404, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManager12createShaderEPKcS3_S3_S3_S3_PNS_2io9IReadFileES6_
; demangled: glitch::video::CGLSLShaderManager::createShader(char const*, char const*, char const*, char const*, char const*, glitch::io::IReadFile*, glitch::io::IReadFile*)
; decoder-mode: arm
006e01b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e01b8  01 40 a0 e1                                      mov r4, r1
006e01bc  18 d0 4d e2                                      sub sp, sp, #0x18
006e01c0  00 50 a0 e1                                      mov r5, r0
006e01c4  04 00 81 e2                                      add r0, r1, #4
006e01c8  02 10 a0 e1                                      mov r1, r2
006e01cc  03 80 a0 e1                                      mov r8, r3
006e01d0  02 60 a0 e1                                      mov r6, r2
006e01d4  fd e0 fb eb                                      bl #0x5d85d0
006e01d8  60 71 9f e5                                      ldr r7, [pc, #0x160]
006e01dc  ff 3f 0f e3                                      movw r3, #0xffff
006e01e0  03 00 50 e1                                      cmp r0, r3
006e01e4  07 70 8f e0                                      add r7, pc, r7
006e01e8  12 00 00 0a                                      beq #0x6e0238
006e01ec  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006e01f0  20 20 94 e5                                      ldr r2, [r4, #0x20]
006e01f4  02 20 63 e0                                      rsb r2, r3, r2
006e01f8  c2 01 50 e1                                      cmp r0, r2, asr #3
006e01fc  80 01 83 30                                      addlo r0, r3, r0, lsl #3
006e0200  09 00 00 2a                                      bhs #0x6e022c
006e0204  00 30 90 e5                                      ldr r3, [r0]
006e0208  00 00 53 e3                                      cmp r3, #0
006e020c  00 30 85 e5                                      str r3, [r5]
006e0210  02 00 00 0a                                      beq #0x6e0220
006e0214  04 20 93 e5                                      ldr r2, [r3, #4]
006e0218  01 20 82 e2                                      add r2, r2, #1
006e021c  04 20 83 e5                                      str r2, [r3, #4]
006e0220  05 00 a0 e1                                      mov r0, r5
006e0224  18 d0 8d e2                                      add sp, sp, #0x18
006e0228  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e022c  10 31 9f e5                                      ldr r3, [pc, #0x110]
006e0230  03 00 97 e7                                      ldr r0, [r7, r3]
006e0234  f2 ff ff ea                                      b #0x6e0204
006e0238  30 c0 9d e5                                      ldr ip, [sp, #0x30]
006e023c  14 00 8d e2                                      add r0, sp, #0x14
006e0240  08 20 a0 e1                                      mov r2, r8
006e0244  00 c0 8d e5                                      str ip, [sp]
006e0248  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006e024c  04 10 a0 e1                                      mov r1, r4
006e0250  04 30 a0 e3                                      mov r3, #4
006e0254  04 c0 8d e5                                      str ip, [sp, #4]
006e0258  02 ff ff eb                                      bl #0x6dfe68
006e025c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006e0260  00 00 50 e3                                      cmp r0, #0
006e0264  00 00 85 05                                      streq r0, [r5]
006e0268  ec ff ff 0a                                      beq #0x6e0220
006e026c  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006e0270  0e 30 a0 e3                                      mov r3, #0xe
006e0274  34 20 9d e5                                      ldr r2, [sp, #0x34]
006e0278  00 c0 8d e5                                      str ip, [sp]
006e027c  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006e0280  10 00 8d e2                                      add r0, sp, #0x10
006e0284  04 10 a0 e1                                      mov r1, r4
006e0288  04 c0 8d e5                                      str ip, [sp, #4]
006e028c  f5 fe ff eb                                      bl #0x6dfe68
006e0290  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e0294  00 00 53 e3                                      cmp r3, #0
006e0298  00 30 85 05                                      streq r3, [r5]
006e029c  20 00 00 0a                                      beq #0x6e0324
006e02a0  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e02a4  00 00 52 e3                                      cmp r2, #0
006e02a8  0c 20 8d e5                                      str r2, [sp, #0xc]
006e02ac  21 00 00 0a                                      beq #0x6e0338
006e02b0  04 30 92 e5                                      ldr r3, [r2, #4]
006e02b4  01 30 83 e2                                      add r3, r3, #1
006e02b8  04 30 82 e5                                      str r3, [r2, #4]
006e02bc  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e02c0  00 00 53 e3                                      cmp r3, #0
006e02c4  08 30 8d e5                                      str r3, [sp, #8]
006e02c8  02 00 00 0a                                      beq #0x6e02d8
006e02cc  04 20 93 e5                                      ldr r2, [r3, #4]
006e02d0  01 20 82 e2                                      add r2, r2, #1
006e02d4  04 20 83 e5                                      str r2, [r3, #4]
006e02d8  05 00 a0 e1                                      mov r0, r5
006e02dc  08 c0 8d e2                                      add ip, sp, #8
006e02e0  04 10 a0 e1                                      mov r1, r4
006e02e4  06 20 a0 e1                                      mov r2, r6
006e02e8  0c 30 8d e2                                      add r3, sp, #0xc
006e02ec  00 c0 8d e5                                      str ip, [sp]
006e02f0  a5 fe ff eb                                      bl #0x6dfd8c
006e02f4  08 00 9d e5                                      ldr r0, [sp, #8]
006e02f8  00 00 50 e3                                      cmp r0, #0
006e02fc  00 00 00 0a                                      beq #0x6e0304
006e0300  9f f4 f0 eb                                      bl #0x31d584
006e0304  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006e0308  00 00 50 e3                                      cmp r0, #0
006e030c  00 00 00 0a                                      beq #0x6e0314
006e0310  9b f4 f0 eb                                      bl #0x31d584
006e0314  10 00 9d e5                                      ldr r0, [sp, #0x10]
006e0318  00 00 50 e3                                      cmp r0, #0
006e031c  00 00 00 0a                                      beq #0x6e0324
006e0320  97 f4 f0 eb                                      bl #0x31d584
006e0324  14 00 9d e5                                      ldr r0, [sp, #0x14]
006e0328  00 00 50 e3                                      cmp r0, #0
006e032c  bb ff ff 0a                                      beq #0x6e0220
006e0330  93 f4 f0 eb                                      bl #0x31d584
006e0334  b9 ff ff ea                                      b #0x6e0220
006e0338  08 30 8d e5                                      str r3, [sp, #8]
006e033c  e2 ff ff ea                                      b #0x6e02cc
; mapping-symbol data/literal pool
006e0340  ac 48 2b 00 fc 49 00 00                          .byte 0xac, 0x48, 0x2b, 0x00, 0xfc, 0x49, 0x00, 0x00


; FUNCTION 0x006e0348, declared_size=288, range_size=288, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManager12createShaderEPKcN5boost13intrusive_ptrINS0_15CGLSLShaderCodeEEES7_
; demangled: glitch::video::CGLSLShaderManager::createShader(char const*, boost::intrusive_ptr<glitch::video::CGLSLShaderCode>, boost::intrusive_ptr<glitch::video::CGLSLShaderCode>)
; decoder-mode: arm
006e0348  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006e034c  01 40 a0 e1                                      mov r4, r1
006e0350  14 d0 4d e2                                      sub sp, sp, #0x14
006e0354  00 50 a0 e1                                      mov r5, r0
006e0358  04 00 81 e2                                      add r0, r1, #4
006e035c  02 10 a0 e1                                      mov r1, r2
006e0360  03 a0 a0 e1                                      mov sl, r3
006e0364  02 70 a0 e1                                      mov r7, r2
006e0368  30 80 9d e5                                      ldr r8, [sp, #0x30]
006e036c  97 e0 fb eb                                      bl #0x5d85d0
006e0370  e8 60 9f e5                                      ldr r6, [pc, #0xe8]
006e0374  ff 3f 0f e3                                      movw r3, #0xffff
006e0378  03 00 50 e1                                      cmp r0, r3
006e037c  06 60 8f e0                                      add r6, pc, r6
006e0380  12 00 00 0a                                      beq #0x6e03d0
006e0384  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006e0388  20 20 94 e5                                      ldr r2, [r4, #0x20]
006e038c  02 20 63 e0                                      rsb r2, r3, r2
006e0390  c2 01 50 e1                                      cmp r0, r2, asr #3
006e0394  80 01 83 30                                      addlo r0, r3, r0, lsl #3
006e0398  09 00 00 2a                                      bhs #0x6e03c4
006e039c  00 30 90 e5                                      ldr r3, [r0]
006e03a0  00 00 53 e3                                      cmp r3, #0
006e03a4  00 30 85 e5                                      str r3, [r5]
006e03a8  02 00 00 0a                                      beq #0x6e03b8
006e03ac  04 20 93 e5                                      ldr r2, [r3, #4]
006e03b0  01 20 82 e2                                      add r2, r2, #1
006e03b4  04 20 83 e5                                      str r2, [r3, #4]
006e03b8  05 00 a0 e1                                      mov r0, r5
006e03bc  14 d0 8d e2                                      add sp, sp, #0x14
006e03c0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006e03c4  98 30 9f e5                                      ldr r3, [pc, #0x98]
006e03c8  03 00 96 e7                                      ldr r0, [r6, r3]
006e03cc  f2 ff ff ea                                      b #0x6e039c
006e03d0  00 30 9a e5                                      ldr r3, [sl]
006e03d4  00 00 53 e3                                      cmp r3, #0
006e03d8  1d 00 00 0a                                      beq #0x6e0454
006e03dc  00 20 98 e5                                      ldr r2, [r8]
006e03e0  00 00 52 e3                                      cmp r2, #0
006e03e4  1a 00 00 0a                                      beq #0x6e0454
006e03e8  0c 30 8d e5                                      str r3, [sp, #0xc]
006e03ec  04 20 93 e5                                      ldr r2, [r3, #4]
006e03f0  01 20 82 e2                                      add r2, r2, #1
006e03f4  04 20 83 e5                                      str r2, [r3, #4]
006e03f8  00 30 98 e5                                      ldr r3, [r8]
006e03fc  00 00 53 e3                                      cmp r3, #0
006e0400  08 30 8d e5                                      str r3, [sp, #8]
006e0404  02 00 00 0a                                      beq #0x6e0414
006e0408  04 20 93 e5                                      ldr r2, [r3, #4]
006e040c  01 20 82 e2                                      add r2, r2, #1
006e0410  04 20 83 e5                                      str r2, [r3, #4]
006e0414  05 00 a0 e1                                      mov r0, r5
006e0418  08 c0 8d e2                                      add ip, sp, #8
006e041c  04 10 a0 e1                                      mov r1, r4
006e0420  07 20 a0 e1                                      mov r2, r7
006e0424  0c 30 8d e2                                      add r3, sp, #0xc
006e0428  00 c0 8d e5                                      str ip, [sp]
006e042c  56 fe ff eb                                      bl #0x6dfd8c
006e0430  08 00 9d e5                                      ldr r0, [sp, #8]
006e0434  00 00 50 e3                                      cmp r0, #0
006e0438  00 00 00 0a                                      beq #0x6e0440
006e043c  50 f4 f0 eb                                      bl #0x31d584
006e0440  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006e0444  00 00 50 e3                                      cmp r0, #0
006e0448  da ff ff 0a                                      beq #0x6e03b8
006e044c  4c f4 f0 eb                                      bl #0x31d584
006e0450  d8 ff ff ea                                      b #0x6e03b8
006e0454  00 30 a0 e3                                      mov r3, #0
006e0458  00 30 85 e5                                      str r3, [r5]
006e045c  d5 ff ff ea                                      b #0x6e03b8
; mapping-symbol data/literal pool
006e0460  14 47 2b 00 fc 49 00 00                          .byte 0x14, 0x47, 0x2b, 0x00, 0xfc, 0x49, 0x00, 0x00


; FUNCTION 0x006e0b64, declared_size=172, range_size=172, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManager18makeShaderCodeNameEPKcjS3_jS3_jPj
; demangled: glitch::video::ICodeShaderManager::makeShaderCodeName(char const*, unsigned int, char const*, unsigned int, char const*, unsigned int, unsigned int*)
; decoder-mode: arm
006e0b64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e0b68  0c d0 4d e2                                      sub sp, sp, #0xc
006e0b6c  02 50 a0 e1                                      mov r5, r2
006e0b70  00 40 a0 e1                                      mov r4, r0
006e0b74  01 b0 a0 e1                                      mov fp, r1
006e0b78  03 90 a0 e1                                      mov sb, r3
006e0b7c  b4 4d f9 eb                                      bl #0x534254
006e0b80  04 00 8d e5                                      str r0, [sp, #4]
006e0b84  01 00 a0 e3                                      mov r0, #1
006e0b88  b6 4d f9 eb                                      bl #0x534268
006e0b8c  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
006e0b90  30 70 9d e5                                      ldr r7, [sp, #0x30]
006e0b94  38 a0 9d e5                                      ldr sl, [sp, #0x38]
006e0b98  00 00 53 e3                                      cmp r3, #0
006e0b9c  80 80 94 15                                      ldrne r8, [r4, #0x80]
006e0ba0  05 70 87 e0                                      add r7, r7, r5
006e0ba4  07 a0 8a e0                                      add sl, sl, r7
006e0ba8  0a 80 a0 01                                      moveq r8, sl
006e0bac  08 80 8a 10                                      addne r8, sl, r8
006e0bb0  01 00 88 e2                                      add r0, r8, #1
006e0bb4  8e 4e f9 eb                                      bl #0x5345f4
006e0bb8  0b 10 a0 e1                                      mov r1, fp
006e0bbc  00 60 a0 e1                                      mov r6, r0
006e0bc0  56 b6 f0 eb                                      bl #0x30e520
006e0bc4  09 10 a0 e1                                      mov r1, sb
006e0bc8  05 00 86 e0                                      add r0, r6, r5
006e0bcc  53 b6 f0 eb                                      bl #0x30e520
006e0bd0  34 10 9d e5                                      ldr r1, [sp, #0x34]
006e0bd4  07 00 86 e0                                      add r0, r6, r7
006e0bd8  50 b6 f0 eb                                      bl #0x30e520
006e0bdc  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
006e0be0  00 00 51 e3                                      cmp r1, #0
006e0be4  01 00 00 0a                                      beq #0x6e0bf0
006e0be8  0a 00 86 e0                                      add r0, r6, sl
006e0bec  4b b6 f0 eb                                      bl #0x30e520
006e0bf0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006e0bf4  00 00 53 e3                                      cmp r3, #0
006e0bf8  00 80 83 15                                      strne r8, [r3]
006e0bfc  04 00 9d e5                                      ldr r0, [sp, #4]
006e0c00  98 4d f9 eb                                      bl #0x534268
006e0c04  06 00 a0 e1                                      mov r0, r6
006e0c08  0c d0 8d e2                                      add sp, sp, #0xc
006e0c0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}


; FUNCTION 0x006e0c10, declared_size=148, range_size=148, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManager18makeShaderCodeNameEPKcS3_S3_Pj
; demangled: glitch::video::ICodeShaderManager::makeShaderCodeName(char const*, char const*, char const*, unsigned int*)
; decoder-mode: arm
006e0c10  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006e0c14  00 50 52 e2                                      subs r5, r2, #0
006e0c18  14 d0 4d e2                                      sub sp, sp, #0x14
006e0c1c  00 80 a0 e1                                      mov r8, r0
006e0c20  01 a0 a0 e1                                      mov sl, r1
006e0c24  03 40 a0 e1                                      mov r4, r3
006e0c28  17 00 00 0a                                      beq #0x6e0c8c
006e0c2c  05 00 a0 e1                                      mov r0, r5
006e0c30  87 b4 f0 eb                                      bl #0x30de54
006e0c34  00 60 a0 e1                                      mov r6, r0
006e0c38  00 00 54 e3                                      cmp r4, #0
006e0c3c  0e 00 00 0a                                      beq #0x6e0c7c
006e0c40  04 00 a0 e1                                      mov r0, r4
006e0c44  82 b4 f0 eb                                      bl #0x30de54
006e0c48  00 70 a0 e1                                      mov r7, r0
006e0c4c  0a 00 a0 e1                                      mov r0, sl
006e0c50  7f b4 f0 eb                                      bl #0x30de54
006e0c54  30 c0 9d e5                                      ldr ip, [sp, #0x30]
006e0c58  00 20 a0 e1                                      mov r2, r0
006e0c5c  0a 10 a0 e1                                      mov r1, sl
006e0c60  08 00 a0 e1                                      mov r0, r8
006e0c64  05 30 a0 e1                                      mov r3, r5
006e0c68  00 60 8d e5                                      str r6, [sp]
006e0c6c  90 10 8d e9                                      stmib sp, {r4, r7, ip}
006e0c70  bb ff ff eb                                      bl #0x6e0b64
006e0c74  14 d0 8d e2                                      add sp, sp, #0x14
006e0c78  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006e0c7c  04 70 a0 e1                                      mov r7, r4
006e0c80  14 40 9f e5                                      ldr r4, [pc, #0x14]
006e0c84  04 40 8f e0                                      add r4, pc, r4
006e0c88  ef ff ff ea                                      b #0x6e0c4c
006e0c8c  05 60 a0 e1                                      mov r6, r5
006e0c90  08 50 9f e5                                      ldr r5, [pc, #8]
006e0c94  05 50 8f e0                                      add r5, pc, r5
006e0c98  e6 ff ff ea                                      b #0x6e0c38
; mapping-symbol data/literal pool
006e0c9c  84 ab 1e 00 74 ab 1e 00                          .byte 0x84, 0xab, 0x1e, 0x00, 0x74, 0xab, 0x1e, 0x00


; FUNCTION 0x006e1b08, declared_size=128, range_size=128, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZNK6glitch5video18ICodeShaderManager13getShaderCodeEPKc
; demangled: glitch::video::ICodeShaderManager::getShaderCode(char const*) const
; decoder-mode: arm
006e1b08  70 40 2d e9                                      push {r4, r5, r6, lr}
006e1b0c  01 40 a0 e1                                      mov r4, r1
006e1b10  00 50 a0 e1                                      mov r5, r0
006e1b14  02 10 a0 e1                                      mov r1, r2
006e1b18  54 00 84 e2                                      add r0, r4, #0x54
006e1b1c  e4 ff ff eb                                      bl #0x6e1ab4
006e1b20  58 60 9f e5                                      ldr r6, [pc, #0x58]
006e1b24  ff 3f 0f e3                                      movw r3, #0xffff
006e1b28  03 00 50 e1                                      cmp r0, r3
006e1b2c  00 30 a0 03                                      moveq r3, #0
006e1b30  06 60 8f e0                                      add r6, pc, r6
006e1b34  00 30 85 05                                      streq r3, [r5]
006e1b38  0b 00 00 0a                                      beq #0x6e1b6c
006e1b3c  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
006e1b40  70 20 94 e5                                      ldr r2, [r4, #0x70]
006e1b44  02 20 63 e0                                      rsb r2, r3, r2
006e1b48  c2 01 50 e1                                      cmp r0, r2, asr #3
006e1b4c  80 01 83 30                                      addlo r0, r3, r0, lsl #3
006e1b50  07 00 00 2a                                      bhs #0x6e1b74
006e1b54  00 30 90 e5                                      ldr r3, [r0]
006e1b58  00 00 53 e3                                      cmp r3, #0
006e1b5c  00 30 85 e5                                      str r3, [r5]
006e1b60  04 20 93 15                                      ldrne r2, [r3, #4]
006e1b64  01 20 82 12                                      addne r2, r2, #1
006e1b68  04 20 83 15                                      strne r2, [r3, #4]
006e1b6c  05 00 a0 e1                                      mov r0, r5
006e1b70  70 80 bd e8                                      pop {r4, r5, r6, pc}
006e1b74  08 30 9f e5                                      ldr r3, [pc, #8]
006e1b78  03 00 96 e7                                      ldr r0, [r6, r3]
006e1b7c  f4 ff ff ea                                      b #0x6e1b54
; mapping-symbol data/literal pool
006e1b80  60 2f 2b 00 4c 19 00 00                          .byte 0x60, 0x2f, 0x2b, 0x00, 0x4c, 0x19, 0x00, 0x00


; FUNCTION 0x006e1d70, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManager13addShaderCodeERKN5boost13intrusive_ptrINS0_11IShaderCodeEEE
; demangled: glitch::video::ICodeShaderManager::addShaderCode(boost::intrusive_ptr<glitch::video::IShaderCode> const&)
; decoder-mode: arm
006e1d70  00 30 91 e5                                      ldr r3, [r1]
006e1d74  01 20 a0 e1                                      mov r2, r1
006e1d78  54 00 80 e2                                      add r0, r0, #0x54
006e1d7c  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
006e1d80  00 30 a0 e3                                      mov r3, #0
006e1d84  94 ff ff ea                                      b #0x6e1bdc


; FUNCTION 0x005d9bd8, declared_size=480, range_size=480, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager25createPinkWireFrameShaderEv
; demangled: glitch::video::CMaterialRendererManager::createPinkWireFrameShader()
; decoder-mode: arm
005d9bd8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d9bdc  b0 41 9f e5                                      ldr r4, [pc, #0x1b0]
005d9be0  b0 61 9f e5                                      ldr r6, [pc, #0x1b0]
005d9be4  28 30 91 e5                                      ldr r3, [r1, #0x28]
005d9be8  04 40 8f e0                                      add r4, pc, r4
005d9bec  06 20 94 e7                                      ldr r2, [r4, r6]
005d9bf0  a4 d0 4d e2                                      sub sp, sp, #0xa4
005d9bf4  00 50 a0 e1                                      mov r5, r0
005d9bf8  00 20 92 e5                                      ldr r2, [r2]
005d9bfc  03 00 a0 e1                                      mov r0, r3
005d9c00  01 a0 a0 e1                                      mov sl, r1
005d9c04  9c 20 8d e5                                      str r2, [sp, #0x9c]
005d9c08  00 30 93 e5                                      ldr r3, [r3]
005d9c0c  0f e0 a0 e1                                      mov lr, pc
005d9c10  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
005d9c14  00 30 a0 e3                                      mov r3, #0
005d9c18  07 70 10 e2                                      ands r7, r0, #7
005d9c1c  00 30 85 e5                                      str r3, [r5]
005d9c20  1c 00 00 1a                                      bne #0x5d9c98
005d9c24  18 00 10 e3                                      tst r0, #0x18
005d9c28  22 00 00 1a                                      bne #0x5d9cb8
005d9c2c  36 0e 10 e3                                      tst r0, #0x360
005d9c30  18 00 00 1a                                      bne #0x5d9c98
005d9c34  02 0b 50 e3                                      cmp r0, #0x800
005d9c38  16 00 00 0a                                      beq #0x5d9c98
005d9c3c  00 00 50 e3                                      cmp r0, #0
005d9c40  14 00 00 1a                                      bne #0x5d9c98
005d9c44  28 30 9a e5                                      ldr r3, [sl, #0x28]
005d9c48  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
005d9c4c  24 70 8d e2                                      add r7, sp, #0x24
005d9c50  d8 10 93 e5                                      ldr r1, [r3, #0xd8]
005d9c54  02 20 8f e0                                      add r2, pc, r2
005d9c58  07 00 a0 e1                                      mov r0, r7
005d9c5c  e4 7f ff eb                                      bl #0x5b9bf4
005d9c60  24 30 9d e5                                      ldr r3, [sp, #0x24]
005d9c64  a0 00 8d e2                                      add r0, sp, #0xa0
005d9c68  20 30 8d e5                                      str r3, [sp, #0x20]
005d9c6c  00 00 53 e3                                      cmp r3, #0
005d9c70  04 20 93 15                                      ldrne r2, [r3, #4]
005d9c74  01 20 82 12                                      addne r2, r2, #1
005d9c78  04 20 83 15                                      strne r2, [r3, #4]
005d9c7c  20 30 9d 15                                      ldrne r3, [sp, #0x20]
005d9c80  00 20 95 e5                                      ldr r2, [r5]
005d9c84  00 30 85 e5                                      str r3, [r5]
005d9c88  80 20 20 e5                                      str r2, [r0, #-0x80]!
005d9c8c  36 80 ff eb                                      bl #0x5b9d6c
005d9c90  07 00 a0 e1                                      mov r0, r7
005d9c94  34 80 ff eb                                      bl #0x5b9d6c
005d9c98  06 30 94 e7                                      ldr r3, [r4, r6]
005d9c9c  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
005d9ca0  05 00 a0 e1                                      mov r0, r5
005d9ca4  00 30 93 e5                                      ldr r3, [r3]
005d9ca8  03 00 52 e1                                      cmp r2, r3
005d9cac  37 00 00 1a                                      bne #0x5d9d90
005d9cb0  a4 d0 8d e2                                      add sp, sp, #0xa4
005d9cb4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d9cb8  28 c0 9a e5                                      ldr ip, [sl, #0x28]
005d9cbc  dc 80 9f e5                                      ldr r8, [pc, #0xdc]
005d9cc0  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
005d9cc4  d8 c0 9c e5                                      ldr ip, [ip, #0xd8]
005d9cc8  08 80 8f e0                                      add r8, pc, r8
005d9ccc  64 b0 8d e2                                      add fp, sp, #0x64
005d9cd0  01 10 8f e0                                      add r1, pc, r1
005d9cd4  9b 20 a0 e3                                      mov r2, #0x9b
005d9cd8  08 30 a0 e1                                      mov r3, r8
005d9cdc  0b 00 a0 e1                                      mov r0, fp
005d9ce0  c0 a0 9f e5                                      ldr sl, [pc, #0xc0]
005d9ce4  1c c0 8d e5                                      str ip, [sp, #0x1c]
005d9ce8  00 70 8d e5                                      str r7, [sp]
005d9cec  7e 55 fe eb                                      bl #0x56f2ec
005d9cf0  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
005d9cf4  0a a0 8f e0                                      add sl, pc, sl
005d9cf8  2c 90 8d e2                                      add sb, sp, #0x2c
005d9cfc  01 10 8f e0                                      add r1, pc, r1
005d9d00  41 20 a0 e3                                      mov r2, #0x41
005d9d04  0a 30 a0 e1                                      mov r3, sl
005d9d08  09 00 a0 e1                                      mov r0, sb
005d9d0c  00 70 8d e5                                      str r7, [sp]
005d9d10  75 55 fe eb                                      bl #0x56f2ec
005d9d14  94 c0 9f e5                                      ldr ip, [pc, #0x94]
005d9d18  94 20 9f e5                                      ldr r2, [pc, #0x94]
005d9d1c  08 30 a0 e1                                      mov r3, r8
005d9d20  0c c0 8f e0                                      add ip, pc, ip
005d9d24  02 20 8f e0                                      add r2, pc, r2
005d9d28  28 00 8d e2                                      add r0, sp, #0x28
005d9d2c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005d9d30  00 14 8d e9                                      stmib sp, {sl, ip}
005d9d34  00 c0 8d e5                                      str ip, [sp]
005d9d38  0c b0 8d e5                                      str fp, [sp, #0xc]
005d9d3c  10 90 8d e5                                      str sb, [sp, #0x10]
005d9d40  1b 19 04 eb                                      bl #0x6e01b4
005d9d44  28 30 9d e5                                      ldr r3, [sp, #0x28]
005d9d48  00 00 53 e3                                      cmp r3, #0
005d9d4c  04 20 93 15                                      ldrne r2, [r3, #4]
005d9d50  01 20 82 12                                      addne r2, r2, #1
005d9d54  04 20 83 15                                      strne r2, [r3, #4]
005d9d58  00 00 95 e5                                      ldr r0, [r5]
005d9d5c  00 30 85 e5                                      str r3, [r5]
005d9d60  00 00 50 e3                                      cmp r0, #0
005d9d64  00 00 00 0a                                      beq #0x5d9d6c
005d9d68  05 0e f5 eb                                      bl #0x31d584
005d9d6c  28 00 9d e5                                      ldr r0, [sp, #0x28]
005d9d70  00 00 50 e3                                      cmp r0, #0
005d9d74  00 00 00 0a                                      beq #0x5d9d7c
005d9d78  01 0e f5 eb                                      bl #0x31d584
005d9d7c  09 00 a0 e1                                      mov r0, sb
005d9d80  0b 55 fe eb                                      bl #0x56f1b4
005d9d84  0b 00 a0 e1                                      mov r0, fp
005d9d88  09 55 fe eb                                      bl #0x56f1b4
005d9d8c  c1 ff ff ea                                      b #0x5d9c98
005d9d90  5e d1 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005d9d94  a8 ae 3b 00 ac 40 00 00 dc 6f 30 00 f0 6e 30 00  .byte 0xa8, 0xae, 0x3b, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x6f, 0x30, 0x00, 0xf0, 0x6e, 0x30, 0x00
005d9da4  48 6e 30 00 24 6f 30 00 d4 6e 30 00 e8 1a 2f 00  .byte 0x48, 0x6e, 0x30, 0x00, 0x24, 0x6f, 0x30, 0x00, 0xd4, 0x6e, 0x30, 0x00, 0xe8, 0x1a, 0x2f, 0x00
005d9db4  0c 6f 30 00                                      .byte 0x0c, 0x6f, 0x30, 0x00
