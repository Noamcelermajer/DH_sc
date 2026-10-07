; Exact ARM listing copied from the recovered original assembly.
; Original source: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; Original ELF byte range: 0x0060e634 through 0x0060e6b7 (132 bytes).
; SHA-256: d7c22aecae934a74d1038d0c772e343ec9ce9e628d8534e4cd136978f70292c2

; FUNCTION 0x0060e634, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPNS0_9SGeometryE
; demangled: glitch::collada::CColladaDatabase::constructGeometry(glitch::video::IVideoDriver*, glitch::collada::SGeometry*) const
; decoder-mode: arm
0060e634  30 40 2d e9                                      push {r4, r5, lr}
0060e638  00 c0 53 e2                                      subs ip, r3, #0
0060e63c  14 d0 4d e2                                      sub sp, sp, #0x14
0060e640  00 40 a0 e1                                      mov r4, r0
0060e644  02 30 a0 e1                                      mov r3, r2
0060e648  02 00 00 0a                                      beq #0x60e658
0060e64c  08 20 9c e5                                      ldr r2, [ip, #8]
0060e650  00 00 52 e3                                      cmp r2, #0
0060e654  04 00 00 0a                                      beq #0x60e66c
0060e658  00 30 a0 e3                                      mov r3, #0
0060e65c  00 30 84 e5                                      str r3, [r4]
0060e660  04 00 a0 e1                                      mov r0, r4
0060e664  14 d0 8d e2                                      add sp, sp, #0x14
0060e668  30 80 bd e8                                      pop {r4, r5, pc}
0060e66c  04 00 91 e5                                      ldr r0, [r1, #4]
0060e670  01 20 a0 e1                                      mov r2, r1
0060e674  00 50 90 e5                                      ldr r5, [r0]
0060e678  00 10 a0 e1                                      mov r1, r0
0060e67c  00 c0 8d e5                                      str ip, [sp]
0060e680  0c 00 8d e2                                      add r0, sp, #0xc
0060e684  0f e0 a0 e1                                      mov lr, pc
0060e688  34 f0 95 e5                                      ldr pc, [r5, #0x34]
0060e68c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060e690  00 00 50 e3                                      cmp r0, #0
0060e694  00 00 84 e5                                      str r0, [r4]
0060e698  04 30 90 15                                      ldrne r3, [r0, #4]
0060e69c  01 30 83 12                                      addne r3, r3, #1
0060e6a0  04 30 80 15                                      strne r3, [r0, #4]
0060e6a4  0c 00 9d 15                                      ldrne r0, [sp, #0xc]
0060e6a8  00 00 50 e3                                      cmp r0, #0
0060e6ac  eb ff ff 0a                                      beq #0x60e660
0060e6b0  b3 3b f4 eb                                      bl #0x31d584
0060e6b4  e9 ff ff ea                                      b #0x60e660
