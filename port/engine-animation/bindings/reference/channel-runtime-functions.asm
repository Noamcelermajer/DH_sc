; APK ELF ARM bodies copied from recovered listings and checked against PT_LOAD-mapped APK ranges.
; Function bodies are bounded by range_size values in the JSON manifest.

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

; FUNCTION 0x00660710, declared_size=996, range_size=996, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet7compileEv
; demangled: glitch::collada::CAnimationSet::compile()
; decoder-mode: arm
00660710  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00660714  00 40 a0 e1                                      mov r4, r0
00660718  64 00 90 e5                                      ldr r0, [r0, #0x64]
0066071c  14 d0 4d e2                                      sub sp, sp, #0x14
00660720  00 00 50 e3                                      cmp r0, #0
00660724  00 00 00 0a                                      beq #0x66072c
00660728  fc 1a 00 eb                                      bl #0x667320
0066072c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00660730  28 20 94 e5                                      ldr r2, [r4, #0x28]
00660734  02 10 63 e0                                      rsb r1, r3, r2
00660738  a1 11 b0 e1                                      lsrs r1, r1, #3
0066073c  2f 00 00 0a                                      beq #0x660800
00660740  00 80 a0 e3                                      mov r8, #0
00660744  88 11 93 e7                                      ldr r1, [r3, r8, lsl #3]
00660748  88 71 83 e0                                      add r7, r3, r8, lsl #3
0066074c  24 10 91 e5                                      ldr r1, [r1, #0x24]
00660750  20 10 91 e5                                      ldr r1, [r1, #0x20]
00660754  24 10 91 e5                                      ldr r1, [r1, #0x24]
00660758  00 00 51 e3                                      cmp r1, #0
0066075c  23 00 00 da                                      ble #0x6607f0
00660760  00 50 a0 e3                                      mov r5, #0
00660764  06 00 00 ea                                      b #0x660784
00660768  00 30 97 e5                                      ldr r3, [r7]
0066076c  01 50 85 e2                                      add r5, r5, #1
00660770  24 30 93 e5                                      ldr r3, [r3, #0x24]
00660774  20 30 93 e5                                      ldr r3, [r3, #0x20]
00660778  24 30 93 e5                                      ldr r3, [r3, #0x24]
0066077c  03 00 55 e1                                      cmp r5, r3
00660780  18 00 00 aa                                      bge #0x6607e8
00660784  05 10 a0 e1                                      mov r1, r5
00660788  07 00 a0 e1                                      mov r0, r7
0066078c  f2 b6 fe eb                                      bl #0x60e35c
00660790  64 30 94 e5                                      ldr r3, [r4, #0x64]
00660794  00 60 a0 e1                                      mov r6, r0
00660798  00 00 53 e2                                      subs r0, r3, #0
0066079c  05 00 00 0a                                      beq #0x6607b8
006607a0  10 10 96 e5                                      ldr r1, [r6, #0x10]
006607a4  00 30 93 e5                                      ldr r3, [r3]
006607a8  0f e0 a0 e1                                      mov lr, pc
006607ac  08 f0 93 e5                                      ldr pc, [r3, #8]
006607b0  00 00 50 e3                                      cmp r0, #0
006607b4  eb ff ff 0a                                      beq #0x660768
006607b8  00 30 94 e5                                      ldr r3, [r4]
006607bc  06 10 a0 e1                                      mov r1, r6
006607c0  04 00 a0 e1                                      mov r0, r4
006607c4  0f e0 a0 e1                                      mov lr, pc
006607c8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006607cc  00 30 97 e5                                      ldr r3, [r7]
006607d0  01 50 85 e2                                      add r5, r5, #1
006607d4  24 30 93 e5                                      ldr r3, [r3, #0x24]
006607d8  20 30 93 e5                                      ldr r3, [r3, #0x20]
006607dc  24 30 93 e5                                      ldr r3, [r3, #0x24]
006607e0  03 00 55 e1                                      cmp r5, r3
006607e4  e6 ff ff ba                                      blt #0x660784
006607e8  24 30 94 e5                                      ldr r3, [r4, #0x24]
006607ec  28 20 94 e5                                      ldr r2, [r4, #0x28]
006607f0  01 80 88 e2                                      add r8, r8, #1
006607f4  02 10 63 e0                                      rsb r1, r3, r2
006607f8  c1 01 58 e1                                      cmp r8, r1, asr #3
006607fc  d0 ff ff 3a                                      blo #0x660744
00660800  64 00 94 e5                                      ldr r0, [r4, #0x64]
00660804  00 00 50 e3                                      cmp r0, #0
00660808  04 00 00 0a                                      beq #0x660820
0066080c  18 20 84 e2                                      add r2, r4, #0x18
00660810  0c 10 84 e2                                      add r1, r4, #0xc
00660814  da 1a 00 eb                                      bl #0x667384
00660818  24 30 94 e5                                      ldr r3, [r4, #0x24]
0066081c  28 20 94 e5                                      ldr r2, [r4, #0x28]
00660820  02 10 63 e0                                      rsb r1, r3, r2
00660824  a1 11 b0 e1                                      lsrs r1, r1, #3
00660828  ac 00 00 0a                                      beq #0x660ae0
0066082c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00660830  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00660834  00 80 a0 e3                                      mov r8, #0
00660838  0c a0 8d e2                                      add sl, sp, #0xc
0066083c  00 00 61 e0                                      rsb r0, r1, r0
00660840  40 c1 b0 e1                                      asrs ip, r0, #2
00660844  88 61 83 e0                                      add r6, r3, r8, lsl #3
00660848  0f 00 00 0a                                      beq #0x66088c
0066084c  00 50 a0 e3                                      mov r5, #0
00660850  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
00660854  06 00 a0 e1                                      mov r0, r6
00660858  60 ee fe eb                                      bl #0x61c1e0
0066085c  00 00 50 e3                                      cmp r0, #0
00660860  05 71 a0 e1                                      lsl r7, r5, #2
00660864  6b 00 00 0a                                      beq #0x660a18
00660868  10 00 94 e5                                      ldr r0, [r4, #0x10]
0066086c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00660870  01 50 85 e2                                      add r5, r5, #1
00660874  00 00 61 e0                                      rsb r0, r1, r0
00660878  40 c1 a0 e1                                      asr ip, r0, #2
0066087c  0c 00 55 e1                                      cmp r5, ip
00660880  f2 ff ff 3a                                      blo #0x660850
00660884  24 30 94 e5                                      ldr r3, [r4, #0x24]
00660888  28 20 94 e5                                      ldr r2, [r4, #0x28]
0066088c  01 80 88 e2                                      add r8, r8, #1
00660890  02 e0 63 e0                                      rsb lr, r3, r2
00660894  ce 01 58 e1                                      cmp r8, lr, asr #3
00660898  e8 ff ff 3a                                      blo #0x660840
0066089c  02 30 63 e0                                      rsb r3, r3, r2
006608a0  c3 51 a0 e1                                      asr r5, r3, #3
006608a4  95 0c 05 e0                                      mul r5, r5, ip
006608a8  30 60 84 e2                                      add r6, r4, #0x30
006608ac  3c c0 84 e5                                      str ip, [r4, #0x3c]
006608b0  06 00 a0 e1                                      mov r0, r6
006608b4  05 10 a0 e1                                      mov r1, r5
006608b8  48 37 ff eb                                      bl #0x62e5e0
006608bc  00 80 a0 e3                                      mov r8, #0
006608c0  05 10 a0 e1                                      mov r1, r5
006608c4  0d 20 a0 e1                                      mov r2, sp
006608c8  06 00 a0 e1                                      mov r0, r6
006608cc  00 80 8d e5                                      str r8, [sp]
006608d0  04 80 8d e5                                      str r8, [sp, #4]
006608d4  08 80 8d e5                                      str r8, [sp, #8]
006608d8  dc 38 ff eb                                      bl #0x62ec50
006608dc  24 30 94 e5                                      ldr r3, [r4, #0x24]
006608e0  28 20 94 e5                                      ldr r2, [r4, #0x28]
006608e4  02 10 63 e0                                      rsb r1, r3, r2
006608e8  a1 11 b0 e1                                      lsrs r1, r1, #3
006608ec  45 00 00 0a                                      beq #0x660a08
006608f0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006608f4  10 00 94 e5                                      ldr r0, [r4, #0x10]
006608f8  08 b0 a0 e1                                      mov fp, r8
006608fc  02 90 a0 e3                                      mov sb, #2
00660900  00 c0 61 e0                                      rsb ip, r1, r0
00660904  2c c1 b0 e1                                      lsrs ip, ip, #2
00660908  8b a1 83 e0                                      add sl, r3, fp, lsl #3
0066090c  39 00 00 0a                                      beq #0x6609f8
00660910  0c 20 a0 e3                                      mov r2, #0xc
00660914  92 08 06 e0                                      mul r6, r2, r8
00660918  00 50 a0 e3                                      mov r5, #0
0066091c  0c 00 00 ea                                      b #0x660954
00660920  30 30 94 e5                                      ldr r3, [r4, #0x30]
00660924  06 90 83 e7                                      str sb, [r3, r6]
00660928  30 30 94 e5                                      ldr r3, [r4, #0x30]
0066092c  06 30 83 e0                                      add r3, r3, r6
00660930  08 70 83 e5                                      str r7, [r3, #8]
00660934  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00660938  10 00 94 e5                                      ldr r0, [r4, #0x10]
0066093c  01 50 85 e2                                      add r5, r5, #1
00660940  01 80 88 e2                                      add r8, r8, #1
00660944  00 30 61 e0                                      rsb r3, r1, r0
00660948  43 01 55 e1                                      cmp r5, r3, asr #2
0066094c  0c 60 86 e2                                      add r6, r6, #0xc
00660950  26 00 00 2a                                      bhs #0x6609f0
00660954  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
00660958  0a 00 a0 e1                                      mov r0, sl
0066095c  1f ee fe eb                                      bl #0x61c1e0
00660960  30 20 94 e5                                      ldr r2, [r4, #0x30]
00660964  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00660968  00 70 a0 e1                                      mov r7, r0
0066096c  06 20 82 e0                                      add r2, r2, r6
00660970  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
00660974  0a 00 a0 e1                                      mov r0, sl
00660978  04 20 82 e2                                      add r2, r2, #4
0066097c  4e ef fe eb                                      bl #0x61c6bc
00660980  00 00 57 e3                                      cmp r7, #0
00660984  05 11 a0 e1                                      lsl r1, r5, #2
00660988  e4 ff ff 1a                                      bne #0x660920
0066098c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00660990  01 20 a0 e3                                      mov r2, #1
00660994  00 00 50 e3                                      cmp r0, #0
00660998  06 20 83 e7                                      str r2, [r3, r6]
0066099c  e4 ff ff 1a                                      bne #0x660934
006609a0  64 30 94 e5                                      ldr r3, [r4, #0x64]
006609a4  00 00 53 e3                                      cmp r3, #0
006609a8  e1 ff ff 0a                                      beq #0x660934
006609ac  30 20 94 e5                                      ldr r2, [r4, #0x30]
006609b0  0c c0 94 e5                                      ldr ip, [r4, #0xc]
006609b4  03 00 a0 e1                                      mov r0, r3
006609b8  06 20 82 e0                                      add r2, r2, r6
006609bc  01 10 9c e7                                      ldr r1, [ip, r1]
006609c0  00 30 93 e5                                      ldr r3, [r3]
006609c4  04 20 82 e2                                      add r2, r2, #4
006609c8  0f e0 a0 e1                                      mov lr, pc
006609cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006609d0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006609d4  10 00 94 e5                                      ldr r0, [r4, #0x10]
006609d8  01 50 85 e2                                      add r5, r5, #1
006609dc  01 80 88 e2                                      add r8, r8, #1
006609e0  00 30 61 e0                                      rsb r3, r1, r0
006609e4  43 01 55 e1                                      cmp r5, r3, asr #2
006609e8  0c 60 86 e2                                      add r6, r6, #0xc
006609ec  d8 ff ff 3a                                      blo #0x660954
006609f0  24 30 94 e5                                      ldr r3, [r4, #0x24]
006609f4  28 20 94 e5                                      ldr r2, [r4, #0x28]
006609f8  01 b0 8b e2                                      add fp, fp, #1
006609fc  02 c0 63 e0                                      rsb ip, r3, r2
00660a00  cc 01 5b e1                                      cmp fp, ip, asr #3
00660a04  bd ff ff 3a                                      blo #0x660900
00660a08  04 00 a0 e1                                      mov r0, r4
00660a0c  e6 fe ff eb                                      bl #0x6605ac
00660a10  14 d0 8d e2                                      add sp, sp, #0x14
00660a14  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00660a18  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00660a1c  06 00 a0 e1                                      mov r0, r6
00660a20  0a 20 a0 e1                                      mov r2, sl
00660a24  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
00660a28  23 ef fe eb                                      bl #0x61c6bc
00660a2c  00 00 50 e3                                      cmp r0, #0
00660a30  8c ff ff 1a                                      bne #0x660868
00660a34  64 30 94 e5                                      ldr r3, [r4, #0x64]
00660a38  00 00 53 e3                                      cmp r3, #0
00660a3c  08 00 00 0a                                      beq #0x660a64
00660a40  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00660a44  03 00 a0 e1                                      mov r0, r3
00660a48  00 30 93 e5                                      ldr r3, [r3]
00660a4c  07 10 92 e7                                      ldr r1, [r2, r7]
00660a50  0a 20 a0 e1                                      mov r2, sl
00660a54  0f e0 a0 e1                                      mov lr, pc
00660a58  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00660a5c  00 00 50 e3                                      cmp r0, #0
00660a60  80 ff ff 1a                                      bne #0x660868
00660a64  08 30 94 e5                                      ldr r3, [r4, #8]
00660a68  00 00 53 e3                                      cmp r3, #0
00660a6c  7d ff ff 1a                                      bne #0x660868
00660a70  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00660a74  10 30 94 e5                                      ldr r3, [r4, #0x10]
00660a78  07 00 80 e0                                      add r0, r0, r7
00660a7c  04 10 80 e2                                      add r1, r0, #4
00660a80  03 00 51 e1                                      cmp r1, r3
00660a84  04 00 00 0a                                      beq #0x660a9c
00660a88  01 20 53 e0                                      subs r2, r3, r1
00660a8c  03 10 a0 01                                      moveq r1, r3
00660a90  01 00 00 0a                                      beq #0x660a9c
00660a94  27 b5 f2 eb                                      bl #0x30df38
00660a98  10 10 94 e5                                      ldr r1, [r4, #0x10]
00660a9c  18 00 94 e5                                      ldr r0, [r4, #0x18]
00660aa0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00660aa4  04 20 41 e2                                      sub r2, r1, #4
00660aa8  07 00 80 e0                                      add r0, r0, r7
00660aac  04 10 80 e2                                      add r1, r0, #4
00660ab0  03 00 51 e1                                      cmp r1, r3
00660ab4  10 20 84 e5                                      str r2, [r4, #0x10]
00660ab8  04 00 00 0a                                      beq #0x660ad0
00660abc  01 20 53 e0                                      subs r2, r3, r1
00660ac0  03 10 a0 01                                      moveq r1, r3
00660ac4  01 00 00 0a                                      beq #0x660ad0
00660ac8  1a b5 f2 eb                                      bl #0x30df38
00660acc  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00660ad0  04 10 41 e2                                      sub r1, r1, #4
00660ad4  1c 10 84 e5                                      str r1, [r4, #0x1c]
00660ad8  01 50 45 e2                                      sub r5, r5, #1
00660adc  61 ff ff ea                                      b #0x660868
00660ae0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00660ae4  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00660ae8  0c c0 61 e0                                      rsb ip, r1, ip
00660aec  4c c1 a0 e1                                      asr ip, ip, #2
00660af0  69 ff ff ea                                      b #0x66089c

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

; FUNCTION 0x006e23d0, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZNK6glitch7collada35CAnimationSetTransformationTemplate15getDefaultValueEPKNS0_8SChannelEPPv
; demangled: glitch::collada::CAnimationSetTransformationTemplate::getDefaultValue(glitch::collada::SChannel const*, void**) const
; decoder-mode: arm
006e23d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e23d4  04 40 90 e5                                      ldr r4, [r0, #4]
006e23d8  08 30 90 e5                                      ldr r3, [r0, #8]
006e23dc  00 50 a0 e1                                      mov r5, r0
006e23e0  01 70 a0 e1                                      mov r7, r1
006e23e4  03 00 54 e1                                      cmp r4, r3
006e23e8  02 60 a0 e1                                      mov r6, r2
006e23ec  03 00 00 1a                                      bne #0x6e2400
006e23f0  0d 00 00 ea                                      b #0x6e242c
006e23f4  08 30 95 e5                                      ldr r3, [r5, #8]
006e23f8  03 00 54 e1                                      cmp r4, r3
006e23fc  0a 00 00 0a                                      beq #0x6e242c
006e2400  00 30 94 e5                                      ldr r3, [r4]
006e2404  07 10 a0 e1                                      mov r1, r7
006e2408  06 20 a0 e1                                      mov r2, r6
006e240c  08 00 93 e5                                      ldr r0, [r3, #8]
006e2410  04 40 84 e2                                      add r4, r4, #4
006e2414  53 0f 80 e2                                      add r0, r0, #0x14c
006e2418  a7 e8 fc eb                                      bl #0x61c6bc
006e241c  00 00 50 e3                                      cmp r0, #0
006e2420  f3 ff ff 0a                                      beq #0x6e23f4
006e2424  01 00 a0 e3                                      mov r0, #1
006e2428  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e242c  00 00 a0 e3                                      mov r0, #0
006e2430  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006e24e8, declared_size=356, range_size=356, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplate24addTransformationTargetsEPNS0_10CSceneNodeE
; demangled: glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(glitch::collada::CSceneNode*)
; decoder-mode: arm
006e24e8  70 40 2d e9                                      push {r4, r5, r6, lr}
006e24ec  00 40 a0 e1                                      mov r4, r0
006e24f0  08 d0 4d e2                                      sub sp, sp, #8
006e24f4  01 50 a0 e1                                      mov r5, r1
006e24f8  10 00 a0 e3                                      mov r0, #0x10
006e24fc  00 10 a0 e3                                      mov r1, #0
006e2500  29 47 f9 eb                                      bl #0x5341ac
006e2504  00 30 a0 e3                                      mov r3, #0
006e2508  04 00 8d e5                                      str r0, [sp, #4]
006e250c  00 30 c0 e5                                      strb r3, [r0]
006e2510  04 30 9d e5                                      ldr r3, [sp, #4]
006e2514  01 20 a0 e3                                      mov r2, #1
006e2518  04 60 84 e2                                      add r6, r4, #4
006e251c  04 20 83 e5                                      str r2, [r3, #4]
006e2520  04 30 9d e5                                      ldr r3, [sp, #4]
006e2524  08 50 83 e5                                      str r5, [r3, #8]
006e2528  08 10 94 e5                                      ldr r1, [r4, #8]
006e252c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006e2530  03 00 51 e1                                      cmp r1, r3
006e2534  38 00 00 0a                                      beq #0x6e261c
006e2538  04 30 9d e5                                      ldr r3, [sp, #4]
006e253c  00 30 81 e5                                      str r3, [r1]
006e2540  08 30 94 e5                                      ldr r3, [r4, #8]
006e2544  04 30 83 e2                                      add r3, r3, #4
006e2548  08 30 84 e5                                      str r3, [r4, #8]
006e254c  00 10 a0 e3                                      mov r1, #0
006e2550  10 00 a0 e3                                      mov r0, #0x10
006e2554  14 47 f9 eb                                      bl #0x5341ac
006e2558  00 30 a0 e3                                      mov r3, #0
006e255c  04 00 8d e5                                      str r0, [sp, #4]
006e2560  00 30 c0 e5                                      strb r3, [r0]
006e2564  04 30 9d e5                                      ldr r3, [sp, #4]
006e2568  05 20 a0 e3                                      mov r2, #5
006e256c  04 20 83 e5                                      str r2, [r3, #4]
006e2570  04 30 9d e5                                      ldr r3, [sp, #4]
006e2574  08 50 83 e5                                      str r5, [r3, #8]
006e2578  08 10 94 e5                                      ldr r1, [r4, #8]
006e257c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006e2580  03 00 51 e1                                      cmp r1, r3
006e2584  28 00 00 0a                                      beq #0x6e262c
006e2588  04 30 9d e5                                      ldr r3, [sp, #4]
006e258c  00 30 81 e5                                      str r3, [r1]
006e2590  08 30 94 e5                                      ldr r3, [r4, #8]
006e2594  04 30 83 e2                                      add r3, r3, #4
006e2598  08 30 84 e5                                      str r3, [r4, #8]
006e259c  00 10 a0 e3                                      mov r1, #0
006e25a0  10 00 a0 e3                                      mov r0, #0x10
006e25a4  00 47 f9 eb                                      bl #0x5341ac
006e25a8  00 30 a0 e3                                      mov r3, #0
006e25ac  04 00 8d e5                                      str r0, [sp, #4]
006e25b0  00 30 c0 e5                                      strb r3, [r0]
006e25b4  04 30 9d e5                                      ldr r3, [sp, #4]
006e25b8  0a 20 a0 e3                                      mov r2, #0xa
006e25bc  04 20 83 e5                                      str r2, [r3, #4]
006e25c0  04 30 9d e5                                      ldr r3, [sp, #4]
006e25c4  08 50 83 e5                                      str r5, [r3, #8]
006e25c8  08 10 94 e5                                      ldr r1, [r4, #8]
006e25cc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006e25d0  03 00 51 e1                                      cmp r1, r3
006e25d4  18 00 00 0a                                      beq #0x6e263c
006e25d8  04 30 9d e5                                      ldr r3, [sp, #4]
006e25dc  00 30 81 e5                                      str r3, [r1]
006e25e0  08 30 94 e5                                      ldr r3, [r4, #8]
006e25e4  04 30 83 e2                                      add r3, r3, #4
006e25e8  08 30 84 e5                                      str r3, [r4, #8]
006e25ec  f4 60 b5 e5                                      ldr r6, [r5, #0xf4]!
006e25f0  05 00 00 ea                                      b #0x6e260c
006e25f4  00 00 56 e3                                      cmp r6, #0
006e25f8  06 10 a0 01                                      moveq r1, r6
006e25fc  04 10 46 12                                      subne r1, r6, #4
006e2600  04 00 a0 e1                                      mov r0, r4
006e2604  b7 ff ff eb                                      bl #0x6e24e8
006e2608  00 60 96 e5                                      ldr r6, [r6]
006e260c  06 00 55 e1                                      cmp r5, r6
006e2610  f7 ff ff 1a                                      bne #0x6e25f4
006e2614  08 d0 8d e2                                      add sp, sp, #8
006e2618  70 80 bd e8                                      pop {r4, r5, r6, pc}
006e261c  06 00 a0 e1                                      mov r0, r6
006e2620  04 20 8d e2                                      add r2, sp, #4
006e2624  82 ff ff eb                                      bl #0x6e2434
006e2628  c7 ff ff ea                                      b #0x6e254c
006e262c  06 00 a0 e1                                      mov r0, r6
006e2630  04 20 8d e2                                      add r2, sp, #4
006e2634  7e ff ff eb                                      bl #0x6e2434
006e2638  d7 ff ff ea                                      b #0x6e259c
006e263c  06 00 a0 e1                                      mov r0, r6
006e2640  04 20 8d e2                                      add r2, sp, #4
006e2644  7a ff ff eb                                      bl #0x6e2434
006e2648  e7 ff ff ea                                      b #0x6e25ec

; FUNCTION 0x0065d408, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator9setTargetEiPvPKNS0_15animation_track15CApplicatorInfoE
; demangled: glitch::collada::CSceneNodeAnimator::setTarget(int, void*, glitch::collada::animation_track::CApplicatorInfo const*)
; decoder-mode: arm
0065d408  70 40 2d e9                                      push {r4, r5, r6, lr}
0065d40c  44 c0 90 e5                                      ldr ip, [r0, #0x44]
0065d410  01 52 a0 e1                                      lsl r5, r1, #4
0065d414  03 60 a0 e1                                      mov r6, r3
0065d418  05 c0 8c e0                                      add ip, ip, r5
0065d41c  04 20 8c e5                                      str r2, [ip, #4]
0065d420  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d424  00 40 a0 e1                                      mov r4, r0
0065d428  05 30 83 e0                                      add r3, r3, r5
0065d42c  08 30 93 e5                                      ldr r3, [r3, #8]
0065d430  00 00 53 e3                                      cmp r3, #0
0065d434  07 00 00 0a                                      beq #0x65d458
0065d438  03 00 a0 e1                                      mov r0, r3
0065d43c  00 30 93 e5                                      ldr r3, [r3]
0065d440  0f e0 a0 e1                                      mov lr, pc
0065d444  04 f0 93 e5                                      ldr pc, [r3, #4]
0065d448  44 30 94 e5                                      ldr r3, [r4, #0x44]
0065d44c  00 20 a0 e3                                      mov r2, #0
0065d450  05 30 83 e0                                      add r3, r3, r5
0065d454  08 20 83 e5                                      str r2, [r3, #8]
0065d458  00 00 56 e3                                      cmp r6, #0
0065d45c  06 00 00 0a                                      beq #0x65d47c
0065d460  44 20 94 e5                                      ldr r2, [r4, #0x44]
0065d464  06 00 a0 e1                                      mov r0, r6
0065d468  00 30 96 e5                                      ldr r3, [r6]
0065d46c  05 50 82 e0                                      add r5, r2, r5
0065d470  0f e0 a0 e1                                      mov lr, pc
0065d474  08 f0 93 e5                                      ldr pc, [r3, #8]
0065d478  08 00 85 e5                                      str r0, [r5, #8]
0065d47c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065e0d8, declared_size=268, range_size=268, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator17addAnimationTrackEPNS0_10SAnimationE
; demangled: glitch::collada::CSceneNodeAnimator::addAnimationTrack(glitch::collada::SAnimation*)
; decoder-mode: arm
0065e0d8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0065e0dc  48 a0 90 e5                                      ldr sl, [r0, #0x48]
0065e0e0  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
0065e0e4  00 40 a0 e1                                      mov r4, r0
0065e0e8  01 50 a0 e1                                      mov r5, r1
0065e0ec  03 00 5a e1                                      cmp sl, r3
0065e0f0  07 00 00 0a                                      beq #0x65e114
0065e0f4  00 30 a0 e3                                      mov r3, #0
0065e0f8  0a 00 8a e8                                      stm sl, {r1, r3}
0065e0fc  0c 30 8a e5                                      str r3, [sl, #0xc]
0065e100  08 30 8a e5                                      str r3, [sl, #8]
0065e104  48 30 90 e5                                      ldr r3, [r0, #0x48]
0065e108  10 30 83 e2                                      add r3, r3, #0x10
0065e10c  48 30 80 e5                                      str r3, [r0, #0x48]
0065e110  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0065e114  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065e118  0a 30 63 e0                                      rsb r3, r3, sl
0065e11c  43 32 a0 e1                                      asr r3, r3, #4
0065e120  01 00 53 e3                                      cmp r3, #1
0065e124  03 90 83 20                                      addhs sb, r3, r3
0065e128  01 90 83 32                                      addlo sb, r3, #1
0065e12c  1f 02 79 e3                                      cmn sb, #0xf0000001
0065e130  29 00 00 8a                                      bhi #0x65e1dc
0065e134  09 00 53 e1                                      cmp r3, sb
0065e138  09 92 a0 91                                      lslls sb, sb, #4
0065e13c  26 00 00 8a                                      bhi #0x65e1dc
0065e140  09 00 a0 e1                                      mov r0, sb
0065e144  00 10 a0 e3                                      mov r1, #0
0065e148  06 c9 f2 eb                                      bl #0x310568
0065e14c  44 80 94 e5                                      ldr r8, [r4, #0x44]
0065e150  00 60 a0 e1                                      mov r6, r0
0065e154  0a a0 68 e0                                      rsb sl, r8, sl
0065e158  4a a2 a0 e1                                      asr sl, sl, #4
0065e15c  00 00 5a e3                                      cmp sl, #0
0065e160  00 a0 a0 d1                                      movle sl, r0
0065e164  09 00 00 da                                      ble #0x65e190
0065e168  0a 70 a0 e1                                      mov r7, sl
0065e16c  00 e0 a0 e3                                      mov lr, #0
0065e170  0e c0 86 e0                                      add ip, r6, lr
0065e174  0e 30 88 e0                                      add r3, r8, lr
0065e178  01 70 57 e2                                      subs r7, r7, #1
0065e17c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0065e180  10 e0 8e e2                                      add lr, lr, #0x10
0065e184  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0065e188  f8 ff ff 1a                                      bne #0x65e170
0065e18c  0a a2 86 e0                                      add sl, r6, sl, lsl #4
0065e190  00 30 a0 e3                                      mov r3, #0
0065e194  0a 70 a0 e1                                      mov r7, sl
0065e198  04 30 8a e5                                      str r3, [sl, #4]
0065e19c  0c 30 8a e5                                      str r3, [sl, #0xc]
0065e1a0  08 30 8a e5                                      str r3, [sl, #8]
0065e1a4  10 50 87 e4                                      str r5, [r7], #0x10
0065e1a8  44 30 94 e5                                      ldr r3, [r4, #0x44]
0065e1ac  48 00 94 e5                                      ldr r0, [r4, #0x48]
0065e1b0  09 90 86 e0                                      add sb, r6, sb
0065e1b4  03 00 50 e1                                      cmp r0, r3
0065e1b8  10 20 40 12                                      subne r2, r0, #0x10
0065e1bc  02 30 63 10                                      rsbne r3, r3, r2
0065e1c0  23 32 e0 11                                      mvnne r3, r3, lsr #4
0065e1c4  03 02 80 10                                      addne r0, r0, r3, lsl #4
0065e1c8  a0 c8 f2 eb                                      bl #0x310450
0065e1cc  4c 90 84 e5                                      str sb, [r4, #0x4c]
0065e1d0  48 70 84 e5                                      str r7, [r4, #0x48]
0065e1d4  44 60 84 e5                                      str r6, [r4, #0x44]
0065e1d8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0065e1dc  0f 90 e0 e3                                      mvn sb, #0xf
0065e1e0  d6 ff ff ea                                      b #0x65e140

; FUNCTION 0x0065d768, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator16getAnimationDataEi
; demangled: glitch::collada::CSceneNodeAnimator::getAnimationData(int)
; decoder-mode: arm
0065d768  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0065d76c  14 d0 4d e2                                      sub sp, sp, #0x14
0065d770  00 30 90 e5                                      ldr r3, [r0]
0065d774  00 40 a0 e1                                      mov r4, r0
0065d778  01 70 a0 e1                                      mov r7, r1
0065d77c  0f e0 a0 e1                                      mov lr, pc
0065d780  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065d784  78 50 9f e5                                      ldr r5, [pc, #0x78]
0065d788  00 20 50 e2                                      subs r2, r0, #0
0065d78c  05 50 8f e0                                      add r5, pc, r5
0065d790  07 00 00 0a                                      beq #0x65d7b4
0065d794  00 30 94 e5                                      ldr r3, [r4]
0065d798  04 00 a0 e1                                      mov r0, r4
0065d79c  0f e0 a0 e1                                      mov lr, pc
0065d7a0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065d7a4  00 30 90 e5                                      ldr r3, [r0]
0065d7a8  0f e0 a0 e1                                      mov lr, pc
0065d7ac  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0065d7b0  00 20 a0 e1                                      mov r2, r0
0065d7b4  07 30 a0 e1                                      mov r3, r7
0065d7b8  28 10 84 e2                                      add r1, r4, #0x28
0065d7bc  0d 00 a0 e1                                      mov r0, sp
0065d7c0  c4 ff ff eb                                      bl #0x65d6d8
0065d7c4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0065d7c8  54 20 84 e2                                      add r2, r4, #0x54
0065d7cc  0d 10 a0 e1                                      mov r1, sp
0065d7d0  03 30 95 e7                                      ldr r3, [r5, r3]
0065d7d4  0d 60 a0 e1                                      mov r6, sp
0065d7d8  00 00 93 e5                                      ldr r0, [r3]
0065d7dc  6e bb fe eb                                      bl #0x60c59c
0065d7e0  54 40 94 e5                                      ldr r4, [r4, #0x54]
0065d7e4  0d 00 a0 e1                                      mov r0, sp
0065d7e8  00 00 54 e3                                      cmp r4, #0
0065d7ec  14 30 94 15                                      ldrne r3, [r4, #0x14]
0065d7f0  0c 40 93 15                                      ldrne r4, [r3, #0xc]
0065d7f4  1e ef fe eb                                      bl #0x619474
0065d7f8  04 00 a0 e1                                      mov r0, r4
0065d7fc  14 d0 8d e2                                      add sp, sp, #0x14
0065d800  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0065d804  04 73 33 00 74 09 00 00                          .byte 0x04, 0x73, 0x33, 0x00, 0x74, 0x09, 0x00, 0x00

; FUNCTION 0x0065d80c, declared_size=272, range_size=272, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator22computeAnimationValuesEj
; demangled: glitch::collada::CSceneNodeAnimator::computeAnimationValues(unsigned int)
; decoder-mode: arm
0065d80c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065d810  48 20 90 e5                                      ldr r2, [r0, #0x48]
0065d814  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d818  2c d0 4d e2                                      sub sp, sp, #0x2c
0065d81c  00 50 a0 e1                                      mov r5, r0
0065d820  02 30 63 e0                                      rsb r3, r3, r2
0065d824  23 32 b0 e1                                      lsrs r3, r3, #4
0065d828  01 40 a0 e1                                      mov r4, r1
0065d82c  02 00 00 1a                                      bne #0x65d83c
0065d830  50 30 90 e5                                      ldr r3, [r0, #0x50]
0065d834  00 00 53 e3                                      cmp r3, #0
0065d838  2f 00 00 0a                                      beq #0x65d8fc
0065d83c  05 00 a0 e1                                      mov r0, r5
0065d840  04 10 a0 e1                                      mov r1, r4
0065d844  ff 28 00 eb                                      bl #0x667c48
0065d848  00 30 95 e5                                      ldr r3, [r5]
0065d84c  05 00 a0 e1                                      mov r0, r5
0065d850  0f e0 a0 e1                                      mov lr, pc
0065d854  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065d858  00 00 50 e3                                      cmp r0, #0
0065d85c  04 70 90 15                                      ldrne r7, [r0, #4]
0065d860  27 00 00 0a                                      beq #0x65d904
0065d864  07 10 a0 e1                                      mov r1, r7
0065d868  05 00 a0 e1                                      mov r0, r5
0065d86c  0c 80 95 e5                                      ldr r8, [r5, #0xc]
0065d870  bc ff ff eb                                      bl #0x65d768
0065d874  44 10 95 e5                                      ldr r1, [r5, #0x44]
0065d878  48 60 95 e5                                      ldr r6, [r5, #0x48]
0065d87c  34 30 d5 e5                                      ldrb r3, [r5, #0x34]
0065d880  01 80 58 e2                                      subs r8, r8, #1
0065d884  01 80 a0 13                                      movne r8, #1
0065d888  06 60 61 e0                                      rsb r6, r1, r6
0065d88c  46 62 b0 e1                                      asrs r6, r6, #4
0065d890  00 a0 a0 e1                                      mov sl, r0
0065d894  19 30 cd e5                                      strb r3, [sp, #0x19]
0065d898  17 00 00 0a                                      beq #0x65d8fc
0065d89c  00 40 a0 e3                                      mov r4, #0
0065d8a0  0c 90 8d e2                                      add sb, sp, #0xc
0065d8a4  1c b0 8d e2                                      add fp, sp, #0x1c
0065d8a8  00 00 00 ea                                      b #0x65d8b0
0065d8ac  44 10 95 e5                                      ldr r1, [r5, #0x44]
0065d8b0  04 32 81 e0                                      add r3, r1, r4, lsl #4
0065d8b4  04 20 93 e5                                      ldr r2, [r3, #4]
0065d8b8  0c 30 83 e2                                      add r3, r3, #0xc
0065d8bc  00 00 52 e3                                      cmp r2, #0
0065d8c0  0a 00 00 0a                                      beq #0x65d8f0
0065d8c4  34 c0 d5 e5                                      ldrb ip, [r5, #0x34]
0065d8c8  04 02 91 e7                                      ldr r0, [r1, r4, lsl #4]
0065d8cc  20 a0 8d e5                                      str sl, [sp, #0x20]
0065d8d0  00 00 5c e3                                      cmp ip, #0
0065d8d4  1c 00 8d e5                                      str r0, [sp, #0x1c]
0065d8d8  0c 30 81 12                                      addne r3, r1, #0xc
0065d8dc  0b 00 a0 e1                                      mov r0, fp
0065d8e0  07 10 a0 e1                                      mov r1, r7
0065d8e4  24 90 8d e5                                      str sb, [sp, #0x24]
0065d8e8  00 80 8d e5                                      str r8, [sp]
0065d8ec  2d 32 00 eb                                      bl #0x66a1a8
0065d8f0  01 40 84 e2                                      add r4, r4, #1
0065d8f4  06 00 54 e1                                      cmp r4, r6
0065d8f8  eb ff ff 1a                                      bne #0x65d8ac
0065d8fc  2c d0 8d e2                                      add sp, sp, #0x2c
0065d900  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065d904  04 00 a0 e1                                      mov r0, r4
0065d908  14 10 95 e5                                      ldr r1, [r5, #0x14]
0065d90c  86 c4 f2 eb                                      bl #0x30eb2c
0065d910  38 70 95 e5                                      ldr r7, [r5, #0x38]
0065d914  07 70 81 e0                                      add r7, r1, r7
0065d918  d1 ff ff ea                                      b #0x65d864

; FUNCTION 0x0065d91c, declared_size=284, range_size=284, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator20applyAnimationValuesEj
; demangled: glitch::collada::CSceneNodeAnimator::applyAnimationValues(unsigned int)
; decoder-mode: arm
0065d91c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0065d920  48 20 90 e5                                      ldr r2, [r0, #0x48]
0065d924  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d928  28 d0 4d e2                                      sub sp, sp, #0x28
0065d92c  00 50 a0 e1                                      mov r5, r0
0065d930  02 30 63 e0                                      rsb r3, r3, r2
0065d934  23 32 b0 e1                                      lsrs r3, r3, #4
0065d938  01 40 a0 e1                                      mov r4, r1
0065d93c  02 00 00 1a                                      bne #0x65d94c
0065d940  50 30 90 e5                                      ldr r3, [r0, #0x50]
0065d944  00 00 53 e3                                      cmp r3, #0
0065d948  32 00 00 0a                                      beq #0x65da18
0065d94c  05 00 a0 e1                                      mov r0, r5
0065d950  04 10 a0 e1                                      mov r1, r4
0065d954  bb 28 00 eb                                      bl #0x667c48
0065d958  00 30 95 e5                                      ldr r3, [r5]
0065d95c  05 00 a0 e1                                      mov r0, r5
0065d960  0f e0 a0 e1                                      mov lr, pc
0065d964  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065d968  00 00 50 e3                                      cmp r0, #0
0065d96c  04 60 90 15                                      ldrne r6, [r0, #4]
0065d970  2a 00 00 0a                                      beq #0x65da20
0065d974  06 10 a0 e1                                      mov r1, r6
0065d978  05 00 a0 e1                                      mov r0, r5
0065d97c  0c 70 95 e5                                      ldr r7, [r5, #0xc]
0065d980  78 ff ff eb                                      bl #0x65d768
0065d984  44 30 95 e5                                      ldr r3, [r5, #0x44]
0065d988  00 80 a0 e1                                      mov r8, r0
0065d98c  48 00 95 e5                                      ldr r0, [r5, #0x48]
0065d990  34 20 d5 e5                                      ldrb r2, [r5, #0x34]
0065d994  01 70 57 e2                                      subs r7, r7, #1
0065d998  01 70 a0 13                                      movne r7, #1
0065d99c  00 10 63 e0                                      rsb r1, r3, r0
0065d9a0  21 12 b0 e1                                      lsrs r1, r1, #4
0065d9a4  19 20 cd e5                                      strb r2, [sp, #0x19]
0065d9a8  1a 00 00 0a                                      beq #0x65da18
0065d9ac  00 40 a0 e3                                      mov r4, #0
0065d9b0  0c a0 8d e2                                      add sl, sp, #0xc
0065d9b4  1c 90 8d e2                                      add sb, sp, #0x1c
0065d9b8  04 12 83 e0                                      add r1, r3, r4, lsl #4
0065d9bc  04 20 91 e5                                      ldr r2, [r1, #4]
0065d9c0  0c c0 83 e2                                      add ip, r3, #0xc
0065d9c4  00 00 52 e3                                      cmp r2, #0
0065d9c8  0e 00 00 0a                                      beq #0x65da08
0065d9cc  04 02 93 e7                                      ldr r0, [r3, r4, lsl #4]
0065d9d0  34 30 d5 e5                                      ldrb r3, [r5, #0x34]
0065d9d4  20 80 8d e5                                      str r8, [sp, #0x20]
0065d9d8  1c 00 8d e5                                      str r0, [sp, #0x1c]
0065d9dc  00 00 53 e3                                      cmp r3, #0
0065d9e0  24 a0 8d e5                                      str sl, [sp, #0x24]
0065d9e4  08 30 91 e5                                      ldr r3, [r1, #8]
0065d9e8  0c c0 81 02                                      addeq ip, r1, #0xc
0065d9ec  09 00 a0 e1                                      mov r0, sb
0065d9f0  06 10 a0 e1                                      mov r1, r6
0065d9f4  00 c0 8d e5                                      str ip, [sp]
0065d9f8  04 70 8d e5                                      str r7, [sp, #4]
0065d9fc  af 31 00 eb                                      bl #0x66a0c0
0065da00  48 00 95 e5                                      ldr r0, [r5, #0x48]
0065da04  44 30 95 e5                                      ldr r3, [r5, #0x44]
0065da08  01 40 84 e2                                      add r4, r4, #1
0065da0c  00 20 63 e0                                      rsb r2, r3, r0
0065da10  42 02 54 e1                                      cmp r4, r2, asr #4
0065da14  e7 ff ff 3a                                      blo #0x65d9b8
0065da18  28 d0 8d e2                                      add sp, sp, #0x28
0065da1c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0065da20  04 00 a0 e1                                      mov r0, r4
0065da24  14 10 95 e5                                      ldr r1, [r5, #0x14]
0065da28  3f c4 f2 eb                                      bl #0x30eb2c
0065da2c  38 60 95 e5                                      ldr r6, [r5, #0x38]
0065da30  06 60 81 e0                                      add r6, r1, r6
0065da34  ce ff ff ea                                      b #0x65d974

; FUNCTION 0x0065da38, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator17getAnimationValueEiiPv
; demangled: glitch::collada::CSceneNodeAnimator::getAnimationValue(int, int, void*)
; decoder-mode: arm
0065da38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065da3c  44 c0 90 e5                                      ldr ip, [r0, #0x44]
0065da40  28 d0 4d e2                                      sub sp, sp, #0x28
0065da44  02 60 a0 e1                                      mov r6, r2
0065da48  00 20 a0 e3                                      mov r2, #0
0065da4c  19 20 cd e5                                      strb r2, [sp, #0x19]
0065da50  01 70 a0 e1                                      mov r7, r1
0065da54  06 10 a0 e1                                      mov r1, r6
0065da58  07 52 9c e7                                      ldr r5, [ip, r7, lsl #4]
0065da5c  03 80 a0 e1                                      mov r8, r3
0065da60  07 72 8c e0                                      add r7, ip, r7, lsl #4
0065da64  00 40 a0 e1                                      mov r4, r0
0065da68  3e ff ff eb                                      bl #0x65d768
0065da6c  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0065da70  0c c0 8d e2                                      add ip, sp, #0xc
0065da74  20 00 8d e5                                      str r0, [sp, #0x20]
0065da78  01 e0 5e e2                                      subs lr, lr, #1
0065da7c  01 e0 a0 13                                      movne lr, #1
0065da80  06 10 a0 e1                                      mov r1, r6
0065da84  08 20 a0 e1                                      mov r2, r8
0065da88  0c 30 87 e2                                      add r3, r7, #0xc
0065da8c  1c 00 8d e2                                      add r0, sp, #0x1c
0065da90  1c 50 8d e5                                      str r5, [sp, #0x1c]
0065da94  24 c0 8d e5                                      str ip, [sp, #0x24]
0065da98  00 e0 8d e5                                      str lr, [sp]
0065da9c  c1 31 00 eb                                      bl #0x66a1a8
0065daa0  28 d0 8d e2                                      add sp, sp, #0x28
0065daa4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00669e10, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor7getTypeEi
; demangled: glitch::collada::SAnimationAccessor::getType(int) const
; decoder-mode: arm
00669e10  00 30 90 e5                                      ldr r3, [r0]
00669e14  10 30 93 e5                                      ldr r3, [r3, #0x10]
00669e18  01 32 83 e0                                      add r3, r3, r1, lsl #4
00669e1c  08 00 93 e5                                      ldr r0, [r3, #8]
00669e20  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e24, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor9getOutputEi
; demangled: glitch::collada::SAnimationAccessor::getOutput(int) const
; decoder-mode: arm
00669e24  0c 00 90 e8                                      ldm r0, {r2, r3}
00669e28  1c 00 a0 e3                                      mov r0, #0x1c
00669e2c  08 20 92 e5                                      ldr r2, [r2, #8]
00669e30  90 21 22 e0                                      mla r2, r0, r1, r2
00669e34  18 20 92 e5                                      ldr r2, [r2, #0x18]
00669e38  82 31 83 e0                                      add r3, r3, r2, lsl #3
00669e3c  04 00 83 e2                                      add r0, r3, #4
00669e40  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e44, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor10getChannelEi
; demangled: glitch::collada::SAnimationAccessor::getChannel(int) const
; decoder-mode: arm
00669e44  00 30 90 e5                                      ldr r3, [r0]
00669e48  10 00 93 e5                                      ldr r0, [r3, #0x10]
00669e4c  01 02 80 e0                                      add r0, r0, r1, lsl #4
00669e50  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e54, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor15hasDefaultValueEv
; demangled: glitch::collada::SAnimationAccessor::hasDefaultValue() const
; decoder-mode: arm
00669e54  00 30 90 e5                                      ldr r3, [r0]
00669e58  18 00 93 e5                                      ldr r0, [r3, #0x18]
00669e5c  00 00 50 e2                                      subs r0, r0, #0
00669e60  01 00 a0 13                                      movne r0, #1
00669e64  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e68, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor15getDefaultValueEv
; demangled: glitch::collada::SAnimationAccessor::getDefaultValue() const
; decoder-mode: arm
00669e68  00 30 90 e5                                      ldr r3, [r0]
00669e6c  18 30 93 e5                                      ldr r3, [r3, #0x18]
00669e70  08 00 93 e5                                      ldr r0, [r3, #8]
00669e74  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e84, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor19getTimeInternalTypeEi
; demangled: glitch::collada::SAnimationAccessor::getTimeInternalType(int) const
; decoder-mode: arm
00669e84  00 30 90 e5                                      ldr r3, [r0]
00669e88  1c 20 a0 e3                                      mov r2, #0x1c
00669e8c  08 30 93 e5                                      ldr r3, [r3, #8]
00669e90  92 31 23 e0                                      mla r3, r2, r1, r3
00669e94  04 00 93 e5                                      ldr r0, [r3, #4]
00669e98  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e9c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor20getInterpolationTypeEi
; demangled: glitch::collada::SAnimationAccessor::getInterpolationType(int) const
; decoder-mode: arm
00669e9c  00 30 90 e5                                      ldr r3, [r0]
00669ea0  1c 20 a0 e3                                      mov r2, #0x1c
00669ea4  92 01 02 e0                                      mul r2, r2, r1
00669ea8  08 30 93 e5                                      ldr r3, [r3, #8]
00669eac  02 00 93 e7                                      ldr r0, [r3, r2]
00669eb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669eb4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor10getOffsetsEv
; demangled: glitch::collada::SAnimationAccessor::getOffsets() const
; decoder-mode: arm
00669eb4  00 30 90 e5                                      ldr r3, [r0]
00669eb8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00669ebc  08 00 93 e5                                      ldr r0, [r3, #8]
00669ec0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669ec4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor9getScalesEv
; demangled: glitch::collada::SAnimationAccessor::getScales() const
; decoder-mode: arm
00669ec4  00 30 90 e5                                      ldr r3, [r0]
00669ec8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00669ecc  04 00 93 e5                                      ldr r0, [r3, #4]
00669ed0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669ed4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor18getOffsetScaleTypeEv
; demangled: glitch::collada::SAnimationAccessor::getOffsetScaleType() const
; decoder-mode: arm
00669ed4  00 30 90 e5                                      ldr r3, [r0]
00669ed8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00669edc  00 00 53 e3                                      cmp r3, #0
00669ee0  02 00 a0 03                                      moveq r0, #2
00669ee4  00 00 93 15                                      ldrne r0, [r3]
00669ee8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669eec, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor10getKeyTimeEi
; demangled: glitch::collada::SAnimationAccessor::getKeyTime(int) const
; decoder-mode: arm
00669eec  0c 00 90 e8                                      ldm r0, {r2, r3}
00669ef0  1c 00 a0 e3                                      mov r0, #0x1c
00669ef4  08 20 92 e5                                      ldr r2, [r2, #8]
00669ef8  90 21 22 e0                                      mla r2, r0, r1, r2
00669efc  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00669f00  82 31 83 e0                                      add r3, r3, r2, lsl #3
00669f04  04 00 83 e2                                      add r0, r3, #4
00669f08  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066a004, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor11getAnimatorEv
; demangled: glitch::collada::SAnimationAccessor::getAnimator() const
; decoder-mode: arm
0066a004  00 30 90 e5                                      ldr r3, [r0]
0066a008  14 00 93 e5                                      ldr r0, [r3, #0x14]
0066a00c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066a0c0, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor10applyValueEiPvPNS0_15animation_track15CApplicatorInfoERib
; demangled: glitch::collada::SAnimationAccessor::applyValue(int, void*, glitch::collada::animation_track::CApplicatorInfo*, int&, bool) const
; decoder-mode: arm
0066a0c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066a0c4  10 d0 4d e2                                      sub sp, sp, #0x10
0066a0c8  01 70 a0 e1                                      mov r7, r1
0066a0cc  02 60 a0 e1                                      mov r6, r2
0066a0d0  03 50 a0 e1                                      mov r5, r3
0066a0d4  00 80 a0 e1                                      mov r8, r0
0066a0d8  2c 40 dd e5                                      ldrb r4, [sp, #0x2c]
0066a0dc  c8 ff ff eb                                      bl #0x66a004
0066a0e0  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0066a0e4  00 c0 90 e5                                      ldr ip, [r0]
0066a0e8  08 10 a0 e1                                      mov r1, r8
0066a0ec  07 20 a0 e1                                      mov r2, r7
0066a0f0  06 30 a0 e1                                      mov r3, r6
0066a0f4  20 40 8d e8                                      stm sp, {r5, lr}
0066a0f8  08 40 8d e5                                      str r4, [sp, #8]
0066a0fc  0f e0 a0 e1                                      mov lr, pc
0066a100  6c f0 9c e5                                      ldr pc, [ip, #0x6c]
0066a104  10 d0 8d e2                                      add sp, sp, #0x10
0066a108  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0066a1a8, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor8getValueEiPvRib
; demangled: glitch::collada::SAnimationAccessor::getValue(int, void*, int&, bool) const
; decoder-mode: arm
0066a1a8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066a1ac  08 d0 4d e2                                      sub sp, sp, #8
0066a1b0  01 70 a0 e1                                      mov r7, r1
0066a1b4  02 60 a0 e1                                      mov r6, r2
0066a1b8  03 50 a0 e1                                      mov r5, r3
0066a1bc  00 80 a0 e1                                      mov r8, r0
0066a1c0  20 40 dd e5                                      ldrb r4, [sp, #0x20]
0066a1c4  8e ff ff eb                                      bl #0x66a004
0066a1c8  08 10 a0 e1                                      mov r1, r8
0066a1cc  00 c0 90 e5                                      ldr ip, [r0]
0066a1d0  07 20 a0 e1                                      mov r2, r7
0066a1d4  06 30 a0 e1                                      mov r3, r6
0066a1d8  00 50 8d e5                                      str r5, [sp]
0066a1dc  04 40 8d e5                                      str r4, [sp, #4]
0066a1e0  0f e0 a0 e1                                      mov lr, pc
0066a1e4  68 f0 9c e5                                      ldr pc, [ip, #0x68]
0066a1e8  08 d0 8d e2                                      add sp, sp, #8
0066a1ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0066a1f0, declared_size=188, range_size=188, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIiLi1000EEEbiRKNS_3res6vectorIiEEiRi
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int, 1000>(int, glitch::res::vector<int> const&, int, int&) const
; decoder-mode: arm
0066a1f0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066a1f4  00 50 a0 e1                                      mov r5, r0
0066a1f8  03 00 a0 e1                                      mov r0, r3
0066a1fc  02 40 a0 e1                                      mov r4, r2
0066a200  01 b0 a0 e1                                      mov fp, r1
0066a204  d6 91 f2 eb                                      bl #0x30e964
0066a208  00 70 94 e5                                      ldr r7, [r4]
0066a20c  00 a0 a0 e1                                      mov sl, r0
0066a210  01 70 47 e2                                      sub r7, r7, #1
0066a214  00 00 57 e3                                      cmp r7, #0
0066a218  0d 00 00 da                                      ble #0x66a254
0066a21c  04 90 94 e5                                      ldr sb, [r4, #4]
0066a220  01 80 a0 e3                                      mov r8, #1
0066a224  07 60 88 e0                                      add r6, r8, r7
0066a228  c6 60 a0 e1                                      asr r6, r6, #1
0066a22c  06 01 99 e7                                      ldr r0, [sb, r6, lsl #2]
0066a230  cb 91 f2 eb                                      bl #0x30e964
0066a234  00 10 a0 e1                                      mov r1, r0
0066a238  0a 00 a0 e1                                      mov r0, sl
0066a23c  32 91 f2 eb                                      bl #0x30e70c
0066a240  00 00 50 e3                                      cmp r0, #0
0066a244  01 70 46 12                                      subne r7, r6, #1
0066a248  01 80 86 02                                      addeq r8, r6, #1
0066a24c  07 00 58 e1                                      cmp r8, r7
0066a250  f3 ff ff da                                      ble #0x66a224
0066a254  28 30 9d e5                                      ldr r3, [sp, #0x28]
0066a258  00 70 83 e5                                      str r7, [r3]
0066a25c  04 30 94 e5                                      ldr r3, [r4, #4]
0066a260  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
0066a264  be 91 f2 eb                                      bl #0x30e964
0066a268  00 10 a0 e1                                      mov r1, r0
0066a26c  0a 00 a0 e1                                      mov r0, sl
0066a270  45 8f f2 eb                                      bl #0x30df8c
0066a274  00 00 50 e3                                      cmp r0, #0
0066a278  00 70 a0 13                                      movne r7, #0
0066a27c  03 00 00 1a                                      bne #0x66a290
0066a280  00 30 94 e5                                      ldr r3, [r4]
0066a284  01 30 43 e2                                      sub r3, r3, #1
0066a288  03 70 57 e0                                      subs r7, r7, r3
0066a28c  01 70 a0 13                                      movne r7, #1
0066a290  05 00 a0 e1                                      mov r0, r5
0066a294  0b 10 a0 e1                                      mov r1, fp
0066a298  ff fe ff eb                                      bl #0x669e9c
0066a29c  00 00 50 e3                                      cmp r0, #0
0066a2a0  00 00 a0 03                                      moveq r0, #0
0066a2a4  01 00 07 12                                      andne r0, r7, #1
0066a2a8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006e2c40, declared_size=168, range_size=168, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx8getValueERKNS0_18SAnimationAccessorEiPvRib
; demangled: glitch::collada::CAnimationTrackEx::getValue(glitch::collada::SAnimationAccessor const&, int, void*, int&, bool) const
; decoder-mode: arm
006e2c40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e2c44  10 d0 4d e2                                      sub sp, sp, #0x10
006e2c48  28 40 9d e5                                      ldr r4, [sp, #0x28]
006e2c4c  00 e0 a0 e3                                      mov lr, #0
006e2c50  10 c0 8d e2                                      add ip, sp, #0x10
006e2c54  00 70 94 e5                                      ldr r7, [r4]
006e2c58  01 60 a0 e1                                      mov r6, r1
006e2c5c  04 e0 2c e5                                      str lr, [ip, #-4]!
006e2c60  00 50 a0 e1                                      mov r5, r0
006e2c64  03 80 a0 e1                                      mov r8, r3
006e2c68  0e 10 a0 e1                                      mov r1, lr
006e2c6c  0c 30 a0 e1                                      mov r3, ip
006e2c70  06 00 a0 e1                                      mov r0, r6
006e2c74  08 c0 8d e2                                      add ip, sp, #8
006e2c78  04 70 8d e5                                      str r7, [sp, #4]
006e2c7c  00 c0 8d e5                                      str ip, [sp]
006e2c80  2c 70 dd e5                                      ldrb r7, [sp, #0x2c]
006e2c84  e2 22 fe eb                                      bl #0x66b814
006e2c88  07 00 10 e1                                      tst r0, r7
006e2c8c  0a 00 00 1a                                      bne #0x6e2cbc
006e2c90  05 00 a0 e1                                      mov r0, r5
006e2c94  06 10 a0 e1                                      mov r1, r6
006e2c98  08 30 a0 e1                                      mov r3, r8
006e2c9c  00 c0 95 e5                                      ldr ip, [r5]
006e2ca0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e2ca4  0f e0 a0 e1                                      mov lr, pc
006e2ca8  28 f0 9c e5                                      ldr pc, [ip, #0x28]
006e2cac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006e2cb0  00 30 84 e5                                      str r3, [r4]
006e2cb4  10 d0 8d e2                                      add sp, sp, #0x10
006e2cb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e2cbc  08 30 9d e5                                      ldr r3, [sp, #8]
006e2cc0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e2cc4  04 80 8d e5                                      str r8, [sp, #4]
006e2cc8  00 30 8d e5                                      str r3, [sp]
006e2ccc  05 00 a0 e1                                      mov r0, r5
006e2cd0  06 10 a0 e1                                      mov r1, r6
006e2cd4  00 c0 95 e5                                      ldr ip, [r5]
006e2cd8  01 30 82 e2                                      add r3, r2, #1
006e2cdc  0f e0 a0 e1                                      mov lr, pc
006e2ce0  20 f0 9c e5                                      ldr pc, [ip, #0x20]
006e2ce4  f0 ff ff ea                                      b #0x6e2cac

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
