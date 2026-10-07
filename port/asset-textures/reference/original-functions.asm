; Selected exact ARM listings from libDungeonHunter2.so. Not assembler-ready source.
; Ranges and hashes are recorded in ../original-functions.json.

; FUNCTION 0x006058a4, declared_size=620, range_size=620, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_113readPVRHeaderEPNS_2io9IReadFileERNS1_10SPVRHeaderERb
; demangled: glitch::video::(anonymous namespace)::readPVRHeader(glitch::io::IReadFile*, glitch::video::(anonymous namespace)::SPVRHeader&, bool&)
; decoder-mode: arm
006058a4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006058a8  4c 52 9f e5                                      ldr r5, [pc, #0x24c]
006058ac  4c 82 9f e5                                      ldr r8, [pc, #0x24c]
006058b0  1c d0 4d e2                                      sub sp, sp, #0x1c
006058b4  05 50 8f e0                                      add r5, pc, r5
006058b8  08 30 95 e7                                      ldr r3, [r5, r8]
006058bc  01 70 a0 e1                                      mov r7, r1
006058c0  00 10 a0 e3                                      mov r1, #0
006058c4  00 c0 93 e5                                      ldr ip, [r3]
006058c8  02 a0 a0 e1                                      mov sl, r2
006058cc  00 30 90 e5                                      ldr r3, [r0]
006058d0  01 20 a0 e1                                      mov r2, r1
006058d4  14 c0 8d e5                                      str ip, [sp, #0x14]
006058d8  00 40 a0 e1                                      mov r4, r0
006058dc  0f e0 a0 e1                                      mov lr, pc
006058e0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006058e4  00 30 a0 e3                                      mov r3, #0
006058e8  00 30 ca e5                                      strb r3, [sl]
006058ec  0c 60 8d e2                                      add r6, sp, #0xc
006058f0  13 30 cd e5                                      strb r3, [sp, #0x13]
006058f4  0c 30 cd e5                                      strb r3, [sp, #0xc]
006058f8  0d 30 cd e5                                      strb r3, [sp, #0xd]
006058fc  0e 30 cd e5                                      strb r3, [sp, #0xe]
00605900  0f 30 cd e5                                      strb r3, [sp, #0xf]
00605904  10 30 cd e5                                      strb r3, [sp, #0x10]
00605908  11 30 cd e5                                      strb r3, [sp, #0x11]
0060590c  12 30 cd e5                                      strb r3, [sp, #0x12]
00605910  06 10 a0 e1                                      mov r1, r6
00605914  08 20 a0 e3                                      mov r2, #8
00605918  00 30 94 e5                                      ldr r3, [r4]
0060591c  04 00 a0 e1                                      mov r0, r4
00605920  0f e0 a0 e1                                      mov lr, pc
00605924  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00605928  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
0060592c  06 00 a0 e1                                      mov r0, r6
00605930  08 20 a0 e3                                      mov r2, #8
00605934  01 10 8f e0                                      add r1, pc, r1
00605938  cf 24 f4 eb                                      bl #0x30ec7c
0060593c  00 00 50 e3                                      cmp r0, #0
00605940  11 00 00 1a                                      bne #0x60598c
00605944  00 30 94 e5                                      ldr r3, [r4]
00605948  04 00 a0 e1                                      mov r0, r4
0060594c  07 10 a0 e1                                      mov r1, r7
00605950  34 20 a0 e3                                      mov r2, #0x34
00605954  0f e0 a0 e1                                      mov lr, pc
00605958  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060595c  01 30 a0 e3                                      mov r3, #1
00605960  34 00 50 e3                                      cmp r0, #0x34
00605964  00 30 ca e5                                      strb r3, [sl]
00605968  14 00 00 0a                                      beq #0x6059c0
0060596c  00 00 a0 e3                                      mov r0, #0
00605970  08 30 95 e7                                      ldr r3, [r5, r8]
00605974  14 20 9d e5                                      ldr r2, [sp, #0x14]
00605978  00 30 93 e5                                      ldr r3, [r3]
0060597c  03 00 52 e1                                      cmp r2, r3
00605980  5c 00 00 1a                                      bne #0x605af8
00605984  1c d0 8d e2                                      add sp, sp, #0x1c
00605988  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0060598c  06 10 a0 e1                                      mov r1, r6
00605990  08 20 a0 e3                                      mov r2, #8
00605994  07 00 a0 e1                                      mov r0, r7
00605998  b2 23 f4 eb                                      bl #0x30e868
0060599c  00 30 94 e5                                      ldr r3, [r4]
006059a0  04 00 a0 e1                                      mov r0, r4
006059a4  08 10 87 e2                                      add r1, r7, #8
006059a8  2c 20 a0 e3                                      mov r2, #0x2c
006059ac  0f e0 a0 e1                                      mov lr, pc
006059b0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006059b4  08 00 80 e2                                      add r0, r0, #8
006059b8  34 00 50 e3                                      cmp r0, #0x34
006059bc  ea ff ff 1a                                      bne #0x60596c
006059c0  40 11 9f e5                                      ldr r1, [pc, #0x140]
006059c4  2c 00 87 e2                                      add r0, r7, #0x2c
006059c8  04 20 a0 e3                                      mov r2, #4
006059cc  01 10 8f e0                                      add r1, pc, r1
006059d0  a9 24 f4 eb                                      bl #0x30ec7c
006059d4  00 00 50 e3                                      cmp r0, #0
006059d8  e3 ff ff 1a                                      bne #0x60596c
006059dc  00 30 97 e5                                      ldr r3, [r7]
006059e0  34 00 53 e3                                      cmp r3, #0x34
006059e4  e0 ff ff 1a                                      bne #0x60596c
006059e8  10 00 97 e5                                      ldr r0, [r7, #0x10]
006059ec  01 3c 10 e2                                      ands r3, r0, #0x100
006059f0  02 00 00 0a                                      beq #0x605a00
006059f4  0c 20 97 e5                                      ldr r2, [r7, #0xc]
006059f8  00 00 52 e3                                      cmp r2, #0
006059fc  da ff ff 0a                                      beq #0x60596c
00605a00  01 0a 10 e3                                      tst r0, #0x1000
00605a04  30 00 00 1a                                      bne #0x605acc
00605a08  00 00 53 e3                                      cmp r3, #0
00605a0c  32 00 00 0a                                      beq #0x605adc
00605a10  08 30 97 e5                                      ldr r3, [r7, #8]
00605a14  00 00 53 e3                                      cmp r3, #0
00605a18  00 20 e0 03                                      mvneq r2, #0
00605a1c  03 00 00 0a                                      beq #0x605a30
00605a20  00 20 e0 e3                                      mvn r2, #0
00605a24  a3 30 b0 e1                                      lsrs r3, r3, #1
00605a28  01 20 82 e2                                      add r2, r2, #1
00605a2c  fc ff ff 1a                                      bne #0x605a24
00605a30  04 30 97 e5                                      ldr r3, [r7, #4]
00605a34  08 20 8d e5                                      str r2, [sp, #8]
00605a38  00 00 53 e3                                      cmp r3, #0
00605a3c  00 10 e0 03                                      mvneq r1, #0
00605a40  03 00 00 0a                                      beq #0x605a54
00605a44  00 10 e0 e3                                      mvn r1, #0
00605a48  a3 30 b0 e1                                      lsrs r3, r3, #1
00605a4c  01 10 81 e2                                      add r1, r1, #1
00605a50  fc ff ff 1a                                      bne #0x605a48
00605a54  01 09 10 e3                                      tst r0, #0x4000
00605a58  04 10 8d e5                                      str r1, [sp, #4]
00605a5c  20 00 00 1a                                      bne #0x605ae4
00605a60  01 30 a0 e3                                      mov r3, #1
00605a64  00 00 e0 e3                                      mvn r0, #0
00605a68  a3 30 b0 e1                                      lsrs r3, r3, #1
00605a6c  01 00 80 e2                                      add r0, r0, #1
00605a70  fc ff ff 1a                                      bne #0x605a68
00605a74  02 00 51 e1                                      cmp r1, r2
00605a78  01 20 a0 81                                      movhi r2, r1
00605a7c  04 30 8d 82                                      addhi r3, sp, #4
00605a80  08 30 8d 92                                      addls r3, sp, #8
00605a84  00 00 52 e1                                      cmp r2, r0
00605a88  0d 30 a0 31                                      movlo r3, sp
00605a8c  00 00 8d e5                                      str r0, [sp]
00605a90  00 20 93 e5                                      ldr r2, [r3]
00605a94  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00605a98  03 00 52 e1                                      cmp r2, r3
00605a9c  0e 00 00 0a                                      beq #0x605adc
00605aa0  00 30 94 e5                                      ldr r3, [r4]
00605aa4  04 00 a0 e1                                      mov r0, r4
00605aa8  0f e0 a0 e1                                      mov lr, pc
00605aac  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605ab0  54 10 9f e5                                      ldr r1, [pc, #0x54]
00605ab4  00 20 a0 e1                                      mov r2, r0
00605ab8  03 00 a0 e3                                      mov r0, #3
00605abc  01 10 8f e0                                      add r1, pc, r1
00605ac0  5b 15 00 eb                                      bl #0x60b034
00605ac4  00 00 a0 e3                                      mov r0, #0
00605ac8  a8 ff ff ea                                      b #0x605970
00605acc  30 20 97 e5                                      ldr r2, [r7, #0x30]
00605ad0  06 00 52 e3                                      cmp r2, #6
00605ad4  a4 ff ff 1a                                      bne #0x60596c
00605ad8  ca ff ff ea                                      b #0x605a08
00605adc  01 00 a0 e3                                      mov r0, #1
00605ae0  a2 ff ff ea                                      b #0x605970
00605ae4  30 30 97 e5                                      ldr r3, [r7, #0x30]
00605ae8  00 00 53 e3                                      cmp r3, #0
00605aec  00 00 e0 03                                      mvneq r0, #0
00605af0  db ff ff 1a                                      bne #0x605a64
00605af4  de ff ff ea                                      b #0x605a74
00605af8  04 22 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00605afc  dc f1 38 00 ac 40 00 00 f4 ef 2d 00 6c ef 2d 00  .byte 0xdc, 0xf1, 0x38, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0xef, 0x2d, 0x00, 0x6c, 0xef, 0x2d, 0x00
00605b0c  84 ee 2d 00                                      .byte 0x84, 0xee, 0x2d, 0x00

; FUNCTION 0x00605b10, declared_size=1056, range_size=1056, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZNK6glitch5video15CImageLoaderPVR17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE
; demangled: glitch::video::CImageLoaderPVR::loadTextureHeader(glitch::io::IReadFile*, glitch::video::STextureDesc&) const
; decoder-mode: arm
00605b10  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00605b14  3c d0 4d e2                                      sub sp, sp, #0x3c
00605b18  01 00 a0 e1                                      mov r0, r1
00605b1c  01 50 a0 e1                                      mov r5, r1
00605b20  02 40 a0 e1                                      mov r4, r2
00605b24  0d 10 a0 e1                                      mov r1, sp
00605b28  37 20 8d e2                                      add r2, sp, #0x37
00605b2c  5c ff ff eb                                      bl #0x6058a4
00605b30  e4 63 9f e5                                      ldr r6, [pc, #0x3e4]
00605b34  00 00 50 e3                                      cmp r0, #0
00605b38  06 60 8f e0                                      add r6, pc, r6
00605b3c  01 00 00 1a                                      bne #0x605b48
00605b40  3c d0 8d e2                                      add sp, sp, #0x3c
00605b44  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00605b48  10 30 9d e5                                      ldr r3, [sp, #0x10]
00605b4c  37 70 dd e5                                      ldrb r7, [sp, #0x37]
00605b50  01 0a 13 e3                                      tst r3, #0x1000
00605b54  02 20 a0 13                                      movne r2, #2
00605b58  00 20 84 15                                      strne r2, [r4]
00605b5c  78 00 00 0a                                      beq #0x605d44
00605b60  00 00 94 e5                                      ldr r0, [r4]
00605b64  04 20 9d e5                                      ldr r2, [sp, #4]
00605b68  08 10 9d e5                                      ldr r1, [sp, #8]
00605b6c  01 00 50 e3                                      cmp r0, #1
00605b70  00 00 a0 e3                                      mov r0, #0
00605b74  14 20 84 e5                                      str r2, [r4, #0x14]
00605b78  08 00 84 e5                                      str r0, [r4, #8]
00605b7c  10 10 84 e5                                      str r1, [r4, #0x10]
00605b80  30 20 9d 05                                      ldreq r2, [sp, #0x30]
00605b84  01 20 a0 13                                      movne r2, #1
00605b88  53 34 e0 e7                                      ubfx r3, r3, #8, #1
00605b8c  18 20 84 e5                                      str r2, [r4, #0x18]
00605b90  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
00605b94  00 30 95 e5                                      ldr r3, [r5]
00605b98  05 00 a0 e1                                      mov r0, r5
00605b9c  0f e0 a0 e1                                      mov lr, pc
00605ba0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00605ba4  00 30 94 e5                                      ldr r3, [r4]
00605ba8  00 00 57 e3                                      cmp r7, #0
00605bac  14 20 9d e5                                      ldr r2, [sp, #0x14]
00605bb0  08 70 a0 13                                      movne r7, #8
00605bb4  02 00 53 e3                                      cmp r3, #2
00605bb8  06 30 a0 03                                      moveq r3, #6
00605bbc  01 30 a0 13                                      movne r3, #1
00605bc0  92 03 03 e0                                      mul r3, r2, r3
00605bc4  34 00 40 e2                                      sub r0, r0, #0x34
00605bc8  00 70 67 e0                                      rsb r7, r7, r0
00605bcc  03 00 57 e1                                      cmp r7, r3
00605bd0  5f 00 00 1a                                      bne #0x605d54
00605bd4  10 30 9d e5                                      ldr r3, [sp, #0x10]
00605bd8  ff 20 03 e2                                      and r2, r3, #0xff
00605bdc  56 00 52 e3                                      cmp r2, #0x56
00605be0  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
00605be4  7c 00 00 ea                                      b #0x605ddc
00605be8  87 00 00 ea                                      b #0x605e0c
00605bec  89 00 00 ea                                      b #0x605e18
00605bf0  8b 00 00 ea                                      b #0x605e24
00605bf4  78 00 00 ea                                      b #0x605ddc
00605bf8  8c 00 00 ea                                      b #0x605e30
00605bfc  8e 00 00 ea                                      b #0x605e3c
00605c00  75 00 00 ea                                      b #0x605ddc
00605c04  8f 00 00 ea                                      b #0x605e48
00605c08  91 00 00 ea                                      b #0x605e54
00605c0c  72 00 00 ea                                      b #0x605ddc
00605c10  71 00 00 ea                                      b #0x605ddc
00605c14  70 00 00 ea                                      b #0x605ddc
00605c18  90 00 00 ea                                      b #0x605e60
00605c1c  94 00 00 ea                                      b #0x605e74
00605c20  6d 00 00 ea                                      b #0x605ddc
00605c24  6c 00 00 ea                                      b #0x605ddc
00605c28  96 00 00 ea                                      b #0x605e88
00605c2c  98 00 00 ea                                      b #0x605e94
00605c30  9a 00 00 ea                                      b #0x605ea0
00605c34  7a 00 00 ea                                      b #0x605e24
00605c38  67 00 00 ea                                      b #0x605ddc
00605c3c  7b 00 00 ea                                      b #0x605e30
00605c40  80 00 00 ea                                      b #0x605e48
00605c44  82 00 00 ea                                      b #0x605e54
00605c48  84 00 00 ea                                      b #0x605e60
00605c4c  88 00 00 ea                                      b #0x605e74
00605c50  79 00 00 ea                                      b #0x605e3c
00605c54  60 00 00 ea                                      b #0x605ddc
00605c58  5f 00 00 ea                                      b #0x605ddc
00605c5c  5e 00 00 ea                                      b #0x605ddc
00605c60  5d 00 00 ea                                      b #0x605ddc
00605c64  5c 00 00 ea                                      b #0x605ddc
00605c68  8f 00 00 ea                                      b #0x605eac
00605c6c  93 00 00 ea                                      b #0x605ec0
00605c70  92 00 00 ea                                      b #0x605ec0
00605c74  94 00 00 ea                                      b #0x605ecc
00605c78  93 00 00 ea                                      b #0x605ecc
00605c7c  56 00 00 ea                                      b #0x605ddc
00605c80  55 00 00 ea                                      b #0x605ddc
00605c84  54 00 00 ea                                      b #0x605ddc
00605c88  53 00 00 ea                                      b #0x605ddc
00605c8c  52 00 00 ea                                      b #0x605ddc
00605c90  90 00 00 ea                                      b #0x605ed8
00605c94  50 00 00 ea                                      b #0x605ddc
00605c98  4f 00 00 ea                                      b #0x605ddc
00605c9c  4e 00 00 ea                                      b #0x605ddc
00605ca0  4d 00 00 ea                                      b #0x605ddc
00605ca4  4c 00 00 ea                                      b #0x605ddc
00605ca8  4b 00 00 ea                                      b #0x605ddc
00605cac  4a 00 00 ea                                      b #0x605ddc
00605cb0  49 00 00 ea                                      b #0x605ddc
00605cb4  48 00 00 ea                                      b #0x605ddc
00605cb8  47 00 00 ea                                      b #0x605ddc
00605cbc  46 00 00 ea                                      b #0x605ddc
00605cc0  45 00 00 ea                                      b #0x605ddc
00605cc4  44 00 00 ea                                      b #0x605ddc
00605cc8  43 00 00 ea                                      b #0x605ddc
00605ccc  84 00 00 ea                                      b #0x605ee4
00605cd0  41 00 00 ea                                      b #0x605ddc
00605cd4  85 00 00 ea                                      b #0x605ef0
00605cd8  3f 00 00 ea                                      b #0x605ddc
00605cdc  3e 00 00 ea                                      b #0x605ddc
00605ce0  3d 00 00 ea                                      b #0x605ddc
00605ce4  3c 00 00 ea                                      b #0x605ddc
00605ce8  3b 00 00 ea                                      b #0x605ddc
00605cec  3a 00 00 ea                                      b #0x605ddc
00605cf0  39 00 00 ea                                      b #0x605ddc
00605cf4  38 00 00 ea                                      b #0x605ddc
00605cf8  37 00 00 ea                                      b #0x605ddc
00605cfc  36 00 00 ea                                      b #0x605ddc
00605d00  35 00 00 ea                                      b #0x605ddc
00605d04  34 00 00 ea                                      b #0x605ddc
00605d08  33 00 00 ea                                      b #0x605ddc
00605d0c  32 00 00 ea                                      b #0x605ddc
00605d10  31 00 00 ea                                      b #0x605ddc
00605d14  30 00 00 ea                                      b #0x605ddc
00605d18  2f 00 00 ea                                      b #0x605ddc
00605d1c  2e 00 00 ea                                      b #0x605ddc
00605d20  2d 00 00 ea                                      b #0x605ddc
00605d24  2c 00 00 ea                                      b #0x605ddc
00605d28  73 00 00 ea                                      b #0x605efc
00605d2c  2a 00 00 ea                                      b #0x605ddc
00605d30  29 00 00 ea                                      b #0x605ddc
00605d34  73 00 00 ea                                      b #0x605f08
00605d38  27 00 00 ea                                      b #0x605ddc
00605d3c  26 00 00 ea                                      b #0x605ddc
00605d40  0e 00 00 ea                                      b #0x605d80
00605d44  01 29 13 e2                                      ands r2, r3, #0x4000
00605d48  01 20 a0 13                                      movne r2, #1
00605d4c  00 20 84 e5                                      str r2, [r4]
00605d50  82 ff ff ea                                      b #0x605b60
00605d54  00 30 95 e5                                      ldr r3, [r5]
00605d58  05 00 a0 e1                                      mov r0, r5
00605d5c  0f e0 a0 e1                                      mov lr, pc
00605d60  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605d64  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
00605d68  00 20 a0 e1                                      mov r2, r0
00605d6c  03 00 a0 e3                                      mov r0, #3
00605d70  01 10 8f e0                                      add r1, pc, r1
00605d74  ae 14 00 eb                                      bl #0x60b034
00605d78  00 00 a0 e3                                      mov r0, #0
00605d7c  6f ff ff ea                                      b #0x605b40
00605d80  1d 20 a0 e3                                      mov r2, #0x1d
00605d84  04 20 84 e5                                      str r2, [r4, #4]
00605d88  02 0c 13 e3                                      tst r3, #0x200
00605d8c  60 00 00 0a                                      beq #0x605f14
00605d90  04 30 94 e5                                      ldr r3, [r4, #4]
00605d94  28 20 a0 e3                                      mov r2, #0x28
00605d98  92 03 03 e0                                      mul r3, r2, r3
00605d9c  80 21 9f e5                                      ldr r2, [pc, #0x180]
00605da0  02 20 96 e7                                      ldr r2, [r6, r2]
00605da4  03 40 92 e7                                      ldr r4, [r2, r3]
00605da8  08 40 14 e2                                      ands r4, r4, #8
00605dac  58 00 00 1a                                      bne #0x605f14
00605db0  00 30 95 e5                                      ldr r3, [r5]
00605db4  05 00 a0 e1                                      mov r0, r5
00605db8  0f e0 a0 e1                                      mov lr, pc
00605dbc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605dc0  60 11 9f e5                                      ldr r1, [pc, #0x160]
00605dc4  00 20 a0 e1                                      mov r2, r0
00605dc8  03 00 a0 e3                                      mov r0, #3
00605dcc  01 10 8f e0                                      add r1, pc, r1
00605dd0  97 14 00 eb                                      bl #0x60b034
00605dd4  04 00 a0 e1                                      mov r0, r4
00605dd8  58 ff ff ea                                      b #0x605b40
00605ddc  00 30 95 e5                                      ldr r3, [r5]
00605de0  05 00 a0 e1                                      mov r0, r5
00605de4  0f e0 a0 e1                                      mov lr, pc
00605de8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605dec  38 11 9f e5                                      ldr r1, [pc, #0x138]
00605df0  00 20 a0 e1                                      mov r2, r0
00605df4  10 30 dd e5                                      ldrb r3, [sp, #0x10]
00605df8  03 00 a0 e3                                      mov r0, #3
00605dfc  01 10 8f e0                                      add r1, pc, r1
00605e00  8b 14 00 eb                                      bl #0x60b034
00605e04  00 00 a0 e3                                      mov r0, #0
00605e08  4c ff ff ea                                      b #0x605b40
00605e0c  06 20 a0 e3                                      mov r2, #6
00605e10  04 20 84 e5                                      str r2, [r4, #4]
00605e14  db ff ff ea                                      b #0x605d88
00605e18  08 20 a0 e3                                      mov r2, #8
00605e1c  04 20 84 e5                                      str r2, [r4, #4]
00605e20  d8 ff ff ea                                      b #0x605d88
00605e24  05 20 a0 e3                                      mov r2, #5
00605e28  04 20 84 e5                                      str r2, [r4, #4]
00605e2c  d5 ff ff ea                                      b #0x605d88
00605e30  0a 20 a0 e3                                      mov r2, #0xa
00605e34  04 20 84 e5                                      str r2, [r4, #4]
00605e38  d2 ff ff ea                                      b #0x605d88
00605e3c  0d 20 a0 e3                                      mov r2, #0xd
00605e40  04 20 84 e5                                      str r2, [r4, #4]
00605e44  cf ff ff ea                                      b #0x605d88
00605e48  00 20 a0 e3                                      mov r2, #0
00605e4c  04 20 84 e5                                      str r2, [r4, #4]
00605e50  cc ff ff ea                                      b #0x605d88
00605e54  04 20 a0 e3                                      mov r2, #4
00605e58  04 20 84 e5                                      str r2, [r4, #4]
00605e5c  c9 ff ff ea                                      b #0x605d88
00605e60  02 09 13 e3                                      tst r3, #0x8000
00605e64  19 20 a0 13                                      movne r2, #0x19
00605e68  18 20 a0 03                                      moveq r2, #0x18
00605e6c  04 20 84 e5                                      str r2, [r4, #4]
00605e70  c4 ff ff ea                                      b #0x605d88
00605e74  02 09 13 e3                                      tst r3, #0x8000
00605e78  1b 20 a0 13                                      movne r2, #0x1b
00605e7c  1a 20 a0 03                                      moveq r2, #0x1a
00605e80  04 20 84 e5                                      str r2, [r4, #4]
00605e84  bf ff ff ea                                      b #0x605d88
00605e88  07 20 a0 e3                                      mov r2, #7
00605e8c  04 20 84 e5                                      str r2, [r4, #4]
00605e90  bc ff ff ea                                      b #0x605d88
00605e94  09 20 a0 e3                                      mov r2, #9
00605e98  04 20 84 e5                                      str r2, [r4, #4]
00605e9c  b9 ff ff ea                                      b #0x605d88
00605ea0  0e 20 a0 e3                                      mov r2, #0xe
00605ea4  04 20 84 e5                                      str r2, [r4, #4]
00605ea8  b6 ff ff ea                                      b #0x605d88
00605eac  02 09 13 e3                                      tst r3, #0x8000
00605eb0  12 20 a0 13                                      movne r2, #0x12
00605eb4  11 20 a0 03                                      moveq r2, #0x11
00605eb8  04 20 84 e5                                      str r2, [r4, #4]
00605ebc  b1 ff ff ea                                      b #0x605d88
00605ec0  13 20 a0 e3                                      mov r2, #0x13
00605ec4  04 20 84 e5                                      str r2, [r4, #4]
00605ec8  ae ff ff ea                                      b #0x605d88
00605ecc  14 20 a0 e3                                      mov r2, #0x14
00605ed0  04 20 84 e5                                      str r2, [r4, #4]
00605ed4  ab ff ff ea                                      b #0x605d88
00605ed8  10 20 a0 e3                                      mov r2, #0x10
00605edc  04 20 84 e5                                      str r2, [r4, #4]
00605ee0  a8 ff ff ea                                      b #0x605d88
00605ee4  02 20 a0 e3                                      mov r2, #2
00605ee8  04 20 84 e5                                      str r2, [r4, #4]
00605eec  a5 ff ff ea                                      b #0x605d88
00605ef0  01 20 a0 e3                                      mov r2, #1
00605ef4  04 20 84 e5                                      str r2, [r4, #4]
00605ef8  a2 ff ff ea                                      b #0x605d88
00605efc  1f 20 a0 e3                                      mov r2, #0x1f
00605f00  04 20 84 e5                                      str r2, [r4, #4]
00605f04  9f ff ff ea                                      b #0x605d88
00605f08  1e 20 a0 e3                                      mov r2, #0x1e
00605f0c  04 20 84 e5                                      str r2, [r4, #4]
00605f10  9c ff ff ea                                      b #0x605d88
00605f14  01 00 a0 e3                                      mov r0, #1
00605f18  08 ff ff ea                                      b #0x605b40
; mapping-symbol data/literal pool
00605f1c  58 ef 38 00 08 ec 2d 00 34 1f 00 00 0c ec 2d 00  .byte 0x58, 0xef, 0x38, 0x00, 0x08, 0xec, 0x2d, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x0c, 0xec, 0x2d, 0x00
00605f2c  ac eb 2d 00                                      .byte 0xac, 0xeb, 0x2d, 0x00

; FUNCTION 0x00605f80, declared_size=564, range_size=564, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZNK6glitch5video15CImageLoaderPVR9loadImageEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderPVR::loadImage(glitch::io::IReadFile*) const
; decoder-mode: arm
00605f80  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00605f84  54 d0 4d e2                                      sub sp, sp, #0x54
00605f88  00 40 a0 e1                                      mov r4, r0
00605f8c  02 50 a0 e1                                      mov r5, r2
00605f90  02 00 a0 e1                                      mov r0, r2
00605f94  10 10 8d e2                                      add r1, sp, #0x10
00605f98  4f 20 8d e2                                      add r2, sp, #0x4f
00605f9c  40 fe ff eb                                      bl #0x6058a4
00605fa0  00 00 50 e3                                      cmp r0, #0
00605fa4  00 00 84 05                                      streq r0, [r4]
00605fa8  02 00 00 1a                                      bne #0x605fb8
00605fac  04 00 a0 e1                                      mov r0, r4
00605fb0  54 d0 8d e2                                      add sp, sp, #0x54
00605fb4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00605fb8  00 10 a0 e3                                      mov r1, #0
00605fbc  24 00 9d e5                                      ldr r0, [sp, #0x24]
00605fc0  78 b8 fc eb                                      bl #0x5341a8
00605fc4  00 60 a0 e1                                      mov r6, r0
00605fc8  00 30 95 e5                                      ldr r3, [r5]
00605fcc  05 00 a0 e1                                      mov r0, r5
00605fd0  06 10 a0 e1                                      mov r1, r6
00605fd4  24 20 9d e5                                      ldr r2, [sp, #0x24]
00605fd8  0f e0 a0 e1                                      mov lr, pc
00605fdc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00605fe0  24 30 9d e5                                      ldr r3, [sp, #0x24]
00605fe4  03 00 50 e1                                      cmp r0, r3
00605fe8  0d 00 00 0a                                      beq #0x606024
00605fec  00 30 95 e5                                      ldr r3, [r5]
00605ff0  05 00 a0 e1                                      mov r0, r5
00605ff4  0f e0 a0 e1                                      mov lr, pc
00605ff8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605ffc  00 10 a0 e1                                      mov r1, r0
00606000  a0 01 9f e5                                      ldr r0, [pc, #0x1a0]
00606004  03 20 a0 e3                                      mov r2, #3
00606008  00 00 8f e0                                      add r0, pc, r0
0060600c  35 13 00 eb                                      bl #0x60ace8
00606010  00 30 a0 e3                                      mov r3, #0
00606014  00 30 84 e5                                      str r3, [r4]
00606018  06 00 a0 e1                                      mov r0, r6
0060601c  a3 20 f4 eb                                      bl #0x30e2b0
00606020  e1 ff ff ea                                      b #0x605fac
00606024  20 20 9d e5                                      ldr r2, [sp, #0x20]
00606028  ff 30 02 e2                                      and r3, r2, #0xff
0060602c  01 30 43 e2                                      sub r3, r3, #1
00606030  18 00 53 e3                                      cmp r3, #0x18
00606034  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00606038  51 00 00 ea                                      b #0x606184
0060603c  4e 00 00 ea                                      b #0x60617c
00606040  4f 00 00 ea                                      b #0x606184
00606044  4e 00 00 ea                                      b #0x606184
00606048  4d 00 00 ea                                      b #0x606184
0060604c  4c 00 00 ea                                      b #0x606184
00606050  4b 00 00 ea                                      b #0x606184
00606054  4a 00 00 ea                                      b #0x606184
00606058  49 00 00 ea                                      b #0x606184
0060605c  48 00 00 ea                                      b #0x606184
00606060  47 00 00 ea                                      b #0x606184
00606064  46 00 00 ea                                      b #0x606184
00606068  45 00 00 ea                                      b #0x606184
0060606c  44 00 00 ea                                      b #0x606184
00606070  43 00 00 ea                                      b #0x606184
00606074  42 00 00 ea                                      b #0x606184
00606078  3d 00 00 ea                                      b #0x606174
0060607c  3a 00 00 ea                                      b #0x60616c
00606080  37 00 00 ea                                      b #0x606164
00606084  34 00 00 ea                                      b #0x60615c
00606088  3d 00 00 ea                                      b #0x606184
0060608c  30 00 00 ea                                      b #0x606154
00606090  2d 00 00 ea                                      b #0x60614c
00606094  2a 00 00 ea                                      b #0x606144
00606098  25 00 00 ea                                      b #0x606134
0060609c  ff ff ff ea                                      b #0x6060a0
006060a0  02 09 12 e3                                      tst r2, #0x8000
006060a4  1b 70 a0 13                                      movne r7, #0x1b
006060a8  1a 70 a0 03                                      moveq r7, #0x1a
006060ac  18 30 9d e5                                      ldr r3, [sp, #0x18]
006060b0  00 10 a0 e3                                      mov r1, #0
006060b4  2c 00 a0 e3                                      mov r0, #0x2c
006060b8  44 30 8d e5                                      str r3, [sp, #0x44]
006060bc  14 30 9d e5                                      ldr r3, [sp, #0x14]
006060c0  48 30 8d e5                                      str r3, [sp, #0x48]
006060c4  38 b8 fc eb                                      bl #0x5341ac
006060c8  24 e0 9d e5                                      ldr lr, [sp, #0x24]
006060cc  00 50 a0 e1                                      mov r5, r0
006060d0  01 c0 a0 e3                                      mov ip, #1
006060d4  00 e0 8d e5                                      str lr, [sp]
006060d8  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006060dc  06 30 a0 e1                                      mov r3, r6
006060e0  07 10 a0 e1                                      mov r1, r7
006060e4  44 20 8d e2                                      add r2, sp, #0x44
006060e8  04 e0 8d e5                                      str lr, [sp, #4]
006060ec  0c c0 8d e5                                      str ip, [sp, #0xc]
006060f0  08 c0 8d e5                                      str ip, [sp, #8]
006060f4  bb f1 ff eb                                      bl #0x6027e8
006060f8  00 00 55 e3                                      cmp r5, #0
006060fc  00 50 84 05                                      streq r5, [r4]
00606100  05 60 a0 01                                      moveq r6, r5
00606104  c3 ff ff 0a                                      beq #0x606018
00606108  04 30 95 e5                                      ldr r3, [r5, #4]
0060610c  05 00 a0 e1                                      mov r0, r5
00606110  00 60 a0 e3                                      mov r6, #0
00606114  01 30 83 e2                                      add r3, r3, #1
00606118  04 30 85 e5                                      str r3, [r5, #4]
0060611c  00 50 84 e5                                      str r5, [r4]
00606120  04 30 95 e5                                      ldr r3, [r5, #4]
00606124  01 30 83 e2                                      add r3, r3, #1
00606128  04 30 85 e5                                      str r3, [r5, #4]
0060612c  14 5d f4 eb                                      bl #0x31d584
00606130  b8 ff ff ea                                      b #0x606018
00606134  02 09 12 e3                                      tst r2, #0x8000
00606138  19 70 a0 13                                      movne r7, #0x19
0060613c  18 70 a0 03                                      moveq r7, #0x18
00606140  d9 ff ff ea                                      b #0x6060ac
00606144  04 70 a0 e3                                      mov r7, #4
00606148  d7 ff ff ea                                      b #0x6060ac
0060614c  00 70 a0 e3                                      mov r7, #0
00606150  d5 ff ff ea                                      b #0x6060ac
00606154  0a 70 a0 e3                                      mov r7, #0xa
00606158  d3 ff ff ea                                      b #0x6060ac
0060615c  05 70 a0 e3                                      mov r7, #5
00606160  d1 ff ff ea                                      b #0x6060ac
00606164  0e 70 a0 e3                                      mov r7, #0xe
00606168  cf ff ff ea                                      b #0x6060ac
0060616c  09 70 a0 e3                                      mov r7, #9
00606170  cd ff ff ea                                      b #0x6060ac
00606174  07 70 a0 e3                                      mov r7, #7
00606178  cb ff ff ea                                      b #0x6060ac
0060617c  08 70 a0 e3                                      mov r7, #8
00606180  c9 ff ff ea                                      b #0x6060ac
00606184  20 00 9f e5                                      ldr r0, [pc, #0x20]
00606188  20 10 9f e5                                      ldr r1, [pc, #0x20]
0060618c  03 20 a0 e3                                      mov r2, #3
00606190  00 00 8f e0                                      add r0, pc, r0
00606194  01 10 8f e0                                      add r1, pc, r1
00606198  d2 12 00 eb                                      bl #0x60ace8
0060619c  00 30 a0 e3                                      mov r3, #0
006061a0  00 30 84 e5                                      str r3, [r4]
006061a4  9b ff ff ea                                      b #0x606018
; mapping-symbol data/literal pool
006061a8  00 ea 2d 00 90 e8 2d 00 9c e8 2d 00              .byte 0x00, 0xea, 0x2d, 0x00, 0x90, 0xe8, 0x2d, 0x00, 0x9c, 0xe8, 0x2d, 0x00

; FUNCTION 0x0060623c, declared_size=184, range_size=184, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZNK6glitch5video15CImageLoaderPVR15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE
; demangled: glitch::video::CImageLoaderPVR::loadTextureData(glitch::io::IReadFile*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::STextureDesc const&) const
; decoder-mode: arm
0060623c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00606240  4c d0 4d e2                                      sub sp, sp, #0x4c
00606244  01 40 a0 e1                                      mov r4, r1
00606248  01 00 a0 e1                                      mov r0, r1
0060624c  02 70 a0 e1                                      mov r7, r2
00606250  0d 10 a0 e1                                      mov r1, sp
00606254  47 20 8d e2                                      add r2, sp, #0x47
00606258  03 60 a0 e1                                      mov r6, r3
0060625c  90 fd ff eb                                      bl #0x6058a4
00606260  84 80 9f e5                                      ldr r8, [pc, #0x84]
00606264  00 00 50 e3                                      cmp r0, #0
00606268  0d 50 a0 e1                                      mov r5, sp
0060626c  08 80 8f e0                                      add r8, pc, r8
00606270  00 40 a0 01                                      moveq r4, r0
00606274  19 00 00 0a                                      beq #0x6062e0
00606278  00 30 94 e5                                      ldr r3, [r4]
0060627c  04 00 a0 e1                                      mov r0, r4
00606280  0f e0 a0 e1                                      mov lr, pc
00606284  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00606288  60 a0 9f e5                                      ldr sl, [pc, #0x60]
0060628c  47 30 dd e5                                      ldrb r3, [sp, #0x47]
00606290  34 00 40 e2                                      sub r0, r0, #0x34
00606294  0a a0 98 e7                                      ldr sl, [r8, sl]
00606298  00 00 53 e3                                      cmp r3, #0
0060629c  08 30 a0 13                                      movne r3, #8
006062a0  34 80 8d e2                                      add r8, sp, #0x34
006062a4  00 c0 63 e0                                      rsb ip, r3, r0
006062a8  08 a0 8a e2                                      add sl, sl, #8
006062ac  04 00 a0 e1                                      mov r0, r4
006062b0  06 20 a0 e1                                      mov r2, r6
006062b4  07 30 a0 e1                                      mov r3, r7
006062b8  08 10 a0 e1                                      mov r1, r8
006062bc  38 d0 8d e5                                      str sp, [sp, #0x38]
006062c0  40 c0 8d e5                                      str ip, [sp, #0x40]
006062c4  34 a0 8d e5                                      str sl, [sp, #0x34]
006062c8  3c 60 8d e5                                      str r6, [sp, #0x3c]
006062cc  3f 08 00 eb                                      bl #0x6083d0
006062d0  00 40 a0 e1                                      mov r4, r0
006062d4  08 00 a0 e1                                      mov r0, r8
006062d8  34 a0 8d e5                                      str sl, [sp, #0x34]
006062dc  da 04 00 eb                                      bl #0x60764c
006062e0  04 00 a0 e1                                      mov r0, r4
006062e4  4c d0 8d e2                                      add sp, sp, #0x4c
006062e8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
006062ec  24 e8 38 00 1c 2c 00 00                          .byte 0x24, 0xe8, 0x38, 0x00, 0x1c, 0x2c, 0x00, 0x00

; FUNCTION 0x00605720, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderPVR::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderPVR9CDataInfo15getFileDataSizeEv
; demangled: glitch::video::CImageLoaderPVR::CDataInfo::getFileDataSize() const
; decoder-mode: arm
00605720  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00605724  1e ff 2f e1                                      bx lr

; FUNCTION 0x00605728, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderPVR::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderPVR9CDataInfo12getFilePitchEh
; demangled: glitch::video::CImageLoaderPVR::CDataInfo::getFilePitch(unsigned char) const
; decoder-mode: arm
00605728  00 00 a0 e3                                      mov r0, #0
0060572c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00605730, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderPVR::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderPVR9CDataInfo14isLittleEndianEv
; demangled: glitch::video::CImageLoaderPVR::CDataInfo::isLittleEndian() const
; decoder-mode: arm
00605730  01 00 a0 e3                                      mov r0, #1
00605734  1e ff 2f e1                                      bx lr

; FUNCTION 0x00605738, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderPVR::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderPVR9CDataInfo9needsFlipEv
; demangled: glitch::video::CImageLoaderPVR::CDataInfo::needsFlip() const
; decoder-mode: arm
00605738  00 00 a0 e3                                      mov r0, #0
0060573c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00607898, declared_size=132, range_size=132, mode=arm
; class-group: glitch::video::IImageLoader::ITextureDataLoading
; alias: _ZNK6glitch5video12IImageLoader19ITextureDataLoading13getSourceStepEh
; demangled: glitch::video::IImageLoader::ITextureDataLoading::getSourceStep(unsigned char) const
; decoder-mode: arm
00607898  04 e0 2d e5                                      str lr, [sp, #-4]!
0060789c  22 30 d0 e5                                      ldrb r3, [r0, #0x22]
006078a0  0c d0 4d e2                                      sub sp, sp, #0xc
006078a4  00 00 53 e3                                      cmp r3, #0
006078a8  0d 00 00 1a                                      bne #0x6078e4
006078ac  10 30 90 e5                                      ldr r3, [r0, #0x10]
006078b0  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
006078b4  00 30 93 e5                                      ldr r3, [r3]
006078b8  24 00 93 e5                                      ldr r0, [r3, #0x24]
006078bc  28 30 93 e5                                      ldr r3, [r3, #0x28]
006078c0  50 01 a0 e1                                      asr r0, r0, r1
006078c4  01 00 50 e3                                      cmp r0, #1
006078c8  01 00 a0 b3                                      movlt r0, #1
006078cc  33 11 b0 e1                                      lsrs r1, r3, r1
006078d0  92 00 00 e0                                      mul r0, r2, r0
006078d4  01 10 a0 03                                      moveq r1, #1
006078d8  91 00 00 e0                                      mul r0, r1, r0
006078dc  0c d0 8d e2                                      add sp, sp, #0xc
006078e0  00 80 bd e8                                      ldm sp!, {pc}
006078e4  0c c0 90 e5                                      ldr ip, [r0, #0xc]
006078e8  10 e0 9c e5                                      ldr lr, [ip, #0x10]
006078ec  14 20 9c e5                                      ldr r2, [ip, #0x14]
006078f0  18 30 9c e5                                      ldr r3, [ip, #0x18]
006078f4  04 00 9c e5                                      ldr r0, [ip, #4]
006078f8  00 10 8d e5                                      str r1, [sp]
006078fc  08 c0 9c e5                                      ldr ip, [ip, #8]
00607900  0e 10 a0 e1                                      mov r1, lr
00607904  01 00 5c e3                                      cmp ip, #1
00607908  00 c0 a0 13                                      movne ip, #0
0060790c  01 c0 a0 03                                      moveq ip, #1
00607910  04 c0 8d e5                                      str ip, [sp, #4]
00607914  b4 98 ff eb                                      bl #0x5edbec
00607918  ef ff ff ea                                      b #0x6078dc

; FUNCTION 0x00607a64, declared_size=696, range_size=696, mode=arm
; class-group: glitch::video::IImageLoader::ITextureDataLoading
; alias: _ZN6glitch5video12IImageLoader19ITextureDataLoading4loadEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERNS0_12_GLOBAL__N_19SLoadInfoE
; demangled: glitch::video::IImageLoader::ITextureDataLoading::load(glitch::io::IReadFile*, glitch::video::IImageLoader::IDataInfo const&, glitch::video::STextureDesc const&, glitch::video::(anonymous namespace)::SLoadInfo&)
; decoder-mode: arm
00607a64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00607a68  3c d0 4d e2                                      sub sp, sp, #0x3c
00607a6c  60 c0 9d e5                                      ldr ip, [sp, #0x60]
00607a70  00 40 a0 e1                                      mov r4, r0
00607a74  06 00 80 e9                                      stmib r0, {r1, r2}
00607a78  0c 30 84 e5                                      str r3, [r4, #0xc]
00607a7c  10 c0 80 e5                                      str ip, [r0, #0x10]
00607a80  04 20 9c e5                                      ldr r2, [ip, #4]
00607a84  00 60 9c e5                                      ldr r6, [ip]
00607a88  03 50 a0 e1                                      mov r5, r3
00607a8c  18 20 80 e5                                      str r2, [r0, #0x18]
00607a90  08 30 9c e5                                      ldr r3, [ip, #8]
00607a94  00 00 53 e3                                      cmp r3, #0
00607a98  96 00 00 0a                                      beq #0x607cf8
00607a9c  14 30 80 e5                                      str r3, [r0, #0x14]
00607aa0  00 10 a0 e3                                      mov r1, #0
00607aa4  46 ff ff eb                                      bl #0x6077c4
00607aa8  1c 00 84 e5                                      str r0, [r4, #0x1c]
00607aac  1c 30 d5 e5                                      ldrb r3, [r5, #0x1c]
00607ab0  00 00 53 e3                                      cmp r3, #0
00607ab4  06 00 00 0a                                      beq #0x607ad4
00607ab8  3e 30 d6 e5                                      ldrb r3, [r6, #0x3e]
00607abc  01 00 53 e3                                      cmp r3, #1
00607ac0  6c 00 00 9a                                      bls #0x607c78
00607ac4  3f 20 d6 e5                                      ldrb r2, [r6, #0x3f]
00607ac8  02 00 12 e3                                      tst r2, #2
00607acc  01 30 a0 13                                      movne r3, #1
00607ad0  21 30 c4 e5                                      strb r3, [r4, #0x21]
00607ad4  00 30 94 e5                                      ldr r3, [r4]
00607ad8  04 00 a0 e1                                      mov r0, r4
00607adc  0f e0 a0 e1                                      mov lr, pc
00607ae0  08 f0 93 e5                                      ldr pc, [r3, #8]
00607ae4  00 00 50 e3                                      cmp r0, #0
00607ae8  5f 00 00 0a                                      beq #0x607c6c
00607aec  38 30 96 e5                                      ldr r3, [r6, #0x38]
00607af0  21 a0 d4 e5                                      ldrb sl, [r4, #0x21]
00607af4  3e 20 d6 e5                                      ldrb r2, [r6, #0x3e]
00607af8  03 30 03 e2                                      and r3, r3, #3
00607afc  00 70 a0 e3                                      mov r7, #0
00607b00  02 00 5a e1                                      cmp sl, r2
00607b04  02 a0 a0 21                                      movhs sl, r2
00607b08  02 00 53 e3                                      cmp r3, #2
00607b0c  06 30 a0 03                                      moveq r3, #6
00607b10  01 30 a0 13                                      movne r3, #1
00607b14  34 30 8d e5                                      str r3, [sp, #0x34]
00607b18  30 70 8d e5                                      str r7, [sp, #0x30]
00607b1c  07 80 a0 e1                                      mov r8, r7
00607b20  00 00 5a e3                                      cmp sl, #0
00607b24  00 50 a0 13                                      movne r5, #0
00607b28  05 70 a0 11                                      movne r7, r5
00607b2c  47 00 00 0a                                      beq #0x607c50
00607b30  07 20 a0 e1                                      mov r2, r7
00607b34  08 10 a0 e1                                      mov r1, r8
00607b38  00 30 94 e5                                      ldr r3, [r4]
00607b3c  04 00 a0 e1                                      mov r0, r4
00607b40  0f e0 a0 e1                                      mov lr, pc
00607b44  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00607b48  00 00 50 e3                                      cmp r0, #0
00607b4c  38 00 00 0a                                      beq #0x607c34
00607b50  10 30 94 e5                                      ldr r3, [r4, #0x10]
00607b54  07 10 a0 e1                                      mov r1, r7
00607b58  06 00 a0 e1                                      mov r0, r6
00607b5c  0c 30 d3 e5                                      ldrb r3, [r3, #0xc]
00607b60  00 00 53 e3                                      cmp r3, #0
00607b64  32 00 00 0a                                      beq #0x607c34
00607b68  20 30 96 e5                                      ldr r3, [r6, #0x20]
00607b6c  24 b0 96 e5                                      ldr fp, [r6, #0x24]
00607b70  28 70 96 e5                                      ldr r7, [r6, #0x28]
00607b74  53 35 a0 e1                                      asr r3, r3, r5
00607b78  5b b5 a0 e1                                      asr fp, fp, r5
00607b7c  01 00 53 e3                                      cmp r3, #1
00607b80  01 30 a0 b3                                      movlt r3, #1
00607b84  01 00 5b e3                                      cmp fp, #1
00607b88  01 b0 a0 b3                                      movlt fp, #1
00607b8c  37 75 b0 e1                                      lsrs r7, r7, r5
00607b90  1c 30 8d e5                                      str r3, [sp, #0x1c]
00607b94  38 20 96 e5                                      ldr r2, [r6, #0x38]
00607b98  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00607b9c  01 70 a0 03                                      moveq r7, #1
00607ba0  52 22 e5 e7                                      ubfx r2, r2, #4, #6
00607ba4  04 30 93 e5                                      ldr r3, [r3, #4]
00607ba8  20 20 8d e5                                      str r2, [sp, #0x20]
00607bac  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00607bb0  14 90 94 e5                                      ldr sb, [r4, #0x14]
00607bb4  28 20 8d e5                                      str r2, [sp, #0x28]
00607bb8  18 e0 94 e5                                      ldr lr, [r4, #0x18]
00607bbc  18 30 8d e5                                      str r3, [sp, #0x18]
00607bc0  2c e0 8d e5                                      str lr, [sp, #0x2c]
00607bc4  4e 8a ff eb                                      bl #0x5ea504
00607bc8  24 00 8d e5                                      str r0, [sp, #0x24]
00607bcc  08 20 94 e5                                      ldr r2, [r4, #8]
00607bd0  02 00 a0 e1                                      mov r0, r2
00607bd4  00 20 92 e5                                      ldr r2, [r2]
00607bd8  0f e0 a0 e1                                      mov lr, pc
00607bdc  14 f0 92 e5                                      ldr pc, [r2, #0x14]
00607be0  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
00607be4  18 30 9d e5                                      ldr r3, [sp, #0x18]
00607be8  9b 07 0c e0                                      mul ip, fp, r7
00607bec  00 e0 8d e5                                      str lr, [sp]
00607bf0  24 e0 9d e5                                      ldr lr, [sp, #0x24]
00607bf4  10 00 8d e5                                      str r0, [sp, #0x10]
00607bf8  09 10 a0 e1                                      mov r1, sb
00607bfc  04 e0 8d e5                                      str lr, [sp, #4]
00607c00  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00607c04  03 00 a0 e1                                      mov r0, r3
00607c08  28 20 9d e5                                      ldr r2, [sp, #0x28]
00607c0c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00607c10  08 e0 8d e5                                      str lr, [sp, #8]
00607c14  0c c0 8d e5                                      str ip, [sp, #0xc]
00607c18  63 c6 ff eb                                      bl #0x5f95ac
00607c1c  00 00 50 e3                                      cmp r0, #0
00607c20  03 00 00 1a                                      bne #0x607c34
00607c24  01 30 a0 e3                                      mov r3, #1
00607c28  20 30 c4 e5                                      strb r3, [r4, #0x20]
00607c2c  3c d0 8d e2                                      add sp, sp, #0x3c
00607c30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00607c34  20 30 d4 e5                                      ldrb r3, [r4, #0x20]
00607c38  01 50 85 e2                                      add r5, r5, #1
00607c3c  75 70 ef e6                                      uxtb r7, r5
00607c40  00 00 53 e3                                      cmp r3, #0
00607c44  32 00 00 1a                                      bne #0x607d14
00607c48  07 00 5a e1                                      cmp sl, r7
00607c4c  b7 ff ff 8a                                      bhi #0x607b30
00607c50  30 20 9d e5                                      ldr r2, [sp, #0x30]
00607c54  34 30 9d e5                                      ldr r3, [sp, #0x34]
00607c58  01 20 82 e2                                      add r2, r2, #1
00607c5c  03 00 52 e1                                      cmp r2, r3
00607c60  30 20 8d e5                                      str r2, [sp, #0x30]
00607c64  02 80 a0 b1                                      movlt r8, r2
00607c68  ac ff ff ba                                      blt #0x607b20
00607c6c  20 00 d4 e5                                      ldrb r0, [r4, #0x20]
00607c70  01 00 20 e2                                      eor r0, r0, #1
00607c74  ec ff ff ea                                      b #0x607c2c
00607c78  20 30 96 e5                                      ldr r3, [r6, #0x20]
00607c7c  00 00 53 e3                                      cmp r3, #0
00607c80  00 20 e0 03                                      mvneq r2, #0
00607c84  03 00 00 0a                                      beq #0x607c98
00607c88  00 20 e0 e3                                      mvn r2, #0
00607c8c  c3 30 b0 e1                                      asrs r3, r3, #1
00607c90  01 20 82 e2                                      add r2, r2, #1
00607c94  fc ff ff 1a                                      bne #0x607c8c
00607c98  24 30 96 e5                                      ldr r3, [r6, #0x24]
00607c9c  00 00 53 e3                                      cmp r3, #0
00607ca0  00 10 e0 03                                      mvneq r1, #0
00607ca4  03 00 00 0a                                      beq #0x607cb8
00607ca8  00 10 e0 e3                                      mvn r1, #0
00607cac  c3 30 b0 e1                                      asrs r3, r3, #1
00607cb0  01 10 81 e2                                      add r1, r1, #1
00607cb4  fc ff ff 1a                                      bne #0x607cac
00607cb8  28 30 96 e5                                      ldr r3, [r6, #0x28]
00607cbc  00 00 53 e3                                      cmp r3, #0
00607cc0  00 00 e0 03                                      mvneq r0, #0
00607cc4  03 00 00 0a                                      beq #0x607cd8
00607cc8  00 00 e0 e3                                      mvn r0, #0
00607ccc  a3 30 b0 e1                                      lsrs r3, r3, #1
00607cd0  01 00 80 e2                                      add r0, r0, #1
00607cd4  fc ff ff 1a                                      bne #0x607ccc
00607cd8  02 00 51 e1                                      cmp r1, r2
00607cdc  01 20 a0 a1                                      movge r2, r1
00607ce0  02 20 a0 b1                                      movlt r2, r2
00607ce4  00 00 52 e1                                      cmp r2, r0
00607ce8  00 20 a0 b1                                      movlt r2, r0
00607cec  01 20 82 e2                                      add r2, r2, #1
00607cf0  21 20 c4 e5                                      strb r2, [r4, #0x21]
00607cf4  76 ff ff ea                                      b #0x607ad4
00607cf8  14 20 80 e5                                      str r2, [r0, #0x14]
00607cfc  38 00 96 e5                                      ldr r0, [r6, #0x38]
00607d00  20 10 96 e5                                      ldr r1, [r6, #0x20]
00607d04  50 02 e5 e7                                      ubfx r0, r0, #4, #6
00607d08  77 97 ff eb                                      bl #0x5edaec
00607d0c  1c 00 84 e5                                      str r0, [r4, #0x1c]
00607d10  65 ff ff ea                                      b #0x607aac
00607d14  00 00 a0 e3                                      mov r0, #0
00607d18  c3 ff ff ea                                      b #0x607c2c

; FUNCTION 0x005edaec, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj
; demangled: glitch::video::pixel_format::computePitch(glitch::video::E_PIXEL_FORMAT, unsigned int)
; decoder-mode: arm
005edaec  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
005edaf0  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
005edaf4  10 40 2d e9                                      push {r4, lr}
005edaf8  03 30 8f e0                                      add r3, pc, r3
005edafc  02 20 93 e7                                      ldr r2, [r3, r2]
005edb00  28 40 a0 e3                                      mov r4, #0x28
005edb04  94 20 24 e0                                      mla r4, r4, r0, r2
005edb08  24 30 d4 e5                                      ldrb r3, [r4, #0x24]
005edb0c  01 00 53 e3                                      cmp r3, #1
005edb10  06 00 00 9a                                      bls #0x5edb30
005edb14  01 00 43 e2                                      sub r0, r3, #1
005edb18  01 00 80 e0                                      add r0, r0, r1
005edb1c  03 10 a0 e1                                      mov r1, r3
005edb20  49 84 f4 eb                                      bl #0x30ec4c
005edb24  15 10 d4 e5                                      ldrb r1, [r4, #0x15]
005edb28  91 00 00 e0                                      mul r0, r1, r0
005edb2c  10 80 bd e8                                      pop {r4, pc}
005edb30  16 00 d4 e5                                      ldrb r0, [r4, #0x16]
005edb34  90 01 01 e0                                      mul r1, r0, r1
005edb38  a1 01 a0 e1                                      lsr r0, r1, #3
005edb3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005edb40  98 6f 3a 00 34 1f 00 00                          .byte 0x98, 0x6f, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x005edb48, declared_size=112, range_size=112, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format18computeSizeInBytesENS0_14E_PIXEL_FORMATEjj
; demangled: glitch::video::pixel_format::computeSizeInBytes(glitch::video::E_PIXEL_FORMAT, unsigned int, unsigned int)
; decoder-mode: arm
005edb48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005edb4c  02 80 a0 e1                                      mov r8, r2
005edb50  00 60 a0 e1                                      mov r6, r0
005edb54  e4 ff ff eb                                      bl #0x5edaec
005edb58  50 40 9f e5                                      ldr r4, [pc, #0x50]
005edb5c  50 50 9f e5                                      ldr r5, [pc, #0x50]
005edb60  28 20 a0 e3                                      mov r2, #0x28
005edb64  04 40 8f e0                                      add r4, pc, r4
005edb68  05 30 94 e7                                      ldr r3, [r4, r5]
005edb6c  00 70 a0 e1                                      mov r7, r0
005edb70  92 36 23 e0                                      mla r3, r2, r6, r3
005edb74  25 10 d3 e5                                      ldrb r1, [r3, #0x25]
005edb78  01 00 51 e3                                      cmp r1, #1
005edb7c  98 00 00 90                                      mulls r0, r8, r0
005edb80  03 00 00 9a                                      bls #0x5edb94
005edb84  01 00 41 e2                                      sub r0, r1, #1
005edb88  08 00 80 e0                                      add r0, r0, r8
005edb8c  2e 84 f4 eb                                      bl #0x30ec4c
005edb90  90 07 00 e0                                      mul r0, r0, r7
005edb94  05 30 94 e7                                      ldr r3, [r4, r5]
005edb98  28 20 a0 e3                                      mov r2, #0x28
005edb9c  92 36 26 e0                                      mla r6, r2, r6, r3
005edba0  27 30 d6 e5                                      ldrb r3, [r6, #0x27]
005edba4  03 00 50 e1                                      cmp r0, r3
005edba8  03 00 a0 31                                      movlo r0, r3
005edbac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005edbb0  2c 6f 3a 00 34 1f 00 00                          .byte 0x2c, 0x6f, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x005edbb8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format18computeSizeInBytesENS0_14E_PIXEL_FORMATEjjj
; demangled: glitch::video::pixel_format::computeSizeInBytes(glitch::video::E_PIXEL_FORMAT, unsigned int, unsigned int, unsigned int)
; decoder-mode: arm
005edbb8  10 40 2d e9                                      push {r4, lr}
005edbbc  03 40 a0 e1                                      mov r4, r3
005edbc0  e0 ff ff eb                                      bl #0x5edb48
005edbc4  94 00 00 e0                                      mul r0, r4, r0
005edbc8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005edbcc, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format24computeMipmapSizeInBytesENS0_14E_PIXEL_FORMATEjjhb
; demangled: glitch::video::pixel_format::computeMipmapSizeInBytes(glitch::video::E_PIXEL_FORMAT, unsigned int, unsigned int, unsigned char, bool)
; decoder-mode: arm
005edbcc  00 c0 dd e5                                      ldrb ip, [sp]
005edbd0  00 00 5c e3                                      cmp ip, #0
005edbd4  01 00 00 1a                                      bne #0x5edbe0
005edbd8  31 13 b0 e1                                      lsrs r1, r1, r3
005edbdc  01 10 a0 03                                      moveq r1, #1
005edbe0  32 23 b0 e1                                      lsrs r2, r2, r3
005edbe4  01 20 a0 03                                      moveq r2, #1
005edbe8  d6 ff ff ea                                      b #0x5edb48

; FUNCTION 0x005edbec, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format24computeMipmapSizeInBytesENS0_14E_PIXEL_FORMATEjjjhb
; demangled: glitch::video::pixel_format::computeMipmapSizeInBytes(glitch::video::E_PIXEL_FORMAT, unsigned int, unsigned int, unsigned int, unsigned char, bool)
; decoder-mode: arm
005edbec  04 c0 dd e5                                      ldrb ip, [sp, #4]
005edbf0  00 00 5c e3                                      cmp ip, #0
005edbf4  00 c0 dd e5                                      ldrb ip, [sp]
005edbf8  01 00 00 1a                                      bne #0x5edc04
005edbfc  31 1c b0 e1                                      lsrs r1, r1, ip
005edc00  01 10 a0 03                                      moveq r1, #1
005edc04  32 2c b0 e1                                      lsrs r2, r2, ip
005edc08  01 20 a0 03                                      moveq r2, #1
005edc0c  33 3c b0 e1                                      lsrs r3, r3, ip
005edc10  01 30 a0 03                                      moveq r3, #1
005edc14  e7 ff ff ea                                      b #0x5edbb8