; Exact recovered ARM assembly blocks; original symbols and instruction bytes retained.

; FUNCTION 0x0060e3c8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase8getImageEi
; demangled: glitch::collada::CColladaDatabase::getImage(int) const
; decoder-mode: arm
0060e3c8  00 30 90 e5                                      ldr r3, [r0]
0060e3cc  14 00 a0 e3                                      mov r0, #0x14
0060e3d0  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e3d4  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e3d8  50 30 93 e5                                      ldr r3, [r3, #0x50]
0060e3dc  90 31 20 e0                                      mla r0, r0, r1, r3
0060e3e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e3e4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase9getEffectEi
; demangled: glitch::collada::CColladaDatabase::getEffect(int) const
; decoder-mode: arm
0060e3e4  00 30 90 e5                                      ldr r3, [r0]
0060e3e8  74 00 a0 e3                                      mov r0, #0x74
0060e3ec  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e3f0  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e3f4  58 30 93 e5                                      ldr r3, [r3, #0x58]
0060e3f8  90 31 20 e0                                      mla r0, r0, r1, r3
0060e3fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e400, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase11getMaterialEi
; demangled: glitch::collada::CColladaDatabase::getMaterial(int) const
; decoder-mode: arm
0060e400  00 30 90 e5                                      ldr r3, [r0]
0060e404  24 00 a0 e3                                      mov r0, #0x24
0060e408  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e40c  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e410  60 30 93 e5                                      ldr r3, [r3, #0x60]
0060e414  90 31 20 e0                                      mla r0, r0, r1, r3
0060e418  1e ff 2f e1                                      bx lr

; FUNCTION 0x0061b154, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase8getImageEPKc
; demangled: glitch::collada::CColladaDatabase::getImage(char const*) const
; decoder-mode: arm
0061b154  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061b158  00 30 90 e5                                      ldr r3, [r0]
0061b15c  01 70 a0 e1                                      mov r7, r1
0061b160  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061b164  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061b168  4c 60 93 e5                                      ldr r6, [r3, #0x4c]
0061b16c  00 00 56 e3                                      cmp r6, #0
0061b170  0d 00 00 da                                      ble #0x61b1ac
0061b174  50 40 93 e5                                      ldr r4, [r3, #0x50]
0061b178  00 50 a0 e3                                      mov r5, #0
0061b17c  02 00 00 ea                                      b #0x61b18c
0061b180  06 00 55 e1                                      cmp r5, r6
0061b184  14 40 84 e2                                      add r4, r4, #0x14
0061b188  07 00 00 0a                                      beq #0x61b1ac
0061b18c  00 00 94 e5                                      ldr r0, [r4]
0061b190  07 10 a0 e1                                      mov r1, r7
0061b194  60 cc f3 eb                                      bl #0x30e31c
0061b198  00 00 50 e3                                      cmp r0, #0
0061b19c  01 50 85 e2                                      add r5, r5, #1
0061b1a0  f6 ff ff 1a                                      bne #0x61b180
0061b1a4  04 00 a0 e1                                      mov r0, r4
0061b1a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061b1ac  00 00 a0 e3                                      mov r0, #0
0061b1b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061b0ac, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase9getEffectEPKc
; demangled: glitch::collada::CColladaDatabase::getEffect(char const*) const
; decoder-mode: arm
0061b0ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061b0b0  00 30 90 e5                                      ldr r3, [r0]
0061b0b4  01 70 a0 e1                                      mov r7, r1
0061b0b8  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061b0bc  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061b0c0  54 60 93 e5                                      ldr r6, [r3, #0x54]
0061b0c4  00 00 56 e3                                      cmp r6, #0
0061b0c8  0d 00 00 da                                      ble #0x61b104
0061b0cc  58 40 93 e5                                      ldr r4, [r3, #0x58]
0061b0d0  00 50 a0 e3                                      mov r5, #0
0061b0d4  02 00 00 ea                                      b #0x61b0e4
0061b0d8  06 00 55 e1                                      cmp r5, r6
0061b0dc  74 40 84 e2                                      add r4, r4, #0x74
0061b0e0  07 00 00 0a                                      beq #0x61b104
0061b0e4  00 00 94 e5                                      ldr r0, [r4]
0061b0e8  07 10 a0 e1                                      mov r1, r7
0061b0ec  8a cc f3 eb                                      bl #0x30e31c
0061b0f0  00 00 50 e3                                      cmp r0, #0
0061b0f4  01 50 85 e2                                      add r5, r5, #1
0061b0f8  f6 ff ff 1a                                      bne #0x61b0d8
0061b0fc  04 00 a0 e1                                      mov r0, r4
0061b100  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061b104  00 00 a0 e3                                      mov r0, #0
0061b108  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061ac28, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase11getMaterialEPKc
; demangled: glitch::collada::CColladaDatabase::getMaterial(char const*) const
; decoder-mode: arm
0061ac28  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061ac2c  00 30 90 e5                                      ldr r3, [r0]
0061ac30  01 70 a0 e1                                      mov r7, r1
0061ac34  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061ac38  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061ac3c  5c 60 93 e5                                      ldr r6, [r3, #0x5c]
0061ac40  00 00 56 e3                                      cmp r6, #0
0061ac44  0d 00 00 da                                      ble #0x61ac80
0061ac48  60 40 93 e5                                      ldr r4, [r3, #0x60]
0061ac4c  00 50 a0 e3                                      mov r5, #0
0061ac50  02 00 00 ea                                      b #0x61ac60
0061ac54  06 00 55 e1                                      cmp r5, r6
0061ac58  24 40 84 e2                                      add r4, r4, #0x24
0061ac5c  07 00 00 0a                                      beq #0x61ac80
0061ac60  00 00 94 e5                                      ldr r0, [r4]
0061ac64  07 10 a0 e1                                      mov r1, r7
0061ac68  ab cd f3 eb                                      bl #0x30e31c
0061ac6c  00 00 50 e3                                      cmp r0, #0
0061ac70  01 50 85 e2                                      add r5, r5, #1
0061ac74  f6 ff ff 1a                                      bne #0x61ac54
0061ac78  04 00 a0 e1                                      mov r0, r4
0061ac7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061ac80  00 00 a0 e3                                      mov r0, #0
0061ac84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
