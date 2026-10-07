; Selected original ARM listings from the APK ELF, preserving recovered addresses and instruction bytes.
; The exact ELF byte ranges and SHA-256 digests are in functions.json.

; AUDIT-NAME: animation_track_factory
; AUDIT-CLAIM: The transform-track factory selects the quaternion-angle singleton for channel codes 6-9 and dispatches its scalar variant from the animation offset/scale record.
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

; AUDIT-NAME: quaternion_angle_singleton_float
; AUDIT-CLAIM: Initializes the quaternion-angle CApplyValueEx singleton/vtable for the float scalar template.
; FUNCTION 0x006100dc, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getInstance()
; decoder-mode: arm
006100dc  70 40 2d e9                                      push {r4, r5, r6, lr}
006100e0  70 40 9f e5                                      ldr r4, [pc, #0x70]
006100e4  70 30 9f e5                                      ldr r3, [pc, #0x70]
006100e8  04 40 8f e0                                      add r4, pc, r4
006100ec  03 60 94 e7                                      ldr r6, [r4, r3]
006100f0  00 30 96 e5                                      ldr r3, [r6]
006100f4  01 00 13 e3                                      tst r3, #1
006100f8  02 00 00 0a                                      beq #0x610108
006100fc  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610100  05 00 94 e7                                      ldr r0, [r4, r5]
00610104  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610108  06 00 a0 e1                                      mov r0, r6
0061010c  96 f9 f3 eb                                      bl #0x30e76c
00610110  00 00 50 e3                                      cmp r0, #0
00610114  f8 ff ff 0a                                      beq #0x6100fc
00610118  44 30 9f e5                                      ldr r3, [pc, #0x44]
0061011c  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610120  06 00 a0 e1                                      mov r0, r6
00610124  03 30 94 e7                                      ldr r3, [r4, r3]
00610128  05 60 94 e7                                      ldr r6, [r4, r5]
0061012c  08 30 83 e2                                      add r3, r3, #8
00610130  00 30 86 e5                                      str r3, [r6]
00610134  40 fa f3 eb                                      bl #0x30ea3c
00610138  28 30 9f e5                                      ldr r3, [pc, #0x28]
0061013c  06 00 a0 e1                                      mov r0, r6
00610140  03 10 94 e7                                      ldr r1, [r4, r3]
00610144  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610148  03 20 94 e7                                      ldr r2, [r4, r3]
0061014c  6c f8 f3 eb                                      bl #0x30e304
00610150  05 00 94 e7                                      ldr r0, [r4, r5]
00610154  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610158  a8 49 38 00 d8 10 00 00 a4 41 00 00 54 27 00 00  .byte 0xa8, 0x49, 0x38, 0x00, 0xd8, 0x10, 0x00, 0x00, 0xa4, 0x41, 0x00, 0x00, 0x54, 0x27, 0x00, 0x00
00610168  64 22 00 00 90 18 00 00                          .byte 0x64, 0x22, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; AUDIT-NAME: quaternion_angle_singleton_short
; AUDIT-CLAIM: Initializes the quaternion-angle CApplyValueEx singleton/vtable for the short scalar template.
; FUNCTION 0x00610170, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getInstance()
; decoder-mode: arm
00610170  70 40 2d e9                                      push {r4, r5, r6, lr}
00610174  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610178  70 30 9f e5                                      ldr r3, [pc, #0x70]
0061017c  04 40 8f e0                                      add r4, pc, r4
00610180  03 60 94 e7                                      ldr r6, [r4, r3]
00610184  00 30 96 e5                                      ldr r3, [r6]
00610188  01 00 13 e3                                      tst r3, #1
0061018c  02 00 00 0a                                      beq #0x61019c
00610190  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610194  05 00 94 e7                                      ldr r0, [r4, r5]
00610198  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061019c  06 00 a0 e1                                      mov r0, r6
006101a0  71 f9 f3 eb                                      bl #0x30e76c
006101a4  00 00 50 e3                                      cmp r0, #0
006101a8  f8 ff ff 0a                                      beq #0x610190
006101ac  44 30 9f e5                                      ldr r3, [pc, #0x44]
006101b0  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006101b4  06 00 a0 e1                                      mov r0, r6
006101b8  03 30 94 e7                                      ldr r3, [r4, r3]
006101bc  05 60 94 e7                                      ldr r6, [r4, r5]
006101c0  08 30 83 e2                                      add r3, r3, #8
006101c4  00 30 86 e5                                      str r3, [r6]
006101c8  1b fa f3 eb                                      bl #0x30ea3c
006101cc  28 30 9f e5                                      ldr r3, [pc, #0x28]
006101d0  06 00 a0 e1                                      mov r0, r6
006101d4  03 10 94 e7                                      ldr r1, [r4, r3]
006101d8  20 30 9f e5                                      ldr r3, [pc, #0x20]
006101dc  03 20 94 e7                                      ldr r2, [r4, r3]
006101e0  47 f8 f3 eb                                      bl #0x30e304
006101e4  05 00 94 e7                                      ldr r0, [r4, r5]
006101e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006101ec  14 49 38 00 f8 08 00 00 bc 3a 00 00 e8 14 00 00  .byte 0x14, 0x49, 0x38, 0x00, 0xf8, 0x08, 0x00, 0x00, 0xbc, 0x3a, 0x00, 0x00, 0xe8, 0x14, 0x00, 0x00
006101fc  74 15 00 00 90 18 00 00                          .byte 0x74, 0x15, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; AUDIT-NAME: quaternion_angle_singleton_char
; AUDIT-CLAIM: Initializes the quaternion-angle CApplyValueEx singleton/vtable for the char scalar template.
; FUNCTION 0x00610204, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getInstance()
; decoder-mode: arm
00610204  70 40 2d e9                                      push {r4, r5, r6, lr}
00610208  70 40 9f e5                                      ldr r4, [pc, #0x70]
0061020c  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610210  04 40 8f e0                                      add r4, pc, r4
00610214  03 60 94 e7                                      ldr r6, [r4, r3]
00610218  00 30 96 e5                                      ldr r3, [r6]
0061021c  01 00 13 e3                                      tst r3, #1
00610220  02 00 00 0a                                      beq #0x610230
00610224  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610228  05 00 94 e7                                      ldr r0, [r4, r5]
0061022c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610230  06 00 a0 e1                                      mov r0, r6
00610234  4c f9 f3 eb                                      bl #0x30e76c
00610238  00 00 50 e3                                      cmp r0, #0
0061023c  f8 ff ff 0a                                      beq #0x610224
00610240  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610244  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610248  06 00 a0 e1                                      mov r0, r6
0061024c  03 30 94 e7                                      ldr r3, [r4, r3]
00610250  05 60 94 e7                                      ldr r6, [r4, r5]
00610254  08 30 83 e2                                      add r3, r3, #8
00610258  00 30 86 e5                                      str r3, [r6]
0061025c  f6 f9 f3 eb                                      bl #0x30ea3c
00610260  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610264  06 00 a0 e1                                      mov r0, r6
00610268  03 10 94 e7                                      ldr r1, [r4, r3]
0061026c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610270  03 20 94 e7                                      ldr r2, [r4, r3]
00610274  22 f8 f3 eb                                      bl #0x30e304
00610278  05 00 94 e7                                      ldr r0, [r4, r5]
0061027c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610280  80 48 38 00 64 17 00 00 b0 3a 00 00 54 11 00 00  .byte 0x80, 0x48, 0x38, 0x00, 0x64, 0x17, 0x00, 0x00, 0xb0, 0x3a, 0x00, 0x00, 0x54, 0x11, 0x00, 0x00
00610290  c0 09 00 00 90 18 00 00                          .byte 0xc0, 0x09, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; AUDIT-NAME: axis_angle_sampler_float_direct
; AUDIT-CLAIM: Reads a direct sampled angle and, when present, the three default-axis lanes for the float default-value template.
; FUNCTION 0x0061f51c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_30CSceneNodeQuaternionAngleMixinIfEEfLi4ENS1_17SUseDefaultValuesILi3EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061f51c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061f520  01 40 a0 e1                                      mov r4, r1
0061f524  00 10 a0 e3                                      mov r1, #0
0061f528  02 60 a0 e1                                      mov r6, r2
0061f52c  00 50 a0 e1                                      mov r5, r0
0061f530  3b 2a 01 eb                                      bl #0x669e24
0061f534  04 70 90 e5                                      ldr r7, [r0, #4]
0061f538  05 00 a0 e1                                      mov r0, r5
0061f53c  44 2a 01 eb                                      bl #0x669e54
0061f540  00 00 50 e3                                      cmp r0, #0
0061f544  02 00 00 1a                                      bne #0x61f554
0061f548  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061f54c  00 30 86 e5                                      str r3, [r6]
0061f550  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061f554  05 00 a0 e1                                      mov r0, r5
0061f558  42 2a 01 eb                                      bl #0x669e68
0061f55c  00 00 50 e3                                      cmp r0, #0
0061f560  f8 ff ff 0a                                      beq #0x61f548
0061f564  05 00 a0 e1                                      mov r0, r5
0061f568  3e 2a 01 eb                                      bl #0x669e68
0061f56c  00 20 90 e5                                      ldr r2, [r0]
0061f570  06 30 a0 e1                                      mov r3, r6
0061f574  04 20 83 e4                                      str r2, [r3], #4
0061f578  04 20 90 e5                                      ldr r2, [r0, #4]
0061f57c  04 20 86 e5                                      str r2, [r6, #4]
0061f580  08 20 90 e5                                      ldr r2, [r0, #8]
0061f584  04 20 83 e5                                      str r2, [r3, #4]
0061f588  04 21 97 e7                                      ldr r2, [r7, r4, lsl #2]
0061f58c  08 20 83 e5                                      str r2, [r3, #8]
0061f590  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; AUDIT-NAME: axis_angle_sampler_float_interpolated
; AUDIT-CLAIM: Interpolates the sampled angle between two keys and copies the three default-axis lanes for the float default-value template.
; FUNCTION 0x0061f898, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_30CSceneNodeQuaternionAngleMixinIfEEfLi4ENS1_17SUseDefaultValuesILi3EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061f898  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061f89c  01 40 a0 e1                                      mov r4, r1
0061f8a0  00 10 a0 e3                                      mov r1, #0
0061f8a4  02 50 a0 e1                                      mov r5, r2
0061f8a8  03 80 a0 e1                                      mov r8, r3
0061f8ac  00 70 a0 e1                                      mov r7, r0
0061f8b0  20 60 9d e5                                      ldr r6, [sp, #0x20]
0061f8b4  5a 29 01 eb                                      bl #0x669e24
0061f8b8  04 90 90 e5                                      ldr sb, [r0, #4]
0061f8bc  07 00 a0 e1                                      mov r0, r7
0061f8c0  63 29 01 eb                                      bl #0x669e54
0061f8c4  00 00 50 e3                                      cmp r0, #0
0061f8c8  13 00 00 0a                                      beq #0x61f91c
0061f8cc  00 a0 a0 e3                                      mov sl, #0
0061f8d0  07 00 a0 e1                                      mov r0, r7
0061f8d4  63 29 01 eb                                      bl #0x669e68
0061f8d8  0a 30 90 e7                                      ldr r3, [r0, sl]
0061f8dc  0a 30 86 e7                                      str r3, [r6, sl]
0061f8e0  04 a0 8a e2                                      add sl, sl, #4
0061f8e4  0c 00 5a e3                                      cmp sl, #0xc
0061f8e8  f8 ff ff 1a                                      bne #0x61f8d0
0061f8ec  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061f8f0  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061f8f4  04 10 a0 e1                                      mov r1, r4
0061f8f8  ab ba f3 eb                                      bl #0x30e3ac
0061f8fc  00 10 a0 e1                                      mov r1, r0
0061f900  08 00 a0 e1                                      mov r0, r8
0061f904  18 bd f3 eb                                      bl #0x30ed6c
0061f908  00 10 a0 e1                                      mov r1, r0
0061f90c  04 00 a0 e1                                      mov r0, r4
0061f910  a3 bc f3 eb                                      bl #0x30eba4
0061f914  0c 00 86 e5                                      str r0, [r6, #0xc]
0061f918  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061f91c  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061f920  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061f924  04 10 a0 e1                                      mov r1, r4
0061f928  9f ba f3 eb                                      bl #0x30e3ac
0061f92c  00 10 a0 e1                                      mov r1, r0
0061f930  08 00 a0 e1                                      mov r0, r8
0061f934  0c bd f3 eb                                      bl #0x30ed6c
0061f938  00 10 a0 e1                                      mov r1, r0
0061f93c  04 00 a0 e1                                      mov r0, r4
0061f940  97 bc f3 eb                                      bl #0x30eba4
0061f944  00 00 86 e5                                      str r0, [r6]
0061f948  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; AUDIT-NAME: axis_angle_sampler_short_direct
; AUDIT-CLAIM: Reads a direct sampled angle and, when present, the three default-axis lanes for the short default-value template.
; FUNCTION 0x00614a90, declared_size=168, range_size=168, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_30CSceneNodeQuaternionAngleMixinIsEEfLi4ENS1_17SUseDefaultValuesILi3EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00614a90  70 40 2d e9                                      push {r4, r5, r6, lr}
00614a94  00 40 a0 e1                                      mov r4, r0
00614a98  10 d0 4d e2                                      sub sp, sp, #0x10
00614a9c  01 50 a0 e1                                      mov r5, r1
00614aa0  04 00 8d e2                                      add r0, sp, #4
00614aa4  04 10 a0 e1                                      mov r1, r4
00614aa8  02 60 a0 e1                                      mov r6, r2
00614aac  bd fc ff eb                                      bl #0x613da8
00614ab0  04 30 9d e5                                      ldr r3, [sp, #4]
00614ab4  85 50 a0 e1                                      lsl r5, r5, #1
00614ab8  04 30 93 e5                                      ldr r3, [r3, #4]
00614abc  f5 00 93 e1                                      ldrsh r0, [r3, r5]
00614ac0  a7 e7 f3 eb                                      bl #0x30e964
00614ac4  08 30 9d e5                                      ldr r3, [sp, #8]
00614ac8  00 10 93 e5                                      ldr r1, [r3]
00614acc  a6 e8 f3 eb                                      bl #0x30ed6c
00614ad0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00614ad4  00 10 93 e5                                      ldr r1, [r3]
00614ad8  31 e8 f3 eb                                      bl #0x30eba4
00614adc  00 50 a0 e1                                      mov r5, r0
00614ae0  04 00 a0 e1                                      mov r0, r4
00614ae4  da 54 01 eb                                      bl #0x669e54
00614ae8  00 00 50 e3                                      cmp r0, #0
00614aec  02 00 00 1a                                      bne #0x614afc
00614af0  00 50 86 e5                                      str r5, [r6]
00614af4  10 d0 8d e2                                      add sp, sp, #0x10
00614af8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00614afc  04 00 a0 e1                                      mov r0, r4
00614b00  d8 54 01 eb                                      bl #0x669e68
00614b04  00 00 50 e3                                      cmp r0, #0
00614b08  f8 ff ff 0a                                      beq #0x614af0
00614b0c  04 00 a0 e1                                      mov r0, r4
00614b10  d4 54 01 eb                                      bl #0x669e68
00614b14  00 20 90 e5                                      ldr r2, [r0]
00614b18  06 30 a0 e1                                      mov r3, r6
00614b1c  04 20 83 e4                                      str r2, [r3], #4
00614b20  04 20 90 e5                                      ldr r2, [r0, #4]
00614b24  04 20 86 e5                                      str r2, [r6, #4]
00614b28  08 20 90 e5                                      ldr r2, [r0, #8]
00614b2c  08 50 83 e5                                      str r5, [r3, #8]
00614b30  04 20 83 e5                                      str r2, [r3, #4]
00614b34  ee ff ff ea                                      b #0x614af4

; AUDIT-NAME: axis_angle_sampler_short_interpolated
; AUDIT-CLAIM: Interpolates the sampled angle between two keys and copies the three default-axis lanes for the short default-value template.
; FUNCTION 0x00614b38, declared_size=268, range_size=268, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_30CSceneNodeQuaternionAngleMixinIsEEfLi4ENS1_17SUseDefaultValuesILi3EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00614b38  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00614b3c  00 40 a0 e1                                      mov r4, r0
00614b40  14 d0 4d e2                                      sub sp, sp, #0x14
00614b44  01 50 a0 e1                                      mov r5, r1
00614b48  04 00 8d e2                                      add r0, sp, #4
00614b4c  04 10 a0 e1                                      mov r1, r4
00614b50  02 60 a0 e1                                      mov r6, r2
00614b54  03 90 a0 e1                                      mov sb, r3
00614b58  38 70 9d e5                                      ldr r7, [sp, #0x38]
00614b5c  91 fc ff eb                                      bl #0x613da8
00614b60  04 30 9d e5                                      ldr r3, [sp, #4]
00614b64  85 50 a0 e1                                      lsl r5, r5, #1
00614b68  86 60 a0 e1                                      lsl r6, r6, #1
00614b6c  04 a0 93 e5                                      ldr sl, [r3, #4]
00614b70  08 30 9d e5                                      ldr r3, [sp, #8]
00614b74  f5 00 9a e1                                      ldrsh r0, [sl, r5]
00614b78  00 b0 93 e5                                      ldr fp, [r3]
00614b7c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00614b80  00 80 93 e5                                      ldr r8, [r3]
00614b84  76 e7 f3 eb                                      bl #0x30e964
00614b88  0b 10 a0 e1                                      mov r1, fp
00614b8c  76 e8 f3 eb                                      bl #0x30ed6c
00614b90  08 10 a0 e1                                      mov r1, r8
00614b94  02 e8 f3 eb                                      bl #0x30eba4
00614b98  00 50 a0 e1                                      mov r5, r0
00614b9c  f6 00 9a e1                                      ldrsh r0, [sl, r6]
00614ba0  6f e7 f3 eb                                      bl #0x30e964
00614ba4  00 10 a0 e1                                      mov r1, r0
00614ba8  0b 00 a0 e1                                      mov r0, fp
00614bac  6e e8 f3 eb                                      bl #0x30ed6c
00614bb0  00 10 a0 e1                                      mov r1, r0
00614bb4  08 00 a0 e1                                      mov r0, r8
00614bb8  f9 e7 f3 eb                                      bl #0x30eba4
00614bbc  00 80 a0 e1                                      mov r8, r0
00614bc0  04 00 a0 e1                                      mov r0, r4
00614bc4  a2 54 01 eb                                      bl #0x669e54
00614bc8  00 00 50 e3                                      cmp r0, #0
00614bcc  12 00 00 0a                                      beq #0x614c1c
00614bd0  00 60 a0 e3                                      mov r6, #0
00614bd4  04 00 a0 e1                                      mov r0, r4
00614bd8  a2 54 01 eb                                      bl #0x669e68
00614bdc  06 30 90 e7                                      ldr r3, [r0, r6]
00614be0  06 30 87 e7                                      str r3, [r7, r6]
00614be4  04 60 86 e2                                      add r6, r6, #4
00614be8  0c 00 56 e3                                      cmp r6, #0xc
00614bec  f8 ff ff 1a                                      bne #0x614bd4
00614bf0  05 10 a0 e1                                      mov r1, r5
00614bf4  08 00 a0 e1                                      mov r0, r8
00614bf8  eb e5 f3 eb                                      bl #0x30e3ac
00614bfc  00 10 a0 e1                                      mov r1, r0
00614c00  09 00 a0 e1                                      mov r0, sb
00614c04  58 e8 f3 eb                                      bl #0x30ed6c
00614c08  05 10 a0 e1                                      mov r1, r5
00614c0c  e4 e7 f3 eb                                      bl #0x30eba4
00614c10  0c 00 87 e5                                      str r0, [r7, #0xc]
00614c14  14 d0 8d e2                                      add sp, sp, #0x14
00614c18  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00614c1c  05 10 a0 e1                                      mov r1, r5
00614c20  08 00 a0 e1                                      mov r0, r8
00614c24  e0 e5 f3 eb                                      bl #0x30e3ac
00614c28  00 10 a0 e1                                      mov r1, r0
00614c2c  09 00 a0 e1                                      mov r0, sb
00614c30  4d e8 f3 eb                                      bl #0x30ed6c
00614c34  05 10 a0 e1                                      mov r1, r5
00614c38  d9 e7 f3 eb                                      bl #0x30eba4
00614c3c  00 00 87 e5                                      str r0, [r7]
00614c40  f3 ff ff ea                                      b #0x614c14

; AUDIT-NAME: axis_angle_sampler_char_direct
; AUDIT-CLAIM: Reads a direct sampled angle and, when present, the three default-axis lanes for the char default-value template.
; FUNCTION 0x00614c44, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_30CSceneNodeQuaternionAngleMixinIcEEfLi4ENS1_17SUseDefaultValuesILi3EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00614c44  70 40 2d e9                                      push {r4, r5, r6, lr}
00614c48  00 40 a0 e1                                      mov r4, r0
00614c4c  10 d0 4d e2                                      sub sp, sp, #0x10
00614c50  01 50 a0 e1                                      mov r5, r1
00614c54  04 00 8d e2                                      add r0, sp, #4
00614c58  04 10 a0 e1                                      mov r1, r4
00614c5c  02 60 a0 e1                                      mov r6, r2
00614c60  5f fc ff eb                                      bl #0x613de4
00614c64  04 30 9d e5                                      ldr r3, [sp, #4]
00614c68  04 30 93 e5                                      ldr r3, [r3, #4]
00614c6c  d5 00 93 e1                                      ldrsb r0, [r3, r5]
00614c70  3b e7 f3 eb                                      bl #0x30e964
00614c74  08 30 9d e5                                      ldr r3, [sp, #8]
00614c78  00 10 93 e5                                      ldr r1, [r3]
00614c7c  3a e8 f3 eb                                      bl #0x30ed6c
00614c80  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00614c84  00 10 93 e5                                      ldr r1, [r3]
00614c88  c5 e7 f3 eb                                      bl #0x30eba4
00614c8c  00 50 a0 e1                                      mov r5, r0
00614c90  04 00 a0 e1                                      mov r0, r4
00614c94  6e 54 01 eb                                      bl #0x669e54
00614c98  00 00 50 e3                                      cmp r0, #0
00614c9c  02 00 00 1a                                      bne #0x614cac
00614ca0  00 50 86 e5                                      str r5, [r6]
00614ca4  10 d0 8d e2                                      add sp, sp, #0x10
00614ca8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00614cac  04 00 a0 e1                                      mov r0, r4
00614cb0  6c 54 01 eb                                      bl #0x669e68
00614cb4  00 00 50 e3                                      cmp r0, #0
00614cb8  f8 ff ff 0a                                      beq #0x614ca0
00614cbc  04 00 a0 e1                                      mov r0, r4
00614cc0  68 54 01 eb                                      bl #0x669e68
00614cc4  00 20 90 e5                                      ldr r2, [r0]
00614cc8  06 30 a0 e1                                      mov r3, r6
00614ccc  04 20 83 e4                                      str r2, [r3], #4
00614cd0  04 20 90 e5                                      ldr r2, [r0, #4]
00614cd4  04 20 86 e5                                      str r2, [r6, #4]
00614cd8  08 20 90 e5                                      ldr r2, [r0, #8]
00614cdc  08 50 83 e5                                      str r5, [r3, #8]
00614ce0  04 20 83 e5                                      str r2, [r3, #4]
00614ce4  ee ff ff ea                                      b #0x614ca4

; AUDIT-NAME: axis_angle_sampler_char_interpolated
; AUDIT-CLAIM: Interpolates the sampled angle between two keys and copies the three default-axis lanes for the char default-value template.
; FUNCTION 0x00614ce8, declared_size=260, range_size=260, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_30CSceneNodeQuaternionAngleMixinIcEEfLi4ENS1_17SUseDefaultValuesILi3EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00614ce8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00614cec  00 40 a0 e1                                      mov r4, r0
00614cf0  14 d0 4d e2                                      sub sp, sp, #0x14
00614cf4  01 50 a0 e1                                      mov r5, r1
00614cf8  04 00 8d e2                                      add r0, sp, #4
00614cfc  04 10 a0 e1                                      mov r1, r4
00614d00  02 60 a0 e1                                      mov r6, r2
00614d04  03 b0 a0 e1                                      mov fp, r3
00614d08  38 70 9d e5                                      ldr r7, [sp, #0x38]
00614d0c  34 fc ff eb                                      bl #0x613de4
00614d10  04 30 9d e5                                      ldr r3, [sp, #4]
00614d14  04 90 93 e5                                      ldr sb, [r3, #4]
00614d18  08 30 9d e5                                      ldr r3, [sp, #8]
00614d1c  d5 00 99 e1                                      ldrsb r0, [sb, r5]
00614d20  00 a0 93 e5                                      ldr sl, [r3]
00614d24  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00614d28  00 80 93 e5                                      ldr r8, [r3]
00614d2c  0c e7 f3 eb                                      bl #0x30e964
00614d30  0a 10 a0 e1                                      mov r1, sl
00614d34  0c e8 f3 eb                                      bl #0x30ed6c
00614d38  08 10 a0 e1                                      mov r1, r8
00614d3c  98 e7 f3 eb                                      bl #0x30eba4
00614d40  00 50 a0 e1                                      mov r5, r0
00614d44  d6 00 99 e1                                      ldrsb r0, [sb, r6]
00614d48  05 e7 f3 eb                                      bl #0x30e964
00614d4c  00 10 a0 e1                                      mov r1, r0
00614d50  0a 00 a0 e1                                      mov r0, sl
00614d54  04 e8 f3 eb                                      bl #0x30ed6c
00614d58  00 10 a0 e1                                      mov r1, r0
00614d5c  08 00 a0 e1                                      mov r0, r8
00614d60  8f e7 f3 eb                                      bl #0x30eba4
00614d64  00 80 a0 e1                                      mov r8, r0
00614d68  04 00 a0 e1                                      mov r0, r4
00614d6c  38 54 01 eb                                      bl #0x669e54
00614d70  00 00 50 e3                                      cmp r0, #0
00614d74  12 00 00 0a                                      beq #0x614dc4
00614d78  00 60 a0 e3                                      mov r6, #0
00614d7c  04 00 a0 e1                                      mov r0, r4
00614d80  38 54 01 eb                                      bl #0x669e68
00614d84  06 30 90 e7                                      ldr r3, [r0, r6]
00614d88  06 30 87 e7                                      str r3, [r7, r6]
00614d8c  04 60 86 e2                                      add r6, r6, #4
00614d90  0c 00 56 e3                                      cmp r6, #0xc
00614d94  f8 ff ff 1a                                      bne #0x614d7c
00614d98  05 10 a0 e1                                      mov r1, r5
00614d9c  08 00 a0 e1                                      mov r0, r8
00614da0  81 e5 f3 eb                                      bl #0x30e3ac
00614da4  00 10 a0 e1                                      mov r1, r0
00614da8  0b 00 a0 e1                                      mov r0, fp
00614dac  ee e7 f3 eb                                      bl #0x30ed6c
00614db0  05 10 a0 e1                                      mov r1, r5
00614db4  7a e7 f3 eb                                      bl #0x30eba4
00614db8  0c 00 87 e5                                      str r0, [r7, #0xc]
00614dbc  14 d0 8d e2                                      add sp, sp, #0x14
00614dc0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00614dc4  05 10 a0 e1                                      mov r1, r5
00614dc8  08 00 a0 e1                                      mov r0, r8
00614dcc  76 e5 f3 eb                                      bl #0x30e3ac
00614dd0  00 10 a0 e1                                      mov r1, r0
00614dd4  0b 00 a0 e1                                      mov r0, fp
00614dd8  e3 e7 f3 eb                                      bl #0x30ed6c
00614ddc  05 10 a0 e1                                      mov r1, r5
00614de0  6f e7 f3 eb                                      bl #0x30eba4
00614de4  00 00 87 e5                                      str r0, [r7]
00614de8  f3 ff ff ea                                      b #0x614dbc

; AUDIT-NAME: quaternion_angle_to_quaternion_float_direct
; AUDIT-CLAIM: Runs the generic direct sampler, then calls quaternion::fromAngleAxis on its axis-angle intermediate.
; FUNCTION 0x0061f594, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIfEEfE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061f594  30 40 2d e9                                      push {r4, r5, lr}
0061f598  14 d0 4d e2                                      sub sp, sp, #0x14
0061f59c  00 30 a0 e3                                      mov r3, #0
0061f5a0  02 50 a0 e1                                      mov r5, r2
0061f5a4  0d 20 a0 e1                                      mov r2, sp
0061f5a8  08 30 8d e5                                      str r3, [sp, #8]
0061f5ac  00 30 8d e5                                      str r3, [sp]
0061f5b0  04 30 8d e5                                      str r3, [sp, #4]
0061f5b4  d8 ff ff eb                                      bl #0x61f51c
0061f5b8  05 00 a0 e1                                      mov r0, r5
0061f5bc  0d 20 a0 e1                                      mov r2, sp
0061f5c0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0061f5c4  0d 40 a0 e1                                      mov r4, sp
0061f5c8  fb b5 ff eb                                      bl #0x60cdbc
0061f5cc  14 d0 8d e2                                      add sp, sp, #0x14
0061f5d0  30 80 bd e8                                      pop {r4, r5, pc}

; AUDIT-NAME: quaternion_angle_to_quaternion_float_interpolated
; AUDIT-CLAIM: Runs the generic two-key sampler, then calls quaternion::fromAngleAxis on its axis-angle intermediate.
; FUNCTION 0x0061f94c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIfEEfE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061f94c  10 40 2d e9                                      push {r4, lr}
0061f950  18 d0 4d e2                                      sub sp, sp, #0x18
0061f954  00 c0 a0 e3                                      mov ip, #0
0061f958  08 40 8d e2                                      add r4, sp, #8
0061f95c  10 c0 8d e5                                      str ip, [sp, #0x10]
0061f960  08 c0 8d e5                                      str ip, [sp, #8]
0061f964  0c c0 8d e5                                      str ip, [sp, #0xc]
0061f968  00 40 8d e5                                      str r4, [sp]
0061f96c  c9 ff ff eb                                      bl #0x61f898
0061f970  20 00 9d e5                                      ldr r0, [sp, #0x20]
0061f974  04 20 a0 e1                                      mov r2, r4
0061f978  14 10 9d e5                                      ldr r1, [sp, #0x14]
0061f97c  0e b5 ff eb                                      bl #0x60cdbc
0061f980  18 d0 8d e2                                      add sp, sp, #0x18
0061f984  10 80 bd e8                                      pop {r4, pc}

; AUDIT-NAME: quaternion_angle_to_quaternion_short_direct
; AUDIT-CLAIM: Runs the generic direct sampler, then calls quaternion::fromAngleAxis on its axis-angle intermediate.
; FUNCTION 0x00618064, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIsEEsE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00618064  30 40 2d e9                                      push {r4, r5, lr}
00618068  14 d0 4d e2                                      sub sp, sp, #0x14
0061806c  00 30 a0 e3                                      mov r3, #0
00618070  02 50 a0 e1                                      mov r5, r2
00618074  0d 20 a0 e1                                      mov r2, sp
00618078  08 30 8d e5                                      str r3, [sp, #8]
0061807c  00 30 8d e5                                      str r3, [sp]
00618080  04 30 8d e5                                      str r3, [sp, #4]
00618084  81 f2 ff eb                                      bl #0x614a90
00618088  05 00 a0 e1                                      mov r0, r5
0061808c  0d 20 a0 e1                                      mov r2, sp
00618090  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00618094  0d 40 a0 e1                                      mov r4, sp
00618098  47 d3 ff eb                                      bl #0x60cdbc
0061809c  14 d0 8d e2                                      add sp, sp, #0x14
006180a0  30 80 bd e8                                      pop {r4, r5, pc}

; AUDIT-NAME: quaternion_angle_to_quaternion_short_interpolated
; AUDIT-CLAIM: Runs the generic two-key sampler, then calls quaternion::fromAngleAxis on its axis-angle intermediate.
; FUNCTION 0x006180b4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIsEEsE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006180b4  10 40 2d e9                                      push {r4, lr}
006180b8  18 d0 4d e2                                      sub sp, sp, #0x18
006180bc  00 c0 a0 e3                                      mov ip, #0
006180c0  08 40 8d e2                                      add r4, sp, #8
006180c4  10 c0 8d e5                                      str ip, [sp, #0x10]
006180c8  08 c0 8d e5                                      str ip, [sp, #8]
006180cc  0c c0 8d e5                                      str ip, [sp, #0xc]
006180d0  00 40 8d e5                                      str r4, [sp]
006180d4  97 f2 ff eb                                      bl #0x614b38
006180d8  20 00 9d e5                                      ldr r0, [sp, #0x20]
006180dc  04 20 a0 e1                                      mov r2, r4
006180e0  14 10 9d e5                                      ldr r1, [sp, #0x14]
006180e4  34 d3 ff eb                                      bl #0x60cdbc
006180e8  18 d0 8d e2                                      add sp, sp, #0x18
006180ec  10 80 bd e8                                      pop {r4, pc}

; AUDIT-NAME: quaternion_angle_to_quaternion_char_direct
; AUDIT-CLAIM: Runs the generic direct sampler, then calls quaternion::fromAngleAxis on its axis-angle intermediate.
; FUNCTION 0x006183c0, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIcEEcE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
006183c0  30 40 2d e9                                      push {r4, r5, lr}
006183c4  14 d0 4d e2                                      sub sp, sp, #0x14
006183c8  00 30 a0 e3                                      mov r3, #0
006183cc  02 50 a0 e1                                      mov r5, r2
006183d0  0d 20 a0 e1                                      mov r2, sp
006183d4  08 30 8d e5                                      str r3, [sp, #8]
006183d8  00 30 8d e5                                      str r3, [sp]
006183dc  04 30 8d e5                                      str r3, [sp, #4]
006183e0  17 f2 ff eb                                      bl #0x614c44
006183e4  05 00 a0 e1                                      mov r0, r5
006183e8  0d 20 a0 e1                                      mov r2, sp
006183ec  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006183f0  0d 40 a0 e1                                      mov r4, sp
006183f4  70 d2 ff eb                                      bl #0x60cdbc
006183f8  14 d0 8d e2                                      add sp, sp, #0x14
006183fc  30 80 bd e8                                      pop {r4, r5, pc}

; AUDIT-NAME: quaternion_angle_to_quaternion_char_interpolated
; AUDIT-CLAIM: Runs the generic two-key sampler, then calls quaternion::fromAngleAxis on its axis-angle intermediate.
; FUNCTION 0x00618410, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIcEEcE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00618410  10 40 2d e9                                      push {r4, lr}
00618414  18 d0 4d e2                                      sub sp, sp, #0x18
00618418  00 c0 a0 e3                                      mov ip, #0
0061841c  08 40 8d e2                                      add r4, sp, #8
00618420  10 c0 8d e5                                      str ip, [sp, #0x10]
00618424  08 c0 8d e5                                      str ip, [sp, #8]
00618428  0c c0 8d e5                                      str ip, [sp, #0xc]
0061842c  00 40 8d e5                                      str r4, [sp]
00618430  2c f2 ff eb                                      bl #0x614ce8
00618434  20 00 9d e5                                      ldr r0, [sp, #0x20]
00618438  04 20 a0 e1                                      mov r2, r4
0061843c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00618440  5d d2 ff eb                                      bl #0x60cdbc
00618444  18 d0 8d e2                                      add sp, sp, #0x18
00618448  10 80 bd e8                                      pop {r4, pc}

; AUDIT-NAME: apply_quaternion_angle_float_direct
; AUDIT-CLAIM: Builds the direct quaternion value, then calls the target vtable at object slot +0x9c.
; FUNCTION 0x00620fe8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620fe8  30 40 2d e9                                      push {r4, r5, lr}
00620fec  14 d0 4d e2                                      sub sp, sp, #0x14
00620ff0  00 30 a0 e3                                      mov r3, #0
00620ff4  02 40 a0 e1                                      mov r4, r2
00620ff8  fe c5 a0 e3                                      mov ip, #0x3f800000
00620ffc  0d 20 a0 e1                                      mov r2, sp
00621000  08 30 8d e5                                      str r3, [sp, #8]
00621004  00 30 8d e5                                      str r3, [sp]
00621008  04 30 8d e5                                      str r3, [sp, #4]
0062100c  0c c0 8d e5                                      str ip, [sp, #0xc]
00621010  5f f9 ff eb                                      bl #0x61f594
00621014  04 00 a0 e1                                      mov r0, r4
00621018  0d 10 a0 e1                                      mov r1, sp
0062101c  00 30 94 e5                                      ldr r3, [r4]
00621020  0d 50 a0 e1                                      mov r5, sp
00621024  0f e0 a0 e1                                      mov lr, pc
00621028  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0062102c  14 d0 8d e2                                      add sp, sp, #0x14
00621030  30 80 bd e8                                      pop {r4, r5, pc}

; AUDIT-NAME: apply_quaternion_angle_float_interpolated
; AUDIT-CLAIM: Builds the interpolated quaternion value, then calls the target vtable at object slot +0x9c.
; FUNCTION 0x00621048, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00621048  30 40 2d e9                                      push {r4, r5, lr}
0062104c  1c d0 4d e2                                      sub sp, sp, #0x1c
00621050  28 40 9d e5                                      ldr r4, [sp, #0x28]
00621054  00 c0 a0 e3                                      mov ip, #0
00621058  08 50 8d e2                                      add r5, sp, #8
0062105c  fe e5 a0 e3                                      mov lr, #0x3f800000
00621060  10 c0 8d e5                                      str ip, [sp, #0x10]
00621064  14 e0 8d e5                                      str lr, [sp, #0x14]
00621068  08 c0 8d e5                                      str ip, [sp, #8]
0062106c  0c c0 8d e5                                      str ip, [sp, #0xc]
00621070  00 50 8d e5                                      str r5, [sp]
00621074  34 fa ff eb                                      bl #0x61f94c
00621078  04 00 a0 e1                                      mov r0, r4
0062107c  05 10 a0 e1                                      mov r1, r5
00621080  00 30 94 e5                                      ldr r3, [r4]
00621084  0f e0 a0 e1                                      mov lr, pc
00621088  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0062108c  1c d0 8d e2                                      add sp, sp, #0x1c
00621090  30 80 bd e8                                      pop {r4, r5, pc}

; AUDIT-NAME: apply_quaternion_angle_short_direct
; AUDIT-CLAIM: Builds the direct quaternion value, then calls the target vtable at object slot +0x9c.
; FUNCTION 0x006210b8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006210b8  30 40 2d e9                                      push {r4, r5, lr}
006210bc  14 d0 4d e2                                      sub sp, sp, #0x14
006210c0  00 30 a0 e3                                      mov r3, #0
006210c4  02 40 a0 e1                                      mov r4, r2
006210c8  fe c5 a0 e3                                      mov ip, #0x3f800000
006210cc  0d 20 a0 e1                                      mov r2, sp
006210d0  08 30 8d e5                                      str r3, [sp, #8]
006210d4  00 30 8d e5                                      str r3, [sp]
006210d8  04 30 8d e5                                      str r3, [sp, #4]
006210dc  0c c0 8d e5                                      str ip, [sp, #0xc]
006210e0  df db ff eb                                      bl #0x618064
006210e4  04 00 a0 e1                                      mov r0, r4
006210e8  0d 10 a0 e1                                      mov r1, sp
006210ec  00 30 94 e5                                      ldr r3, [r4]
006210f0  0d 50 a0 e1                                      mov r5, sp
006210f4  0f e0 a0 e1                                      mov lr, pc
006210f8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006210fc  14 d0 8d e2                                      add sp, sp, #0x14
00621100  30 80 bd e8                                      pop {r4, r5, pc}

; AUDIT-NAME: apply_quaternion_angle_short_interpolated
; AUDIT-CLAIM: Builds the interpolated quaternion value, then calls the target vtable at object slot +0x9c.
; FUNCTION 0x00621118, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00621118  30 40 2d e9                                      push {r4, r5, lr}
0062111c  1c d0 4d e2                                      sub sp, sp, #0x1c
00621120  28 40 9d e5                                      ldr r4, [sp, #0x28]
00621124  00 c0 a0 e3                                      mov ip, #0
00621128  08 50 8d e2                                      add r5, sp, #8
0062112c  fe e5 a0 e3                                      mov lr, #0x3f800000
00621130  10 c0 8d e5                                      str ip, [sp, #0x10]
00621134  14 e0 8d e5                                      str lr, [sp, #0x14]
00621138  08 c0 8d e5                                      str ip, [sp, #8]
0062113c  0c c0 8d e5                                      str ip, [sp, #0xc]
00621140  00 50 8d e5                                      str r5, [sp]
00621144  da db ff eb                                      bl #0x6180b4
00621148  04 00 a0 e1                                      mov r0, r4
0062114c  05 10 a0 e1                                      mov r1, r5
00621150  00 30 94 e5                                      ldr r3, [r4]
00621154  0f e0 a0 e1                                      mov lr, pc
00621158  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0062115c  1c d0 8d e2                                      add sp, sp, #0x1c
00621160  30 80 bd e8                                      pop {r4, r5, pc}

; AUDIT-NAME: apply_quaternion_angle_char_direct
; AUDIT-CLAIM: Builds the direct quaternion value, then calls the target vtable at object slot +0x9c.
; FUNCTION 0x00621188, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00621188  30 40 2d e9                                      push {r4, r5, lr}
0062118c  14 d0 4d e2                                      sub sp, sp, #0x14
00621190  00 30 a0 e3                                      mov r3, #0
00621194  02 40 a0 e1                                      mov r4, r2
00621198  fe c5 a0 e3                                      mov ip, #0x3f800000
0062119c  0d 20 a0 e1                                      mov r2, sp
006211a0  08 30 8d e5                                      str r3, [sp, #8]
006211a4  00 30 8d e5                                      str r3, [sp]
006211a8  04 30 8d e5                                      str r3, [sp, #4]
006211ac  0c c0 8d e5                                      str ip, [sp, #0xc]
006211b0  82 dc ff eb                                      bl #0x6183c0
006211b4  04 00 a0 e1                                      mov r0, r4
006211b8  0d 10 a0 e1                                      mov r1, sp
006211bc  00 30 94 e5                                      ldr r3, [r4]
006211c0  0d 50 a0 e1                                      mov r5, sp
006211c4  0f e0 a0 e1                                      mov lr, pc
006211c8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006211cc  14 d0 8d e2                                      add sp, sp, #0x14
006211d0  30 80 bd e8                                      pop {r4, r5, pc}

; AUDIT-NAME: apply_quaternion_angle_char_interpolated
; AUDIT-CLAIM: Builds the interpolated quaternion value, then calls the target vtable at object slot +0x9c.
; FUNCTION 0x0061844c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0061844c  30 40 2d e9                                      push {r4, r5, lr}
00618450  1c d0 4d e2                                      sub sp, sp, #0x1c
00618454  28 40 9d e5                                      ldr r4, [sp, #0x28]
00618458  00 c0 a0 e3                                      mov ip, #0
0061845c  08 50 8d e2                                      add r5, sp, #8
00618460  fe e5 a0 e3                                      mov lr, #0x3f800000
00618464  10 c0 8d e5                                      str ip, [sp, #0x10]
00618468  14 e0 8d e5                                      str lr, [sp, #0x14]
0061846c  08 c0 8d e5                                      str ip, [sp, #8]
00618470  0c c0 8d e5                                      str ip, [sp, #0xc]
00618474  00 50 8d e5                                      str r5, [sp]
00618478  e4 ff ff eb                                      bl #0x618410
0061847c  04 00 a0 e1                                      mov r0, r4
00618480  05 10 a0 e1                                      mov r1, r5
00618484  00 30 94 e5                                      ldr r3, [r4]
00618488  0f e0 a0 e1                                      mov lr, pc
0061848c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00618490  1c d0 8d e2                                      add sp, sp, #0x1c
00618494  30 80 bd e8                                      pop {r4, r5, pc}

; AUDIT-NAME: quaternion_from_angle_axis
; AUDIT-CLAIM: Converts the angle and three-vector axis into the quaternion passed to the scene node.
; FUNCTION 0x0060cdbc, declared_size=104, range_size=104, mode=arm
; class-group: glitch::core::quaternion
; alias: _ZN6glitch4core10quaternion13fromAngleAxisEfRKNS0_8vector3dIfEE
; demangled: glitch::core::quaternion::fromAngleAxis(float, glitch::core::vector3d<float> const&)
; decoder-mode: arm
0060cdbc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060cdc0  00 40 a0 e1                                      mov r4, r0
0060cdc4  01 00 a0 e1                                      mov r0, r1
0060cdc8  3f 14 a0 e3                                      mov r1, #0x3f000000
0060cdcc  02 60 a0 e1                                      mov r6, r2
0060cdd0  e5 07 f4 eb                                      bl #0x30ed6c
0060cdd4  00 70 a0 e1                                      mov r7, r0
0060cdd8  4a 07 f4 eb                                      bl #0x30eb08
0060cddc  00 50 a0 e1                                      mov r5, r0
0060cde0  07 00 a0 e1                                      mov r0, r7
0060cde4  5a 06 f4 eb                                      bl #0x30e754
0060cde8  0c 00 84 e5                                      str r0, [r4, #0xc]
0060cdec  00 00 96 e5                                      ldr r0, [r6]
0060cdf0  05 10 a0 e1                                      mov r1, r5
0060cdf4  dc 07 f4 eb                                      bl #0x30ed6c
0060cdf8  00 00 84 e5                                      str r0, [r4]
0060cdfc  04 00 96 e5                                      ldr r0, [r6, #4]
0060ce00  05 10 a0 e1                                      mov r1, r5
0060ce04  d8 07 f4 eb                                      bl #0x30ed6c
0060ce08  04 00 84 e5                                      str r0, [r4, #4]
0060ce0c  08 00 96 e5                                      ldr r0, [r6, #8]
0060ce10  05 10 a0 e1                                      mov r1, r5
0060ce14  d4 07 f4 eb                                      bl #0x30ed6c
0060ce18  08 00 84 e5                                      str r0, [r4, #8]
0060ce1c  04 00 a0 e1                                      mov r0, r4
0060ce20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; AUDIT-NAME: iscenenode_set_rotation
; AUDIT-CLAIM: The CSceneNode vtable entry reached by quaternion-angle application stores the quaternion as the scene node rotation.
; FUNCTION 0x005970f4, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode11setRotationERKNS_4core10quaternionE
; demangled: glitch::scene::ISceneNode::setRotation(glitch::core::quaternion const&)
; decoder-mode: arm
005970f4  00 30 91 e5                                      ldr r3, [r1]
005970f8  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
005970fc  b8 30 80 e5                                      str r3, [r0, #0xb8]
00597100  04 30 91 e5                                      ldr r3, [r1, #4]
00597104  04 20 82 e3                                      orr r2, r2, #4
00597108  bc 30 80 e5                                      str r3, [r0, #0xbc]
0059710c  08 30 91 e5                                      ldr r3, [r1, #8]
00597110  c0 30 80 e5                                      str r3, [r0, #0xc0]
00597114  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00597118  1c 21 80 e5                                      str r2, [r0, #0x11c]
0059711c  c4 30 80 e5                                      str r3, [r0, #0xc4]
00597120  1e ff 2f e1                                      bx lr

; AUDIT-NAME: float_get_key_interpolated_virtual_wrapper
; AUDIT-CLAIM: Vtable slot 0x28 adapts to the float quaternion-angle interpreter/application method.
; FUNCTION 0x0061f988, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061f988  01 00 a0 e1                                      mov r0, r1
0061f98c  04 c0 9d e5                                      ldr ip, [sp, #4]
0061f990  02 10 a0 e1                                      mov r1, r2
0061f994  03 20 a0 e1                                      mov r2, r3
0061f998  00 30 9d e5                                      ldr r3, [sp]
0061f99c  00 c0 8d e5                                      str ip, [sp]
0061f9a0  e9 ff ff ea                                      b #0x61f94c

; AUDIT-NAME: float_get_key_direct_virtual_wrapper
; AUDIT-CLAIM: Vtable slot 0x30 adapts to the float quaternion-angle interpreter/application method.
; FUNCTION 0x0061f5d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061f5d4  01 00 a0 e1                                      mov r0, r1
0061f5d8  02 10 a0 e1                                      mov r1, r2
0061f5dc  03 20 a0 e1                                      mov r2, r3
0061f5e0  eb ff ff ea                                      b #0x61f594

; AUDIT-NAME: float_apply_key_interpolated_virtual_wrapper
; AUDIT-CLAIM: Vtable slot 0x48 adapts to the float quaternion-angle interpreter/application method.
; FUNCTION 0x00621094, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621094  04 c0 9d e5                                      ldr ip, [sp, #4]
00621098  01 00 a0 e1                                      mov r0, r1
0062109c  02 10 a0 e1                                      mov r1, r2
006210a0  03 20 a0 e1                                      mov r2, r3
006210a4  00 30 9d e5                                      ldr r3, [sp]
006210a8  00 c0 8d e5                                      str ip, [sp]
006210ac  08 c0 9d e5                                      ldr ip, [sp, #8]
006210b0  04 c0 8d e5                                      str ip, [sp, #4]
006210b4  e3 ff ff ea                                      b #0x621048

; AUDIT-NAME: float_apply_key_direct_virtual_wrapper
; AUDIT-CLAIM: Vtable slot 0x50 adapts to the float quaternion-angle interpreter/application method.
; FUNCTION 0x00621034, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621034  01 00 a0 e1                                      mov r0, r1
00621038  02 10 a0 e1                                      mov r1, r2
0062103c  03 20 a0 e1                                      mov r2, r3
00621040  00 30 9d e5                                      ldr r3, [sp]
00621044  e7 ff ff ea                                      b #0x620fe8

; AUDIT-NAME: short_get_key_interpolated_virtual_wrapper
; AUDIT-CLAIM: Vtable slot 0x28 adapts to the short quaternion-angle interpreter/application method.
; FUNCTION 0x006180f0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006180f0  01 00 a0 e1                                      mov r0, r1
006180f4  04 c0 9d e5                                      ldr ip, [sp, #4]
006180f8  02 10 a0 e1                                      mov r1, r2
006180fc  03 20 a0 e1                                      mov r2, r3
00618100  00 30 9d e5                                      ldr r3, [sp]
00618104  00 c0 8d e5                                      str ip, [sp]
00618108  e9 ff ff ea                                      b #0x6180b4

; AUDIT-NAME: short_get_key_direct_virtual_wrapper
; AUDIT-CLAIM: Vtable slot 0x30 adapts to the short quaternion-angle interpreter/application method.
; FUNCTION 0x006180a4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006180a4  01 00 a0 e1                                      mov r0, r1
006180a8  02 10 a0 e1                                      mov r1, r2
006180ac  03 20 a0 e1                                      mov r2, r3
006180b0  eb ff ff ea                                      b #0x618064

; AUDIT-NAME: short_apply_key_interpolated_virtual_wrapper
; AUDIT-CLAIM: Vtable slot 0x48 adapts to the short quaternion-angle interpreter/application method.
; FUNCTION 0x00621164, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621164  04 c0 9d e5                                      ldr ip, [sp, #4]
00621168  01 00 a0 e1                                      mov r0, r1
0062116c  02 10 a0 e1                                      mov r1, r2
00621170  03 20 a0 e1                                      mov r2, r3
00621174  00 30 9d e5                                      ldr r3, [sp]
00621178  00 c0 8d e5                                      str ip, [sp]
0062117c  08 c0 9d e5                                      ldr ip, [sp, #8]
00621180  04 c0 8d e5                                      str ip, [sp, #4]
00621184  e3 ff ff ea                                      b #0x621118

; AUDIT-NAME: short_apply_key_direct_virtual_wrapper
; AUDIT-CLAIM: Vtable slot 0x50 adapts to the short quaternion-angle interpreter/application method.
; FUNCTION 0x00621104, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621104  01 00 a0 e1                                      mov r0, r1
00621108  02 10 a0 e1                                      mov r1, r2
0062110c  03 20 a0 e1                                      mov r2, r3
00621110  00 30 9d e5                                      ldr r3, [sp]
00621114  e7 ff ff ea                                      b #0x6210b8

; AUDIT-NAME: char_get_key_interpolated_virtual_wrapper
; AUDIT-CLAIM: Vtable slot 0x28 adapts to the char quaternion-angle interpreter/application method.
; FUNCTION 0x006184bc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006184bc  01 00 a0 e1                                      mov r0, r1
006184c0  04 c0 9d e5                                      ldr ip, [sp, #4]
006184c4  02 10 a0 e1                                      mov r1, r2
006184c8  03 20 a0 e1                                      mov r2, r3
006184cc  00 30 9d e5                                      ldr r3, [sp]
006184d0  00 c0 8d e5                                      str ip, [sp]
006184d4  cd ff ff ea                                      b #0x618410

; AUDIT-NAME: char_get_key_direct_virtual_wrapper
; AUDIT-CLAIM: Vtable slot 0x30 adapts to the char quaternion-angle interpreter/application method.
; FUNCTION 0x00618400, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00618400  01 00 a0 e1                                      mov r0, r1
00618404  02 10 a0 e1                                      mov r1, r2
00618408  03 20 a0 e1                                      mov r2, r3
0061840c  eb ff ff ea                                      b #0x6183c0

; AUDIT-NAME: char_apply_key_interpolated_virtual_wrapper
; AUDIT-CLAIM: Vtable slot 0x48 adapts to the char quaternion-angle interpreter/application method.
; FUNCTION 0x00618498, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00618498  04 c0 9d e5                                      ldr ip, [sp, #4]
0061849c  01 00 a0 e1                                      mov r0, r1
006184a0  02 10 a0 e1                                      mov r1, r2
006184a4  03 20 a0 e1                                      mov r2, r3
006184a8  00 30 9d e5                                      ldr r3, [sp]
006184ac  00 c0 8d e5                                      str ip, [sp]
006184b0  08 c0 9d e5                                      ldr ip, [sp, #8]
006184b4  04 c0 8d e5                                      str ip, [sp, #4]
006184b8  e3 ff ff ea                                      b #0x61844c

; AUDIT-NAME: char_apply_key_direct_virtual_wrapper
; AUDIT-CLAIM: Vtable slot 0x50 adapts to the char quaternion-angle interpreter/application method.
; FUNCTION 0x006211d4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006211d4  01 00 a0 e1                                      mov r0, r1
006211d8  02 10 a0 e1                                      mov r1, r2
006211dc  03 20 a0 e1                                      mov r2, r3
006211e0  00 30 9d e5                                      ldr r3, [sp]
006211e4  e7 ff ff ea                                      b #0x621188

; CSceneNode vtable entry (little-endian data word):
; 00983678 f4 70 59 00 -> 005970f4 ISceneNode::setRotation
