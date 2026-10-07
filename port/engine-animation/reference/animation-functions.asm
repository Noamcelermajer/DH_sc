; Selected exact original ARM listings for the engine-animation boundary analysis.
; APK member: lib/armeabi-v7a/libDungeonHunter2.so
; Full ELF size: 15938284 bytes; SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Function bytes were checked against their file-backed ELF virtual-address slices.

; Claim: SAnimationAccessor::getOutput(int); output-array view evidence
; Original listing: glitch_collada_SAnimationAccessor-dd6bb90af5fe-001.asm:26-38 (1-based inclusive)
; ELF VA=0x00669e24, size=32, file offset=0x00669e24, bytes SHA-256=ebbae3803b8841315855c8aeb748d80121405fb42b1082a214e3feffb0dc5fe7
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
; Claim: SAnimationAccessor::getKeyTime(int); time-array view evidence
; Original listing: glitch_collada_SAnimationAccessor-dd6bb90af5fe-001.asm:136-148 (1-based inclusive)
; ELF VA=0x00669eec, size=32, file offset=0x00669eec, bytes SHA-256=1a440d4d63ee559d0d99fea56f78c50e6df2eb1a086942c1da626e4367402e3d
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
; Claim: Generic query wrapper resolves key-time vector then enters typed dispatcher
; Original listing: glitch_collada_SAnimationAccessor-dd6bb90af5fe-001.asm:905-928 (1-based inclusive)
; ELF VA=0x0066b814, size=76, file offset=0x0066b814, bytes SHA-256=5ca8adca6b00589a75b211ec0f268d3a449f2df0d30516bd594eb463e5cedc40
; FUNCTION 0x0066b814, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiiRiRfi
; demangled: glitch::collada::SAnimationAccessor::findKeyFrameNo(int, int, int&, float&, int) const
; decoder-mode: arm
0066b814  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0066b818  14 d0 4d e2                                      sub sp, sp, #0x14
0066b81c  02 50 a0 e1                                      mov r5, r2
0066b820  03 40 a0 e1                                      mov r4, r3
0066b824  00 60 a0 e1                                      mov r6, r0
0066b828  01 70 a0 e1                                      mov r7, r1
0066b82c  ae f9 ff eb                                      bl #0x669eec
0066b830  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0066b834  00 20 a0 e1                                      mov r2, r0
0066b838  07 10 a0 e1                                      mov r1, r7
0066b83c  04 c0 8d e5                                      str ip, [sp, #4]
0066b840  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0066b844  06 00 a0 e1                                      mov r0, r6
0066b848  05 30 a0 e1                                      mov r3, r5
0066b84c  00 40 8d e5                                      str r4, [sp]
0066b850  08 c0 8d e5                                      str ip, [sp, #8]
0066b854  80 ff ff eb                                      bl #0x66b65c
0066b858  14 d0 8d e2                                      add sp, sp, #0x14
0066b85c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; Claim: Per-accessor cached time-type dispatch to typed search implementations
; Original listing: glitch_collada_SAnimationAccessor-dd6bb90af5fe-001.asm:789-903 (1-based inclusive)
; ELF VA=0x0066b65c, size=440, file offset=0x0066b65c, bytes SHA-256=c9be0d5b471dc6bd17ea1c6102893ba537ebeabd6dad620d929ae957afecfeb4
; FUNCTION 0x0066b65c, declared_size=440, range_size=440, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiRKNS_3res6vectorIiEEiRiRfi
; demangled: glitch::collada::SAnimationAccessor::findKeyFrameNo(int, glitch::res::vector<int> const&, int, int&, float&, int) const
; decoder-mode: arm
0066b65c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066b660  08 c0 90 e5                                      ldr ip, [r0, #8]
0066b664  14 d0 4d e2                                      sub sp, sp, #0x14
0066b668  00 40 a0 e1                                      mov r4, r0
0066b66c  0d 80 dc e5                                      ldrb r8, [ip, #0xd]
0066b670  01 90 a0 e1                                      mov sb, r1
0066b674  02 a0 a0 e1                                      mov sl, r2
0066b678  00 00 58 e3                                      cmp r8, #0
0066b67c  03 70 a0 e1                                      mov r7, r3
0066b680  38 60 9d e5                                      ldr r6, [sp, #0x38]
0066b684  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
0066b688  40 b0 9d e5                                      ldr fp, [sp, #0x40]
0066b68c  15 00 00 0a                                      beq #0x66b6e8
0066b690  04 30 9c e5                                      ldr r3, [ip, #4]
0066b694  07 00 53 e1                                      cmp r3, r7
0066b698  09 00 00 0a                                      beq #0x66b6c4
0066b69c  04 70 8c e5                                      str r7, [ip, #4]
0066b6a0  00 10 a0 e3                                      mov r1, #0
0066b6a4  f6 f9 ff eb                                      bl #0x669e84
0066b6a8  03 00 50 e3                                      cmp r0, #3
0066b6ac  42 00 00 0a                                      beq #0x66b7bc
0066b6b0  04 00 50 e3                                      cmp r0, #4
0066b6b4  34 00 00 0a                                      beq #0x66b78c
0066b6b8  01 00 50 e3                                      cmp r0, #1
0066b6bc  1c 00 00 0a                                      beq #0x66b734
0066b6c0  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b6c4  00 30 9c e5                                      ldr r3, [ip]
0066b6c8  00 30 85 e5                                      str r3, [r5]
0066b6cc  08 30 94 e5                                      ldr r3, [r4, #8]
0066b6d0  08 30 93 e5                                      ldr r3, [r3, #8]
0066b6d4  00 30 86 e5                                      str r3, [r6]
0066b6d8  08 30 94 e5                                      ldr r3, [r4, #8]
0066b6dc  0c 00 d3 e5                                      ldrb r0, [r3, #0xc]
0066b6e0  14 d0 8d e2                                      add sp, sp, #0x14
0066b6e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066b6e8  08 10 a0 e1                                      mov r1, r8
0066b6ec  e4 f9 ff eb                                      bl #0x669e84
0066b6f0  03 00 50 e3                                      cmp r0, #3
0066b6f4  3c 00 00 0a                                      beq #0x66b7ec
0066b6f8  04 00 50 e3                                      cmp r0, #4
0066b6fc  18 00 00 0a                                      beq #0x66b764
0066b700  01 00 50 e3                                      cmp r0, #1
0066b704  08 00 a0 11                                      movne r0, r8
0066b708  f4 ff ff 1a                                      bne #0x66b6e0
0066b70c  04 00 a0 e1                                      mov r0, r4
0066b710  09 10 a0 e1                                      mov r1, sb
0066b714  0a 20 a0 e1                                      mov r2, sl
0066b718  07 30 a0 e1                                      mov r3, r7
0066b71c  38 60 8d e5                                      str r6, [sp, #0x38]
0066b720  3c 50 8d e5                                      str r5, [sp, #0x3c]
0066b724  40 b0 8d e5                                      str fp, [sp, #0x40]
0066b728  14 d0 8d e2                                      add sp, sp, #0x14
0066b72c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066b730  df fc ff ea                                      b #0x66aab4
0066b734  08 80 94 e5                                      ldr r8, [r4, #8]
0066b738  09 10 a0 e1                                      mov r1, sb
0066b73c  0a 20 a0 e1                                      mov r2, sl
0066b740  08 c0 88 e2                                      add ip, r8, #8
0066b744  07 30 a0 e1                                      mov r3, r7
0066b748  04 00 a0 e1                                      mov r0, r4
0066b74c  00 c0 8d e5                                      str ip, [sp]
0066b750  00 09 8d e9                                      stmib sp, {r8, fp}
0066b754  d6 fc ff eb                                      bl #0x66aab4
0066b758  0c 00 c8 e5                                      strb r0, [r8, #0xc]
0066b75c  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b760  d7 ff ff ea                                      b #0x66b6c4
0066b764  04 00 a0 e1                                      mov r0, r4
0066b768  09 10 a0 e1                                      mov r1, sb
0066b76c  0a 20 a0 e1                                      mov r2, sl
0066b770  07 30 a0 e1                                      mov r3, r7
0066b774  38 60 8d e5                                      str r6, [sp, #0x38]
0066b778  3c 50 8d e5                                      str r5, [sp, #0x3c]
0066b77c  40 b0 8d e5                                      str fp, [sp, #0x40]
0066b780  14 d0 8d e2                                      add sp, sp, #0x14
0066b784  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066b788  94 fb ff ea                                      b #0x66a5e0
0066b78c  08 80 94 e5                                      ldr r8, [r4, #8]
0066b790  09 10 a0 e1                                      mov r1, sb
0066b794  0a 20 a0 e1                                      mov r2, sl
0066b798  08 c0 88 e2                                      add ip, r8, #8
0066b79c  07 30 a0 e1                                      mov r3, r7
0066b7a0  04 00 a0 e1                                      mov r0, r4
0066b7a4  00 c0 8d e5                                      str ip, [sp]
0066b7a8  00 09 8d e9                                      stmib sp, {r8, fp}
0066b7ac  8b fb ff eb                                      bl #0x66a5e0
0066b7b0  0c 00 c8 e5                                      strb r0, [r8, #0xc]
0066b7b4  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b7b8  c1 ff ff ea                                      b #0x66b6c4
0066b7bc  08 80 94 e5                                      ldr r8, [r4, #8]
0066b7c0  09 10 a0 e1                                      mov r1, sb
0066b7c4  0a 20 a0 e1                                      mov r2, sl
0066b7c8  08 c0 88 e2                                      add ip, r8, #8
0066b7cc  07 30 a0 e1                                      mov r3, r7
0066b7d0  04 00 a0 e1                                      mov r0, r4
0066b7d4  00 c0 8d e5                                      str ip, [sp]
0066b7d8  00 09 8d e9                                      stmib sp, {r8, fp}
0066b7dc  5b ff ff eb                                      bl #0x66b550
0066b7e0  0c 00 c8 e5                                      strb r0, [r8, #0xc]
0066b7e4  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b7e8  b5 ff ff ea                                      b #0x66b6c4
0066b7ec  04 00 a0 e1                                      mov r0, r4
0066b7f0  09 10 a0 e1                                      mov r1, sb
0066b7f4  0a 20 a0 e1                                      mov r2, sl
0066b7f8  07 30 a0 e1                                      mov r3, r7
0066b7fc  38 60 8d e5                                      str r6, [sp, #0x38]
0066b800  3c 50 8d e5                                      str r5, [sp, #0x3c]
0066b804  40 b0 8d e5                                      str fp, [sp, #0x40]
0066b808  14 d0 8d e2                                      add sp, sp, #0x14
0066b80c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066b810  4e ff ff ea                                      b #0x66b550
; Claim: Animation binding compilation traverses channels and virtual track/template callbacks
; Original listing: glitch_collada_CAnimationSet-b1d6a1ba6c69-001.asm:647-900 (1-based inclusive)
; ELF VA=0x00660710, size=996, file offset=0x00660710, bytes SHA-256=ed7763d3a06f2ea24706dc589903fa3477ee8ab302a4c7aa824006d9e8711c2e
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
; Claim: Extra-float CAnimationTrackEx applyValue overload searches key/fraction then dispatches through overload-specific vtable slots
; Original listing: glitch_collada_CAnimationTrackEx-3b337e928626-001.asm:41-93 (1-based inclusive)
; ELF VA=0x006e2a18, size=192, file offset=0x006e2a18, bytes SHA-256=f5bd67c1f56e6fc7cefe6d065222199338c952bae0c5aa2283caf3a4f7eb0039
; FUNCTION 0x006e2a18, declared_size=192, range_size=192, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoERifb
; demangled: glitch::collada::CAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*, int&, float, bool) const
; decoder-mode: arm
006e2a18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e2a1c  18 d0 4d e2                                      sub sp, sp, #0x18
006e2a20  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
006e2a24  00 e0 a0 e3                                      mov lr, #0
006e2a28  18 c0 8d e2                                      add ip, sp, #0x18
006e2a2c  00 70 94 e5                                      ldr r7, [r4]
006e2a30  01 60 a0 e1                                      mov r6, r1
006e2a34  04 e0 2c e5                                      str lr, [ip, #-4]!
006e2a38  00 50 a0 e1                                      mov r5, r0
006e2a3c  03 80 a0 e1                                      mov r8, r3
006e2a40  0e 10 a0 e1                                      mov r1, lr
006e2a44  0c 30 a0 e1                                      mov r3, ip
006e2a48  06 00 a0 e1                                      mov r0, r6
006e2a4c  10 c0 8d e2                                      add ip, sp, #0x10
006e2a50  04 70 8d e5                                      str r7, [sp, #4]
006e2a54  00 c0 8d e5                                      str ip, [sp]
006e2a58  44 70 dd e5                                      ldrb r7, [sp, #0x44]
006e2a5c  38 a0 9d e5                                      ldr sl, [sp, #0x38]
006e2a60  40 90 9d e5                                      ldr sb, [sp, #0x40]
006e2a64  6a 23 fe eb                                      bl #0x66b814
006e2a68  07 00 10 e1                                      tst r0, r7
006e2a6c  0c 00 00 1a                                      bne #0x6e2aa4
006e2a70  00 a0 8d e5                                      str sl, [sp]
006e2a74  04 90 8d e5                                      str sb, [sp, #4]
006e2a78  05 00 a0 e1                                      mov r0, r5
006e2a7c  06 10 a0 e1                                      mov r1, r6
006e2a80  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2a84  08 30 a0 e1                                      mov r3, r8
006e2a88  00 c0 95 e5                                      ldr ip, [r5]
006e2a8c  0f e0 a0 e1                                      mov lr, pc
006e2a90  5c f0 9c e5                                      ldr pc, [ip, #0x5c]
006e2a94  14 30 9d e5                                      ldr r3, [sp, #0x14]
006e2a98  00 30 84 e5                                      str r3, [r4]
006e2a9c  18 d0 8d e2                                      add sp, sp, #0x18
006e2aa0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006e2aa4  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e2aa8  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2aac  04 80 8d e5                                      str r8, [sp, #4]
006e2ab0  00 30 8d e5                                      str r3, [sp]
006e2ab4  08 a0 8d e5                                      str sl, [sp, #8]
006e2ab8  0c 90 8d e5                                      str sb, [sp, #0xc]
006e2abc  05 00 a0 e1                                      mov r0, r5
006e2ac0  06 10 a0 e1                                      mov r1, r6
006e2ac4  00 c0 95 e5                                      ldr ip, [r5]
006e2ac8  01 30 82 e2                                      add r3, r2, #1
006e2acc  0f e0 a0 e1                                      mov lr, pc
006e2ad0  58 f0 9c e5                                      ldr pc, [ip, #0x58]
006e2ad4  ee ff ff ea                                      b #0x6e2a94
; Claim: Scene-node target template creates entries for channel types 1, 5, 10
; Original listing: glitch_collada_CAnimationSetTransformationTemplate-1c978bae381c-001.asm:196-289 (1-based inclusive)
; ELF VA=0x006e24e8, size=356, file offset=0x006e24e8, bytes SHA-256=bec0370ef100c586fe9eb1d8086763405307432a38044af39d6c216bf3213b08
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
; Claim: Default-value target lookup remains channel keyed and void-pointer based
; Original listing: glitch_collada_CAnimationSetTransformationTemplate-1c978bae381c-001.asm:165-194 (1-based inclusive)
; ELF VA=0x006e23d0, size=100, file offset=0x006e23d0, bytes SHA-256=c68d29207cd3d93be504016e0504dfba31b5f5e3d8e36af5c59184bd49e916b4
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
; Claim: One scalar-float material-parameter specialization direct-key path
; Original listing: glitch_collada_animation_track_CApplyValueEx_float_glitch_collada_animation_track_CMixin_f-84be5729e817-001.asm:46-67 (1-based inclusive)
; ELF VA=0x0061d3d0, size=68, file offset=0x0061d3d0, bytes SHA-256=e3a9a58ceef362630c150916af5f5460c4055e368bd7598b6477f72bb945ef62
; FUNCTION 0x0061d3d0, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0061d3d0  70 40 2d e9                                      push {r4, r5, r6, lr}
0061d3d4  01 40 a0 e1                                      mov r4, r1
0061d3d8  08 d0 4d e2                                      sub sp, sp, #8
0061d3dc  00 10 a0 e3                                      mov r1, #0
0061d3e0  02 50 a0 e1                                      mov r5, r2
0061d3e4  03 60 a0 e1                                      mov r6, r3
0061d3e8  8d 32 01 eb                                      bl #0x669e24
0061d3ec  04 20 90 e5                                      ldr r2, [r0, #4]
0061d3f0  08 30 8d e2                                      add r3, sp, #8
0061d3f4  b8 10 d6 e1                                      ldrh r1, [r6, #8]
0061d3f8  04 c1 92 e7                                      ldr ip, [r2, r4, lsl #2]
0061d3fc  05 00 a0 e1                                      mov r0, r5
0061d400  00 20 a0 e3                                      mov r2, #0
0061d404  04 c0 23 e5                                      str ip, [r3, #-4]!
0061d408  df a5 fe eb                                      bl #0x5c6b8c
0061d40c  08 d0 8d e2                                      add sp, sp, #8
0061d410  70 80 bd e8                                      pop {r4, r5, r6, pc}
; Claim: One scalar-float default-lerp interpreter specialization
; Original listing: glitch_collada_animation_track_CInterpreter_glitch_collada_animation_track_CMixin_float_1_-77f8dfcf7eec-001.asm:33-67 (1-based inclusive)
; ELF VA=0x0062020c, size=120, file offset=0x0062020c, bytes SHA-256=2e96a393ce092edb8410f6103fd8610e37580a5dba72faf78c8d7677bf5b96ea
; FUNCTION 0x0062020c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float>, float, 1, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEfLi1ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float>, float, 1, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0062020c  70 40 2d e9                                      push {r4, r5, r6, lr}
00620210  01 50 a0 e1                                      mov r5, r1
00620214  08 d0 4d e2                                      sub sp, sp, #8
00620218  00 10 a0 e3                                      mov r1, #0
0062021c  03 40 a0 e1                                      mov r4, r3
00620220  ff 26 01 eb                                      bl #0x669e24
00620224  04 10 a0 e1                                      mov r1, r4
00620228  00 60 a0 e1                                      mov r6, r0
0062022c  fe 05 a0 e3                                      mov r0, #0x3f800000
00620230  5d b8 f3 eb                                      bl #0x30e3ac
00620234  04 40 8d e5                                      str r4, [sp, #4]
00620238  00 00 8d e5                                      str r0, [sp]
0062023c  04 30 96 e5                                      ldr r3, [r6, #4]
00620240  00 10 a0 e1                                      mov r1, r0
00620244  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00620248  05 51 83 e0                                      add r5, r3, r5, lsl #2
0062024c  c6 ba f3 eb                                      bl #0x30ed6c
00620250  00 10 a0 e3                                      mov r1, #0
00620254  52 ba f3 eb                                      bl #0x30eba4
00620258  04 10 95 e5                                      ldr r1, [r5, #4]
0062025c  00 60 a0 e1                                      mov r6, r0
00620260  04 00 a0 e1                                      mov r0, r4
00620264  c0 ba f3 eb                                      bl #0x30ed6c
00620268  00 10 a0 e1                                      mov r1, r0
0062026c  06 00 a0 e1                                      mov r0, r6
00620270  4b ba f3 eb                                      bl #0x30eba4
00620274  18 30 9d e5                                      ldr r3, [sp, #0x18]
00620278  00 00 83 e5                                      str r0, [r3]
0062027c  08 d0 8d e2                                      add sp, sp, #8
00620280  70 80 bd e8                                      pop {r4, r5, r6, pc}
; Claim: One three-float scale-mixin interpreter path
; Original listing: glitch_collada_animation_track_CInterpreter_glitch_collada_animation_track_CSceneNodeScale-e2c50c5c1681-001.asm:5-40 (1-based inclusive)
; ELF VA=0x0061242c, size=124, file offset=0x0061242c, bytes SHA-256=d9a77afc740491dbf235c0c72342effcbd2f22e2054f1fb0430fae18ee336a1f
; FUNCTION 0x0061242c, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_20CSceneNodeScaleMixinIfEEfLi3ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061242c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00612430  01 40 a0 e1                                      mov r4, r1
00612434  00 10 a0 e3                                      mov r1, #0
00612438  03 70 a0 e1                                      mov r7, r3
0061243c  02 50 a0 e1                                      mov r5, r2
00612440  20 90 9d e5                                      ldr sb, [sp, #0x20]
00612444  24 a0 9d e5                                      ldr sl, [sp, #0x24]
00612448  75 5e 01 eb                                      bl #0x669e24
0061244c  04 30 90 e5                                      ldr r3, [r0, #4]
00612450  0c 80 a0 e3                                      mov r8, #0xc
00612454  00 60 a0 e3                                      mov r6, #0
00612458  98 34 24 e0                                      mla r4, r8, r4, r3
0061245c  98 35 25 e0                                      mla r5, r8, r5, r3
00612460  98 37 28 e0                                      mla r8, r8, r7, r3
00612464  06 70 95 e7                                      ldr r7, [r5, r6]
00612468  06 00 98 e7                                      ldr r0, [r8, r6]
0061246c  07 10 a0 e1                                      mov r1, r7
00612470  cd ef f3 eb                                      bl #0x30e3ac
00612474  00 10 a0 e1                                      mov r1, r0
00612478  09 00 a0 e1                                      mov r0, sb
0061247c  3a f2 f3 eb                                      bl #0x30ed6c
00612480  00 10 a0 e1                                      mov r1, r0
00612484  07 00 a0 e1                                      mov r0, r7
00612488  c5 f1 f3 eb                                      bl #0x30eba4
0061248c  06 10 94 e7                                      ldr r1, [r4, r6]
00612490  c5 ef f3 eb                                      bl #0x30e3ac
00612494  06 00 8a e7                                      str r0, [sl, r6]
00612498  04 60 86 e2                                      add r6, r6, #4
0061249c  0c 00 56 e3                                      cmp r6, #0xc
006124a0  ef ff ff 1a                                      bne #0x612464
006124a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; Claim: One three-float scale-mixin interpolated path
; Original listing: glitch_collada_animation_track_CInterpreter_glitch_collada_animation_track_CSceneNodeScale-e2c50c5c1681-001.asm:42-110 (1-based inclusive)
; ELF VA=0x00628850, size=256, file offset=0x00628850, bytes SHA-256=6337fc51cd454293f3c78e0f932d498624fd4c2a3645c1418f785121b88a0b1c
; FUNCTION 0x00628850, declared_size=256, range_size=256, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_20CSceneNodeScaleMixinIfEEfLi3ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00628850  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00628854  01 70 a0 e1                                      mov r7, r1
00628858  08 d0 4d e2                                      sub sp, sp, #8
0062885c  00 10 a0 e3                                      mov r1, #0
00628860  03 40 a0 e1                                      mov r4, r3
00628864  28 60 9d e5                                      ldr r6, [sp, #0x28]
00628868  6d 05 01 eb                                      bl #0x669e24
0062886c  04 10 a0 e1                                      mov r1, r4
00628870  00 80 a0 e1                                      mov r8, r0
00628874  fe 05 a0 e3                                      mov r0, #0x3f800000
00628878  cb 96 f3 eb                                      bl #0x30e3ac
0062887c  04 40 8d e5                                      str r4, [sp, #4]
00628880  00 00 8d e5                                      str r0, [sp]
00628884  0c 30 a0 e3                                      mov r3, #0xc
00628888  93 07 07 e0                                      mul r7, r3, r7
0062888c  04 30 98 e5                                      ldr r3, [r8, #4]
00628890  00 50 a0 e1                                      mov r5, r0
00628894  07 10 93 e7                                      ldr r1, [r3, r7]
00628898  07 70 83 e0                                      add r7, r3, r7
0062889c  32 99 f3 eb                                      bl #0x30ed6c
006288a0  00 10 a0 e3                                      mov r1, #0
006288a4  be 98 f3 eb                                      bl #0x30eba4
006288a8  04 10 97 e5                                      ldr r1, [r7, #4]
006288ac  00 80 a0 e1                                      mov r8, r0
006288b0  05 00 a0 e1                                      mov r0, r5
006288b4  2c 99 f3 eb                                      bl #0x30ed6c
006288b8  00 10 a0 e3                                      mov r1, #0
006288bc  b8 98 f3 eb                                      bl #0x30eba4
006288c0  04 70 87 e2                                      add r7, r7, #4
006288c4  04 10 97 e5                                      ldr r1, [r7, #4]
006288c8  00 a0 a0 e1                                      mov sl, r0
006288cc  05 00 a0 e1                                      mov r0, r5
006288d0  25 99 f3 eb                                      bl #0x30ed6c
006288d4  00 10 a0 e3                                      mov r1, #0
006288d8  b1 98 f3 eb                                      bl #0x30eba4
006288dc  04 50 87 e2                                      add r5, r7, #4
006288e0  04 90 85 e2                                      add sb, r5, #4
006288e4  04 10 99 e5                                      ldr r1, [sb, #4]
006288e8  00 70 a0 e1                                      mov r7, r0
006288ec  04 00 a0 e1                                      mov r0, r4
006288f0  1d 99 f3 eb                                      bl #0x30ed6c
006288f4  00 10 a0 e1                                      mov r1, r0
006288f8  0a 00 a0 e1                                      mov r0, sl
006288fc  a8 98 f3 eb                                      bl #0x30eba4
00628900  04 90 89 e2                                      add sb, sb, #4
00628904  04 10 99 e5                                      ldr r1, [sb, #4]
00628908  00 a0 a0 e1                                      mov sl, r0
0062890c  04 00 a0 e1                                      mov r0, r4
00628910  15 99 f3 eb                                      bl #0x30ed6c
00628914  07 10 a0 e1                                      mov r1, r7
00628918  a1 98 f3 eb                                      bl #0x30eba4
0062891c  04 10 95 e5                                      ldr r1, [r5, #4]
00628920  00 70 a0 e1                                      mov r7, r0
00628924  04 00 a0 e1                                      mov r0, r4
00628928  0f 99 f3 eb                                      bl #0x30ed6c
0062892c  00 10 a0 e1                                      mov r1, r0
00628930  08 00 a0 e1                                      mov r0, r8
00628934  9a 98 f3 eb                                      bl #0x30eba4
00628938  06 30 a0 e1                                      mov r3, r6
0062893c  04 00 83 e4                                      str r0, [r3], #4
00628940  04 a0 86 e5                                      str sl, [r6, #4]
00628944  04 70 83 e5                                      str r7, [r3, #4]
00628948  08 d0 8d e2                                      add sp, sp, #8
0062894c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; Claim: Separate AnimationSet cache-candidate search
; Original listing: AnimationSet-bd1cc53c51c7-001.asm:54-119 (1-based inclusive)
; ELF VA=0x003649e0, size=244, file offset=0x003649e0, bytes SHA-256=b6eafc6d9778e714a362b2c729ac6d4592742f21b8d3ff4555e82bc899a783e2
; FUNCTION 0x003649e0, declared_size=244, range_size=244, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet19_FindCacheCandidateEv
; demangled: AnimationSet::_FindCacheCandidate()
; decoder-mode: arm
003649e0  f0 00 2d e9                                      push {r4, r5, r6, r7}
003649e4  10 20 90 e5                                      ldr r2, [r0, #0x10]
003649e8  08 40 80 e2                                      add r4, r0, #8
003649ec  00 60 e0 e3                                      mvn r6, #0
003649f0  02 00 54 e1                                      cmp r4, r2
003649f4  40 00 92 e5                                      ldr r0, [r2, #0x40]
003649f8  3c 10 92 e5                                      ldr r1, [r2, #0x3c]
003649fc  06 50 a0 e1                                      mov r5, r6
00364a00  0f 00 00 0a                                      beq #0x364a44
00364a04  38 30 92 e5                                      ldr r3, [r2, #0x38]
00364a08  00 00 53 e3                                      cmp r3, #0
00364a0c  11 00 00 da                                      ble #0x364a58
00364a10  01 c0 a0 e1                                      mov ip, r1
00364a14  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00364a18  00 00 51 e3                                      cmp r1, #0
00364a1c  18 00 00 0a                                      beq #0x364a84
00364a20  01 20 a0 e1                                      mov r2, r1
00364a24  00 00 00 ea                                      b #0x364a2c
00364a28  03 20 a0 e1                                      mov r2, r3
00364a2c  08 30 92 e5                                      ldr r3, [r2, #8]
00364a30  00 00 53 e3                                      cmp r3, #0
00364a34  fb ff ff 1a                                      bne #0x364a28
00364a38  0c 10 a0 e1                                      mov r1, ip
00364a3c  02 00 54 e1                                      cmp r4, r2
00364a40  ef ff ff 1a                                      bne #0x364a04
00364a44  01 00 76 e3                                      cmn r6, #1
00364a48  06 00 a0 11                                      movne r0, r6
00364a4c  05 00 a0 01                                      moveq r0, r5
00364a50  f0 00 bd e8                                      pop {r4, r5, r6, r7}
00364a54  1e ff 2f e1                                      bx lr
00364a58  40 30 92 e5                                      ldr r3, [r2, #0x40]
00364a5c  01 00 75 e3                                      cmn r5, #1
00364a60  10 50 92 05                                      ldreq r5, [r2, #0x10]
00364a64  00 00 53 e1                                      cmp r3, r0
00364a68  13 00 00 2a                                      bhs #0x364abc
00364a6c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00364a70  03 00 a0 e1                                      mov r0, r3
00364a74  3c c0 92 e5                                      ldr ip, [r2, #0x3c]
00364a78  00 00 51 e3                                      cmp r1, #0
00364a7c  10 60 92 e5                                      ldr r6, [r2, #0x10]
00364a80  e6 ff ff 1a                                      bne #0x364a20
00364a84  04 30 92 e5                                      ldr r3, [r2, #4]
00364a88  0c 70 93 e5                                      ldr r7, [r3, #0xc]
00364a8c  07 00 52 e1                                      cmp r2, r7
00364a90  05 00 00 1a                                      bne #0x364aac
00364a94  03 20 a0 e1                                      mov r2, r3
00364a98  04 30 93 e5                                      ldr r3, [r3, #4]
00364a9c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00364aa0  02 00 51 e1                                      cmp r1, r2
00364aa4  fa ff ff 0a                                      beq #0x364a94
00364aa8  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00364aac  01 00 53 e1                                      cmp r3, r1
00364ab0  03 20 a0 11                                      movne r2, r3
00364ab4  0c 10 a0 e1                                      mov r1, ip
00364ab8  df ff ff ea                                      b #0x364a3c
00364abc  d3 ff ff 1a                                      bne #0x364a10
00364ac0  3c c0 92 e5                                      ldr ip, [r2, #0x3c]
00364ac4  0c 00 51 e1                                      cmp r1, ip
00364ac8  10 60 92 85                                      ldrhi r6, [r2, #0x10]
00364acc  d0 ff ff 8a                                      bhi #0x364a14
00364ad0  ce ff ff ea                                      b #0x364a10
; Claim: Separate AnimationSet lookup by set index
; Original listing: AnimationSet-bd1cc53c51c7-001.asm:162-209 (1-based inclusive)
; ELF VA=0x00364bf4, size=172, file offset=0x00364bf4, bytes SHA-256=e916052b6ff41150901e3a0ca780773b3c7c52cdd208cf38cf5d7ed5daa68cf5
; FUNCTION 0x00364bf4, declared_size=172, range_size=172, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet22GetAnimationBySetIndexEi
; demangled: AnimationSet::GetAnimationBySetIndex(int)
; decoder-mode: arm
00364bf4  70 40 2d e9                                      push {r4, r5, r6, lr}
00364bf8  98 30 9f e5                                      ldr r3, [pc, #0x98]
00364bfc  10 40 90 e5                                      ldr r4, [r0, #0x10]
00364c00  08 c0 80 e2                                      add ip, r0, #8
00364c04  03 30 8f e0                                      add r3, pc, r3
00364c08  0c 00 54 e1                                      cmp r4, ip
00364c0c  0d 00 00 0a                                      beq #0x364c48
00364c10  34 20 94 e5                                      ldr r2, [r4, #0x34]
00364c14  01 00 52 e1                                      cmp r2, r1
00364c18  1a 00 00 0a                                      beq #0x364c88
00364c1c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00364c20  00 00 50 e3                                      cmp r0, #0
00364c24  01 00 00 1a                                      bne #0x364c30
00364c28  09 00 00 ea                                      b #0x364c54
00364c2c  02 00 a0 e1                                      mov r0, r2
00364c30  08 20 90 e5                                      ldr r2, [r0, #8]
00364c34  00 00 52 e3                                      cmp r2, #0
00364c38  fb ff ff 1a                                      bne #0x364c2c
00364c3c  00 40 a0 e1                                      mov r4, r0
00364c40  0c 00 54 e1                                      cmp r4, ip
00364c44  f1 ff ff 1a                                      bne #0x364c10
00364c48  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00364c4c  02 00 93 e7                                      ldr r0, [r3, r2]
00364c50  70 80 bd e8                                      pop {r4, r5, r6, pc}
00364c54  04 20 94 e5                                      ldr r2, [r4, #4]
00364c58  0c 50 92 e5                                      ldr r5, [r2, #0xc]
00364c5c  05 00 54 e1                                      cmp r4, r5
00364c60  05 00 00 1a                                      bne #0x364c7c
00364c64  02 40 a0 e1                                      mov r4, r2
00364c68  04 20 92 e5                                      ldr r2, [r2, #4]
00364c6c  0c 00 92 e5                                      ldr r0, [r2, #0xc]
00364c70  04 00 50 e1                                      cmp r0, r4
00364c74  fa ff ff 0a                                      beq #0x364c64
00364c78  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00364c7c  02 00 50 e1                                      cmp r0, r2
00364c80  02 40 a0 11                                      movne r4, r2
00364c84  df ff ff ea                                      b #0x364c08
00364c88  0f 99 0a eb                                      bl #0x60b0cc
00364c8c  3c 00 84 e5                                      str r0, [r4, #0x3c]
00364c90  14 00 84 e2                                      add r0, r4, #0x14
00364c94  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00364c98  8c fe 62 00 bc 49 00 00                          .byte 0x8c, 0xfe, 0x62, 0x00, 0xbc, 0x49, 0x00, 0x00
; Claim: CAnimationBlock range cache lookup, distinct from value search
; Original listing: glitch_collada_CAnimationBlock-9f7e5d4e00f6-001.asm:5-40 (1-based inclusive)
; ELF VA=0x0060b350, size=124, file offset=0x0060b350, bytes SHA-256=62183fd6930ee41b2850f84b242466ee89e7b770dd89fe05d5ad46846aad1f91
; FUNCTION 0x0060b350, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::CAnimationBlock
; alias: _ZN6glitch7collada15CAnimationBlock8getBlockERNS0_24SAnimationBlockSearchKeyE
; demangled: glitch::collada::CAnimationBlock::getBlock(glitch::collada::SAnimationBlockSearchKey&)
; decoder-mode: arm
0060b350  00 30 a0 e1                                      mov r3, r0
0060b354  04 20 93 e5                                      ldr r2, [r3, #4]
0060b358  00 00 91 e5                                      ldr r0, [r1]
0060b35c  00 20 52 e2                                      subs r2, r2, #0
0060b360  01 20 a0 13                                      movne r2, #1
0060b364  00 00 50 e2                                      subs r0, r0, #0
0060b368  01 00 a0 13                                      movne r0, #1
0060b36c  02 00 50 e1                                      cmp r0, r2
0060b370  01 00 00 0a                                      beq #0x60b37c
0060b374  00 00 a0 e3                                      mov r0, #0
0060b378  1e ff 2f e1                                      bx lr
0060b37c  08 00 91 e5                                      ldr r0, [r1, #8]
0060b380  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0060b384  02 00 50 e1                                      cmp r0, r2
0060b388  f9 ff ff 1a                                      bne #0x60b374
0060b38c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
0060b390  03 00 a0 e1                                      mov r0, r3
0060b394  10 20 90 e5                                      ldr r2, [r0, #0x10]
0060b398  00 10 92 e5                                      ldr r1, [r2]
0060b39c  0c 00 51 e1                                      cmp r1, ip
0060b3a0  1c 00 90 c5                                      ldrgt r0, [r0, #0x1c]
0060b3a4  03 00 00 ca                                      bgt #0x60b3b8
0060b3a8  04 20 92 e5                                      ldr r2, [r2, #4]
0060b3ac  0c 00 52 e1                                      cmp r2, ip
0060b3b0  1e ff 2f a1                                      bxge lr
0060b3b4  18 00 90 e5                                      ldr r0, [r0, #0x18]
0060b3b8  03 00 50 e1                                      cmp r0, r3
0060b3bc  00 00 50 13                                      cmpne r0, #0
0060b3c0  f3 ff ff 1a                                      bne #0x60b394
0060b3c4  00 00 a0 e3                                      mov r0, #0
0060b3c8  1e ff 2f e1                                      bx lr
