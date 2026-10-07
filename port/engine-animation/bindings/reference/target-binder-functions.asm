; Exact ARM ranges copied from recovered APK ELF listings.
; See target-binder-functions.json for ELF-byte SHA-256, source lines, and PT_LOAD mapping.
; Function bytes, including embedded literal-pool data, were compared with the APK ELF.

; FUNCTION 0x00669538, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::ISceneNodeAnimator
; alias: _ZN6glitch7collada18ISceneNodeAnimator6onBindEPNS_5scene10ISceneNodeE
; demangled: glitch::collada::ISceneNodeAnimator::onBind(glitch::scene::ISceneNode*)
; decoder-mode: arm
00669538  10 40 2d e9                                      push {r4, lr}
0066953c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00669540  00 40 a0 e1                                      mov r4, r0
00669544  01 00 53 e1                                      cmp r3, r1
00669548  05 00 00 0a                                      beq #0x669564
0066954c  10 10 80 e5                                      str r1, [r0, #0x10]
00669550  00 30 90 e5                                      ldr r3, [r0]
00669554  0f e0 a0 e1                                      mov lr, pc
00669558  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0066955c  00 00 50 e3                                      cmp r0, #0
00669560  00 00 00 1a                                      bne #0x669568
00669564  10 80 bd e8                                      pop {r4, pc}
00669568  04 00 a0 e1                                      mov r0, r4
0066956c  10 40 bd e8                                      pop {r4, lr}
00669570  68 fa ff ea                                      b #0x667f18

; FUNCTION 0x00667f18, declared_size=5664, range_size=5664, mode=arm
; class-group: glitch::collada::ISceneNodeAnimator
; alias: _ZN6glitch7collada18ISceneNodeAnimator9forceBindEv
; demangled: glitch::collada::ISceneNodeAnimator::forceBind()
; decoder-mode: arm
00667f18  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00667f1c  10 60 90 e5                                      ldr r6, [r0, #0x10]
00667f20  ec ae 9f e5                                      ldr sl, [pc, #0xeec]
00667f24  24 d0 4d e2                                      sub sp, sp, #0x24
00667f28  00 00 56 e3                                      cmp r6, #0
00667f2c  00 40 a0 e1                                      mov r4, r0
00667f30  0a a0 8f e0                                      add sl, pc, sl
00667f34  aa 00 00 0a                                      beq #0x6681e4
00667f38  00 30 90 e5                                      ldr r3, [r0]
00667f3c  0f e0 a0 e1                                      mov lr, pc
00667f40  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00667f44  00 70 50 e2                                      subs r7, r0, #0
00667f48  a5 00 00 da                                      ble #0x6681e4
00667f4c  c4 3e 9f e5                                      ldr r3, [pc, #0xec4]
00667f50  c4 be 9f e5                                      ldr fp, [pc, #0xec4]
00667f54  00 50 a0 e3                                      mov r5, #0
00667f58  03 30 8f e0                                      add r3, pc, r3
00667f5c  00 30 8d e5                                      str r3, [sp]
00667f60  b8 3e 9f e5                                      ldr r3, [pc, #0xeb8]
00667f64  03 30 8f e0                                      add r3, pc, r3
00667f68  04 30 8d e5                                      str r3, [sp, #4]
00667f6c  b0 3e 9f e5                                      ldr r3, [pc, #0xeb0]
00667f70  03 30 8f e0                                      add r3, pc, r3
00667f74  08 30 8d e5                                      str r3, [sp, #8]
00667f78  a8 3e 9f e5                                      ldr r3, [pc, #0xea8]
00667f7c  03 30 8f e0                                      add r3, pc, r3
00667f80  0c 30 8d e5                                      str r3, [sp, #0xc]
00667f84  05 10 a0 e1                                      mov r1, r5
00667f88  00 30 94 e5                                      ldr r3, [r4]
00667f8c  04 00 a0 e1                                      mov r0, r4
00667f90  0f e0 a0 e1                                      mov lr, pc
00667f94  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00667f98  00 30 94 e5                                      ldr r3, [r4]
00667f9c  00 90 a0 e1                                      mov sb, r0
00667fa0  05 10 a0 e1                                      mov r1, r5
00667fa4  04 00 a0 e1                                      mov r0, r4
00667fa8  0f e0 a0 e1                                      mov lr, pc
00667fac  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00667fb0  08 30 90 e5                                      ldr r3, [r0, #8]
00667fb4  01 30 43 e2                                      sub r3, r3, #1
00667fb8  5a 00 53 e3                                      cmp r3, #0x5a
00667fbc  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00667fc0  89 00 00 ea                                      b #0x6681ec
00667fc4  90 00 00 ea                                      b #0x66820c
00667fc8  8f 00 00 ea                                      b #0x66820c
00667fcc  8e 00 00 ea                                      b #0x66820c
00667fd0  8d 00 00 ea                                      b #0x66820c
00667fd4  8c 00 00 ea                                      b #0x66820c
00667fd8  83 00 00 ea                                      b #0x6681ec
00667fdc  82 00 00 ea                                      b #0x6681ec
00667fe0  81 00 00 ea                                      b #0x6681ec
00667fe4  88 00 00 ea                                      b #0x66820c
00667fe8  87 00 00 ea                                      b #0x66820c
00667fec  86 00 00 ea                                      b #0x66820c
00667ff0  85 00 00 ea                                      b #0x66820c
00667ff4  84 00 00 ea                                      b #0x66820c
00667ff8  96 00 00 ea                                      b #0x668258
00667ffc  aa 00 00 ea                                      b #0x6682ac
00668000  b1 00 00 ea                                      b #0x6682cc
00668004  78 00 00 ea                                      b #0x6681ec
00668008  77 00 00 ea                                      b #0x6681ec
0066800c  76 00 00 ea                                      b #0x6681ec
00668010  7d 00 00 ea                                      b #0x66820c
00668014  74 00 00 ea                                      b #0x6681ec
00668018  73 00 00 ea                                      b #0x6681ec
0066801c  72 00 00 ea                                      b #0x6681ec
00668020  71 00 00 ea                                      b #0x6681ec
00668024  70 00 00 ea                                      b #0x6681ec
00668028  b7 00 00 ea                                      b #0x66830c
0066802c  6e 00 00 ea                                      b #0x6681ec
00668030  c7 00 00 ea                                      b #0x668354
00668034  d8 00 00 ea                                      b #0x66839c
00668038  e9 00 00 ea                                      b #0x6683e4
0066803c  fa 00 00 ea                                      b #0x66842c
00668040  0b 01 00 ea                                      b #0x668474
00668044  1c 01 00 ea                                      b #0x6684bc
00668048  2d 01 00 ea                                      b #0x668504
0066804c  3e 01 00 ea                                      b #0x66854c
00668050  4f 01 00 ea                                      b #0x668594
00668054  60 01 00 ea                                      b #0x6685dc
00668058  71 01 00 ea                                      b #0x668624
0066805c  82 01 00 ea                                      b #0x66866c
00668060  93 01 00 ea                                      b #0x6686b4
00668064  a4 01 00 ea                                      b #0x6686fc
00668068  b5 01 00 ea                                      b #0x668744
0066806c  c6 01 00 ea                                      b #0x66878c
00668070  d7 01 00 ea                                      b #0x6687d4
00668074  e8 01 00 ea                                      b #0x66881c
00668078  f9 01 00 ea                                      b #0x668864
0066807c  0a 02 00 ea                                      b #0x6688ac
00668080  1b 02 00 ea                                      b #0x6688f4
00668084  2c 02 00 ea                                      b #0x66893c
00668088  3d 02 00 ea                                      b #0x668984
0066808c  4e 02 00 ea                                      b #0x6689cc
00668090  5f 02 00 ea                                      b #0x668a14
00668094  70 02 00 ea                                      b #0x668a5c
00668098  83 02 00 ea                                      b #0x668aac
0066809c  94 02 00 ea                                      b #0x668af4
006680a0  a5 02 00 ea                                      b #0x668b3c
006680a4  b8 02 00 ea                                      b #0x668b8c
006680a8  c9 02 00 ea                                      b #0x668bd4
006680ac  da 02 00 ea                                      b #0x668c1c
006680b0  eb 02 00 ea                                      b #0x668c64
006680b4  fc 02 00 ea                                      b #0x668cac
006680b8  0d 03 00 ea                                      b #0x668cf4
006680bc  1e 03 00 ea                                      b #0x668d3c
006680c0  2f 03 00 ea                                      b #0x668d84
006680c4  40 03 00 ea                                      b #0x668dcc
006680c8  7f 03 00 ea                                      b #0x668ecc
006680cc  92 03 00 ea                                      b #0x668f1c
006680d0  a3 03 00 ea                                      b #0x668f64
006680d4  b4 03 00 ea                                      b #0x668fac
006680d8  c4 03 00 ea                                      b #0x668ff0
006680dc  42 00 00 ea                                      b #0x6681ec
006680e0  41 00 00 ea                                      b #0x6681ec
006680e4  40 00 00 ea                                      b #0x6681ec
006680e8  3f 00 00 ea                                      b #0x6681ec
006680ec  3e 00 00 ea                                      b #0x6681ec
006680f0  3d 00 00 ea                                      b #0x6681ec
006680f4  3c 00 00 ea                                      b #0x6681ec
006680f8  3b 00 00 ea                                      b #0x6681ec
006680fc  3a 00 00 ea                                      b #0x6681ec
00668100  39 00 00 ea                                      b #0x6681ec
00668104  38 00 00 ea                                      b #0x6681ec
00668108  37 00 00 ea                                      b #0x6681ec
0066810c  36 00 00 ea                                      b #0x6681ec
00668110  35 00 00 ea                                      b #0x6681ec
00668114  34 00 00 ea                                      b #0x6681ec
00668118  04 00 00 ea                                      b #0x668130
0066811c  03 00 00 ea                                      b #0x668130
00668120  02 00 00 ea                                      b #0x668130
00668124  01 00 00 ea                                      b #0x668130
00668128  00 00 00 ea                                      b #0x668130
0066812c  ff ff ff ea                                      b #0x668130
00668130  1c 80 8d e2                                      add r8, sp, #0x1c
00668134  09 20 a0 e1                                      mov r2, sb
00668138  08 00 a0 e1                                      mov r0, r8
0066813c  06 10 a0 e1                                      mov r1, r6
00668140  00 30 a0 e3                                      mov r3, #0
00668144  39 d2 ff eb                                      bl #0x65ca30
00668148  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0066814c  00 00 52 e3                                      cmp r2, #0
00668150  d3 04 00 0a                                      beq #0x6694a4
00668154  05 10 a0 e1                                      mov r1, r5
00668158  00 30 94 e5                                      ldr r3, [r4]
0066815c  04 00 a0 e1                                      mov r0, r4
00668160  0f e0 a0 e1                                      mov lr, pc
00668164  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00668168  bc 3c 9f e5                                      ldr r3, [pc, #0xcbc]
0066816c  00 20 a0 e3                                      mov r2, #0
00668170  00 10 e0 e3                                      mvn r1, #0
00668174  03 30 9a e7                                      ldr r3, [sl, r3]
00668178  14 20 8d e5                                      str r2, [sp, #0x14]
0066817c  18 10 8d e5                                      str r1, [sp, #0x18]
00668180  08 30 83 e2                                      add r3, r3, #8
00668184  10 30 8d e5                                      str r3, [sp, #0x10]
00668188  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0066818c  14 30 8d e5                                      str r3, [sp, #0x14]
00668190  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00668194  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00668198  04 00 93 e5                                      ldr r0, [r3, #4]
0066819c  ba ab fd eb                                      bl #0x5d308c
006681a0  18 00 8d e5                                      str r0, [sp, #0x18]
006681a4  10 30 8d e2                                      add r3, sp, #0x10
006681a8  04 00 a0 e1                                      mov r0, r4
006681ac  00 c0 94 e5                                      ldr ip, [r4]
006681b0  05 10 a0 e1                                      mov r1, r5
006681b4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006681b8  0f e0 a0 e1                                      mov lr, pc
006681bc  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006681c0  68 3c 9f e5                                      ldr r3, [pc, #0xc68]
006681c4  08 00 a0 e1                                      mov r0, r8
006681c8  03 30 9a e7                                      ldr r3, [sl, r3]
006681cc  08 30 83 e2                                      add r3, r3, #8
006681d0  10 30 8d e5                                      str r3, [sp, #0x10]
006681d4  83 a2 f2 eb                                      bl #0x310be8
006681d8  01 50 85 e2                                      add r5, r5, #1
006681dc  07 00 55 e1                                      cmp r5, r7
006681e0  67 ff ff 1a                                      bne #0x667f84
006681e4  24 d0 8d e2                                      add sp, sp, #0x24
006681e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006681ec  00 20 a0 e3                                      mov r2, #0
006681f0  00 c0 94 e5                                      ldr ip, [r4]
006681f4  04 00 a0 e1                                      mov r0, r4
006681f8  05 10 a0 e1                                      mov r1, r5
006681fc  02 30 a0 e1                                      mov r3, r2
00668200  0f e0 a0 e1                                      mov lr, pc
00668204  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00668208  f2 ff ff ea                                      b #0x6681d8
0066820c  09 10 a0 e1                                      mov r1, sb
00668210  06 00 a0 e1                                      mov r0, r6
00668214  f2 c0 fc eb                                      bl #0x5985e4
00668218  00 80 a0 e1                                      mov r8, r0
0066821c  00 c0 94 e5                                      ldr ip, [r4]
00668220  04 00 a0 e1                                      mov r0, r4
00668224  05 10 a0 e1                                      mov r1, r5
00668228  08 20 a0 e1                                      mov r2, r8
0066822c  00 30 a0 e3                                      mov r3, #0
00668230  0f e0 a0 e1                                      mov lr, pc
00668234  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00668238  00 00 58 e3                                      cmp r8, #0
0066823c  e5 ff ff 0a                                      beq #0x6681d8
00668240  08 00 a0 e1                                      mov r0, r8
00668244  00 30 98 e5                                      ldr r3, [r8]
00668248  04 10 a0 e1                                      mov r1, r4
0066824c  0f e0 a0 e1                                      mov lr, pc
00668250  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00668254  df ff ff ea                                      b #0x6681d8
00668258  09 10 a0 e1                                      mov r1, sb
0066825c  06 00 a0 e1                                      mov r0, r6
00668260  d2 cc ff eb                                      bl #0x65b5b0
00668264  00 80 50 e2                                      subs r8, r0, #0
00668268  85 04 00 0a                                      beq #0x669484
0066826c  05 10 a0 e1                                      mov r1, r5
00668270  00 30 94 e5                                      ldr r3, [r4]
00668274  04 00 a0 e1                                      mov r0, r4
00668278  0f e0 a0 e1                                      mov lr, pc
0066827c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00668280  24 30 98 e5                                      ldr r3, [r8, #0x24]
00668284  0c 20 d0 e5                                      ldrb r2, [r0, #0xc]
00668288  00 c0 94 e5                                      ldr ip, [r4]
0066828c  04 00 a0 e1                                      mov r0, r4
00668290  82 21 83 e0                                      add r2, r3, r2, lsl #3
00668294  0c 20 82 e2                                      add r2, r2, #0xc
00668298  05 10 a0 e1                                      mov r1, r5
0066829c  00 30 a0 e3                                      mov r3, #0
006682a0  0f e0 a0 e1                                      mov lr, pc
006682a4  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006682a8  ca ff ff ea                                      b #0x6681d8
006682ac  00 c0 94 e5                                      ldr ip, [r4]
006682b0  04 00 a0 e1                                      mov r0, r4
006682b4  05 10 a0 e1                                      mov r1, r5
006682b8  06 20 a0 e1                                      mov r2, r6
006682bc  00 30 a0 e3                                      mov r3, #0
006682c0  0f e0 a0 e1                                      mov lr, pc
006682c4  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006682c8  c2 ff ff ea                                      b #0x6681d8
006682cc  09 10 a0 e1                                      mov r1, sb
006682d0  06 00 a0 e1                                      mov r0, r6
006682d4  c6 cc ff eb                                      bl #0x65b5f4
006682d8  00 20 50 e2                                      subs r2, r0, #0
006682dc  00 c0 94 05                                      ldreq ip, [r4]
006682e0  04 00 a0 01                                      moveq r0, r4
006682e4  05 10 a0 01                                      moveq r1, r5
006682e8  02 30 a0 01                                      moveq r3, r2
006682ec  34 21 92 15                                      ldrne r2, [r2, #0x134]
006682f0  00 c0 94 15                                      ldrne ip, [r4]
006682f4  04 00 a0 11                                      movne r0, r4
006682f8  05 10 a0 11                                      movne r1, r5
006682fc  00 30 a0 13                                      movne r3, #0
00668300  0f e0 a0 e1                                      mov lr, pc
00668304  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00668308  b2 ff ff ea                                      b #0x6681d8
0066830c  1c 80 8d e2                                      add r8, sp, #0x1c
00668310  00 30 a0 e3                                      mov r3, #0
00668314  09 20 a0 e1                                      mov r2, sb
00668318  08 00 a0 e1                                      mov r0, r8
0066831c  06 10 a0 e1                                      mov r1, r6
00668320  c2 d1 ff eb                                      bl #0x65ca30
00668324  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00668328  04 00 a0 e1                                      mov r0, r4
0066832c  00 c0 94 e5                                      ldr ip, [r4]
00668330  00 00 52 e3                                      cmp r2, #0
00668334  05 10 a0 e1                                      mov r1, r5
00668338  02 30 a0 01                                      moveq r3, r2
0066833c  00 30 a0 13                                      movne r3, #0
00668340  0f e0 a0 e1                                      mov lr, pc
00668344  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00668348  08 00 a0 e1                                      mov r0, r8
0066834c  25 a2 f2 eb                                      bl #0x310be8
00668350  a0 ff ff ea                                      b #0x6681d8
00668354  09 10 a0 e1                                      mov r1, sb
00668358  06 00 a0 e1                                      mov r0, r6
0066835c  60 cc ff eb                                      bl #0x65b4e4
00668360  00 20 50 e2                                      subs r2, r0, #0
00668364  3f 04 00 0a                                      beq #0x669468
00668368  c4 1a 9f e5                                      ldr r1, [pc, #0xac4]
0066836c  00 c0 94 e5                                      ldr ip, [r4]
00668370  00 30 92 e5                                      ldr r3, [r2]
00668374  01 10 8f e0                                      add r1, pc, r1
00668378  68 80 9c e5                                      ldr r8, [ip, #0x68]
0066837c  0f e0 a0 e1                                      mov lr, pc
00668380  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668384  05 10 a0 e1                                      mov r1, r5
00668388  00 20 a0 e1                                      mov r2, r0
0066838c  00 30 a0 e3                                      mov r3, #0
00668390  04 00 a0 e1                                      mov r0, r4
00668394  38 ff 2f e1                                      blx r8
00668398  8e ff ff ea                                      b #0x6681d8
0066839c  09 10 a0 e1                                      mov r1, sb
006683a0  06 00 a0 e1                                      mov r0, r6
006683a4  4e cc ff eb                                      bl #0x65b4e4
006683a8  00 20 50 e2                                      subs r2, r0, #0
006683ac  26 04 00 0a                                      beq #0x66944c
006683b0  80 1a 9f e5                                      ldr r1, [pc, #0xa80]
006683b4  00 c0 94 e5                                      ldr ip, [r4]
006683b8  00 30 92 e5                                      ldr r3, [r2]
006683bc  01 10 8f e0                                      add r1, pc, r1
006683c0  68 80 9c e5                                      ldr r8, [ip, #0x68]
006683c4  0f e0 a0 e1                                      mov lr, pc
006683c8  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
006683cc  05 10 a0 e1                                      mov r1, r5
006683d0  00 20 a0 e1                                      mov r2, r0
006683d4  00 30 a0 e3                                      mov r3, #0
006683d8  04 00 a0 e1                                      mov r0, r4
006683dc  38 ff 2f e1                                      blx r8
006683e0  7c ff ff ea                                      b #0x6681d8
006683e4  09 10 a0 e1                                      mov r1, sb
006683e8  06 00 a0 e1                                      mov r0, r6
006683ec  3c cc ff eb                                      bl #0x65b4e4
006683f0  00 20 50 e2                                      subs r2, r0, #0
006683f4  0d 04 00 0a                                      beq #0x669430
006683f8  3c 1a 9f e5                                      ldr r1, [pc, #0xa3c]
006683fc  00 c0 94 e5                                      ldr ip, [r4]
00668400  00 30 92 e5                                      ldr r3, [r2]
00668404  01 10 8f e0                                      add r1, pc, r1
00668408  68 80 9c e5                                      ldr r8, [ip, #0x68]
0066840c  0f e0 a0 e1                                      mov lr, pc
00668410  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668414  05 10 a0 e1                                      mov r1, r5
00668418  00 20 a0 e1                                      mov r2, r0
0066841c  00 30 a0 e3                                      mov r3, #0
00668420  04 00 a0 e1                                      mov r0, r4
00668424  38 ff 2f e1                                      blx r8
00668428  6a ff ff ea                                      b #0x6681d8
0066842c  09 10 a0 e1                                      mov r1, sb
00668430  06 00 a0 e1                                      mov r0, r6
00668434  2a cc ff eb                                      bl #0x65b4e4
00668438  00 20 50 e2                                      subs r2, r0, #0
0066843c  f4 03 00 0a                                      beq #0x669414
00668440  f8 19 9f e5                                      ldr r1, [pc, #0x9f8]
00668444  00 c0 94 e5                                      ldr ip, [r4]
00668448  00 30 92 e5                                      ldr r3, [r2]
0066844c  01 10 8f e0                                      add r1, pc, r1
00668450  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668454  0f e0 a0 e1                                      mov lr, pc
00668458  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
0066845c  05 10 a0 e1                                      mov r1, r5
00668460  00 20 a0 e1                                      mov r2, r0
00668464  00 30 a0 e3                                      mov r3, #0
00668468  04 00 a0 e1                                      mov r0, r4
0066846c  38 ff 2f e1                                      blx r8
00668470  58 ff ff ea                                      b #0x6681d8
00668474  09 10 a0 e1                                      mov r1, sb
00668478  06 00 a0 e1                                      mov r0, r6
0066847c  18 cc ff eb                                      bl #0x65b4e4
00668480  00 20 50 e2                                      subs r2, r0, #0
00668484  db 03 00 0a                                      beq #0x6693f8
00668488  b4 19 9f e5                                      ldr r1, [pc, #0x9b4]
0066848c  00 c0 94 e5                                      ldr ip, [r4]
00668490  00 30 92 e5                                      ldr r3, [r2]
00668494  01 10 8f e0                                      add r1, pc, r1
00668498  68 80 9c e5                                      ldr r8, [ip, #0x68]
0066849c  0f e0 a0 e1                                      mov lr, pc
006684a0  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
006684a4  05 10 a0 e1                                      mov r1, r5
006684a8  00 20 a0 e1                                      mov r2, r0
006684ac  00 30 a0 e3                                      mov r3, #0
006684b0  04 00 a0 e1                                      mov r0, r4
006684b4  38 ff 2f e1                                      blx r8
006684b8  46 ff ff ea                                      b #0x6681d8
006684bc  09 10 a0 e1                                      mov r1, sb
006684c0  06 00 a0 e1                                      mov r0, r6
006684c4  06 cc ff eb                                      bl #0x65b4e4
006684c8  00 20 50 e2                                      subs r2, r0, #0
006684cc  c2 03 00 0a                                      beq #0x6693dc
006684d0  70 19 9f e5                                      ldr r1, [pc, #0x970]
006684d4  00 c0 94 e5                                      ldr ip, [r4]
006684d8  00 30 92 e5                                      ldr r3, [r2]
006684dc  01 10 8f e0                                      add r1, pc, r1
006684e0  68 80 9c e5                                      ldr r8, [ip, #0x68]
006684e4  0f e0 a0 e1                                      mov lr, pc
006684e8  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
006684ec  05 10 a0 e1                                      mov r1, r5
006684f0  00 20 a0 e1                                      mov r2, r0
006684f4  00 30 a0 e3                                      mov r3, #0
006684f8  04 00 a0 e1                                      mov r0, r4
006684fc  38 ff 2f e1                                      blx r8
00668500  34 ff ff ea                                      b #0x6681d8
00668504  09 10 a0 e1                                      mov r1, sb
00668508  06 00 a0 e1                                      mov r0, r6
0066850c  f4 cb ff eb                                      bl #0x65b4e4
00668510  00 20 50 e2                                      subs r2, r0, #0
00668514  a9 03 00 0a                                      beq #0x6693c0
00668518  2c 19 9f e5                                      ldr r1, [pc, #0x92c]
0066851c  00 c0 94 e5                                      ldr ip, [r4]
00668520  00 30 92 e5                                      ldr r3, [r2]
00668524  01 10 8f e0                                      add r1, pc, r1
00668528  68 80 9c e5                                      ldr r8, [ip, #0x68]
0066852c  0f e0 a0 e1                                      mov lr, pc
00668530  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668534  05 10 a0 e1                                      mov r1, r5
00668538  00 20 a0 e1                                      mov r2, r0
0066853c  00 30 a0 e3                                      mov r3, #0
00668540  04 00 a0 e1                                      mov r0, r4
00668544  38 ff 2f e1                                      blx r8
00668548  22 ff ff ea                                      b #0x6681d8
0066854c  09 10 a0 e1                                      mov r1, sb
00668550  06 00 a0 e1                                      mov r0, r6
00668554  e2 cb ff eb                                      bl #0x65b4e4
00668558  00 20 50 e2                                      subs r2, r0, #0
0066855c  90 03 00 0a                                      beq #0x6693a4
00668560  e8 18 9f e5                                      ldr r1, [pc, #0x8e8]
00668564  00 c0 94 e5                                      ldr ip, [r4]
00668568  00 30 92 e5                                      ldr r3, [r2]
0066856c  01 10 8f e0                                      add r1, pc, r1
00668570  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668574  0f e0 a0 e1                                      mov lr, pc
00668578  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
0066857c  05 10 a0 e1                                      mov r1, r5
00668580  00 20 a0 e1                                      mov r2, r0
00668584  00 30 a0 e3                                      mov r3, #0
00668588  04 00 a0 e1                                      mov r0, r4
0066858c  38 ff 2f e1                                      blx r8
00668590  10 ff ff ea                                      b #0x6681d8
00668594  09 10 a0 e1                                      mov r1, sb
00668598  06 00 a0 e1                                      mov r0, r6
0066859c  d0 cb ff eb                                      bl #0x65b4e4
006685a0  00 20 50 e2                                      subs r2, r0, #0
006685a4  77 03 00 0a                                      beq #0x669388
006685a8  a4 18 9f e5                                      ldr r1, [pc, #0x8a4]
006685ac  00 c0 94 e5                                      ldr ip, [r4]
006685b0  00 30 92 e5                                      ldr r3, [r2]
006685b4  01 10 8f e0                                      add r1, pc, r1
006685b8  68 80 9c e5                                      ldr r8, [ip, #0x68]
006685bc  0f e0 a0 e1                                      mov lr, pc
006685c0  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
006685c4  05 10 a0 e1                                      mov r1, r5
006685c8  00 20 a0 e1                                      mov r2, r0
006685cc  00 30 a0 e3                                      mov r3, #0
006685d0  04 00 a0 e1                                      mov r0, r4
006685d4  38 ff 2f e1                                      blx r8
006685d8  fe fe ff ea                                      b #0x6681d8
006685dc  09 10 a0 e1                                      mov r1, sb
006685e0  06 00 a0 e1                                      mov r0, r6
006685e4  be cb ff eb                                      bl #0x65b4e4
006685e8  00 20 50 e2                                      subs r2, r0, #0
006685ec  5e 03 00 0a                                      beq #0x66936c
006685f0  60 18 9f e5                                      ldr r1, [pc, #0x860]
006685f4  00 c0 94 e5                                      ldr ip, [r4]
006685f8  00 30 92 e5                                      ldr r3, [r2]
006685fc  01 10 8f e0                                      add r1, pc, r1
00668600  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668604  0f e0 a0 e1                                      mov lr, pc
00668608  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
0066860c  05 10 a0 e1                                      mov r1, r5
00668610  00 20 a0 e1                                      mov r2, r0
00668614  00 30 a0 e3                                      mov r3, #0
00668618  04 00 a0 e1                                      mov r0, r4
0066861c  38 ff 2f e1                                      blx r8
00668620  ec fe ff ea                                      b #0x6681d8
00668624  09 10 a0 e1                                      mov r1, sb
00668628  06 00 a0 e1                                      mov r0, r6
0066862c  ac cb ff eb                                      bl #0x65b4e4
00668630  00 20 50 e2                                      subs r2, r0, #0
00668634  45 03 00 0a                                      beq #0x669350
00668638  1c 18 9f e5                                      ldr r1, [pc, #0x81c]
0066863c  00 c0 94 e5                                      ldr ip, [r4]
00668640  00 30 92 e5                                      ldr r3, [r2]
00668644  01 10 8f e0                                      add r1, pc, r1
00668648  68 80 9c e5                                      ldr r8, [ip, #0x68]
0066864c  0f e0 a0 e1                                      mov lr, pc
00668650  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668654  05 10 a0 e1                                      mov r1, r5
00668658  00 20 a0 e1                                      mov r2, r0
0066865c  00 30 a0 e3                                      mov r3, #0
00668660  04 00 a0 e1                                      mov r0, r4
00668664  38 ff 2f e1                                      blx r8
00668668  da fe ff ea                                      b #0x6681d8
0066866c  09 10 a0 e1                                      mov r1, sb
00668670  06 00 a0 e1                                      mov r0, r6
00668674  9a cb ff eb                                      bl #0x65b4e4
00668678  00 20 50 e2                                      subs r2, r0, #0
0066867c  2c 03 00 0a                                      beq #0x669334
00668680  d8 17 9f e5                                      ldr r1, [pc, #0x7d8]
00668684  00 c0 94 e5                                      ldr ip, [r4]
00668688  00 30 92 e5                                      ldr r3, [r2]
0066868c  01 10 8f e0                                      add r1, pc, r1
00668690  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668694  0f e0 a0 e1                                      mov lr, pc
00668698  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
0066869c  05 10 a0 e1                                      mov r1, r5
006686a0  00 20 a0 e1                                      mov r2, r0
006686a4  00 30 a0 e3                                      mov r3, #0
006686a8  04 00 a0 e1                                      mov r0, r4
006686ac  38 ff 2f e1                                      blx r8
006686b0  c8 fe ff ea                                      b #0x6681d8
006686b4  09 10 a0 e1                                      mov r1, sb
006686b8  06 00 a0 e1                                      mov r0, r6
006686bc  88 cb ff eb                                      bl #0x65b4e4
006686c0  00 20 50 e2                                      subs r2, r0, #0
006686c4  13 03 00 0a                                      beq #0x669318
006686c8  94 17 9f e5                                      ldr r1, [pc, #0x794]
006686cc  00 c0 94 e5                                      ldr ip, [r4]
006686d0  00 30 92 e5                                      ldr r3, [r2]
006686d4  01 10 8f e0                                      add r1, pc, r1
006686d8  68 80 9c e5                                      ldr r8, [ip, #0x68]
006686dc  0f e0 a0 e1                                      mov lr, pc
006686e0  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
006686e4  05 10 a0 e1                                      mov r1, r5
006686e8  00 20 a0 e1                                      mov r2, r0
006686ec  00 30 a0 e3                                      mov r3, #0
006686f0  04 00 a0 e1                                      mov r0, r4
006686f4  38 ff 2f e1                                      blx r8
006686f8  b6 fe ff ea                                      b #0x6681d8
006686fc  09 10 a0 e1                                      mov r1, sb
00668700  06 00 a0 e1                                      mov r0, r6
00668704  76 cb ff eb                                      bl #0x65b4e4
00668708  00 20 50 e2                                      subs r2, r0, #0
0066870c  fa 02 00 0a                                      beq #0x6692fc
00668710  50 17 9f e5                                      ldr r1, [pc, #0x750]
00668714  00 c0 94 e5                                      ldr ip, [r4]
00668718  00 30 92 e5                                      ldr r3, [r2]
0066871c  01 10 8f e0                                      add r1, pc, r1
00668720  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668724  0f e0 a0 e1                                      mov lr, pc
00668728  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
0066872c  05 10 a0 e1                                      mov r1, r5
00668730  00 20 a0 e1                                      mov r2, r0
00668734  00 30 a0 e3                                      mov r3, #0
00668738  04 00 a0 e1                                      mov r0, r4
0066873c  38 ff 2f e1                                      blx r8
00668740  a4 fe ff ea                                      b #0x6681d8
00668744  09 10 a0 e1                                      mov r1, sb
00668748  06 00 a0 e1                                      mov r0, r6
0066874c  64 cb ff eb                                      bl #0x65b4e4
00668750  00 20 50 e2                                      subs r2, r0, #0
00668754  e1 02 00 0a                                      beq #0x6692e0
00668758  0c 17 9f e5                                      ldr r1, [pc, #0x70c]
0066875c  00 c0 94 e5                                      ldr ip, [r4]
00668760  00 30 92 e5                                      ldr r3, [r2]
00668764  01 10 8f e0                                      add r1, pc, r1
00668768  68 80 9c e5                                      ldr r8, [ip, #0x68]
0066876c  0f e0 a0 e1                                      mov lr, pc
00668770  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668774  05 10 a0 e1                                      mov r1, r5
00668778  00 20 a0 e1                                      mov r2, r0
0066877c  00 30 a0 e3                                      mov r3, #0
00668780  04 00 a0 e1                                      mov r0, r4
00668784  38 ff 2f e1                                      blx r8
00668788  92 fe ff ea                                      b #0x6681d8
0066878c  09 10 a0 e1                                      mov r1, sb
00668790  06 00 a0 e1                                      mov r0, r6
00668794  52 cb ff eb                                      bl #0x65b4e4
00668798  00 20 50 e2                                      subs r2, r0, #0
0066879c  c8 02 00 0a                                      beq #0x6692c4
006687a0  c8 16 9f e5                                      ldr r1, [pc, #0x6c8]
006687a4  00 c0 94 e5                                      ldr ip, [r4]
006687a8  00 30 92 e5                                      ldr r3, [r2]
006687ac  01 10 8f e0                                      add r1, pc, r1
006687b0  68 80 9c e5                                      ldr r8, [ip, #0x68]
006687b4  0f e0 a0 e1                                      mov lr, pc
006687b8  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
006687bc  05 10 a0 e1                                      mov r1, r5
006687c0  00 20 a0 e1                                      mov r2, r0
006687c4  00 30 a0 e3                                      mov r3, #0
006687c8  04 00 a0 e1                                      mov r0, r4
006687cc  38 ff 2f e1                                      blx r8
006687d0  80 fe ff ea                                      b #0x6681d8
006687d4  09 10 a0 e1                                      mov r1, sb
006687d8  06 00 a0 e1                                      mov r0, r6
006687dc  40 cb ff eb                                      bl #0x65b4e4
006687e0  00 20 50 e2                                      subs r2, r0, #0
006687e4  af 02 00 0a                                      beq #0x6692a8
006687e8  84 16 9f e5                                      ldr r1, [pc, #0x684]
006687ec  00 c0 94 e5                                      ldr ip, [r4]
006687f0  00 30 92 e5                                      ldr r3, [r2]
006687f4  01 10 8f e0                                      add r1, pc, r1
006687f8  68 80 9c e5                                      ldr r8, [ip, #0x68]
006687fc  0f e0 a0 e1                                      mov lr, pc
00668800  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668804  05 10 a0 e1                                      mov r1, r5
00668808  00 20 a0 e1                                      mov r2, r0
0066880c  00 30 a0 e3                                      mov r3, #0
00668810  04 00 a0 e1                                      mov r0, r4
00668814  38 ff 2f e1                                      blx r8
00668818  6e fe ff ea                                      b #0x6681d8
0066881c  09 10 a0 e1                                      mov r1, sb
00668820  06 00 a0 e1                                      mov r0, r6
00668824  2e cb ff eb                                      bl #0x65b4e4
00668828  00 20 50 e2                                      subs r2, r0, #0
0066882c  96 02 00 0a                                      beq #0x66928c
00668830  40 16 9f e5                                      ldr r1, [pc, #0x640]
00668834  00 c0 94 e5                                      ldr ip, [r4]
00668838  00 30 92 e5                                      ldr r3, [r2]
0066883c  01 10 8f e0                                      add r1, pc, r1
00668840  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668844  0f e0 a0 e1                                      mov lr, pc
00668848  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
0066884c  05 10 a0 e1                                      mov r1, r5
00668850  00 20 a0 e1                                      mov r2, r0
00668854  00 30 a0 e3                                      mov r3, #0
00668858  04 00 a0 e1                                      mov r0, r4
0066885c  38 ff 2f e1                                      blx r8
00668860  5c fe ff ea                                      b #0x6681d8
00668864  09 10 a0 e1                                      mov r1, sb
00668868  06 00 a0 e1                                      mov r0, r6
0066886c  1c cb ff eb                                      bl #0x65b4e4
00668870  00 20 50 e2                                      subs r2, r0, #0
00668874  7d 02 00 0a                                      beq #0x669270
00668878  fc 15 9f e5                                      ldr r1, [pc, #0x5fc]
0066887c  00 c0 94 e5                                      ldr ip, [r4]
00668880  00 30 92 e5                                      ldr r3, [r2]
00668884  01 10 8f e0                                      add r1, pc, r1
00668888  68 80 9c e5                                      ldr r8, [ip, #0x68]
0066888c  0f e0 a0 e1                                      mov lr, pc
00668890  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668894  05 10 a0 e1                                      mov r1, r5
00668898  00 20 a0 e1                                      mov r2, r0
0066889c  00 30 a0 e3                                      mov r3, #0
006688a0  04 00 a0 e1                                      mov r0, r4
006688a4  38 ff 2f e1                                      blx r8
006688a8  4a fe ff ea                                      b #0x6681d8
006688ac  09 10 a0 e1                                      mov r1, sb
006688b0  06 00 a0 e1                                      mov r0, r6
006688b4  0a cb ff eb                                      bl #0x65b4e4
006688b8  00 20 50 e2                                      subs r2, r0, #0
006688bc  64 02 00 0a                                      beq #0x669254
006688c0  b8 15 9f e5                                      ldr r1, [pc, #0x5b8]
006688c4  00 c0 94 e5                                      ldr ip, [r4]
006688c8  00 30 92 e5                                      ldr r3, [r2]
006688cc  01 10 8f e0                                      add r1, pc, r1
006688d0  68 80 9c e5                                      ldr r8, [ip, #0x68]
006688d4  0f e0 a0 e1                                      mov lr, pc
006688d8  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
006688dc  05 10 a0 e1                                      mov r1, r5
006688e0  00 20 a0 e1                                      mov r2, r0
006688e4  00 30 a0 e3                                      mov r3, #0
006688e8  04 00 a0 e1                                      mov r0, r4
006688ec  38 ff 2f e1                                      blx r8
006688f0  38 fe ff ea                                      b #0x6681d8
006688f4  09 10 a0 e1                                      mov r1, sb
006688f8  06 00 a0 e1                                      mov r0, r6
006688fc  f8 ca ff eb                                      bl #0x65b4e4
00668900  00 20 50 e2                                      subs r2, r0, #0
00668904  4b 02 00 0a                                      beq #0x669238
00668908  74 15 9f e5                                      ldr r1, [pc, #0x574]
0066890c  00 c0 94 e5                                      ldr ip, [r4]
00668910  00 30 92 e5                                      ldr r3, [r2]
00668914  01 10 8f e0                                      add r1, pc, r1
00668918  68 80 9c e5                                      ldr r8, [ip, #0x68]
0066891c  0f e0 a0 e1                                      mov lr, pc
00668920  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668924  05 10 a0 e1                                      mov r1, r5
00668928  00 20 a0 e1                                      mov r2, r0
0066892c  00 30 a0 e3                                      mov r3, #0
00668930  04 00 a0 e1                                      mov r0, r4
00668934  38 ff 2f e1                                      blx r8
00668938  26 fe ff ea                                      b #0x6681d8
0066893c  09 10 a0 e1                                      mov r1, sb
00668940  06 00 a0 e1                                      mov r0, r6
00668944  e6 ca ff eb                                      bl #0x65b4e4
00668948  00 20 50 e2                                      subs r2, r0, #0
0066894c  32 02 00 0a                                      beq #0x66921c
00668950  30 15 9f e5                                      ldr r1, [pc, #0x530]
00668954  00 c0 94 e5                                      ldr ip, [r4]
00668958  00 30 92 e5                                      ldr r3, [r2]
0066895c  01 10 8f e0                                      add r1, pc, r1
00668960  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668964  0f e0 a0 e1                                      mov lr, pc
00668968  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
0066896c  05 10 a0 e1                                      mov r1, r5
00668970  00 20 a0 e1                                      mov r2, r0
00668974  00 30 a0 e3                                      mov r3, #0
00668978  04 00 a0 e1                                      mov r0, r4
0066897c  38 ff 2f e1                                      blx r8
00668980  14 fe ff ea                                      b #0x6681d8
00668984  09 10 a0 e1                                      mov r1, sb
00668988  06 00 a0 e1                                      mov r0, r6
0066898c  d4 ca ff eb                                      bl #0x65b4e4
00668990  00 20 50 e2                                      subs r2, r0, #0
00668994  19 02 00 0a                                      beq #0x669200
00668998  ec 14 9f e5                                      ldr r1, [pc, #0x4ec]
0066899c  00 c0 94 e5                                      ldr ip, [r4]
006689a0  00 30 92 e5                                      ldr r3, [r2]
006689a4  01 10 8f e0                                      add r1, pc, r1
006689a8  68 80 9c e5                                      ldr r8, [ip, #0x68]
006689ac  0f e0 a0 e1                                      mov lr, pc
006689b0  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
006689b4  05 10 a0 e1                                      mov r1, r5
006689b8  00 20 a0 e1                                      mov r2, r0
006689bc  00 30 a0 e3                                      mov r3, #0
006689c0  04 00 a0 e1                                      mov r0, r4
006689c4  38 ff 2f e1                                      blx r8
006689c8  02 fe ff ea                                      b #0x6681d8
006689cc  09 10 a0 e1                                      mov r1, sb
006689d0  06 00 a0 e1                                      mov r0, r6
006689d4  c2 ca ff eb                                      bl #0x65b4e4
006689d8  00 20 50 e2                                      subs r2, r0, #0
006689dc  00 02 00 0a                                      beq #0x6691e4
006689e0  a8 14 9f e5                                      ldr r1, [pc, #0x4a8]
006689e4  00 c0 94 e5                                      ldr ip, [r4]
006689e8  00 30 92 e5                                      ldr r3, [r2]
006689ec  01 10 8f e0                                      add r1, pc, r1
006689f0  68 80 9c e5                                      ldr r8, [ip, #0x68]
006689f4  0f e0 a0 e1                                      mov lr, pc
006689f8  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
006689fc  05 10 a0 e1                                      mov r1, r5
00668a00  00 20 a0 e1                                      mov r2, r0
00668a04  00 30 a0 e3                                      mov r3, #0
00668a08  04 00 a0 e1                                      mov r0, r4
00668a0c  38 ff 2f e1                                      blx r8
00668a10  f0 fd ff ea                                      b #0x6681d8
00668a14  09 10 a0 e1                                      mov r1, sb
00668a18  06 00 a0 e1                                      mov r0, r6
00668a1c  b0 ca ff eb                                      bl #0x65b4e4
00668a20  00 20 50 e2                                      subs r2, r0, #0
00668a24  e7 01 00 0a                                      beq #0x6691c8
00668a28  64 14 9f e5                                      ldr r1, [pc, #0x464]
00668a2c  00 c0 94 e5                                      ldr ip, [r4]
00668a30  00 30 92 e5                                      ldr r3, [r2]
00668a34  01 10 8f e0                                      add r1, pc, r1
00668a38  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668a3c  0f e0 a0 e1                                      mov lr, pc
00668a40  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668a44  05 10 a0 e1                                      mov r1, r5
00668a48  00 20 a0 e1                                      mov r2, r0
00668a4c  00 30 a0 e3                                      mov r3, #0
00668a50  04 00 a0 e1                                      mov r0, r4
00668a54  38 ff 2f e1                                      blx r8
00668a58  de fd ff ea                                      b #0x6681d8
00668a5c  09 10 a0 e1                                      mov r1, sb
00668a60  06 00 a0 e1                                      mov r0, r6
00668a64  9e ca ff eb                                      bl #0x65b4e4
00668a68  00 20 50 e2                                      subs r2, r0, #0
00668a6c  aa 02 00 0a                                      beq #0x66951c
00668a70  3c 81 d2 e5                                      ldrb r8, [r2, #0x13c]
00668a74  00 00 58 e3                                      cmp r8, #0
00668a78  d6 fd ff 1a                                      bne #0x6681d8
00668a7c  00 c0 94 e5                                      ldr ip, [r4]
00668a80  00 30 92 e5                                      ldr r3, [r2]
00668a84  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00668a88  68 90 9c e5                                      ldr sb, [ip, #0x68]
00668a8c  0f e0 a0 e1                                      mov lr, pc
00668a90  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668a94  05 10 a0 e1                                      mov r1, r5
00668a98  00 20 a0 e1                                      mov r2, r0
00668a9c  08 30 a0 e1                                      mov r3, r8
00668aa0  04 00 a0 e1                                      mov r0, r4
00668aa4  39 ff 2f e1                                      blx sb
00668aa8  ca fd ff ea                                      b #0x6681d8
00668aac  09 10 a0 e1                                      mov r1, sb
00668ab0  06 00 a0 e1                                      mov r0, r6
00668ab4  8a ca ff eb                                      bl #0x65b4e4
00668ab8  00 20 50 e2                                      subs r2, r0, #0
00668abc  5f 01 00 0a                                      beq #0x669040
00668ac0  d0 13 9f e5                                      ldr r1, [pc, #0x3d0]
00668ac4  00 c0 94 e5                                      ldr ip, [r4]
00668ac8  00 30 92 e5                                      ldr r3, [r2]
00668acc  01 10 8f e0                                      add r1, pc, r1
00668ad0  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668ad4  0f e0 a0 e1                                      mov lr, pc
00668ad8  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668adc  05 10 a0 e1                                      mov r1, r5
00668ae0  00 20 a0 e1                                      mov r2, r0
00668ae4  00 30 a0 e3                                      mov r3, #0
00668ae8  04 00 a0 e1                                      mov r0, r4
00668aec  38 ff 2f e1                                      blx r8
00668af0  b8 fd ff ea                                      b #0x6681d8
00668af4  09 10 a0 e1                                      mov r1, sb
00668af8  06 00 a0 e1                                      mov r0, r6
00668afc  78 ca ff eb                                      bl #0x65b4e4
00668b00  00 20 50 e2                                      subs r2, r0, #0
00668b04  a8 01 00 0a                                      beq #0x6691ac
00668b08  8c 13 9f e5                                      ldr r1, [pc, #0x38c]
00668b0c  00 c0 94 e5                                      ldr ip, [r4]
00668b10  00 30 92 e5                                      ldr r3, [r2]
00668b14  01 10 8f e0                                      add r1, pc, r1
00668b18  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668b1c  0f e0 a0 e1                                      mov lr, pc
00668b20  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668b24  05 10 a0 e1                                      mov r1, r5
00668b28  00 20 a0 e1                                      mov r2, r0
00668b2c  00 30 a0 e3                                      mov r3, #0
00668b30  04 00 a0 e1                                      mov r0, r4
00668b34  38 ff 2f e1                                      blx r8
00668b38  a6 fd ff ea                                      b #0x6681d8
00668b3c  09 10 a0 e1                                      mov r1, sb
00668b40  06 00 a0 e1                                      mov r0, r6
00668b44  66 ca ff eb                                      bl #0x65b4e4
00668b48  00 20 50 e2                                      subs r2, r0, #0
00668b4c  6b 02 00 0a                                      beq #0x669500
00668b50  3d 81 d2 e5                                      ldrb r8, [r2, #0x13d]
00668b54  00 00 58 e3                                      cmp r8, #0
00668b58  9e fd ff 1a                                      bne #0x6681d8
00668b5c  00 c0 94 e5                                      ldr ip, [r4]
00668b60  00 30 92 e5                                      ldr r3, [r2]
00668b64  08 10 9d e5                                      ldr r1, [sp, #8]
00668b68  68 90 9c e5                                      ldr sb, [ip, #0x68]
00668b6c  0f e0 a0 e1                                      mov lr, pc
00668b70  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668b74  05 10 a0 e1                                      mov r1, r5
00668b78  00 20 a0 e1                                      mov r2, r0
00668b7c  08 30 a0 e1                                      mov r3, r8
00668b80  04 00 a0 e1                                      mov r0, r4
00668b84  39 ff 2f e1                                      blx sb
00668b88  92 fd ff ea                                      b #0x6681d8
00668b8c  09 10 a0 e1                                      mov r1, sb
00668b90  06 00 a0 e1                                      mov r0, r6
00668b94  52 ca ff eb                                      bl #0x65b4e4
00668b98  00 20 50 e2                                      subs r2, r0, #0
00668b9c  43 01 00 0a                                      beq #0x6690b0
00668ba0  f8 12 9f e5                                      ldr r1, [pc, #0x2f8]
00668ba4  00 c0 94 e5                                      ldr ip, [r4]
00668ba8  00 30 92 e5                                      ldr r3, [r2]
00668bac  01 10 8f e0                                      add r1, pc, r1
00668bb0  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668bb4  0f e0 a0 e1                                      mov lr, pc
00668bb8  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668bbc  05 10 a0 e1                                      mov r1, r5
00668bc0  00 20 a0 e1                                      mov r2, r0
00668bc4  00 30 a0 e3                                      mov r3, #0
00668bc8  04 00 a0 e1                                      mov r0, r4
00668bcc  38 ff 2f e1                                      blx r8
00668bd0  80 fd ff ea                                      b #0x6681d8
00668bd4  09 10 a0 e1                                      mov r1, sb
00668bd8  06 00 a0 e1                                      mov r0, r6
00668bdc  40 ca ff eb                                      bl #0x65b4e4
00668be0  00 20 50 e2                                      subs r2, r0, #0
00668be4  3f 01 00 0a                                      beq #0x6690e8
00668be8  b4 12 9f e5                                      ldr r1, [pc, #0x2b4]
00668bec  00 c0 94 e5                                      ldr ip, [r4]
00668bf0  00 30 92 e5                                      ldr r3, [r2]
00668bf4  01 10 8f e0                                      add r1, pc, r1
00668bf8  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668bfc  0f e0 a0 e1                                      mov lr, pc
00668c00  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668c04  05 10 a0 e1                                      mov r1, r5
00668c08  00 20 a0 e1                                      mov r2, r0
00668c0c  00 30 a0 e3                                      mov r3, #0
00668c10  04 00 a0 e1                                      mov r0, r4
00668c14  38 ff 2f e1                                      blx r8
00668c18  6e fd ff ea                                      b #0x6681d8
00668c1c  09 10 a0 e1                                      mov r1, sb
00668c20  06 00 a0 e1                                      mov r0, r6
00668c24  2e ca ff eb                                      bl #0x65b4e4
00668c28  00 20 50 e2                                      subs r2, r0, #0
00668c2c  26 01 00 0a                                      beq #0x6690cc
00668c30  70 12 9f e5                                      ldr r1, [pc, #0x270]
00668c34  00 c0 94 e5                                      ldr ip, [r4]
00668c38  00 30 92 e5                                      ldr r3, [r2]
00668c3c  01 10 8f e0                                      add r1, pc, r1
00668c40  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668c44  0f e0 a0 e1                                      mov lr, pc
00668c48  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668c4c  05 10 a0 e1                                      mov r1, r5
00668c50  00 20 a0 e1                                      mov r2, r0
00668c54  00 30 a0 e3                                      mov r3, #0
00668c58  04 00 a0 e1                                      mov r0, r4
00668c5c  38 ff 2f e1                                      blx r8
00668c60  5c fd ff ea                                      b #0x6681d8
00668c64  09 10 a0 e1                                      mov r1, sb
00668c68  06 00 a0 e1                                      mov r0, r6
00668c6c  1c ca ff eb                                      bl #0x65b4e4
00668c70  00 20 50 e2                                      subs r2, r0, #0
00668c74  37 01 00 0a                                      beq #0x669158
00668c78  2c 12 9f e5                                      ldr r1, [pc, #0x22c]
00668c7c  00 c0 94 e5                                      ldr ip, [r4]
00668c80  00 30 92 e5                                      ldr r3, [r2]
00668c84  01 10 8f e0                                      add r1, pc, r1
00668c88  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668c8c  0f e0 a0 e1                                      mov lr, pc
00668c90  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668c94  05 10 a0 e1                                      mov r1, r5
00668c98  00 20 a0 e1                                      mov r2, r0
00668c9c  00 30 a0 e3                                      mov r3, #0
00668ca0  04 00 a0 e1                                      mov r0, r4
00668ca4  38 ff 2f e1                                      blx r8
00668ca8  4a fd ff ea                                      b #0x6681d8
00668cac  09 10 a0 e1                                      mov r1, sb
00668cb0  06 00 a0 e1                                      mov r0, r6
00668cb4  0a ca ff eb                                      bl #0x65b4e4
00668cb8  00 20 50 e2                                      subs r2, r0, #0
00668cbc  1e 01 00 0a                                      beq #0x66913c
00668cc0  e8 11 9f e5                                      ldr r1, [pc, #0x1e8]
00668cc4  00 c0 94 e5                                      ldr ip, [r4]
00668cc8  00 30 92 e5                                      ldr r3, [r2]
00668ccc  01 10 8f e0                                      add r1, pc, r1
00668cd0  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668cd4  0f e0 a0 e1                                      mov lr, pc
00668cd8  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668cdc  05 10 a0 e1                                      mov r1, r5
00668ce0  00 20 a0 e1                                      mov r2, r0
00668ce4  00 30 a0 e3                                      mov r3, #0
00668ce8  04 00 a0 e1                                      mov r0, r4
00668cec  38 ff 2f e1                                      blx r8
00668cf0  38 fd ff ea                                      b #0x6681d8
00668cf4  09 10 a0 e1                                      mov r1, sb
00668cf8  06 00 a0 e1                                      mov r0, r6
00668cfc  f8 c9 ff eb                                      bl #0x65b4e4
00668d00  00 20 50 e2                                      subs r2, r0, #0
00668d04  05 01 00 0a                                      beq #0x669120
00668d08  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
00668d0c  00 c0 94 e5                                      ldr ip, [r4]
00668d10  00 30 92 e5                                      ldr r3, [r2]
00668d14  01 10 8f e0                                      add r1, pc, r1
00668d18  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668d1c  0f e0 a0 e1                                      mov lr, pc
00668d20  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668d24  05 10 a0 e1                                      mov r1, r5
00668d28  00 20 a0 e1                                      mov r2, r0
00668d2c  00 30 a0 e3                                      mov r3, #0
00668d30  04 00 a0 e1                                      mov r0, r4
00668d34  38 ff 2f e1                                      blx r8
00668d38  26 fd ff ea                                      b #0x6681d8
00668d3c  09 10 a0 e1                                      mov r1, sb
00668d40  06 00 a0 e1                                      mov r0, r6
00668d44  e6 c9 ff eb                                      bl #0x65b4e4
00668d48  00 20 50 e2                                      subs r2, r0, #0
00668d4c  ec 00 00 0a                                      beq #0x669104
00668d50  60 11 9f e5                                      ldr r1, [pc, #0x160]
00668d54  00 c0 94 e5                                      ldr ip, [r4]
00668d58  00 30 92 e5                                      ldr r3, [r2]
00668d5c  01 10 8f e0                                      add r1, pc, r1
00668d60  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668d64  0f e0 a0 e1                                      mov lr, pc
00668d68  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668d6c  05 10 a0 e1                                      mov r1, r5
00668d70  00 20 a0 e1                                      mov r2, r0
00668d74  00 30 a0 e3                                      mov r3, #0
00668d78  04 00 a0 e1                                      mov r0, r4
00668d7c  38 ff 2f e1                                      blx r8
00668d80  14 fd ff ea                                      b #0x6681d8
00668d84  09 10 a0 e1                                      mov r1, sb
00668d88  06 00 a0 e1                                      mov r0, r6
00668d8c  d4 c9 ff eb                                      bl #0x65b4e4
00668d90  00 20 50 e2                                      subs r2, r0, #0
00668d94  fd 00 00 0a                                      beq #0x669190
00668d98  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
00668d9c  00 c0 94 e5                                      ldr ip, [r4]
00668da0  00 30 92 e5                                      ldr r3, [r2]
00668da4  01 10 8f e0                                      add r1, pc, r1
00668da8  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668dac  0f e0 a0 e1                                      mov lr, pc
00668db0  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668db4  05 10 a0 e1                                      mov r1, r5
00668db8  00 20 a0 e1                                      mov r2, r0
00668dbc  00 30 a0 e3                                      mov r3, #0
00668dc0  04 00 a0 e1                                      mov r0, r4
00668dc4  38 ff 2f e1                                      blx r8
00668dc8  02 fd ff ea                                      b #0x6681d8
00668dcc  09 10 a0 e1                                      mov r1, sb
00668dd0  06 00 a0 e1                                      mov r0, r6
00668dd4  c2 c9 ff eb                                      bl #0x65b4e4
00668dd8  00 20 50 e2                                      subs r2, r0, #0
00668ddc  e4 00 00 0a                                      beq #0x669174
00668de0  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
00668de4  00 c0 94 e5                                      ldr ip, [r4]
00668de8  00 30 92 e5                                      ldr r3, [r2]
00668dec  01 10 8f e0                                      add r1, pc, r1
00668df0  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668df4  0f e0 a0 e1                                      mov lr, pc
00668df8  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668dfc  05 10 a0 e1                                      mov r1, r5
00668e00  00 20 a0 e1                                      mov r2, r0
00668e04  00 30 a0 e3                                      mov r3, #0
00668e08  04 00 a0 e1                                      mov r0, r4
00668e0c  38 ff 2f e1                                      blx r8
00668e10  f0 fc ff ea                                      b #0x6681d8
; mapping-symbol data/literal pool
00668e14  60 cb 32 00 78 d2 27 00 98 c2 27 00 44 d2 27 00  .byte 0x60, 0xcb, 0x32, 0x00, 0x78, 0xd2, 0x27, 0x00, 0x98, 0xc2, 0x27, 0x00, 0x44, 0xd2, 0x27, 0x00
00668e24  18 d2 27 00 e4 d1 27 00 00 0a 00 00 5c 12 00 00  .byte 0x18, 0xd2, 0x27, 0x00, 0xe4, 0xd1, 0x27, 0x00, 0x00, 0x0a, 0x00, 0x00, 0x5c, 0x12, 0x00, 0x00
00668e34  44 d0 27 00 3c d0 27 00 04 d0 27 00 a4 0f 27 00  .byte 0x44, 0xd0, 0x27, 0x00, 0x3c, 0xd0, 0x27, 0x00, 0x04, 0xd0, 0x27, 0x00, 0xa4, 0x0f, 0x27, 0x00
00668e44  1c ce 27 00 4c cd 27 00 14 cd 27 00 54 cd 27 00  .byte 0x1c, 0xce, 0x27, 0x00, 0x4c, 0xcd, 0x27, 0x00, 0x14, 0xcd, 0x27, 0x00, 0x54, 0xcd, 0x27, 0x00
00668e54  1c cd 27 00 e4 cc 27 00 ac cc 27 00 7c cc 27 00  .byte 0x1c, 0xcd, 0x27, 0x00, 0xe4, 0xcc, 0x27, 0x00, 0xac, 0xcc, 0x27, 0x00, 0x7c, 0xcc, 0x27, 0x00
00668e64  44 cc 27 00 2c cd 27 00 f4 cc 27 00 c4 cc 27 00  .byte 0x44, 0xcc, 0x27, 0x00, 0x2c, 0xcd, 0x27, 0x00, 0xf4, 0xcc, 0x27, 0x00, 0xc4, 0xcc, 0x27, 0x00
00668e74  8c cc 27 00 5c cc 27 00 2c cc 27 00 ec ca 27 00  .byte 0x8c, 0xcc, 0x27, 0x00, 0x5c, 0xcc, 0x27, 0x00, 0x2c, 0xcc, 0x27, 0x00, 0xec, 0xca, 0x27, 0x00
00668e84  b4 ca 27 00 44 ca 27 00 04 ca 27 00 0c ca 27 00  .byte 0xb4, 0xca, 0x27, 0x00, 0x44, 0xca, 0x27, 0x00, 0x04, 0xca, 0x27, 0x00, 0x0c, 0xca, 0x27, 0x00
00668e94  d4 c9 27 00 24 09 27 00 9c c7 27 00 7c c6 27 00  .byte 0xd4, 0xc9, 0x27, 0x00, 0x24, 0x09, 0x27, 0x00, 0x9c, 0xc7, 0x27, 0x00, 0x7c, 0xc6, 0x27, 0x00
00668ea4  44 c6 27 00 dc c5 27 00 dc 26 28 00 a4 26 28 00  .byte 0x44, 0xc6, 0x27, 0x00, 0xdc, 0xc5, 0x27, 0x00, 0xdc, 0x26, 0x28, 0x00, 0xa4, 0x26, 0x28, 0x00
00668eb4  cc c5 27 00 94 c5 27 00 1c c5 27 00 e4 c4 27 00  .byte 0xcc, 0xc5, 0x27, 0x00, 0x94, 0xc5, 0x27, 0x00, 0x1c, 0xc5, 0x27, 0x00, 0xe4, 0xc4, 0x27, 0x00
00668ec4  3c c4 27 00 cc c2 27 00                          .byte 0x3c, 0xc4, 0x27, 0x00, 0xcc, 0xc2, 0x27, 0x00
; decoder-mode: arm
00668ecc  09 10 a0 e1                                      mov r1, sb
00668ed0  06 00 a0 e1                                      mov r0, r6
00668ed4  82 c9 ff eb                                      bl #0x65b4e4
00668ed8  00 20 50 e2                                      subs r2, r0, #0
00668edc  80 01 00 0a                                      beq #0x6694e4
00668ee0  3e 81 d2 e5                                      ldrb r8, [r2, #0x13e]
00668ee4  00 00 58 e3                                      cmp r8, #0
00668ee8  ba fc ff 1a                                      bne #0x6681d8
00668eec  00 c0 94 e5                                      ldr ip, [r4]
00668ef0  00 30 92 e5                                      ldr r3, [r2]
00668ef4  04 10 9d e5                                      ldr r1, [sp, #4]
00668ef8  68 90 9c e5                                      ldr sb, [ip, #0x68]
00668efc  0f e0 a0 e1                                      mov lr, pc
00668f00  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668f04  05 10 a0 e1                                      mov r1, r5
00668f08  00 20 a0 e1                                      mov r2, r0
00668f0c  08 30 a0 e1                                      mov r3, r8
00668f10  04 00 a0 e1                                      mov r0, r4
00668f14  39 ff 2f e1                                      blx sb
00668f18  ae fc ff ea                                      b #0x6681d8
00668f1c  09 10 a0 e1                                      mov r1, sb
00668f20  06 00 a0 e1                                      mov r0, r6
00668f24  6e c9 ff eb                                      bl #0x65b4e4
00668f28  00 20 50 e2                                      subs r2, r0, #0
00668f2c  58 00 00 0a                                      beq #0x669094
00668f30  74 10 1f e5                                      ldr r1, [pc, #-0x74]
00668f34  00 c0 94 e5                                      ldr ip, [r4]
00668f38  00 30 92 e5                                      ldr r3, [r2]
00668f3c  01 10 8f e0                                      add r1, pc, r1
00668f40  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668f44  0f e0 a0 e1                                      mov lr, pc
00668f48  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668f4c  05 10 a0 e1                                      mov r1, r5
00668f50  00 20 a0 e1                                      mov r2, r0
00668f54  00 30 a0 e3                                      mov r3, #0
00668f58  04 00 a0 e1                                      mov r0, r4
00668f5c  38 ff 2f e1                                      blx r8
00668f60  9c fc ff ea                                      b #0x6681d8
00668f64  09 10 a0 e1                                      mov r1, sb
00668f68  06 00 a0 e1                                      mov r0, r6
00668f6c  5c c9 ff eb                                      bl #0x65b4e4
00668f70  00 20 50 e2                                      subs r2, r0, #0
00668f74  3f 00 00 0a                                      beq #0x669078
00668f78  b8 10 1f e5                                      ldr r1, [pc, #-0xb8]
00668f7c  00 c0 94 e5                                      ldr ip, [r4]
00668f80  00 30 92 e5                                      ldr r3, [r2]
00668f84  01 10 8f e0                                      add r1, pc, r1
00668f88  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668f8c  0f e0 a0 e1                                      mov lr, pc
00668f90  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668f94  05 10 a0 e1                                      mov r1, r5
00668f98  00 20 a0 e1                                      mov r2, r0
00668f9c  00 30 a0 e3                                      mov r3, #0
00668fa0  04 00 a0 e1                                      mov r0, r4
00668fa4  38 ff 2f e1                                      blx r8
00668fa8  8a fc ff ea                                      b #0x6681d8
00668fac  09 10 a0 e1                                      mov r1, sb
00668fb0  06 00 a0 e1                                      mov r0, r6
00668fb4  4a c9 ff eb                                      bl #0x65b4e4
00668fb8  00 20 50 e2                                      subs r2, r0, #0
00668fbc  26 00 00 0a                                      beq #0x66905c
00668fc0  00 c0 94 e5                                      ldr ip, [r4]
00668fc4  00 30 92 e5                                      ldr r3, [r2]
00668fc8  0b 10 8f e0                                      add r1, pc, fp
00668fcc  68 80 9c e5                                      ldr r8, [ip, #0x68]
00668fd0  0f e0 a0 e1                                      mov lr, pc
00668fd4  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00668fd8  05 10 a0 e1                                      mov r1, r5
00668fdc  00 20 a0 e1                                      mov r2, r0
00668fe0  00 30 a0 e3                                      mov r3, #0
00668fe4  04 00 a0 e1                                      mov r0, r4
00668fe8  38 ff 2f e1                                      blx r8
00668fec  79 fc ff ea                                      b #0x6681d8
00668ff0  09 10 a0 e1                                      mov r1, sb
00668ff4  06 00 a0 e1                                      mov r0, r6
00668ff8  39 c9 ff eb                                      bl #0x65b4e4
00668ffc  00 20 50 e2                                      subs r2, r0, #0
00669000  30 01 00 0a                                      beq #0x6694c8
00669004  3f 81 d2 e5                                      ldrb r8, [r2, #0x13f]
00669008  00 00 58 e3                                      cmp r8, #0
0066900c  71 fc ff 1a                                      bne #0x6681d8
00669010  00 c0 94 e5                                      ldr ip, [r4]
00669014  00 30 92 e5                                      ldr r3, [r2]
00669018  00 10 9d e5                                      ldr r1, [sp]
0066901c  68 90 9c e5                                      ldr sb, [ip, #0x68]
00669020  0f e0 a0 e1                                      mov lr, pc
00669024  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00669028  05 10 a0 e1                                      mov r1, r5
0066902c  00 20 a0 e1                                      mov r2, r0
00669030  08 30 a0 e1                                      mov r3, r8
00669034  04 00 a0 e1                                      mov r0, r4
00669038  39 ff 2f e1                                      blx sb
0066903c  65 fc ff ea                                      b #0x6681d8
00669040  00 c0 94 e5                                      ldr ip, [r4]
00669044  04 00 a0 e1                                      mov r0, r4
00669048  05 10 a0 e1                                      mov r1, r5
0066904c  02 30 a0 e1                                      mov r3, r2
00669050  0f e0 a0 e1                                      mov lr, pc
00669054  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669058  5e fc ff ea                                      b #0x6681d8
0066905c  00 c0 94 e5                                      ldr ip, [r4]
00669060  04 00 a0 e1                                      mov r0, r4
00669064  05 10 a0 e1                                      mov r1, r5
00669068  02 30 a0 e1                                      mov r3, r2
0066906c  0f e0 a0 e1                                      mov lr, pc
00669070  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669074  57 fc ff ea                                      b #0x6681d8
00669078  00 c0 94 e5                                      ldr ip, [r4]
0066907c  04 00 a0 e1                                      mov r0, r4
00669080  05 10 a0 e1                                      mov r1, r5
00669084  02 30 a0 e1                                      mov r3, r2
00669088  0f e0 a0 e1                                      mov lr, pc
0066908c  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669090  50 fc ff ea                                      b #0x6681d8
00669094  00 c0 94 e5                                      ldr ip, [r4]
00669098  04 00 a0 e1                                      mov r0, r4
0066909c  05 10 a0 e1                                      mov r1, r5
006690a0  02 30 a0 e1                                      mov r3, r2
006690a4  0f e0 a0 e1                                      mov lr, pc
006690a8  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006690ac  49 fc ff ea                                      b #0x6681d8
006690b0  00 c0 94 e5                                      ldr ip, [r4]
006690b4  04 00 a0 e1                                      mov r0, r4
006690b8  05 10 a0 e1                                      mov r1, r5
006690bc  02 30 a0 e1                                      mov r3, r2
006690c0  0f e0 a0 e1                                      mov lr, pc
006690c4  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006690c8  42 fc ff ea                                      b #0x6681d8
006690cc  00 c0 94 e5                                      ldr ip, [r4]
006690d0  04 00 a0 e1                                      mov r0, r4
006690d4  05 10 a0 e1                                      mov r1, r5
006690d8  02 30 a0 e1                                      mov r3, r2
006690dc  0f e0 a0 e1                                      mov lr, pc
006690e0  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006690e4  3b fc ff ea                                      b #0x6681d8
006690e8  00 c0 94 e5                                      ldr ip, [r4]
006690ec  04 00 a0 e1                                      mov r0, r4
006690f0  05 10 a0 e1                                      mov r1, r5
006690f4  02 30 a0 e1                                      mov r3, r2
006690f8  0f e0 a0 e1                                      mov lr, pc
006690fc  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669100  34 fc ff ea                                      b #0x6681d8
00669104  00 c0 94 e5                                      ldr ip, [r4]
00669108  04 00 a0 e1                                      mov r0, r4
0066910c  05 10 a0 e1                                      mov r1, r5
00669110  02 30 a0 e1                                      mov r3, r2
00669114  0f e0 a0 e1                                      mov lr, pc
00669118  68 f0 9c e5                                      ldr pc, [ip, #0x68]
0066911c  2d fc ff ea                                      b #0x6681d8
00669120  00 c0 94 e5                                      ldr ip, [r4]
00669124  04 00 a0 e1                                      mov r0, r4
00669128  05 10 a0 e1                                      mov r1, r5
0066912c  02 30 a0 e1                                      mov r3, r2
00669130  0f e0 a0 e1                                      mov lr, pc
00669134  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669138  26 fc ff ea                                      b #0x6681d8
0066913c  00 c0 94 e5                                      ldr ip, [r4]
00669140  04 00 a0 e1                                      mov r0, r4
00669144  05 10 a0 e1                                      mov r1, r5
00669148  02 30 a0 e1                                      mov r3, r2
0066914c  0f e0 a0 e1                                      mov lr, pc
00669150  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669154  1f fc ff ea                                      b #0x6681d8
00669158  00 c0 94 e5                                      ldr ip, [r4]
0066915c  04 00 a0 e1                                      mov r0, r4
00669160  05 10 a0 e1                                      mov r1, r5
00669164  02 30 a0 e1                                      mov r3, r2
00669168  0f e0 a0 e1                                      mov lr, pc
0066916c  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669170  18 fc ff ea                                      b #0x6681d8
00669174  00 c0 94 e5                                      ldr ip, [r4]
00669178  04 00 a0 e1                                      mov r0, r4
0066917c  05 10 a0 e1                                      mov r1, r5
00669180  02 30 a0 e1                                      mov r3, r2
00669184  0f e0 a0 e1                                      mov lr, pc
00669188  68 f0 9c e5                                      ldr pc, [ip, #0x68]
0066918c  11 fc ff ea                                      b #0x6681d8
00669190  00 c0 94 e5                                      ldr ip, [r4]
00669194  04 00 a0 e1                                      mov r0, r4
00669198  05 10 a0 e1                                      mov r1, r5
0066919c  02 30 a0 e1                                      mov r3, r2
006691a0  0f e0 a0 e1                                      mov lr, pc
006691a4  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006691a8  0a fc ff ea                                      b #0x6681d8
006691ac  00 c0 94 e5                                      ldr ip, [r4]
006691b0  04 00 a0 e1                                      mov r0, r4
006691b4  05 10 a0 e1                                      mov r1, r5
006691b8  02 30 a0 e1                                      mov r3, r2
006691bc  0f e0 a0 e1                                      mov lr, pc
006691c0  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006691c4  03 fc ff ea                                      b #0x6681d8
006691c8  00 c0 94 e5                                      ldr ip, [r4]
006691cc  04 00 a0 e1                                      mov r0, r4
006691d0  05 10 a0 e1                                      mov r1, r5
006691d4  02 30 a0 e1                                      mov r3, r2
006691d8  0f e0 a0 e1                                      mov lr, pc
006691dc  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006691e0  fc fb ff ea                                      b #0x6681d8
006691e4  00 c0 94 e5                                      ldr ip, [r4]
006691e8  04 00 a0 e1                                      mov r0, r4
006691ec  05 10 a0 e1                                      mov r1, r5
006691f0  02 30 a0 e1                                      mov r3, r2
006691f4  0f e0 a0 e1                                      mov lr, pc
006691f8  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006691fc  f5 fb ff ea                                      b #0x6681d8
00669200  00 c0 94 e5                                      ldr ip, [r4]
00669204  04 00 a0 e1                                      mov r0, r4
00669208  05 10 a0 e1                                      mov r1, r5
0066920c  02 30 a0 e1                                      mov r3, r2
00669210  0f e0 a0 e1                                      mov lr, pc
00669214  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669218  ee fb ff ea                                      b #0x6681d8
0066921c  00 c0 94 e5                                      ldr ip, [r4]
00669220  04 00 a0 e1                                      mov r0, r4
00669224  05 10 a0 e1                                      mov r1, r5
00669228  02 30 a0 e1                                      mov r3, r2
0066922c  0f e0 a0 e1                                      mov lr, pc
00669230  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669234  e7 fb ff ea                                      b #0x6681d8
00669238  00 c0 94 e5                                      ldr ip, [r4]
0066923c  04 00 a0 e1                                      mov r0, r4
00669240  05 10 a0 e1                                      mov r1, r5
00669244  02 30 a0 e1                                      mov r3, r2
00669248  0f e0 a0 e1                                      mov lr, pc
0066924c  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669250  e0 fb ff ea                                      b #0x6681d8
00669254  00 c0 94 e5                                      ldr ip, [r4]
00669258  04 00 a0 e1                                      mov r0, r4
0066925c  05 10 a0 e1                                      mov r1, r5
00669260  02 30 a0 e1                                      mov r3, r2
00669264  0f e0 a0 e1                                      mov lr, pc
00669268  68 f0 9c e5                                      ldr pc, [ip, #0x68]
0066926c  d9 fb ff ea                                      b #0x6681d8
00669270  00 c0 94 e5                                      ldr ip, [r4]
00669274  04 00 a0 e1                                      mov r0, r4
00669278  05 10 a0 e1                                      mov r1, r5
0066927c  02 30 a0 e1                                      mov r3, r2
00669280  0f e0 a0 e1                                      mov lr, pc
00669284  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669288  d2 fb ff ea                                      b #0x6681d8
0066928c  00 c0 94 e5                                      ldr ip, [r4]
00669290  04 00 a0 e1                                      mov r0, r4
00669294  05 10 a0 e1                                      mov r1, r5
00669298  02 30 a0 e1                                      mov r3, r2
0066929c  0f e0 a0 e1                                      mov lr, pc
006692a0  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006692a4  cb fb ff ea                                      b #0x6681d8
006692a8  00 c0 94 e5                                      ldr ip, [r4]
006692ac  04 00 a0 e1                                      mov r0, r4
006692b0  05 10 a0 e1                                      mov r1, r5
006692b4  02 30 a0 e1                                      mov r3, r2
006692b8  0f e0 a0 e1                                      mov lr, pc
006692bc  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006692c0  c4 fb ff ea                                      b #0x6681d8
006692c4  00 c0 94 e5                                      ldr ip, [r4]
006692c8  04 00 a0 e1                                      mov r0, r4
006692cc  05 10 a0 e1                                      mov r1, r5
006692d0  02 30 a0 e1                                      mov r3, r2
006692d4  0f e0 a0 e1                                      mov lr, pc
006692d8  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006692dc  bd fb ff ea                                      b #0x6681d8
006692e0  00 c0 94 e5                                      ldr ip, [r4]
006692e4  04 00 a0 e1                                      mov r0, r4
006692e8  05 10 a0 e1                                      mov r1, r5
006692ec  02 30 a0 e1                                      mov r3, r2
006692f0  0f e0 a0 e1                                      mov lr, pc
006692f4  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006692f8  b6 fb ff ea                                      b #0x6681d8
006692fc  00 c0 94 e5                                      ldr ip, [r4]
00669300  04 00 a0 e1                                      mov r0, r4
00669304  05 10 a0 e1                                      mov r1, r5
00669308  02 30 a0 e1                                      mov r3, r2
0066930c  0f e0 a0 e1                                      mov lr, pc
00669310  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669314  af fb ff ea                                      b #0x6681d8
00669318  00 c0 94 e5                                      ldr ip, [r4]
0066931c  04 00 a0 e1                                      mov r0, r4
00669320  05 10 a0 e1                                      mov r1, r5
00669324  02 30 a0 e1                                      mov r3, r2
00669328  0f e0 a0 e1                                      mov lr, pc
0066932c  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669330  a8 fb ff ea                                      b #0x6681d8
00669334  00 c0 94 e5                                      ldr ip, [r4]
00669338  04 00 a0 e1                                      mov r0, r4
0066933c  05 10 a0 e1                                      mov r1, r5
00669340  02 30 a0 e1                                      mov r3, r2
00669344  0f e0 a0 e1                                      mov lr, pc
00669348  68 f0 9c e5                                      ldr pc, [ip, #0x68]
0066934c  a1 fb ff ea                                      b #0x6681d8
00669350  00 c0 94 e5                                      ldr ip, [r4]
00669354  04 00 a0 e1                                      mov r0, r4
00669358  05 10 a0 e1                                      mov r1, r5
0066935c  02 30 a0 e1                                      mov r3, r2
00669360  0f e0 a0 e1                                      mov lr, pc
00669364  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669368  9a fb ff ea                                      b #0x6681d8
0066936c  00 c0 94 e5                                      ldr ip, [r4]
00669370  04 00 a0 e1                                      mov r0, r4
00669374  05 10 a0 e1                                      mov r1, r5
00669378  02 30 a0 e1                                      mov r3, r2
0066937c  0f e0 a0 e1                                      mov lr, pc
00669380  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669384  93 fb ff ea                                      b #0x6681d8
00669388  00 c0 94 e5                                      ldr ip, [r4]
0066938c  04 00 a0 e1                                      mov r0, r4
00669390  05 10 a0 e1                                      mov r1, r5
00669394  02 30 a0 e1                                      mov r3, r2
00669398  0f e0 a0 e1                                      mov lr, pc
0066939c  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006693a0  8c fb ff ea                                      b #0x6681d8
006693a4  00 c0 94 e5                                      ldr ip, [r4]
006693a8  04 00 a0 e1                                      mov r0, r4
006693ac  05 10 a0 e1                                      mov r1, r5
006693b0  02 30 a0 e1                                      mov r3, r2
006693b4  0f e0 a0 e1                                      mov lr, pc
006693b8  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006693bc  85 fb ff ea                                      b #0x6681d8
006693c0  00 c0 94 e5                                      ldr ip, [r4]
006693c4  04 00 a0 e1                                      mov r0, r4
006693c8  05 10 a0 e1                                      mov r1, r5
006693cc  02 30 a0 e1                                      mov r3, r2
006693d0  0f e0 a0 e1                                      mov lr, pc
006693d4  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006693d8  7e fb ff ea                                      b #0x6681d8
006693dc  00 c0 94 e5                                      ldr ip, [r4]
006693e0  04 00 a0 e1                                      mov r0, r4
006693e4  05 10 a0 e1                                      mov r1, r5
006693e8  02 30 a0 e1                                      mov r3, r2
006693ec  0f e0 a0 e1                                      mov lr, pc
006693f0  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006693f4  77 fb ff ea                                      b #0x6681d8
006693f8  00 c0 94 e5                                      ldr ip, [r4]
006693fc  04 00 a0 e1                                      mov r0, r4
00669400  05 10 a0 e1                                      mov r1, r5
00669404  02 30 a0 e1                                      mov r3, r2
00669408  0f e0 a0 e1                                      mov lr, pc
0066940c  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669410  70 fb ff ea                                      b #0x6681d8
00669414  00 c0 94 e5                                      ldr ip, [r4]
00669418  04 00 a0 e1                                      mov r0, r4
0066941c  05 10 a0 e1                                      mov r1, r5
00669420  02 30 a0 e1                                      mov r3, r2
00669424  0f e0 a0 e1                                      mov lr, pc
00669428  68 f0 9c e5                                      ldr pc, [ip, #0x68]
0066942c  69 fb ff ea                                      b #0x6681d8
00669430  00 c0 94 e5                                      ldr ip, [r4]
00669434  04 00 a0 e1                                      mov r0, r4
00669438  05 10 a0 e1                                      mov r1, r5
0066943c  02 30 a0 e1                                      mov r3, r2
00669440  0f e0 a0 e1                                      mov lr, pc
00669444  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669448  62 fb ff ea                                      b #0x6681d8
0066944c  00 c0 94 e5                                      ldr ip, [r4]
00669450  04 00 a0 e1                                      mov r0, r4
00669454  05 10 a0 e1                                      mov r1, r5
00669458  02 30 a0 e1                                      mov r3, r2
0066945c  0f e0 a0 e1                                      mov lr, pc
00669460  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669464  5b fb ff ea                                      b #0x6681d8
00669468  00 c0 94 e5                                      ldr ip, [r4]
0066946c  04 00 a0 e1                                      mov r0, r4
00669470  05 10 a0 e1                                      mov r1, r5
00669474  02 30 a0 e1                                      mov r3, r2
00669478  0f e0 a0 e1                                      mov lr, pc
0066947c  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669480  54 fb ff ea                                      b #0x6681d8
00669484  08 20 a0 e1                                      mov r2, r8
00669488  00 c0 94 e5                                      ldr ip, [r4]
0066948c  04 00 a0 e1                                      mov r0, r4
00669490  05 10 a0 e1                                      mov r1, r5
00669494  08 30 a0 e1                                      mov r3, r8
00669498  0f e0 a0 e1                                      mov lr, pc
0066949c  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006694a0  4c fb ff ea                                      b #0x6681d8
006694a4  04 00 a0 e1                                      mov r0, r4
006694a8  00 c0 94 e5                                      ldr ip, [r4]
006694ac  05 10 a0 e1                                      mov r1, r5
006694b0  02 30 a0 e1                                      mov r3, r2
006694b4  0f e0 a0 e1                                      mov lr, pc
006694b8  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006694bc  08 00 a0 e1                                      mov r0, r8
006694c0  c8 9d f2 eb                                      bl #0x310be8
006694c4  43 fb ff ea                                      b #0x6681d8
006694c8  00 c0 94 e5                                      ldr ip, [r4]
006694cc  04 00 a0 e1                                      mov r0, r4
006694d0  05 10 a0 e1                                      mov r1, r5
006694d4  02 30 a0 e1                                      mov r3, r2
006694d8  0f e0 a0 e1                                      mov lr, pc
006694dc  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006694e0  3c fb ff ea                                      b #0x6681d8
006694e4  00 c0 94 e5                                      ldr ip, [r4]
006694e8  04 00 a0 e1                                      mov r0, r4
006694ec  05 10 a0 e1                                      mov r1, r5
006694f0  02 30 a0 e1                                      mov r3, r2
006694f4  0f e0 a0 e1                                      mov lr, pc
006694f8  68 f0 9c e5                                      ldr pc, [ip, #0x68]
006694fc  35 fb ff ea                                      b #0x6681d8
00669500  00 c0 94 e5                                      ldr ip, [r4]
00669504  04 00 a0 e1                                      mov r0, r4
00669508  05 10 a0 e1                                      mov r1, r5
0066950c  02 30 a0 e1                                      mov r3, r2
00669510  0f e0 a0 e1                                      mov lr, pc
00669514  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669518  2e fb ff ea                                      b #0x6681d8
0066951c  00 c0 94 e5                                      ldr ip, [r4]
00669520  04 00 a0 e1                                      mov r0, r4
00669524  05 10 a0 e1                                      mov r1, r5
00669528  02 30 a0 e1                                      mov r3, r2
0066952c  0f e0 a0 e1                                      mov lr, pc
00669530  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00669534  27 fb ff ea                                      b #0x6681d8

; FUNCTION 0x005985e4, declared_size=116, range_size=116, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode19getSceneNodeFromUIDEPKc
; demangled: glitch::scene::ISceneNode::getSceneNodeFromUID(char const*)
; decoder-mode: arm
005985e4  70 40 2d e9                                      push {r4, r5, r6, lr}
005985e8  01 50 a0 e1                                      mov r5, r1
005985ec  00 30 90 e5                                      ldr r3, [r0]
005985f0  00 40 a0 e1                                      mov r4, r0
005985f4  0f e0 a0 e1                                      mov lr, pc
005985f8  54 f0 93 e5                                      ldr pc, [r3, #0x54]
005985fc  05 10 a0 e1                                      mov r1, r5
00598600  38 d8 f5 eb                                      bl #0x30e6e8
00598604  00 00 50 e3                                      cmp r0, #0
00598608  01 00 00 1a                                      bne #0x598614
0059860c  04 00 a0 e1                                      mov r0, r4
00598610  70 80 bd e8                                      pop {r4, r5, r6, pc}
00598614  04 60 a0 e1                                      mov r6, r4
00598618  f4 40 b6 e5                                      ldr r4, [r6, #0xf4]!
0059861c  07 00 00 ea                                      b #0x598640
00598620  00 00 54 e3                                      cmp r4, #0
00598624  04 00 a0 01                                      moveq r0, r4
00598628  04 00 44 12                                      subne r0, r4, #4
0059862c  05 10 a0 e1                                      mov r1, r5
00598630  eb ff ff eb                                      bl #0x5985e4
00598634  00 00 50 e3                                      cmp r0, #0
00598638  04 00 00 1a                                      bne #0x598650
0059863c  00 40 94 e5                                      ldr r4, [r4]
00598640  04 00 56 e1                                      cmp r6, r4
00598644  f5 ff ff 1a                                      bne #0x598620
00598648  00 40 a0 e3                                      mov r4, #0
0059864c  ee ff ff ea                                      b #0x59860c
00598650  00 40 a0 e1                                      mov r4, r0
00598654  ec ff ff ea                                      b #0x59860c

; FUNCTION 0x00660af4, declared_size=300, range_size=300, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet4initERKN5boost13intrusive_ptrINS0_13CAnimationSetEEE
; demangled: glitch::collada::CSceneNodeAnimatorSet::init(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&)
; decoder-mode: arm
00660af4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00660af8  00 30 91 e5                                      ldr r3, [r1]
00660afc  00 40 a0 e1                                      mov r4, r0
00660b00  14 d0 4d e2                                      sub sp, sp, #0x14
00660b04  00 00 53 e3                                      cmp r3, #0
00660b08  04 20 93 15                                      ldrne r2, [r3, #4]
00660b0c  01 20 82 12                                      addne r2, r2, #1
00660b10  04 20 83 15                                      strne r2, [r3, #4]
00660b14  24 00 90 e5                                      ldr r0, [r0, #0x24]
00660b18  24 30 84 e5                                      str r3, [r4, #0x24]
00660b1c  00 00 50 e3                                      cmp r0, #0
00660b20  01 00 00 0a                                      beq #0x660b2c
00660b24  96 f2 f2 eb                                      bl #0x31d584
00660b28  24 30 94 e5                                      ldr r3, [r4, #0x24]
00660b2c  03 00 a0 e1                                      mov r0, r3
00660b30  48 f9 ff eb                                      bl #0x65f058
00660b34  28 70 84 e2                                      add r7, r4, #0x28
00660b38  00 50 a0 e1                                      mov r5, r0
00660b3c  00 10 a0 e1                                      mov r1, r0
00660b40  07 00 a0 e1                                      mov r0, r7
00660b44  5e fc ff eb                                      bl #0x65fcc4
00660b48  00 60 a0 e3                                      mov r6, #0
00660b4c  10 20 8d e2                                      add r2, sp, #0x10
00660b50  04 60 22 e5                                      str r6, [r2, #-4]!
00660b54  07 00 a0 e1                                      mov r0, r7
00660b58  05 10 a0 e1                                      mov r1, r5
00660b5c  37 f8 ff eb                                      bl #0x65ec40
00660b60  06 00 55 e1                                      cmp r5, r6
00660b64  05 00 00 da                                      ble #0x660b80
00660b68  06 20 a0 e1                                      mov r2, r6
00660b6c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00660b70  06 21 83 e7                                      str r2, [r3, r6, lsl #2]
00660b74  01 60 86 e2                                      add r6, r6, #1
00660b78  05 00 56 e1                                      cmp r6, r5
00660b7c  fa ff ff 1a                                      bne #0x660b6c
00660b80  34 70 84 e2                                      add r7, r4, #0x34
00660b84  07 00 a0 e1                                      mov r0, r7
00660b88  05 10 a0 e1                                      mov r1, r5
00660b8c  85 fc ff eb                                      bl #0x65fda8
00660b90  00 60 a0 e3                                      mov r6, #0
00660b94  10 20 8d e2                                      add r2, sp, #0x10
00660b98  08 60 22 e5                                      str r6, [r2, #-8]!
00660b9c  07 00 a0 e1                                      mov r0, r7
00660ba0  05 10 a0 e1                                      mov r1, r5
00660ba4  40 70 84 e2                                      add r7, r4, #0x40
00660ba8  69 f8 ff eb                                      bl #0x65ed54
00660bac  07 00 a0 e1                                      mov r0, r7
00660bb0  05 10 a0 e1                                      mov r1, r5
00660bb4  b4 fc ff eb                                      bl #0x65fe8c
00660bb8  10 20 8d e2                                      add r2, sp, #0x10
00660bbc  0c 60 22 e5                                      str r6, [r2, #-0xc]!
00660bc0  07 00 a0 e1                                      mov r0, r7
00660bc4  05 10 a0 e1                                      mov r1, r5
00660bc8  66 fe ff eb                                      bl #0x660568
00660bcc  06 10 a0 e1                                      mov r1, r6
00660bd0  48 00 a0 e3                                      mov r0, #0x48
00660bd4  74 4d fb eb                                      bl #0x5341ac
00660bd8  00 50 a0 e1                                      mov r5, r0
00660bdc  97 18 00 eb                                      bl #0x666e40
00660be0  04 00 a0 e1                                      mov r0, r4
00660be4  05 10 a0 e1                                      mov r1, r5
00660be8  00 30 94 e5                                      ldr r3, [r4]
00660bec  0f e0 a0 e1                                      mov lr, pc
00660bf0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00660bf4  04 00 a0 e1                                      mov r0, r4
00660bf8  00 30 94 e5                                      ldr r3, [r4]
00660bfc  06 10 a0 e1                                      mov r1, r6
00660c00  0f e0 a0 e1                                      mov lr, pc
00660c04  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00660c08  00 30 95 e5                                      ldr r3, [r5]
00660c0c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00660c10  00 00 85 e0                                      add r0, r5, r0
00660c14  5a f2 f2 eb                                      bl #0x31d584
00660c18  14 d0 8d e2                                      add sp, sp, #0x14
00660c1c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0065f124, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet17getAnimationTrackEi
; demangled: glitch::collada::CSceneNodeAnimatorSet::getAnimationTrack(int)
; decoder-mode: arm
0065f124  10 40 2d e9                                      push {r4, lr}
0065f128  24 30 90 e5                                      ldr r3, [r0, #0x24]
0065f12c  03 00 a0 e1                                      mov r0, r3
0065f130  00 30 93 e5                                      ldr r3, [r3]
0065f134  0f e0 a0 e1                                      mov lr, pc
0065f138  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0065f13c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065f15c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet10getBindURIEi
; demangled: glitch::collada::CSceneNodeAnimatorSet::getBindURI(int)
; decoder-mode: arm
0065f15c  10 40 2d e9                                      push {r4, lr}
0065f160  24 30 90 e5                                      ldr r3, [r0, #0x24]
0065f164  03 00 a0 e1                                      mov r0, r3
0065f168  00 30 93 e5                                      ldr r3, [r3]
0065f16c  0f e0 a0 e1                                      mov lr, pc
0065f170  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0065f174  04 00 90 e5                                      ldr r0, [r0, #4]
0065f178  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065f17c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet14getTargetCountEv
; demangled: glitch::collada::CSceneNodeAnimatorSet::getTargetCount()
; decoder-mode: arm
0065f17c  24 30 90 e5                                      ldr r3, [r0, #0x24]
0065f180  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
0065f184  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f208, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet9setTargetEiPvPKNS0_15animation_track15CApplicatorInfoE
; demangled: glitch::collada::CSceneNodeAnimatorSet::setTarget(int, void*, glitch::collada::animation_track::CApplicatorInfo const*)
; decoder-mode: arm
0065f208  70 40 2d e9                                      push {r4, r5, r6, lr}
0065f20c  28 c0 90 e5                                      ldr ip, [r0, #0x28]
0065f210  03 60 a0 e1                                      mov r6, r3
0065f214  00 40 a0 e1                                      mov r4, r0
0065f218  01 21 8c e7                                      str r2, [ip, r1, lsl #2]
0065f21c  34 30 90 e5                                      ldr r3, [r0, #0x34]
0065f220  01 50 a0 e1                                      mov r5, r1
0065f224  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
0065f228  00 00 53 e3                                      cmp r3, #0
0065f22c  06 00 00 0a                                      beq #0x65f24c
0065f230  03 00 a0 e1                                      mov r0, r3
0065f234  00 30 93 e5                                      ldr r3, [r3]
0065f238  0f e0 a0 e1                                      mov lr, pc
0065f23c  04 f0 93 e5                                      ldr pc, [r3, #4]
0065f240  34 30 94 e5                                      ldr r3, [r4, #0x34]
0065f244  00 20 a0 e3                                      mov r2, #0
0065f248  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
0065f24c  00 00 56 e3                                      cmp r6, #0
0065f250  05 00 00 0a                                      beq #0x65f26c
0065f254  06 00 a0 e1                                      mov r0, r6
0065f258  00 30 96 e5                                      ldr r3, [r6]
0065f25c  34 40 94 e5                                      ldr r4, [r4, #0x34]
0065f260  0f e0 a0 e1                                      mov lr, pc
0065f264  08 f0 93 e5                                      ldr pc, [r3, #8]
0065f268  05 01 84 e7                                      str r0, [r4, r5, lsl #2]
0065f26c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065f418, declared_size=452, range_size=452, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet20applyAnimationValuesEj
; demangled: glitch::collada::CSceneNodeAnimatorSet::applyAnimationValues(unsigned int)
; decoder-mode: arm
0065f418  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065f41c  24 30 90 e5                                      ldr r3, [r0, #0x24]
0065f420  44 d0 4d e2                                      sub sp, sp, #0x44
0065f424  00 40 a0 e1                                      mov r4, r0
0065f428  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
0065f42c  01 50 a0 e1                                      mov r5, r1
0065f430  00 00 53 e3                                      cmp r3, #0
0065f434  02 00 00 1a                                      bne #0x65f444
0065f438  18 30 90 e5                                      ldr r3, [r0, #0x18]
0065f43c  00 00 53 e3                                      cmp r3, #0
0065f440  5e 00 00 0a                                      beq #0x65f5c0
0065f444  04 00 a0 e1                                      mov r0, r4
0065f448  05 10 a0 e1                                      mov r1, r5
0065f44c  fd 21 00 eb                                      bl #0x667c48
0065f450  00 30 94 e5                                      ldr r3, [r4]
0065f454  04 00 a0 e1                                      mov r0, r4
0065f458  0f e0 a0 e1                                      mov lr, pc
0065f45c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065f460  00 00 50 e3                                      cmp r0, #0
0065f464  57 00 00 0a                                      beq #0x65f5c8
0065f468  04 00 90 e5                                      ldr r0, [r0, #4]
0065f46c  0c 00 8d e5                                      str r0, [sp, #0xc]
0065f470  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0065f474  50 10 94 e5                                      ldr r1, [r4, #0x50]
0065f478  24 00 94 e5                                      ldr r0, [r4, #0x24]
0065f47c  01 30 53 e2                                      subs r3, r3, #1
0065f480  01 30 a0 13                                      movne r3, #1
0065f484  14 30 8d e5                                      str r3, [sp, #0x14]
0065f488  09 ff ff eb                                      bl #0x65f0b4
0065f48c  00 30 90 e5                                      ldr r3, [r0]
0065f490  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0065f494  04 00 a0 e1                                      mov r0, r4
0065f498  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065f49c  20 30 93 e5                                      ldr r3, [r3, #0x20]
0065f4a0  14 50 93 e5                                      ldr r5, [r3, #0x14]
0065f4a4  ae ff ff eb                                      bl #0x65f364
0065f4a8  10 00 8d e5                                      str r0, [sp, #0x10]
0065f4ac  24 30 94 e5                                      ldr r3, [r4, #0x24]
0065f4b0  00 50 55 e2                                      subs r5, r5, #0
0065f4b4  01 50 a0 13                                      movne r5, #1
0065f4b8  31 50 cd e5                                      strb r5, [sp, #0x31]
0065f4bc  3c b0 93 e5                                      ldr fp, [r3, #0x3c]
0065f4c0  00 00 5b e3                                      cmp fp, #0
0065f4c4  3d 00 00 0a                                      beq #0x65f5c0
0065f4c8  24 10 8d e2                                      add r1, sp, #0x24
0065f4cc  34 20 8d e2                                      add r2, sp, #0x34
0065f4d0  00 50 a0 e3                                      mov r5, #0
0065f4d4  18 10 8d e5                                      str r1, [sp, #0x18]
0065f4d8  1c 20 8d e5                                      str r2, [sp, #0x1c]
0065f4dc  02 00 00 ea                                      b #0x65f4ec
0065f4e0  01 50 85 e2                                      add r5, r5, #1
0065f4e4  0b 00 55 e1                                      cmp r5, fp
0065f4e8  34 00 00 0a                                      beq #0x65f5c0
0065f4ec  05 10 a0 e1                                      mov r1, r5
0065f4f0  00 30 94 e5                                      ldr r3, [r4]
0065f4f4  04 00 a0 e1                                      mov r0, r4
0065f4f8  0f e0 a0 e1                                      mov lr, pc
0065f4fc  80 f0 93 e5                                      ldr pc, [r3, #0x80]
0065f500  00 00 50 e3                                      cmp r0, #0
0065f504  f5 ff ff 0a                                      beq #0x65f4e0
0065f508  28 30 94 e5                                      ldr r3, [r4, #0x28]
0065f50c  05 81 a0 e1                                      lsl r8, r5, #2
0065f510  05 61 93 e7                                      ldr r6, [r3, r5, lsl #2]
0065f514  00 00 56 e3                                      cmp r6, #0
0065f518  06 20 a0 e1                                      mov r2, r6
0065f51c  ef ff ff 0a                                      beq #0x65f4e0
0065f520  4c 90 94 e5                                      ldr sb, [r4, #0x4c]
0065f524  24 30 94 e5                                      ldr r3, [r4, #0x24]
0065f528  0c c0 a0 e3                                      mov ip, #0xc
0065f52c  09 90 85 e0                                      add sb, r5, sb
0065f530  9c 09 09 e0                                      mul sb, ip, sb
0065f534  30 a0 93 e5                                      ldr sl, [r3, #0x30]
0065f538  09 70 8a e0                                      add r7, sl, sb
0065f53c  04 10 97 e5                                      ldr r1, [r7, #4]
0065f540  00 00 51 e3                                      cmp r1, #0
0065f544  07 00 00 0a                                      beq #0x65f568
0065f548  18 00 93 e5                                      ldr r0, [r3, #0x18]
0065f54c  34 30 94 e5                                      ldr r3, [r4, #0x34]
0065f550  08 c0 90 e7                                      ldr ip, [r0, r8]
0065f554  08 30 93 e7                                      ldr r3, [r3, r8]
0065f558  0c 00 a0 e1                                      mov r0, ip
0065f55c  00 c0 9c e5                                      ldr ip, [ip]
0065f560  0f e0 a0 e1                                      mov lr, pc
0065f564  70 f0 9c e5                                      ldr pc, [ip, #0x70]
0065f568  09 30 9a e7                                      ldr r3, [sl, sb]
0065f56c  02 00 53 e3                                      cmp r3, #2
0065f570  da ff ff 1a                                      bne #0x65f4e0
0065f574  08 20 97 e5                                      ldr r2, [r7, #8]
0065f578  34 30 94 e5                                      ldr r3, [r4, #0x34]
0065f57c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0065f580  34 20 8d e5                                      str r2, [sp, #0x34]
0065f584  18 20 9d e5                                      ldr r2, [sp, #0x18]
0065f588  38 10 8d e5                                      str r1, [sp, #0x38]
0065f58c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0065f590  3c 20 8d e5                                      str r2, [sp, #0x3c]
0065f594  40 10 94 e5                                      ldr r1, [r4, #0x40]
0065f598  08 30 93 e7                                      ldr r3, [r3, r8]
0065f59c  06 20 a0 e1                                      mov r2, r6
0065f5a0  08 80 81 e0                                      add r8, r1, r8
0065f5a4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0065f5a8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0065f5ac  01 50 85 e2                                      add r5, r5, #1
0065f5b0  00 11 8d e8                                      stm sp, {r8, ip}
0065f5b4  c1 2a 00 eb                                      bl #0x66a0c0
0065f5b8  0b 00 55 e1                                      cmp r5, fp
0065f5bc  ca ff ff 1a                                      bne #0x65f4ec
0065f5c0  44 d0 8d e2                                      add sp, sp, #0x44
0065f5c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065f5c8  14 10 94 e5                                      ldr r1, [r4, #0x14]
0065f5cc  05 00 a0 e1                                      mov r0, r5
0065f5d0  55 bd f2 eb                                      bl #0x30eb2c
0065f5d4  0c 10 8d e5                                      str r1, [sp, #0xc]
0065f5d8  a4 ff ff ea                                      b #0x65f470
