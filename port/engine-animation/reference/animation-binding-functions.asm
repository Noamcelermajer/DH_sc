; FUNCTION 0x006601fc, declared_size=684, range_size=684, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet12addAnimationEPKNS0_10SAnimationE
; demangled: glitch::collada::CAnimationSet::addAnimation(glitch::collada::SAnimation const*)
; decoder-mode: arm
006601fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00660200  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00660204  10 b0 90 e5                                      ldr fp, [r0, #0x10]
00660208  8c 22 9f e5                                      ldr r2, [pc, #0x28c]
0066020c  14 d0 4d e2                                      sub sp, sp, #0x14
00660210  0b b0 63 e0                                      rsb fp, r3, fp
00660214  0c 10 8d e5                                      str r1, [sp, #0xc]
00660218  4b b1 b0 e1                                      asrs fp, fp, #2
0066021c  02 20 8f e0                                      add r2, pc, r2
00660220  00 50 a0 e1                                      mov r5, r0
00660224  10 40 91 e5                                      ldr r4, [r1, #0x10]
00660228  40 00 00 0a                                      beq #0x660330
0066022c  6c 12 9f e5                                      ldr r1, [pc, #0x26c]
00660230  00 60 a0 e3                                      mov r6, #0
00660234  0c a0 a0 e3                                      mov sl, #0xc
00660238  01 90 92 e7                                      ldr sb, [r2, r1]
0066023c  60 22 9f e5                                      ldr r2, [pc, #0x260]
00660240  01 80 a0 e3                                      mov r8, #1
00660244  06 71 a0 e1                                      lsl r7, r6, #2
00660248  02 20 8f e0                                      add r2, pc, r2
0066024c  08 20 8d e5                                      str r2, [sp, #8]
00660250  06 11 93 e7                                      ldr r1, [r3, r6, lsl #2]
00660254  08 30 94 e5                                      ldr r3, [r4, #8]
00660258  00 20 99 e5                                      ldr r2, [sb]
0066025c  08 10 91 e5                                      ldr r1, [r1, #8]
00660260  5b 00 53 e3                                      cmp r3, #0x5b
00660264  9a 21 22 e0                                      mla r2, sl, r1, r2
00660268  24 00 00 8a                                      bhi #0x660300
0066026c  a3 12 a0 e1                                      lsr r1, r3, #5
00660270  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
00660274  1f 30 03 e2                                      and r3, r3, #0x1f
00660278  18 23 12 e0                                      ands r2, r2, r8, lsl r3
0066027c  13 00 00 0a                                      beq #0x6602d0
00660280  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00660284  04 10 94 e5                                      ldr r1, [r4, #4]
00660288  07 70 93 e7                                      ldr r7, [r3, r7]
0066028c  04 00 97 e5                                      ldr r0, [r7, #4]
00660290  21 b8 f2 eb                                      bl #0x30e31c
00660294  00 00 50 e3                                      cmp r0, #0
00660298  0c 00 00 1a                                      bne #0x6602d0
0066029c  08 30 94 e5                                      ldr r3, [r4, #8]
006602a0  0e 00 53 e3                                      cmp r3, #0xe
006602a4  1c 00 00 0a                                      beq #0x66031c
006602a8  56 00 53 e3                                      cmp r3, #0x56
006602ac  02 00 00 0a                                      beq #0x6602bc
006602b0  06 00 a0 e1                                      mov r0, r6
006602b4  14 d0 8d e2                                      add sp, sp, #0x14
006602b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006602bc  0c 00 97 e5                                      ldr r0, [r7, #0xc]
006602c0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006602c4  14 b8 f2 eb                                      bl #0x30e31c
006602c8  00 00 50 e3                                      cmp r0, #0
006602cc  f7 ff ff 0a                                      beq #0x6602b0
006602d0  01 60 86 e2                                      add r6, r6, #1
006602d4  0b 00 56 e1                                      cmp r6, fp
006602d8  14 00 00 0a                                      beq #0x660330
006602dc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006602e0  00 20 99 e5                                      ldr r2, [sb]
006602e4  06 71 a0 e1                                      lsl r7, r6, #2
006602e8  06 11 93 e7                                      ldr r1, [r3, r6, lsl #2]
006602ec  08 30 94 e5                                      ldr r3, [r4, #8]
006602f0  08 10 91 e5                                      ldr r1, [r1, #8]
006602f4  5b 00 53 e3                                      cmp r3, #0x5b
006602f8  9a 21 22 e0                                      mla r2, sl, r1, r2
006602fc  da ff ff 9a                                      bls #0x66026c
00660300  08 00 9d e5                                      ldr r0, [sp, #8]
00660304  04 20 8d e5                                      str r2, [sp, #4]
00660308  00 30 8d e5                                      str r3, [sp]
0066030c  e7 a2 02 eb                                      bl #0x708eb0
00660310  00 30 9d e5                                      ldr r3, [sp]
00660314  04 20 9d e5                                      ldr r2, [sp, #4]
00660318  d3 ff ff ea                                      b #0x66026c
0066031c  0c 20 d7 e5                                      ldrb r2, [r7, #0xc]
00660320  0c 30 d4 e5                                      ldrb r3, [r4, #0xc]
00660324  03 00 52 e1                                      cmp r2, r3
00660328  e8 ff ff 1a                                      bne #0x6602d0
0066032c  df ff ff ea                                      b #0x6602b0
00660330  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00660334  e9 c5 fe eb                                      bl #0x611ae0
00660338  00 60 50 e2                                      subs r6, r0, #0
0066033c  00 00 e0 03                                      mvneq r0, #0
00660340  db ff ff 0a                                      beq #0x6602b4
00660344  10 a0 95 e5                                      ldr sl, [r5, #0x10]
00660348  14 30 95 e5                                      ldr r3, [r5, #0x14]
0066034c  03 00 5a e1                                      cmp sl, r3
00660350  11 00 00 0a                                      beq #0x66039c
00660354  00 40 8a e5                                      str r4, [sl]
00660358  10 30 95 e5                                      ldr r3, [r5, #0x10]
0066035c  04 30 83 e2                                      add r3, r3, #4
00660360  10 30 85 e5                                      str r3, [r5, #0x10]
00660364  1c 80 95 e5                                      ldr r8, [r5, #0x1c]
00660368  20 30 95 e5                                      ldr r3, [r5, #0x20]
0066036c  03 00 58 e1                                      cmp r8, r3
00660370  29 00 00 0a                                      beq #0x66041c
00660374  00 60 88 e5                                      str r6, [r8]
00660378  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
0066037c  04 30 83 e2                                      add r3, r3, #4
00660380  1c 30 85 e5                                      str r3, [r5, #0x1c]
00660384  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00660388  10 00 95 e5                                      ldr r0, [r5, #0x10]
0066038c  00 00 63 e0                                      rsb r0, r3, r0
00660390  40 01 a0 e1                                      asr r0, r0, #2
00660394  01 00 40 e2                                      sub r0, r0, #1
00660398  c5 ff ff ea                                      b #0x6602b4
0066039c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006603a0  0a 30 63 e0                                      rsb r3, r3, sl
006603a4  43 31 a0 e1                                      asr r3, r3, #2
006603a8  01 00 53 e3                                      cmp r3, #1
006603ac  03 80 83 20                                      addhs r8, r3, r3
006603b0  01 80 83 32                                      addlo r8, r3, #1
006603b4  07 01 78 e3                                      cmn r8, #0xc0000001
006603b8  15 00 00 8a                                      bhi #0x660414
006603bc  08 00 53 e1                                      cmp r3, r8
006603c0  13 00 00 8a                                      bhi #0x660414
006603c4  08 81 a0 e1                                      lsl r8, r8, #2
006603c8  00 10 a0 e3                                      mov r1, #0
006603cc  08 00 a0 e1                                      mov r0, r8
006603d0  64 c0 f2 eb                                      bl #0x310568
006603d4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
006603d8  00 70 a0 e1                                      mov r7, r0
006603dc  01 a0 5a e0                                      subs sl, sl, r1
006603e0  00 a0 a0 01                                      moveq sl, r0
006603e4  02 00 00 0a                                      beq #0x6603f4
006603e8  0a 20 a0 e1                                      mov r2, sl
006603ec  d1 b6 f2 eb                                      bl #0x30df38
006603f0  0a a0 80 e0                                      add sl, r0, sl
006603f4  04 40 8a e4                                      str r4, [sl], #4
006603f8  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006603fc  08 80 87 e0                                      add r8, r7, r8
00660400  12 c0 f2 eb                                      bl #0x310450
00660404  10 a0 85 e5                                      str sl, [r5, #0x10]
00660408  14 80 85 e5                                      str r8, [r5, #0x14]
0066040c  0c 70 85 e5                                      str r7, [r5, #0xc]
00660410  d3 ff ff ea                                      b #0x660364
00660414  03 81 e0 e3                                      mvn r8, #0xc0000000
00660418  e9 ff ff ea                                      b #0x6603c4
0066041c  18 30 95 e5                                      ldr r3, [r5, #0x18]
00660420  08 30 63 e0                                      rsb r3, r3, r8
00660424  43 31 a0 e1                                      asr r3, r3, #2
00660428  01 00 53 e3                                      cmp r3, #1
0066042c  03 70 83 20                                      addhs r7, r3, r3
00660430  01 70 83 32                                      addlo r7, r3, #1
00660434  07 01 77 e3                                      cmn r7, #0xc0000001
00660438  15 00 00 8a                                      bhi #0x660494
0066043c  07 00 53 e1                                      cmp r3, r7
00660440  13 00 00 8a                                      bhi #0x660494
00660444  07 71 a0 e1                                      lsl r7, r7, #2
00660448  00 10 a0 e3                                      mov r1, #0
0066044c  07 00 a0 e1                                      mov r0, r7
00660450  44 c0 f2 eb                                      bl #0x310568
00660454  18 10 95 e5                                      ldr r1, [r5, #0x18]
00660458  00 40 a0 e1                                      mov r4, r0
0066045c  01 80 58 e0                                      subs r8, r8, r1
00660460  00 80 a0 01                                      moveq r8, r0
00660464  02 00 00 0a                                      beq #0x660474
00660468  08 20 a0 e1                                      mov r2, r8
0066046c  b1 b6 f2 eb                                      bl #0x30df38
00660470  08 80 80 e0                                      add r8, r0, r8
00660474  04 60 88 e4                                      str r6, [r8], #4
00660478  18 00 95 e5                                      ldr r0, [r5, #0x18]
0066047c  07 70 84 e0                                      add r7, r4, r7
00660480  f2 bf f2 eb                                      bl #0x310450
00660484  1c 80 85 e5                                      str r8, [r5, #0x1c]
00660488  20 70 85 e5                                      str r7, [r5, #0x20]
0066048c  18 40 85 e5                                      str r4, [r5, #0x18]
00660490  bb ff ff ea                                      b #0x660384
00660494  03 71 e0 e3                                      mvn r7, #0xc0000000
00660498  e9 ff ff ea                                      b #0x660444
; mapping-symbol data/literal pool
0066049c  74 48 33 00 4c 45 00 00 80 1a 26 00              .byte 0x74, 0x48, 0x33, 0x00, 0x4c, 0x45, 0x00, 0x00, 0x80, 0x1a, 0x26, 0x00

; FUNCTION 0x00611ae0, declared_size=1608, range_size=1608, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE
; demangled: glitch::collada::CColladaDatabase::getAnimationTrackEx(glitch::collada::SAnimation const*)
; decoder-mode: arm
00611ae0  1c 36 9f e5                                      ldr r3, [pc, #0x61c]
00611ae4  70 40 2d e9                                      push {r4, r5, r6, lr}
00611ae8  00 40 50 e2                                      subs r4, r0, #0
00611aec  03 30 8f e0                                      add r3, pc, r3
00611af0  62 00 00 0a                                      beq #0x611c80
00611af4  10 20 94 e5                                      ldr r2, [r4, #0x10]
00611af8  08 20 92 e5                                      ldr r2, [r2, #8]
00611afc  01 20 42 e2                                      sub r2, r2, #1
00611b00  5a 00 52 e3                                      cmp r2, #0x5a
00611b04  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
00611b08  5c 00 00 ea                                      b #0x611c80
00611b0c  6c 00 00 ea                                      b #0x611cc4
00611b10  74 00 00 ea                                      b #0x611ce8
00611b14  7c 00 00 ea                                      b #0x611d0c
00611b18  84 00 00 ea                                      b #0x611d30
00611b1c  8c 00 00 ea                                      b #0x611d54
00611b20  94 00 00 ea                                      b #0x611d78
00611b24  93 00 00 ea                                      b #0x611d78
00611b28  92 00 00 ea                                      b #0x611d78
00611b2c  91 00 00 ea                                      b #0x611d78
00611b30  99 00 00 ea                                      b #0x611d9c
00611b34  a1 00 00 ea                                      b #0x611dc0
00611b38  a9 00 00 ea                                      b #0x611de4
00611b3c  b1 00 00 ea                                      b #0x611e08
00611b40  b9 00 00 ea                                      b #0x611e2c
00611b44  4d 00 00 ea                                      b #0x611c80
00611b48  bd 00 00 ea                                      b #0x611e44
00611b4c  4b 00 00 ea                                      b #0x611c80
00611b50  4a 00 00 ea                                      b #0x611c80
00611b54  49 00 00 ea                                      b #0x611c80
00611b58  bb 00 00 ea                                      b #0x611e4c
00611b5c  47 00 00 ea                                      b #0x611c80
00611b60  46 00 00 ea                                      b #0x611c80
00611b64  45 00 00 ea                                      b #0x611c80
00611b68  44 00 00 ea                                      b #0x611c80
00611b6c  43 00 00 ea                                      b #0x611c80
00611b70  42 00 00 ea                                      b #0x611c80
00611b74  41 00 00 ea                                      b #0x611c80
00611b78  b6 00 00 ea                                      b #0x611e58
00611b7c  b5 00 00 ea                                      b #0x611e58
00611b80  b4 00 00 ea                                      b #0x611e58
00611b84  b3 00 00 ea                                      b #0x611e58
00611b88  b2 00 00 ea                                      b #0x611e58
00611b8c  b4 00 00 ea                                      b #0x611e64
00611b90  b0 00 00 ea                                      b #0x611e58
00611b94  af 00 00 ea                                      b #0x611e58
00611b98  ae 00 00 ea                                      b #0x611e58
00611b9c  ad 00 00 ea                                      b #0x611e58
00611ba0  ac 00 00 ea                                      b #0x611e58
00611ba4  ae 00 00 ea                                      b #0x611e64
00611ba8  aa 00 00 ea                                      b #0x611e58
00611bac  a9 00 00 ea                                      b #0x611e58
00611bb0  a8 00 00 ea                                      b #0x611e58
00611bb4  a7 00 00 ea                                      b #0x611e58
00611bb8  a6 00 00 ea                                      b #0x611e58
00611bbc  a5 00 00 ea                                      b #0x611e58
00611bc0  a4 00 00 ea                                      b #0x611e58
00611bc4  a3 00 00 ea                                      b #0x611e58
00611bc8  a2 00 00 ea                                      b #0x611e58
00611bcc  a1 00 00 ea                                      b #0x611e58
00611bd0  a0 00 00 ea                                      b #0x611e58
00611bd4  9f 00 00 ea                                      b #0x611e58
00611bd8  9e 00 00 ea                                      b #0x611e58
00611bdc  9d 00 00 ea                                      b #0x611e58
00611be0  9c 00 00 ea                                      b #0x611e58
00611be4  9b 00 00 ea                                      b #0x611e58
00611be8  9a 00 00 ea                                      b #0x611e58
00611bec  9c 00 00 ea                                      b #0x611e64
00611bf0  9b 00 00 ea                                      b #0x611e64
00611bf4  97 00 00 ea                                      b #0x611e58
00611bf8  96 00 00 ea                                      b #0x611e58
00611bfc  95 00 00 ea                                      b #0x611e58
00611c00  94 00 00 ea                                      b #0x611e58
00611c04  93 00 00 ea                                      b #0x611e58
00611c08  92 00 00 ea                                      b #0x611e58
00611c0c  91 00 00 ea                                      b #0x611e58
00611c10  90 00 00 ea                                      b #0x611e58
00611c14  92 00 00 ea                                      b #0x611e64
00611c18  8e 00 00 ea                                      b #0x611e58
00611c1c  8d 00 00 ea                                      b #0x611e58
00611c20  8c 00 00 ea                                      b #0x611e58
00611c24  15 00 00 ea                                      b #0x611c80
00611c28  14 00 00 ea                                      b #0x611c80
00611c2c  13 00 00 ea                                      b #0x611c80
00611c30  12 00 00 ea                                      b #0x611c80
00611c34  11 00 00 ea                                      b #0x611c80
00611c38  10 00 00 ea                                      b #0x611c80
00611c3c  0f 00 00 ea                                      b #0x611c80
00611c40  0e 00 00 ea                                      b #0x611c80
00611c44  0d 00 00 ea                                      b #0x611c80
00611c48  0c 00 00 ea                                      b #0x611c80
00611c4c  0b 00 00 ea                                      b #0x611c80
00611c50  0a 00 00 ea                                      b #0x611c80
00611c54  09 00 00 ea                                      b #0x611c80
00611c58  08 00 00 ea                                      b #0x611c80
00611c5c  07 00 00 ea                                      b #0x611c80
00611c60  08 00 00 ea                                      b #0x611c88
00611c64  73 00 00 ea                                      b #0x611e38
00611c68  72 00 00 ea                                      b #0x611e38
00611c6c  71 00 00 ea                                      b #0x611e38
00611c70  70 00 00 ea                                      b #0x611e38
00611c74  6f 00 00 ea                                      b #0x611e38
00611c78  02 00 53 e3                                      cmp r3, #2
00611c7c  ba 00 00 0a                                      beq #0x611f6c
00611c80  00 00 a0 e3                                      mov r0, #0
00611c84  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611c88  08 20 94 e5                                      ldr r2, [r4, #8]
00611c8c  10 30 92 e5                                      ldr r3, [r2, #0x10]
00611c90  01 00 53 e3                                      cmp r3, #1
00611c94  75 00 00 0a                                      beq #0x611e70
00611c98  06 00 53 e3                                      cmp r3, #6
00611c9c  f7 ff ff 1a                                      bne #0x611c80
00611ca0  14 30 92 e5                                      ldr r3, [r2, #0x14]
00611ca4  01 30 43 e2                                      sub r3, r3, #1
00611ca8  03 00 53 e3                                      cmp r3, #3
00611cac  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00611cb0  f2 ff ff ea                                      b #0x611c80
00611cb4  b8 00 00 ea                                      b #0x611f9c
00611cb8  b5 00 00 ea                                      b #0x611f94
00611cbc  b2 00 00 ea                                      b #0x611f8c
00611cc0  af 00 00 ea                                      b #0x611f84
00611cc4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611cc8  00 00 53 e3                                      cmp r3, #0
00611ccc  88 00 00 0a                                      beq #0x611ef4
00611cd0  00 30 93 e5                                      ldr r3, [r3]
00611cd4  01 00 53 e3                                      cmp r3, #1
00611cd8  d5 00 00 0a                                      beq #0x612034
00611cdc  82 00 00 2a                                      bhs #0x611eec
00611ce0  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611ce4  b5 f9 ff ea                                      b #0x6103c0
00611ce8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611cec  00 00 53 e3                                      cmp r3, #0
00611cf0  97 00 00 0a                                      beq #0x611f54
00611cf4  00 30 93 e5                                      ldr r3, [r3]
00611cf8  01 00 53 e3                                      cmp r3, #1
00611cfc  c8 00 00 0a                                      beq #0x612024
00611d00  91 00 00 2a                                      bhs #0x611f4c
00611d04  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611d08  1b fa ff ea                                      b #0x61057c
00611d0c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611d10  00 00 53 e3                                      cmp r3, #0
00611d14  7a 00 00 0a                                      beq #0x611f04
00611d18  00 30 93 e5                                      ldr r3, [r3]
00611d1c  01 00 53 e3                                      cmp r3, #1
00611d20  bd 00 00 0a                                      beq #0x61201c
00611d24  74 00 00 2a                                      bhs #0x611efc
00611d28  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611d2c  81 fa ff ea                                      b #0x610738
00611d30  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611d34  00 00 53 e3                                      cmp r3, #0
00611d38  89 00 00 0a                                      beq #0x611f64
00611d3c  00 30 93 e5                                      ldr r3, [r3]
00611d40  01 00 53 e3                                      cmp r3, #1
00611d44  c0 00 00 0a                                      beq #0x61204c
00611d48  83 00 00 2a                                      bhs #0x611f5c
00611d4c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611d50  e7 fa ff ea                                      b #0x6108f4
00611d54  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611d58  00 00 53 e3                                      cmp r3, #0
00611d5c  82 00 00 0a                                      beq #0x611f6c
00611d60  00 30 93 e5                                      ldr r3, [r3]
00611d64  01 00 53 e3                                      cmp r3, #1
00611d68  bd 00 00 0a                                      beq #0x612064
00611d6c  c1 ff ff 2a                                      bhs #0x611c78
00611d70  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611d74  b3 f8 ff ea                                      b #0x610048
00611d78  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611d7c  00 00 53 e3                                      cmp r3, #0
00611d80  6f 00 00 0a                                      beq #0x611f44
00611d84  00 30 93 e5                                      ldr r3, [r3]
00611d88  01 00 53 e3                                      cmp r3, #1
00611d8c  b2 00 00 0a                                      beq #0x61205c
00611d90  69 00 00 2a                                      bhs #0x611f3c
00611d94  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611d98  19 f9 ff ea                                      b #0x610204
00611d9c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611da0  00 00 53 e3                                      cmp r3, #0
00611da4  62 00 00 0a                                      beq #0x611f34
00611da8  00 30 93 e5                                      ldr r3, [r3]
00611dac  01 00 53 e3                                      cmp r3, #1
00611db0  a7 00 00 0a                                      beq #0x612054
00611db4  5c 00 00 2a                                      bhs #0x611f2c
00611db8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611dbc  3b fb ff ea                                      b #0x610ab0
00611dc0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611dc4  00 00 53 e3                                      cmp r3, #0
00611dc8  55 00 00 0a                                      beq #0x611f24
00611dcc  00 30 93 e5                                      ldr r3, [r3]
00611dd0  01 00 53 e3                                      cmp r3, #1
00611dd4  94 00 00 0a                                      beq #0x61202c
00611dd8  4f 00 00 2a                                      bhs #0x611f1c
00611ddc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611de0  a1 fb ff ea                                      b #0x610c6c
00611de4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611de8  00 00 53 e3                                      cmp r3, #0
00611dec  48 00 00 0a                                      beq #0x611f14
00611df0  00 30 93 e5                                      ldr r3, [r3]
00611df4  01 00 53 e3                                      cmp r3, #1
00611df8  91 00 00 0a                                      beq #0x612044
00611dfc  42 00 00 2a                                      bhs #0x611f0c
00611e00  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611e04  07 fc ff ea                                      b #0x610e28
00611e08  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611e0c  00 00 53 e3                                      cmp r3, #0
00611e10  59 00 00 0a                                      beq #0x611f7c
00611e14  00 30 93 e5                                      ldr r3, [r3]
00611e18  01 00 53 e3                                      cmp r3, #1
00611e1c  86 00 00 0a                                      beq #0x61203c
00611e20  53 00 00 2a                                      bhs #0x611f74
00611e24  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611e28  6d fc ff ea                                      b #0x610fe4
00611e2c  d4 22 9f e5                                      ldr r2, [pc, #0x2d4]
00611e30  02 00 93 e7                                      ldr r0, [r3, r2]
00611e34  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611e38  cc 22 9f e5                                      ldr r2, [pc, #0x2cc]
00611e3c  02 00 93 e7                                      ldr r0, [r3, r2]
00611e40  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611e44  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611e48  8a fc ff ea                                      b #0x611078
00611e4c  bc 22 9f e5                                      ldr r2, [pc, #0x2bc]
00611e50  02 00 93 e7                                      ldr r0, [r3, r2]
00611e54  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611e58  b4 22 9f e5                                      ldr r2, [pc, #0x2b4]
00611e5c  02 00 93 e7                                      ldr r0, [r3, r2]
00611e60  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611e64  ac 22 9f e5                                      ldr r2, [pc, #0x2ac]
00611e68  02 00 93 e7                                      ldr r0, [r3, r2]
00611e6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611e70  14 30 92 e5                                      ldr r3, [r2, #0x14]
00611e74  03 00 53 e3                                      cmp r3, #3
00611e78  7b 00 00 0a                                      beq #0x61206c
00611e7c  04 00 53 e3                                      cmp r3, #4
00611e80  5b 00 00 0a                                      beq #0x611ff4
00611e84  01 00 53 e3                                      cmp r3, #1
00611e88  7c ff ff 1a                                      bne #0x611c80
00611e8c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00611e90  04 20 93 e5                                      ldr r2, [r3, #4]
00611e94  01 00 52 e3                                      cmp r2, #1
00611e98  78 ff ff da                                      ble #0x611c80
00611e9c  00 30 93 e5                                      ldr r3, [r3]
00611ea0  01 30 43 e2                                      sub r3, r3, #1
00611ea4  0e 00 53 e3                                      cmp r3, #0xe
00611ea8  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00611eac  73 ff ff ea                                      b #0x611c80
00611eb0  53 00 00 ea                                      b #0x612004
00611eb4  50 00 00 ea                                      b #0x611ffc
00611eb8  70 ff ff ea                                      b #0x611c80
00611ebc  54 00 00 ea                                      b #0x612014
00611ec0  6e ff ff ea                                      b #0x611c80
00611ec4  6d ff ff ea                                      b #0x611c80
00611ec8  6c ff ff ea                                      b #0x611c80
00611ecc  4e 00 00 ea                                      b #0x61200c
00611ed0  6a ff ff ea                                      b #0x611c80
00611ed4  69 ff ff ea                                      b #0x611c80
00611ed8  68 ff ff ea                                      b #0x611c80
00611edc  67 ff ff ea                                      b #0x611c80
00611ee0  66 ff ff ea                                      b #0x611c80
00611ee4  65 ff ff ea                                      b #0x611c80
00611ee8  41 00 00 ea                                      b #0x611ff4
00611eec  02 00 53 e3                                      cmp r3, #2
00611ef0  62 ff ff 1a                                      bne #0x611c80
00611ef4  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611ef8  e6 f8 ff ea                                      b #0x610298
00611efc  02 00 53 e3                                      cmp r3, #2
00611f00  5e ff ff 1a                                      bne #0x611c80
00611f04  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f08  c0 f9 ff ea                                      b #0x610610
00611f0c  02 00 53 e3                                      cmp r3, #2
00611f10  5a ff ff 1a                                      bne #0x611c80
00611f14  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f18  78 fb ff ea                                      b #0x610d00
00611f1c  02 00 53 e3                                      cmp r3, #2
00611f20  56 ff ff 1a                                      bne #0x611c80
00611f24  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f28  05 fb ff ea                                      b #0x610b44
00611f2c  02 00 53 e3                                      cmp r3, #2
00611f30  52 ff ff 1a                                      bne #0x611c80
00611f34  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f38  92 fa ff ea                                      b #0x610988
00611f3c  02 00 53 e3                                      cmp r3, #2
00611f40  4e ff ff 1a                                      bne #0x611c80
00611f44  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f48  63 f8 ff ea                                      b #0x6100dc
00611f4c  02 00 53 e3                                      cmp r3, #2
00611f50  4a ff ff 1a                                      bne #0x611c80
00611f54  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f58  3d f9 ff ea                                      b #0x610454
00611f5c  02 00 53 e3                                      cmp r3, #2
00611f60  46 ff ff 1a                                      bne #0x611c80
00611f64  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f68  17 fa ff ea                                      b #0x6107cc
00611f6c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f70  ea f7 ff ea                                      b #0x60ff20
00611f74  02 00 53 e3                                      cmp r3, #2
00611f78  40 ff ff 1a                                      bne #0x611c80
00611f7c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f80  cd fb ff ea                                      b #0x610ebc
00611f84  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f88  d1 fd ff ea                                      b #0x6116d4
00611f8c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f90  aa fd ff ea                                      b #0x611640
00611f94  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f98  83 fd ff ea                                      b #0x6115ac
00611f9c  78 51 9f e5                                      ldr r5, [pc, #0x178]
00611fa0  05 50 8f e0                                      add r5, pc, r5
00611fa4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00611fa8  01 00 13 e3                                      tst r3, #1
00611fac  30 00 00 0a                                      beq #0x612074
00611fb0  18 30 94 e5                                      ldr r3, [r4, #0x18]
00611fb4  06 00 93 e8                                      ldm r3, {r1, r2}
00611fb8  01 30 41 e2                                      sub r3, r1, #1
00611fbc  07 00 53 e3                                      cmp r3, #7
00611fc0  00 10 a0 83                                      movhi r1, #0
00611fc4  02 00 00 8a                                      bhi #0x611fd4
00611fc8  50 11 9f e5                                      ldr r1, [pc, #0x150]
00611fcc  01 10 8f e0                                      add r1, pc, r1
00611fd0  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
00611fd4  48 31 9f e5                                      ldr r3, [pc, #0x148]
00611fd8  01 20 42 e2                                      sub r2, r2, #1
00611fdc  02 21 82 e0                                      add r2, r2, r2, lsl #2
00611fe0  01 20 82 e0                                      add r2, r2, r1
00611fe4  03 30 8f e0                                      add r3, pc, r3
00611fe8  02 31 83 e0                                      add r3, r3, r2, lsl #2
00611fec  10 00 93 e5                                      ldr r0, [r3, #0x10]
00611ff0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611ff4  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611ff8  93 fe ff ea                                      b #0x611a4c
00611ffc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612000  fd fd ff ea                                      b #0x6117fc
00612004  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612008  d6 fd ff ea                                      b #0x611768
0061200c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612010  43 fe ff ea                                      b #0x611924
00612014  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612018  1c fe ff ea                                      b #0x611890
0061201c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612020  9f f9 ff ea                                      b #0x6106a4
00612024  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612028  2e f9 ff ea                                      b #0x6104e8
0061202c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612030  e8 fa ff ea                                      b #0x610bd8
00612034  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612038  bb f8 ff ea                                      b #0x61032c
0061203c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612040  c2 fb ff ea                                      b #0x610f50
00612044  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612048  51 fb ff ea                                      b #0x610d94
0061204c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612050  02 fa ff ea                                      b #0x610860
00612054  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612058  6f fa ff ea                                      b #0x610a1c
0061205c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612060  42 f8 ff ea                                      b #0x610170
00612064  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612068  d1 f7 ff ea                                      b #0x60ffb4
0061206c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612070  50 fe ff ea                                      b #0x6119b8
00612074  0c 60 85 e2                                      add r6, r5, #0xc
00612078  06 00 a0 e1                                      mov r0, r6
0061207c  ba f1 f3 eb                                      bl #0x30e76c
00612080  00 00 50 e3                                      cmp r0, #0
00612084  c9 ff ff 0a                                      beq #0x611fb0
00612088  1f fc ff eb                                      bl #0x61110c
0061208c  10 00 85 e5                                      str r0, [r5, #0x10]
00612090  1d fc ff eb                                      bl #0x61110c
00612094  14 00 85 e5                                      str r0, [r5, #0x14]
00612098  43 fd ff eb                                      bl #0x6115ac
0061209c  24 00 85 e5                                      str r0, [r5, #0x24]
006120a0  3e fc ff eb                                      bl #0x6111a0
006120a4  28 00 85 e5                                      str r0, [r5, #0x28]
006120a8  61 fc ff eb                                      bl #0x611234
006120ac  2c 00 85 e5                                      str r0, [r5, #0x2c]
006120b0  62 fd ff eb                                      bl #0x611640
006120b4  38 00 85 e5                                      str r0, [r5, #0x38]
006120b8  82 fc ff eb                                      bl #0x6112c8
006120bc  3c 00 85 e5                                      str r0, [r5, #0x3c]
006120c0  80 fc ff eb                                      bl #0x6112c8
006120c4  40 00 85 e5                                      str r0, [r5, #0x40]
006120c8  7e fc ff eb                                      bl #0x6112c8
006120cc  44 00 85 e5                                      str r0, [r5, #0x44]
006120d0  7f fd ff eb                                      bl #0x6116d4
006120d4  4c 00 85 e5                                      str r0, [r5, #0x4c]
006120d8  9f fc ff eb                                      bl #0x61135c
006120dc  50 00 85 e5                                      str r0, [r5, #0x50]
006120e0  c2 fc ff eb                                      bl #0x6113f0
006120e4  54 00 85 e5                                      str r0, [r5, #0x54]
006120e8  e5 fc ff eb                                      bl #0x611484
006120ec  58 00 85 e5                                      str r0, [r5, #0x58]
006120f0  08 fd ff eb                                      bl #0x611518
006120f4  5c 00 85 e5                                      str r0, [r5, #0x5c]
006120f8  06 00 a0 e1                                      mov r0, r6
006120fc  4e f2 f3 eb                                      bl #0x30ea3c
00612100  aa ff ff ea                                      b #0x611fb0
; mapping-symbol data/literal pool
00612104  a4 2f 38 00 24 0f 00 00 84 2d 00 00 80 40 00 00  .byte 0xa4, 0x2f, 0x38, 0x00, 0x24, 0x0f, 0x00, 0x00, 0x84, 0x2d, 0x00, 0x00, 0x80, 0x40, 0x00, 0x00
00612114  b0 23 00 00 d0 49 00 00 74 4d 3e 00 98 2d 2d 00  .byte 0xb0, 0x23, 0x00, 0x00, 0xd0, 0x49, 0x00, 0x00, 0x74, 0x4d, 0x3e, 0x00, 0x98, 0x2d, 0x2d, 0x00
00612124  30 4d 3e 00                                      .byte 0x30, 0x4d, 0x3e, 0x00

; FUNCTION 0x006e22cc, declared_size=260, range_size=260, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplate16isAnimationExistEPKNS0_8SChannelE
; demangled: glitch::collada::CAnimationSetTransformationTemplate::isAnimationExist(glitch::collada::SChannel const*)
; decoder-mode: arm
006e22cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e22d0  04 30 90 e5                                      ldr r3, [r0, #4]
006e22d4  08 20 90 e5                                      ldr r2, [r0, #8]
006e22d8  00 50 a0 e1                                      mov r5, r0
006e22dc  01 60 a0 e1                                      mov r6, r1
006e22e0  02 20 63 e0                                      rsb r2, r3, r2
006e22e4  22 21 b0 e1                                      lsrs r2, r2, #2
006e22e8  29 00 00 0a                                      beq #0x6e2394
006e22ec  00 40 a0 e3                                      mov r4, #0
006e22f0  01 80 a0 e3                                      mov r8, #1
006e22f4  14 00 00 ea                                      b #0x6e234c
006e22f8  08 30 96 e5                                      ldr r3, [r6, #8]
006e22fc  0d 00 53 e3                                      cmp r3, #0xd
006e2300  1d 00 00 8a                                      bhi #0x6e237c
006e2304  18 33 a0 e1                                      lsl r3, r8, r3
006e2308  0f 0b 13 e3                                      tst r3, #0x3c00
006e230c  01 00 a0 e3                                      mov r0, #1
006e2310  28 00 00 1a                                      bne #0x6e23b8
006e2314  3e 0e 13 e3                                      tst r3, #0x3e0
006e2318  1f 00 00 1a                                      bne #0x6e239c
006e231c  1e 00 13 e3                                      tst r3, #0x1e
006e2320  15 00 00 0a                                      beq #0x6e237c
006e2324  04 30 95 e5                                      ldr r3, [r5, #4]
006e2328  07 20 93 e7                                      ldr r2, [r3, r7]
006e232c  04 00 92 e5                                      ldr r0, [r2, #4]
006e2330  01 00 50 e3                                      cmp r0, #1
006e2334  1d 00 00 0a                                      beq #0x6e23b0
006e2338  08 20 95 e5                                      ldr r2, [r5, #8]
006e233c  01 40 84 e2                                      add r4, r4, #1
006e2340  02 20 63 e0                                      rsb r2, r3, r2
006e2344  42 01 54 e1                                      cmp r4, r2, asr #2
006e2348  11 00 00 2a                                      bhs #0x6e2394
006e234c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
006e2350  04 71 a0 e1                                      lsl r7, r4, #2
006e2354  08 30 93 e5                                      ldr r3, [r3, #8]
006e2358  03 00 a0 e1                                      mov r0, r3
006e235c  00 30 93 e5                                      ldr r3, [r3]
006e2360  0f e0 a0 e1                                      mov lr, pc
006e2364  54 f0 93 e5                                      ldr pc, [r3, #0x54]
006e2368  00 10 a0 e1                                      mov r1, r0
006e236c  04 00 96 e5                                      ldr r0, [r6, #4]
006e2370  e9 af f0 eb                                      bl #0x30e31c
006e2374  00 00 50 e3                                      cmp r0, #0
006e2378  de ff ff 0a                                      beq #0x6e22f8
006e237c  04 30 95 e5                                      ldr r3, [r5, #4]
006e2380  08 20 95 e5                                      ldr r2, [r5, #8]
006e2384  01 40 84 e2                                      add r4, r4, #1
006e2388  02 20 63 e0                                      rsb r2, r3, r2
006e238c  42 01 54 e1                                      cmp r4, r2, asr #2
006e2390  ed ff ff 3a                                      blo #0x6e234c
006e2394  00 00 a0 e3                                      mov r0, #0
006e2398  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e239c  04 30 95 e5                                      ldr r3, [r5, #4]
006e23a0  07 20 93 e7                                      ldr r2, [r3, r7]
006e23a4  04 10 92 e5                                      ldr r1, [r2, #4]
006e23a8  05 00 51 e3                                      cmp r1, #5
006e23ac  e1 ff ff 1a                                      bne #0x6e2338
006e23b0  00 00 c2 e5                                      strb r0, [r2]
006e23b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e23b8  04 30 95 e5                                      ldr r3, [r5, #4]
006e23bc  07 20 93 e7                                      ldr r2, [r3, r7]
006e23c0  04 10 92 e5                                      ldr r1, [r2, #4]
006e23c4  0a 00 51 e3                                      cmp r1, #0xa
006e23c8  da ff ff 1a                                      bne #0x6e2338
006e23cc  f7 ff ff ea                                      b #0x6e23b0
