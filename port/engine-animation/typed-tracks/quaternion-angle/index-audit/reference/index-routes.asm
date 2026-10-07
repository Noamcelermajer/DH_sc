; Focused ARM32 evidence excerpt; instructions are copied from recovered listings.
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80

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
00612104  a4 2f 38 00 24 0f 00 00 84 2d 00 00 80 40 00 00  .byte 0xa4, 0x2f, 0x38, 0x00, 0x24, 0x0f, 0x00, 0x00, 0x84, 0x2d, 0x00, 0x00, 0x80, 0x40, 0x00, 0x00
00612114  b0 23 00 00 d0 49 00 00 74 4d 3e 00 98 2d 2d 00  .byte 0xb0, 0x23, 0x00, 0x00, 0xd0, 0x49, 0x00, 0x00, 0x74, 0x4d, 0x3e, 0x00, 0x98, 0x2d, 0x2d, 0x00
00612124  30 4d 3e 00                                      .byte 0x30, 0x4d, 0x3e, 0x00

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
0066049c  74 48 33 00 4c 45 00 00 80 1a 26 00              .byte 0x74, 0x48, 0x33, 0x00, 0x4c, 0x45, 0x00, 0x00, 0x80, 0x1a, 0x26, 0x00

; FUNCTION 0x006e307c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx8getValueERKNS0_18SAnimationAccessorEiPvb
; demangled: glitch::collada::CAnimationTrackEx::getValue(glitch::collada::SAnimationAccessor const&, int, void*, bool) const
; decoder-mode: arm
006e307c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006e3080  14 d0 4d e2                                      sub sp, sp, #0x14
006e3084  00 e0 a0 e3                                      mov lr, #0
006e3088  10 c0 8d e2                                      add ip, sp, #0x10
006e308c  04 e0 2c e5                                      str lr, [ip, #-4]!
006e3090  01 50 a0 e1                                      mov r5, r1
006e3094  00 40 a0 e1                                      mov r4, r0
006e3098  03 60 a0 e1                                      mov r6, r3
006e309c  0e 10 a0 e1                                      mov r1, lr
006e30a0  0c 30 a0 e1                                      mov r3, ip
006e30a4  05 00 a0 e1                                      mov r0, r5
006e30a8  08 c0 8d e2                                      add ip, sp, #8
006e30ac  28 70 dd e5                                      ldrb r7, [sp, #0x28]
006e30b0  00 c0 8d e5                                      str ip, [sp]
006e30b4  9e 1f fe eb                                      bl #0x66af34
006e30b8  07 00 10 e1                                      tst r0, r7
006e30bc  08 00 00 1a                                      bne #0x6e30e4
006e30c0  04 00 a0 e1                                      mov r0, r4
006e30c4  05 10 a0 e1                                      mov r1, r5
006e30c8  06 30 a0 e1                                      mov r3, r6
006e30cc  00 c0 94 e5                                      ldr ip, [r4]
006e30d0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e30d4  0f e0 a0 e1                                      mov lr, pc
006e30d8  28 f0 9c e5                                      ldr pc, [ip, #0x28]
006e30dc  14 d0 8d e2                                      add sp, sp, #0x14
006e30e0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006e30e4  08 30 9d e5                                      ldr r3, [sp, #8]
006e30e8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e30ec  04 60 8d e5                                      str r6, [sp, #4]
006e30f0  00 30 8d e5                                      str r3, [sp]
006e30f4  04 00 a0 e1                                      mov r0, r4
006e30f8  05 10 a0 e1                                      mov r1, r5
006e30fc  00 c0 94 e5                                      ldr ip, [r4]
006e3100  01 30 82 e2                                      add r3, r2, #1
006e3104  0f e0 a0 e1                                      mov lr, pc
006e3108  20 f0 9c e5                                      ldr pc, [ip, #0x20]
006e310c  f2 ff ff ea                                      b #0x6e30dc

; FUNCTION 0x006e2dbc, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx8getValueERKNS0_18SAnimationAccessorEiiPvRib
; demangled: glitch::collada::CAnimationTrackEx::getValue(glitch::collada::SAnimationAccessor const&, int, int, void*, int&, bool) const
; decoder-mode: arm
006e2dbc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e2dc0  24 d0 4d e2                                      sub sp, sp, #0x24
006e2dc4  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
006e2dc8  00 40 a0 e3                                      mov r4, #0
006e2dcc  20 c0 8d e2                                      add ip, sp, #0x20
006e2dd0  00 e0 96 e5                                      ldr lr, [r6]
006e2dd4  01 50 a0 e1                                      mov r5, r1
006e2dd8  04 40 2c e5                                      str r4, [ip, #-4]!
006e2ddc  02 80 a0 e1                                      mov r8, r2
006e2de0  04 10 a0 e1                                      mov r1, r4
006e2de4  03 20 a0 e1                                      mov r2, r3
006e2de8  00 70 a0 e1                                      mov r7, r0
006e2dec  0c 30 a0 e1                                      mov r3, ip
006e2df0  05 00 a0 e1                                      mov r0, r5
006e2df4  18 c0 8d e2                                      add ip, sp, #0x18
006e2df8  00 50 8d e8                                      stm sp, {ip, lr}
006e2dfc  50 90 dd e5                                      ldrb sb, [sp, #0x50]
006e2e00  48 b0 9d e5                                      ldr fp, [sp, #0x48]
006e2e04  82 22 fe eb                                      bl #0x66b814
006e2e08  20 30 8d e2                                      add r3, sp, #0x20
006e2e0c  00 a0 a0 e1                                      mov sl, r0
006e2e10  0c 40 23 e5                                      str r4, [r3, #-0xc]!
006e2e14  04 10 a0 e1                                      mov r1, r4
006e2e18  08 20 a0 e1                                      mov r2, r8
006e2e1c  05 00 a0 e1                                      mov r0, r5
006e2e20  b3 20 fe eb                                      bl #0x66b0f4
006e2e24  09 00 1a e1                                      tst sl, sb
006e2e28  0b 00 00 1a                                      bne #0x6e2e5c
006e2e2c  00 b0 8d e5                                      str fp, [sp]
006e2e30  07 00 a0 e1                                      mov r0, r7
006e2e34  05 10 a0 e1                                      mov r1, r5
006e2e38  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2e3c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e2e40  00 c0 97 e5                                      ldr ip, [r7]
006e2e44  0f e0 a0 e1                                      mov lr, pc
006e2e48  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
006e2e4c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e2e50  00 30 86 e5                                      str r3, [r6]
006e2e54  24 d0 8d e2                                      add sp, sp, #0x24
006e2e58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006e2e5c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e2e60  08 b0 8d e5                                      str fp, [sp, #8]
006e2e64  07 00 a0 e1                                      mov r0, r7
006e2e68  01 20 83 e2                                      add r2, r3, #1
006e2e6c  00 20 8d e5                                      str r2, [sp]
006e2e70  18 20 9d e5                                      ldr r2, [sp, #0x18]
006e2e74  05 10 a0 e1                                      mov r1, r5
006e2e78  04 20 8d e5                                      str r2, [sp, #4]
006e2e7c  00 c0 97 e5                                      ldr ip, [r7]
006e2e80  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2e84  0f e0 a0 e1                                      mov lr, pc
006e2e88  24 f0 9c e5                                      ldr pc, [ip, #0x24]
006e2e8c  ee ff ff ea                                      b #0x6e2e4c

; FUNCTION 0x0066af34, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiiRiRf
; demangled: glitch::collada::SAnimationAccessor::findKeyFrameNo(int, int, int&, float&) const
; decoder-mode: arm
0066af34  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0066af38  0c d0 4d e2                                      sub sp, sp, #0xc
0066af3c  02 50 a0 e1                                      mov r5, r2
0066af40  03 40 a0 e1                                      mov r4, r3
0066af44  00 60 a0 e1                                      mov r6, r0
0066af48  01 70 a0 e1                                      mov r7, r1
0066af4c  e6 fb ff eb                                      bl #0x669eec
0066af50  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0066af54  00 20 a0 e1                                      mov r2, r0
0066af58  07 10 a0 e1                                      mov r1, r7
0066af5c  06 00 a0 e1                                      mov r0, r6
0066af60  05 30 a0 e1                                      mov r3, r5
0066af64  10 10 8d e8                                      stm sp, {r4, ip}
0066af68  87 ff ff eb                                      bl #0x66ad8c
0066af6c  0c d0 8d e2                                      add sp, sp, #0xc
0066af70  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

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

; FUNCTION 0x0061f5d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061f5d4  01 00 a0 e1                                      mov r0, r1
0061f5d8  02 10 a0 e1                                      mov r1, r2
0061f5dc  03 20 a0 e1                                      mov r2, r3
0061f5e0  eb ff ff ea                                      b #0x61f594

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

; FUNCTION 0x006180a4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006180a4  01 00 a0 e1                                      mov r0, r1
006180a8  02 10 a0 e1                                      mov r1, r2
006180ac  03 20 a0 e1                                      mov r2, r3
006180b0  eb ff ff ea                                      b #0x618064

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

; FUNCTION 0x00618400, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00618400  01 00 a0 e1                                      mov r0, r1
00618404  02 10 a0 e1                                      mov r1, r2
00618408  03 20 a0 e1                                      mov r2, r3
0061840c  eb ff ff ea                                      b #0x6183c0

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

; FUNCTION 0x0061f6e0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061f6e0  01 00 a0 e1                                      mov r0, r1
0061f6e4  02 10 a0 e1                                      mov r1, r2
0061f6e8  03 20 a0 e1                                      mov r2, r3
0061f6ec  00 30 9d e5                                      ldr r3, [sp]
0061f6f0  bb ff ff ea                                      b #0x61f5e4

; FUNCTION 0x0061f874, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061f874  04 c0 9d e5                                      ldr ip, [sp, #4]
0061f878  01 00 a0 e1                                      mov r0, r1
0061f87c  02 10 a0 e1                                      mov r1, r2
0061f880  03 20 a0 e1                                      mov r2, r3
0061f884  00 30 9d e5                                      ldr r3, [sp]
0061f888  00 c0 8d e5                                      str ip, [sp]
0061f88c  08 c0 9d e5                                      ldr ip, [sp, #8]
0061f890  04 c0 8d e5                                      str ip, [sp, #4]
0061f894  96 ff ff ea                                      b #0x61f6f4

; FUNCTION 0x00618208, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00618208  01 00 a0 e1                                      mov r0, r1
0061820c  02 10 a0 e1                                      mov r1, r2
00618210  03 20 a0 e1                                      mov r2, r3
00618214  00 30 9d e5                                      ldr r3, [sp]
00618218  bb ff ff ea                                      b #0x61810c

; FUNCTION 0x0061839c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061839c  04 c0 9d e5                                      ldr ip, [sp, #4]
006183a0  01 00 a0 e1                                      mov r0, r1
006183a4  02 10 a0 e1                                      mov r1, r2
006183a8  03 20 a0 e1                                      mov r2, r3
006183ac  00 30 9d e5                                      ldr r3, [sp]
006183b0  00 c0 8d e5                                      str ip, [sp]
006183b4  08 c0 9d e5                                      ldr ip, [sp, #8]
006183b8  04 c0 8d e5                                      str ip, [sp, #4]
006183bc  96 ff ff ea                                      b #0x61821c

; FUNCTION 0x006185d4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006185d4  01 00 a0 e1                                      mov r0, r1
006185d8  02 10 a0 e1                                      mov r1, r2
006185dc  03 20 a0 e1                                      mov r2, r3
006185e0  00 30 9d e5                                      ldr r3, [sp]
006185e4  bb ff ff ea                                      b #0x6184d8

; FUNCTION 0x00618768, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00618768  04 c0 9d e5                                      ldr ip, [sp, #4]
0061876c  01 00 a0 e1                                      mov r0, r1
00618770  02 10 a0 e1                                      mov r1, r2
00618774  03 20 a0 e1                                      mov r2, r3
00618778  00 30 9d e5                                      ldr r3, [sp]
0061877c  00 c0 8d e5                                      str ip, [sp]
00618780  08 c0 9d e5                                      ldr ip, [sp, #8]
00618784  04 c0 8d e5                                      str ip, [sp, #4]
00618788  96 ff ff ea                                      b #0x6185e8

; FUNCTION 0x0061f5e4, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIfEEfE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061f5e4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0061f5e8  54 d0 4d e2                                      sub sp, sp, #0x54
0061f5ec  40 60 8d e2                                      add r6, sp, #0x40
0061f5f0  00 40 a0 e3                                      mov r4, #0
0061f5f4  00 70 a0 e1                                      mov r7, r0
0061f5f8  01 80 a0 e1                                      mov r8, r1
0061f5fc  30 50 8d e2                                      add r5, sp, #0x30
0061f600  02 10 a0 e1                                      mov r1, r2
0061f604  06 20 a0 e1                                      mov r2, r6
0061f608  03 a0 a0 e1                                      mov sl, r3
0061f60c  40 40 8d e5                                      str r4, [sp, #0x40]
0061f610  44 40 8d e5                                      str r4, [sp, #0x44]
0061f614  48 40 8d e5                                      str r4, [sp, #0x48]
0061f618  30 40 8d e5                                      str r4, [sp, #0x30]
0061f61c  34 40 8d e5                                      str r4, [sp, #0x34]
0061f620  38 40 8d e5                                      str r4, [sp, #0x38]
0061f624  bc ff ff eb                                      bl #0x61f51c
0061f628  07 00 a0 e1                                      mov r0, r7
0061f62c  08 10 a0 e1                                      mov r1, r8
0061f630  05 20 a0 e1                                      mov r2, r5
0061f634  20 70 8d e2                                      add r7, sp, #0x20
0061f638  b7 ff ff eb                                      bl #0x61f51c
0061f63c  fe 35 a0 e3                                      mov r3, #0x3f800000
0061f640  06 20 a0 e1                                      mov r2, r6
0061f644  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0061f648  10 60 8d e2                                      add r6, sp, #0x10
0061f64c  07 00 a0 e1                                      mov r0, r7
0061f650  1c 30 8d e5                                      str r3, [sp, #0x1c]
0061f654  2c 30 8d e5                                      str r3, [sp, #0x2c]
0061f658  18 40 8d e5                                      str r4, [sp, #0x18]
0061f65c  20 40 8d e5                                      str r4, [sp, #0x20]
0061f660  24 40 8d e5                                      str r4, [sp, #0x24]
0061f664  28 40 8d e5                                      str r4, [sp, #0x28]
0061f668  10 40 8d e5                                      str r4, [sp, #0x10]
0061f66c  14 40 8d e5                                      str r4, [sp, #0x14]
0061f670  d1 b5 ff eb                                      bl #0x60cdbc
0061f674  05 20 a0 e1                                      mov r2, r5
0061f678  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0061f67c  06 00 a0 e1                                      mov r0, r6
0061f680  cd b5 ff eb                                      bl #0x60cdbc
0061f684  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0061f688  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0061f68c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0061f690  02 e1 8e e2                                      add lr, lr, #0x80000000
0061f694  02 c1 8c e2                                      add ip, ip, #0x80000000
0061f698  02 31 83 e2                                      add r3, r3, #0x80000000
0061f69c  06 10 a0 e1                                      mov r1, r6
0061f6a0  07 20 a0 e1                                      mov r2, r7
0061f6a4  0d 00 a0 e1                                      mov r0, sp
0061f6a8  18 30 8d e5                                      str r3, [sp, #0x18]
0061f6ac  10 e0 8d e5                                      str lr, [sp, #0x10]
0061f6b0  14 c0 8d e5                                      str ip, [sp, #0x14]
0061f6b4  9e b9 ff eb                                      bl #0x60dd34
0061f6b8  04 10 9d e5                                      ldr r1, [sp, #4]
0061f6bc  08 30 9d e5                                      ldr r3, [sp, #8]
0061f6c0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0061f6c4  00 00 9d e5                                      ldr r0, [sp]
0061f6c8  04 10 8a e5                                      str r1, [sl, #4]
0061f6cc  0c 20 8a e5                                      str r2, [sl, #0xc]
0061f6d0  00 00 8a e5                                      str r0, [sl]
0061f6d4  08 30 8a e5                                      str r3, [sl, #8]
0061f6d8  54 d0 8d e2                                      add sp, sp, #0x54
0061f6dc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0061f6f4, declared_size=384, range_size=384, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIfEEfE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061f6f4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061f6f8  98 d0 4d e2                                      sub sp, sp, #0x98
0061f6fc  88 70 8d e2                                      add r7, sp, #0x88
0061f700  00 40 a0 e3                                      mov r4, #0
0061f704  03 80 a0 e1                                      mov r8, r3
0061f708  00 60 a0 e1                                      mov r6, r0
0061f70c  01 90 a0 e1                                      mov sb, r1
0061f710  78 a0 8d e2                                      add sl, sp, #0x78
0061f714  02 10 a0 e1                                      mov r1, r2
0061f718  07 20 a0 e1                                      mov r2, r7
0061f71c  bc 50 9d e5                                      ldr r5, [sp, #0xbc]
0061f720  88 40 8d e5                                      str r4, [sp, #0x88]
0061f724  8c 40 8d e5                                      str r4, [sp, #0x8c]
0061f728  90 40 8d e5                                      str r4, [sp, #0x90]
0061f72c  78 40 8d e5                                      str r4, [sp, #0x78]
0061f730  7c 40 8d e5                                      str r4, [sp, #0x7c]
0061f734  80 40 8d e5                                      str r4, [sp, #0x80]
0061f738  68 40 8d e5                                      str r4, [sp, #0x68]
0061f73c  6c 40 8d e5                                      str r4, [sp, #0x6c]
0061f740  70 40 8d e5                                      str r4, [sp, #0x70]
0061f744  74 ff ff eb                                      bl #0x61f51c
0061f748  08 10 a0 e1                                      mov r1, r8
0061f74c  06 00 a0 e1                                      mov r0, r6
0061f750  0a 20 a0 e1                                      mov r2, sl
0061f754  68 80 8d e2                                      add r8, sp, #0x68
0061f758  6f ff ff eb                                      bl #0x61f51c
0061f75c  06 00 a0 e1                                      mov r0, r6
0061f760  09 10 a0 e1                                      mov r1, sb
0061f764  58 60 8d e2                                      add r6, sp, #0x58
0061f768  08 20 a0 e1                                      mov r2, r8
0061f76c  6a ff ff eb                                      bl #0x61f51c
0061f770  fe 35 a0 e3                                      mov r3, #0x3f800000
0061f774  07 20 a0 e1                                      mov r2, r7
0061f778  94 10 9d e5                                      ldr r1, [sp, #0x94]
0061f77c  48 70 8d e2                                      add r7, sp, #0x48
0061f780  06 00 a0 e1                                      mov r0, r6
0061f784  34 30 8d e5                                      str r3, [sp, #0x34]
0061f788  64 30 8d e5                                      str r3, [sp, #0x64]
0061f78c  54 30 8d e5                                      str r3, [sp, #0x54]
0061f790  44 30 8d e5                                      str r3, [sp, #0x44]
0061f794  30 40 8d e5                                      str r4, [sp, #0x30]
0061f798  58 40 8d e5                                      str r4, [sp, #0x58]
0061f79c  5c 40 8d e5                                      str r4, [sp, #0x5c]
0061f7a0  60 40 8d e5                                      str r4, [sp, #0x60]
0061f7a4  48 40 8d e5                                      str r4, [sp, #0x48]
0061f7a8  4c 40 8d e5                                      str r4, [sp, #0x4c]
0061f7ac  50 40 8d e5                                      str r4, [sp, #0x50]
0061f7b0  38 40 8d e5                                      str r4, [sp, #0x38]
0061f7b4  3c 40 8d e5                                      str r4, [sp, #0x3c]
0061f7b8  40 40 8d e5                                      str r4, [sp, #0x40]
0061f7bc  28 40 8d e5                                      str r4, [sp, #0x28]
0061f7c0  2c 40 8d e5                                      str r4, [sp, #0x2c]
0061f7c4  7c b5 ff eb                                      bl #0x60cdbc
0061f7c8  0a 20 a0 e1                                      mov r2, sl
0061f7cc  84 10 9d e5                                      ldr r1, [sp, #0x84]
0061f7d0  07 00 a0 e1                                      mov r0, r7
0061f7d4  78 b5 ff eb                                      bl #0x60cdbc
0061f7d8  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
0061f7dc  04 c0 8d e2                                      add ip, sp, #4
0061f7e0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0061f7e4  b8 c0 9d e5                                      ldr ip, [sp, #0xb8]
0061f7e8  0e 00 96 e8                                      ldm r6, {r1, r2, r3}
0061f7ec  38 40 8d e2                                      add r4, sp, #0x38
0061f7f0  14 c0 8d e5                                      str ip, [sp, #0x14]
0061f7f4  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0061f7f8  28 60 8d e2                                      add r6, sp, #0x28
0061f7fc  04 00 a0 e1                                      mov r0, r4
0061f800  00 c0 8d e5                                      str ip, [sp]
0061f804  3d cd ff eb                                      bl #0x612d00
0061f808  08 20 a0 e1                                      mov r2, r8
0061f80c  74 10 9d e5                                      ldr r1, [sp, #0x74]
0061f810  06 00 a0 e1                                      mov r0, r6
0061f814  68 b5 ff eb                                      bl #0x60cdbc
0061f818  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0061f81c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0061f820  30 30 9d e5                                      ldr r3, [sp, #0x30]
0061f824  02 e1 8e e2                                      add lr, lr, #0x80000000
0061f828  02 c1 8c e2                                      add ip, ip, #0x80000000
0061f82c  02 31 83 e2                                      add r3, r3, #0x80000000
0061f830  06 10 a0 e1                                      mov r1, r6
0061f834  04 20 a0 e1                                      mov r2, r4
0061f838  18 00 8d e2                                      add r0, sp, #0x18
0061f83c  30 30 8d e5                                      str r3, [sp, #0x30]
0061f840  28 e0 8d e5                                      str lr, [sp, #0x28]
0061f844  2c c0 8d e5                                      str ip, [sp, #0x2c]
0061f848  39 b9 ff eb                                      bl #0x60dd34
0061f84c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0061f850  20 30 9d e5                                      ldr r3, [sp, #0x20]
0061f854  24 20 9d e5                                      ldr r2, [sp, #0x24]
0061f858  18 00 9d e5                                      ldr r0, [sp, #0x18]
0061f85c  04 10 85 e5                                      str r1, [r5, #4]
0061f860  0c 20 85 e5                                      str r2, [r5, #0xc]
0061f864  00 00 85 e5                                      str r0, [r5]
0061f868  08 30 85 e5                                      str r3, [r5, #8]
0061f86c  98 d0 8d e2                                      add sp, sp, #0x98
0061f870  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061810c, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIsEEsE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061810c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00618110  54 d0 4d e2                                      sub sp, sp, #0x54
00618114  40 60 8d e2                                      add r6, sp, #0x40
00618118  00 40 a0 e3                                      mov r4, #0
0061811c  00 70 a0 e1                                      mov r7, r0
00618120  01 80 a0 e1                                      mov r8, r1
00618124  30 50 8d e2                                      add r5, sp, #0x30
00618128  02 10 a0 e1                                      mov r1, r2
0061812c  06 20 a0 e1                                      mov r2, r6
00618130  03 a0 a0 e1                                      mov sl, r3
00618134  40 40 8d e5                                      str r4, [sp, #0x40]
00618138  44 40 8d e5                                      str r4, [sp, #0x44]
0061813c  48 40 8d e5                                      str r4, [sp, #0x48]
00618140  30 40 8d e5                                      str r4, [sp, #0x30]
00618144  34 40 8d e5                                      str r4, [sp, #0x34]
00618148  38 40 8d e5                                      str r4, [sp, #0x38]
0061814c  4f f2 ff eb                                      bl #0x614a90
00618150  07 00 a0 e1                                      mov r0, r7
00618154  08 10 a0 e1                                      mov r1, r8
00618158  05 20 a0 e1                                      mov r2, r5
0061815c  20 70 8d e2                                      add r7, sp, #0x20
00618160  4a f2 ff eb                                      bl #0x614a90
00618164  fe 35 a0 e3                                      mov r3, #0x3f800000
00618168  06 20 a0 e1                                      mov r2, r6
0061816c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00618170  10 60 8d e2                                      add r6, sp, #0x10
00618174  07 00 a0 e1                                      mov r0, r7
00618178  1c 30 8d e5                                      str r3, [sp, #0x1c]
0061817c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00618180  18 40 8d e5                                      str r4, [sp, #0x18]
00618184  20 40 8d e5                                      str r4, [sp, #0x20]
00618188  24 40 8d e5                                      str r4, [sp, #0x24]
0061818c  28 40 8d e5                                      str r4, [sp, #0x28]
00618190  10 40 8d e5                                      str r4, [sp, #0x10]
00618194  14 40 8d e5                                      str r4, [sp, #0x14]
00618198  07 d3 ff eb                                      bl #0x60cdbc
0061819c  05 20 a0 e1                                      mov r2, r5
006181a0  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006181a4  06 00 a0 e1                                      mov r0, r6
006181a8  03 d3 ff eb                                      bl #0x60cdbc
006181ac  10 e0 9d e5                                      ldr lr, [sp, #0x10]
006181b0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006181b4  18 30 9d e5                                      ldr r3, [sp, #0x18]
006181b8  02 e1 8e e2                                      add lr, lr, #0x80000000
006181bc  02 c1 8c e2                                      add ip, ip, #0x80000000
006181c0  02 31 83 e2                                      add r3, r3, #0x80000000
006181c4  06 10 a0 e1                                      mov r1, r6
006181c8  07 20 a0 e1                                      mov r2, r7
006181cc  0d 00 a0 e1                                      mov r0, sp
006181d0  18 30 8d e5                                      str r3, [sp, #0x18]
006181d4  10 e0 8d e5                                      str lr, [sp, #0x10]
006181d8  14 c0 8d e5                                      str ip, [sp, #0x14]
006181dc  d4 d6 ff eb                                      bl #0x60dd34
006181e0  04 10 9d e5                                      ldr r1, [sp, #4]
006181e4  08 30 9d e5                                      ldr r3, [sp, #8]
006181e8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006181ec  00 00 9d e5                                      ldr r0, [sp]
006181f0  04 10 8a e5                                      str r1, [sl, #4]
006181f4  0c 20 8a e5                                      str r2, [sl, #0xc]
006181f8  00 00 8a e5                                      str r0, [sl]
006181fc  08 30 8a e5                                      str r3, [sl, #8]
00618200  54 d0 8d e2                                      add sp, sp, #0x54
00618204  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0061821c, declared_size=384, range_size=384, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIsEEsE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061821c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00618220  98 d0 4d e2                                      sub sp, sp, #0x98
00618224  88 70 8d e2                                      add r7, sp, #0x88
00618228  00 40 a0 e3                                      mov r4, #0
0061822c  03 80 a0 e1                                      mov r8, r3
00618230  00 60 a0 e1                                      mov r6, r0
00618234  01 90 a0 e1                                      mov sb, r1
00618238  78 a0 8d e2                                      add sl, sp, #0x78
0061823c  02 10 a0 e1                                      mov r1, r2
00618240  07 20 a0 e1                                      mov r2, r7
00618244  bc 50 9d e5                                      ldr r5, [sp, #0xbc]
00618248  88 40 8d e5                                      str r4, [sp, #0x88]
0061824c  8c 40 8d e5                                      str r4, [sp, #0x8c]
00618250  90 40 8d e5                                      str r4, [sp, #0x90]
00618254  78 40 8d e5                                      str r4, [sp, #0x78]
00618258  7c 40 8d e5                                      str r4, [sp, #0x7c]
0061825c  80 40 8d e5                                      str r4, [sp, #0x80]
00618260  68 40 8d e5                                      str r4, [sp, #0x68]
00618264  6c 40 8d e5                                      str r4, [sp, #0x6c]
00618268  70 40 8d e5                                      str r4, [sp, #0x70]
0061826c  07 f2 ff eb                                      bl #0x614a90
00618270  08 10 a0 e1                                      mov r1, r8
00618274  06 00 a0 e1                                      mov r0, r6
00618278  0a 20 a0 e1                                      mov r2, sl
0061827c  68 80 8d e2                                      add r8, sp, #0x68
00618280  02 f2 ff eb                                      bl #0x614a90
00618284  06 00 a0 e1                                      mov r0, r6
00618288  09 10 a0 e1                                      mov r1, sb
0061828c  58 60 8d e2                                      add r6, sp, #0x58
00618290  08 20 a0 e1                                      mov r2, r8
00618294  fd f1 ff eb                                      bl #0x614a90
00618298  fe 35 a0 e3                                      mov r3, #0x3f800000
0061829c  07 20 a0 e1                                      mov r2, r7
006182a0  94 10 9d e5                                      ldr r1, [sp, #0x94]
006182a4  48 70 8d e2                                      add r7, sp, #0x48
006182a8  06 00 a0 e1                                      mov r0, r6
006182ac  34 30 8d e5                                      str r3, [sp, #0x34]
006182b0  64 30 8d e5                                      str r3, [sp, #0x64]
006182b4  54 30 8d e5                                      str r3, [sp, #0x54]
006182b8  44 30 8d e5                                      str r3, [sp, #0x44]
006182bc  30 40 8d e5                                      str r4, [sp, #0x30]
006182c0  58 40 8d e5                                      str r4, [sp, #0x58]
006182c4  5c 40 8d e5                                      str r4, [sp, #0x5c]
006182c8  60 40 8d e5                                      str r4, [sp, #0x60]
006182cc  48 40 8d e5                                      str r4, [sp, #0x48]
006182d0  4c 40 8d e5                                      str r4, [sp, #0x4c]
006182d4  50 40 8d e5                                      str r4, [sp, #0x50]
006182d8  38 40 8d e5                                      str r4, [sp, #0x38]
006182dc  3c 40 8d e5                                      str r4, [sp, #0x3c]
006182e0  40 40 8d e5                                      str r4, [sp, #0x40]
006182e4  28 40 8d e5                                      str r4, [sp, #0x28]
006182e8  2c 40 8d e5                                      str r4, [sp, #0x2c]
006182ec  b2 d2 ff eb                                      bl #0x60cdbc
006182f0  0a 20 a0 e1                                      mov r2, sl
006182f4  84 10 9d e5                                      ldr r1, [sp, #0x84]
006182f8  07 00 a0 e1                                      mov r0, r7
006182fc  ae d2 ff eb                                      bl #0x60cdbc
00618300  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
00618304  04 c0 8d e2                                      add ip, sp, #4
00618308  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0061830c  b8 c0 9d e5                                      ldr ip, [sp, #0xb8]
00618310  0e 00 96 e8                                      ldm r6, {r1, r2, r3}
00618314  38 40 8d e2                                      add r4, sp, #0x38
00618318  14 c0 8d e5                                      str ip, [sp, #0x14]
0061831c  64 c0 9d e5                                      ldr ip, [sp, #0x64]
00618320  28 60 8d e2                                      add r6, sp, #0x28
00618324  04 00 a0 e1                                      mov r0, r4
00618328  00 c0 8d e5                                      str ip, [sp]
0061832c  73 ea ff eb                                      bl #0x612d00
00618330  08 20 a0 e1                                      mov r2, r8
00618334  74 10 9d e5                                      ldr r1, [sp, #0x74]
00618338  06 00 a0 e1                                      mov r0, r6
0061833c  9e d2 ff eb                                      bl #0x60cdbc
00618340  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00618344  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00618348  30 30 9d e5                                      ldr r3, [sp, #0x30]
0061834c  02 e1 8e e2                                      add lr, lr, #0x80000000
00618350  02 c1 8c e2                                      add ip, ip, #0x80000000
00618354  02 31 83 e2                                      add r3, r3, #0x80000000
00618358  06 10 a0 e1                                      mov r1, r6
0061835c  04 20 a0 e1                                      mov r2, r4
00618360  18 00 8d e2                                      add r0, sp, #0x18
00618364  30 30 8d e5                                      str r3, [sp, #0x30]
00618368  28 e0 8d e5                                      str lr, [sp, #0x28]
0061836c  2c c0 8d e5                                      str ip, [sp, #0x2c]
00618370  6f d6 ff eb                                      bl #0x60dd34
00618374  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00618378  20 30 9d e5                                      ldr r3, [sp, #0x20]
0061837c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00618380  18 00 9d e5                                      ldr r0, [sp, #0x18]
00618384  04 10 85 e5                                      str r1, [r5, #4]
00618388  0c 20 85 e5                                      str r2, [r5, #0xc]
0061838c  00 00 85 e5                                      str r0, [r5]
00618390  08 30 85 e5                                      str r3, [r5, #8]
00618394  98 d0 8d e2                                      add sp, sp, #0x98
00618398  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006184d8, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIcEEcE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
006184d8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006184dc  54 d0 4d e2                                      sub sp, sp, #0x54
006184e0  40 60 8d e2                                      add r6, sp, #0x40
006184e4  00 40 a0 e3                                      mov r4, #0
006184e8  00 70 a0 e1                                      mov r7, r0
006184ec  01 80 a0 e1                                      mov r8, r1
006184f0  30 50 8d e2                                      add r5, sp, #0x30
006184f4  02 10 a0 e1                                      mov r1, r2
006184f8  06 20 a0 e1                                      mov r2, r6
006184fc  03 a0 a0 e1                                      mov sl, r3
00618500  40 40 8d e5                                      str r4, [sp, #0x40]
00618504  44 40 8d e5                                      str r4, [sp, #0x44]
00618508  48 40 8d e5                                      str r4, [sp, #0x48]
0061850c  30 40 8d e5                                      str r4, [sp, #0x30]
00618510  34 40 8d e5                                      str r4, [sp, #0x34]
00618514  38 40 8d e5                                      str r4, [sp, #0x38]
00618518  c9 f1 ff eb                                      bl #0x614c44
0061851c  07 00 a0 e1                                      mov r0, r7
00618520  08 10 a0 e1                                      mov r1, r8
00618524  05 20 a0 e1                                      mov r2, r5
00618528  20 70 8d e2                                      add r7, sp, #0x20
0061852c  c4 f1 ff eb                                      bl #0x614c44
00618530  fe 35 a0 e3                                      mov r3, #0x3f800000
00618534  06 20 a0 e1                                      mov r2, r6
00618538  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0061853c  10 60 8d e2                                      add r6, sp, #0x10
00618540  07 00 a0 e1                                      mov r0, r7
00618544  1c 30 8d e5                                      str r3, [sp, #0x1c]
00618548  2c 30 8d e5                                      str r3, [sp, #0x2c]
0061854c  18 40 8d e5                                      str r4, [sp, #0x18]
00618550  20 40 8d e5                                      str r4, [sp, #0x20]
00618554  24 40 8d e5                                      str r4, [sp, #0x24]
00618558  28 40 8d e5                                      str r4, [sp, #0x28]
0061855c  10 40 8d e5                                      str r4, [sp, #0x10]
00618560  14 40 8d e5                                      str r4, [sp, #0x14]
00618564  14 d2 ff eb                                      bl #0x60cdbc
00618568  05 20 a0 e1                                      mov r2, r5
0061856c  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00618570  06 00 a0 e1                                      mov r0, r6
00618574  10 d2 ff eb                                      bl #0x60cdbc
00618578  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0061857c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00618580  18 30 9d e5                                      ldr r3, [sp, #0x18]
00618584  02 e1 8e e2                                      add lr, lr, #0x80000000
00618588  02 c1 8c e2                                      add ip, ip, #0x80000000
0061858c  02 31 83 e2                                      add r3, r3, #0x80000000
00618590  06 10 a0 e1                                      mov r1, r6
00618594  07 20 a0 e1                                      mov r2, r7
00618598  0d 00 a0 e1                                      mov r0, sp
0061859c  18 30 8d e5                                      str r3, [sp, #0x18]
006185a0  10 e0 8d e5                                      str lr, [sp, #0x10]
006185a4  14 c0 8d e5                                      str ip, [sp, #0x14]
006185a8  e1 d5 ff eb                                      bl #0x60dd34
006185ac  04 10 9d e5                                      ldr r1, [sp, #4]
006185b0  08 30 9d e5                                      ldr r3, [sp, #8]
006185b4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006185b8  00 00 9d e5                                      ldr r0, [sp]
006185bc  04 10 8a e5                                      str r1, [sl, #4]
006185c0  0c 20 8a e5                                      str r2, [sl, #0xc]
006185c4  00 00 8a e5                                      str r0, [sl]
006185c8  08 30 8a e5                                      str r3, [sl, #8]
006185cc  54 d0 8d e2                                      add sp, sp, #0x54
006185d0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x006185e8, declared_size=384, range_size=384, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIcEEcE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006185e8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006185ec  98 d0 4d e2                                      sub sp, sp, #0x98
006185f0  88 70 8d e2                                      add r7, sp, #0x88
006185f4  00 40 a0 e3                                      mov r4, #0
006185f8  03 80 a0 e1                                      mov r8, r3
006185fc  00 60 a0 e1                                      mov r6, r0
00618600  01 90 a0 e1                                      mov sb, r1
00618604  78 a0 8d e2                                      add sl, sp, #0x78
00618608  02 10 a0 e1                                      mov r1, r2
0061860c  07 20 a0 e1                                      mov r2, r7
00618610  bc 50 9d e5                                      ldr r5, [sp, #0xbc]
00618614  88 40 8d e5                                      str r4, [sp, #0x88]
00618618  8c 40 8d e5                                      str r4, [sp, #0x8c]
0061861c  90 40 8d e5                                      str r4, [sp, #0x90]
00618620  78 40 8d e5                                      str r4, [sp, #0x78]
00618624  7c 40 8d e5                                      str r4, [sp, #0x7c]
00618628  80 40 8d e5                                      str r4, [sp, #0x80]
0061862c  68 40 8d e5                                      str r4, [sp, #0x68]
00618630  6c 40 8d e5                                      str r4, [sp, #0x6c]
00618634  70 40 8d e5                                      str r4, [sp, #0x70]
00618638  81 f1 ff eb                                      bl #0x614c44
0061863c  08 10 a0 e1                                      mov r1, r8
00618640  06 00 a0 e1                                      mov r0, r6
00618644  0a 20 a0 e1                                      mov r2, sl
00618648  68 80 8d e2                                      add r8, sp, #0x68
0061864c  7c f1 ff eb                                      bl #0x614c44
00618650  06 00 a0 e1                                      mov r0, r6
00618654  09 10 a0 e1                                      mov r1, sb
00618658  58 60 8d e2                                      add r6, sp, #0x58
0061865c  08 20 a0 e1                                      mov r2, r8
00618660  77 f1 ff eb                                      bl #0x614c44
00618664  fe 35 a0 e3                                      mov r3, #0x3f800000
00618668  07 20 a0 e1                                      mov r2, r7
0061866c  94 10 9d e5                                      ldr r1, [sp, #0x94]
00618670  48 70 8d e2                                      add r7, sp, #0x48
00618674  06 00 a0 e1                                      mov r0, r6
00618678  34 30 8d e5                                      str r3, [sp, #0x34]
0061867c  64 30 8d e5                                      str r3, [sp, #0x64]
00618680  54 30 8d e5                                      str r3, [sp, #0x54]
00618684  44 30 8d e5                                      str r3, [sp, #0x44]
00618688  30 40 8d e5                                      str r4, [sp, #0x30]
0061868c  58 40 8d e5                                      str r4, [sp, #0x58]
00618690  5c 40 8d e5                                      str r4, [sp, #0x5c]
00618694  60 40 8d e5                                      str r4, [sp, #0x60]
00618698  48 40 8d e5                                      str r4, [sp, #0x48]
0061869c  4c 40 8d e5                                      str r4, [sp, #0x4c]
006186a0  50 40 8d e5                                      str r4, [sp, #0x50]
006186a4  38 40 8d e5                                      str r4, [sp, #0x38]
006186a8  3c 40 8d e5                                      str r4, [sp, #0x3c]
006186ac  40 40 8d e5                                      str r4, [sp, #0x40]
006186b0  28 40 8d e5                                      str r4, [sp, #0x28]
006186b4  2c 40 8d e5                                      str r4, [sp, #0x2c]
006186b8  bf d1 ff eb                                      bl #0x60cdbc
006186bc  0a 20 a0 e1                                      mov r2, sl
006186c0  84 10 9d e5                                      ldr r1, [sp, #0x84]
006186c4  07 00 a0 e1                                      mov r0, r7
006186c8  bb d1 ff eb                                      bl #0x60cdbc
006186cc  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
006186d0  04 c0 8d e2                                      add ip, sp, #4
006186d4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
006186d8  b8 c0 9d e5                                      ldr ip, [sp, #0xb8]
006186dc  0e 00 96 e8                                      ldm r6, {r1, r2, r3}
006186e0  38 40 8d e2                                      add r4, sp, #0x38
006186e4  14 c0 8d e5                                      str ip, [sp, #0x14]
006186e8  64 c0 9d e5                                      ldr ip, [sp, #0x64]
006186ec  28 60 8d e2                                      add r6, sp, #0x28
006186f0  04 00 a0 e1                                      mov r0, r4
006186f4  00 c0 8d e5                                      str ip, [sp]
006186f8  80 e9 ff eb                                      bl #0x612d00
006186fc  08 20 a0 e1                                      mov r2, r8
00618700  74 10 9d e5                                      ldr r1, [sp, #0x74]
00618704  06 00 a0 e1                                      mov r0, r6
00618708  ab d1 ff eb                                      bl #0x60cdbc
0061870c  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00618710  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00618714  30 30 9d e5                                      ldr r3, [sp, #0x30]
00618718  02 e1 8e e2                                      add lr, lr, #0x80000000
0061871c  02 c1 8c e2                                      add ip, ip, #0x80000000
00618720  02 31 83 e2                                      add r3, r3, #0x80000000
00618724  06 10 a0 e1                                      mov r1, r6
00618728  04 20 a0 e1                                      mov r2, r4
0061872c  18 00 8d e2                                      add r0, sp, #0x18
00618730  30 30 8d e5                                      str r3, [sp, #0x30]
00618734  28 e0 8d e5                                      str lr, [sp, #0x28]
00618738  2c c0 8d e5                                      str ip, [sp, #0x2c]
0061873c  7c d5 ff eb                                      bl #0x60dd34
00618740  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00618744  20 30 9d e5                                      ldr r3, [sp, #0x20]
00618748  24 20 9d e5                                      ldr r2, [sp, #0x24]
0061874c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00618750  04 10 85 e5                                      str r1, [r5, #4]
00618754  0c 20 85 e5                                      str r2, [r5, #0xc]
00618758  00 00 85 e5                                      str r0, [r5]
0061875c  08 30 85 e5                                      str r3, [r5, #8]
00618760  98 d0 8d e2                                      add sp, sp, #0x98
00618764  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

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

; FUNCTION 0x0060dd34, declared_size=448, range_size=448, mode=arm
; class-group: glitch::core::quaternion
; alias: _ZNK6glitch4core10quaternionmlERKS1_
; demangled: glitch::core::quaternion::operator*(glitch::core::quaternion const&) const
; decoder-mode: arm
0060dd34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060dd38  00 30 a0 e3                                      mov r3, #0
0060dd3c  08 30 80 e5                                      str r3, [r0, #8]
0060dd40  00 40 a0 e1                                      mov r4, r0
0060dd44  fe 05 a0 e3                                      mov r0, #0x3f800000
0060dd48  00 30 84 e5                                      str r3, [r4]
0060dd4c  04 30 84 e5                                      str r3, [r4, #4]
0060dd50  01 50 a0 e1                                      mov r5, r1
0060dd54  0c 00 84 e5                                      str r0, [r4, #0xc]
0060dd58  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0060dd5c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0060dd60  02 60 a0 e1                                      mov r6, r2
0060dd64  00 04 f4 eb                                      bl #0x30ed6c
0060dd68  00 10 96 e5                                      ldr r1, [r6]
0060dd6c  00 70 a0 e1                                      mov r7, r0
0060dd70  00 00 95 e5                                      ldr r0, [r5]
0060dd74  fc 03 f4 eb                                      bl #0x30ed6c
0060dd78  00 10 a0 e1                                      mov r1, r0
0060dd7c  07 00 a0 e1                                      mov r0, r7
0060dd80  89 01 f4 eb                                      bl #0x30e3ac
0060dd84  04 10 96 e5                                      ldr r1, [r6, #4]
0060dd88  00 70 a0 e1                                      mov r7, r0
0060dd8c  04 00 95 e5                                      ldr r0, [r5, #4]
0060dd90  f5 03 f4 eb                                      bl #0x30ed6c
0060dd94  00 10 a0 e1                                      mov r1, r0
0060dd98  07 00 a0 e1                                      mov r0, r7
0060dd9c  82 01 f4 eb                                      bl #0x30e3ac
0060dda0  08 10 96 e5                                      ldr r1, [r6, #8]
0060dda4  00 70 a0 e1                                      mov r7, r0
0060dda8  08 00 95 e5                                      ldr r0, [r5, #8]
0060ddac  ee 03 f4 eb                                      bl #0x30ed6c
0060ddb0  00 10 a0 e1                                      mov r1, r0
0060ddb4  07 00 a0 e1                                      mov r0, r7
0060ddb8  7b 01 f4 eb                                      bl #0x30e3ac
0060ddbc  0c 00 84 e5                                      str r0, [r4, #0xc]
0060ddc0  0c 10 96 e5                                      ldr r1, [r6, #0xc]
0060ddc4  00 00 95 e5                                      ldr r0, [r5]
0060ddc8  e7 03 f4 eb                                      bl #0x30ed6c
0060ddcc  00 10 96 e5                                      ldr r1, [r6]
0060ddd0  00 70 a0 e1                                      mov r7, r0
0060ddd4  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0060ddd8  e3 03 f4 eb                                      bl #0x30ed6c
0060dddc  00 10 a0 e1                                      mov r1, r0
0060dde0  07 00 a0 e1                                      mov r0, r7
0060dde4  6e 03 f4 eb                                      bl #0x30eba4
0060dde8  04 10 96 e5                                      ldr r1, [r6, #4]
0060ddec  00 70 a0 e1                                      mov r7, r0
0060ddf0  08 00 95 e5                                      ldr r0, [r5, #8]
0060ddf4  dc 03 f4 eb                                      bl #0x30ed6c
0060ddf8  00 10 a0 e1                                      mov r1, r0
0060ddfc  07 00 a0 e1                                      mov r0, r7
0060de00  67 03 f4 eb                                      bl #0x30eba4
0060de04  08 10 96 e5                                      ldr r1, [r6, #8]
0060de08  00 70 a0 e1                                      mov r7, r0
0060de0c  04 00 95 e5                                      ldr r0, [r5, #4]
0060de10  d5 03 f4 eb                                      bl #0x30ed6c
0060de14  00 10 a0 e1                                      mov r1, r0
0060de18  07 00 a0 e1                                      mov r0, r7
0060de1c  62 01 f4 eb                                      bl #0x30e3ac
0060de20  00 00 84 e5                                      str r0, [r4]
0060de24  0c 10 96 e5                                      ldr r1, [r6, #0xc]
0060de28  04 00 95 e5                                      ldr r0, [r5, #4]
0060de2c  ce 03 f4 eb                                      bl #0x30ed6c
0060de30  04 10 96 e5                                      ldr r1, [r6, #4]
0060de34  00 70 a0 e1                                      mov r7, r0
0060de38  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0060de3c  ca 03 f4 eb                                      bl #0x30ed6c
0060de40  00 10 a0 e1                                      mov r1, r0
0060de44  07 00 a0 e1                                      mov r0, r7
0060de48  55 03 f4 eb                                      bl #0x30eba4
0060de4c  08 10 96 e5                                      ldr r1, [r6, #8]
0060de50  00 70 a0 e1                                      mov r7, r0
0060de54  00 00 95 e5                                      ldr r0, [r5]
0060de58  c3 03 f4 eb                                      bl #0x30ed6c
0060de5c  00 10 a0 e1                                      mov r1, r0
0060de60  07 00 a0 e1                                      mov r0, r7
0060de64  4e 03 f4 eb                                      bl #0x30eba4
0060de68  00 10 96 e5                                      ldr r1, [r6]
0060de6c  00 70 a0 e1                                      mov r7, r0
0060de70  08 00 95 e5                                      ldr r0, [r5, #8]
0060de74  bc 03 f4 eb                                      bl #0x30ed6c
0060de78  00 10 a0 e1                                      mov r1, r0
0060de7c  07 00 a0 e1                                      mov r0, r7
0060de80  49 01 f4 eb                                      bl #0x30e3ac
0060de84  04 00 84 e5                                      str r0, [r4, #4]
0060de88  0c 10 96 e5                                      ldr r1, [r6, #0xc]
0060de8c  08 00 95 e5                                      ldr r0, [r5, #8]
0060de90  b5 03 f4 eb                                      bl #0x30ed6c
0060de94  08 10 96 e5                                      ldr r1, [r6, #8]
0060de98  00 70 a0 e1                                      mov r7, r0
0060de9c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0060dea0  b1 03 f4 eb                                      bl #0x30ed6c
0060dea4  00 10 a0 e1                                      mov r1, r0
0060dea8  07 00 a0 e1                                      mov r0, r7
0060deac  3c 03 f4 eb                                      bl #0x30eba4
0060deb0  00 10 96 e5                                      ldr r1, [r6]
0060deb4  00 70 a0 e1                                      mov r7, r0
0060deb8  04 00 95 e5                                      ldr r0, [r5, #4]
0060debc  aa 03 f4 eb                                      bl #0x30ed6c
0060dec0  00 10 a0 e1                                      mov r1, r0
0060dec4  07 00 a0 e1                                      mov r0, r7
0060dec8  35 03 f4 eb                                      bl #0x30eba4
0060decc  04 10 96 e5                                      ldr r1, [r6, #4]
0060ded0  00 70 a0 e1                                      mov r7, r0
0060ded4  00 00 95 e5                                      ldr r0, [r5]
0060ded8  a3 03 f4 eb                                      bl #0x30ed6c
0060dedc  00 10 a0 e1                                      mov r1, r0
0060dee0  07 00 a0 e1                                      mov r0, r7
0060dee4  30 01 f4 eb                                      bl #0x30e3ac
0060dee8  08 00 84 e5                                      str r0, [r4, #8]
0060deec  04 00 a0 e1                                      mov r0, r4
0060def0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00612d00, declared_size=980, range_size=980, mode=arm
; class-group: glitch::core::quaternion
; alias: _ZN6glitch4core10quaternion5slerpES1_S1_f
; demangled: glitch::core::quaternion::slerp(glitch::core::quaternion, glitch::core::quaternion, float)
; decoder-mode: arm
00612d00  10 d0 4d e2                                      sub sp, sp, #0x10
00612d04  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00612d08  1c d0 4d e2                                      sub sp, sp, #0x1c
00612d0c  44 c0 8d e2                                      add ip, sp, #0x44
00612d10  0e 00 8c e8                                      stm ip, {r1, r2, r3}
00612d14  54 b0 9d e5                                      ldr fp, [sp, #0x54]
00612d18  44 90 9d e5                                      ldr sb, [sp, #0x44]
00612d1c  58 30 9d e5                                      ldr r3, [sp, #0x58]
00612d20  0b 10 a0 e1                                      mov r1, fp
00612d24  00 40 a0 e1                                      mov r4, r0
00612d28  09 00 a0 e1                                      mov r0, sb
00612d2c  0c 30 8d e5                                      str r3, [sp, #0xc]
00612d30  0d f0 f3 eb                                      bl #0x30ed6c
00612d34  48 a0 9d e5                                      ldr sl, [sp, #0x48]
00612d38  00 50 a0 e1                                      mov r5, r0
00612d3c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00612d40  0a 00 a0 e1                                      mov r0, sl
00612d44  08 f0 f3 eb                                      bl #0x30ed6c
00612d48  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00612d4c  00 10 a0 e1                                      mov r1, r0
00612d50  05 00 a0 e1                                      mov r0, r5
00612d54  08 30 8d e5                                      str r3, [sp, #8]
00612d58  91 ef f3 eb                                      bl #0x30eba4
00612d5c  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
00612d60  00 50 a0 e1                                      mov r5, r0
00612d64  08 10 9d e5                                      ldr r1, [sp, #8]
00612d68  08 00 a0 e1                                      mov r0, r8
00612d6c  fe ef f3 eb                                      bl #0x30ed6c
00612d70  60 30 9d e5                                      ldr r3, [sp, #0x60]
00612d74  00 10 a0 e1                                      mov r1, r0
00612d78  05 00 a0 e1                                      mov r0, r5
00612d7c  04 30 8d e5                                      str r3, [sp, #4]
00612d80  87 ef f3 eb                                      bl #0x30eba4
00612d84  50 70 9d e5                                      ldr r7, [sp, #0x50]
00612d88  00 50 a0 e1                                      mov r5, r0
00612d8c  04 10 9d e5                                      ldr r1, [sp, #4]
00612d90  07 00 a0 e1                                      mov r0, r7
00612d94  f4 ef f3 eb                                      bl #0x30ed6c
00612d98  00 10 a0 e1                                      mov r1, r0
00612d9c  05 00 a0 e1                                      mov r0, r5
00612da0  7f ef f3 eb                                      bl #0x30eba4
00612da4  00 10 a0 e3                                      mov r1, #0
00612da8  00 60 a0 e1                                      mov r6, r0
00612dac  56 ee f3 eb                                      bl #0x30e70c
00612db0  00 00 50 e3                                      cmp r0, #0
00612db4  02 61 86 12                                      addne r6, r6, #0x80000000
00612db8  fe 15 a0 e3                                      mov r1, #0x3f800000
00612dbc  06 00 a0 e1                                      mov r0, r6
00612dc0  02 91 89 12                                      addne sb, sb, #0x80000000
00612dc4  02 a1 8a 12                                      addne sl, sl, #0x80000000
00612dc8  02 81 88 12                                      addne r8, r8, #0x80000000
00612dcc  02 71 87 12                                      addne r7, r7, #0x80000000
00612dd0  73 ef f3 eb                                      bl #0x30eba4
00612dd4  cd 1c 0c e3                                      movw r1, #0xcccd
00612dd8  4c 1d 43 e3                                      movt r1, #0x3d4c
00612ddc  45 ed f3 eb                                      bl #0x30e2f8
00612de0  00 00 50 e3                                      cmp r0, #0
00612de4  64 50 9d e5                                      ldr r5, [sp, #0x64]
00612de8  48 00 00 0a                                      beq #0x612f10
00612dec  06 10 a0 e1                                      mov r1, r6
00612df0  fe 05 a0 e3                                      mov r0, #0x3f800000
00612df4  6c ed f3 eb                                      bl #0x30e3ac
00612df8  cd 1c 0c e3                                      movw r1, #0xcccd
00612dfc  4c 1d 43 e3                                      movt r1, #0x3d4c
00612e00  ab ed f3 eb                                      bl #0x30e4b4
00612e04  00 00 50 e3                                      cmp r0, #0
00612e08  7f 00 00 0a                                      beq #0x61300c
00612e0c  06 00 a0 e1                                      mov r0, r6
00612e10  71 ed f3 eb                                      bl #0x30e3dc
00612e14  10 00 8d e5                                      str r0, [sp, #0x10]
00612e18  3a ef f3 eb                                      bl #0x30eb08
00612e1c  00 10 a0 e1                                      mov r1, r0
00612e20  fe 05 a0 e3                                      mov r0, #0x3f800000
00612e24  9a ef f3 eb                                      bl #0x30ec94
00612e28  05 10 a0 e1                                      mov r1, r5
00612e2c  14 00 8d e5                                      str r0, [sp, #0x14]
00612e30  fe 05 a0 e3                                      mov r0, #0x3f800000
00612e34  5c ed f3 eb                                      bl #0x30e3ac
00612e38  00 10 a0 e1                                      mov r1, r0
00612e3c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00612e40  c9 ef f3 eb                                      bl #0x30ed6c
00612e44  2f ef f3 eb                                      bl #0x30eb08
00612e48  14 10 9d e5                                      ldr r1, [sp, #0x14]
00612e4c  c6 ef f3 eb                                      bl #0x30ed6c
00612e50  05 10 a0 e1                                      mov r1, r5
00612e54  00 60 a0 e1                                      mov r6, r0
00612e58  10 00 9d e5                                      ldr r0, [sp, #0x10]
00612e5c  c2 ef f3 eb                                      bl #0x30ed6c
00612e60  28 ef f3 eb                                      bl #0x30eb08
00612e64  14 10 9d e5                                      ldr r1, [sp, #0x14]
00612e68  bf ef f3 eb                                      bl #0x30ed6c
00612e6c  09 10 a0 e1                                      mov r1, sb
00612e70  00 50 a0 e1                                      mov r5, r0
00612e74  06 00 a0 e1                                      mov r0, r6
00612e78  bb ef f3 eb                                      bl #0x30ed6c
00612e7c  0b 10 a0 e1                                      mov r1, fp
00612e80  00 90 a0 e1                                      mov sb, r0
00612e84  05 00 a0 e1                                      mov r0, r5
00612e88  b7 ef f3 eb                                      bl #0x30ed6c
00612e8c  00 10 a0 e1                                      mov r1, r0
00612e90  09 00 a0 e1                                      mov r0, sb
00612e94  42 ef f3 eb                                      bl #0x30eba4
00612e98  0a 10 a0 e1                                      mov r1, sl
00612e9c  00 00 84 e5                                      str r0, [r4]
00612ea0  06 00 a0 e1                                      mov r0, r6
00612ea4  b0 ef f3 eb                                      bl #0x30ed6c
00612ea8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00612eac  00 a0 a0 e1                                      mov sl, r0
00612eb0  05 00 a0 e1                                      mov r0, r5
00612eb4  ac ef f3 eb                                      bl #0x30ed6c
00612eb8  00 10 a0 e1                                      mov r1, r0
00612ebc  0a 00 a0 e1                                      mov r0, sl
00612ec0  37 ef f3 eb                                      bl #0x30eba4
00612ec4  08 10 a0 e1                                      mov r1, r8
00612ec8  04 00 84 e5                                      str r0, [r4, #4]
00612ecc  06 00 a0 e1                                      mov r0, r6
00612ed0  a5 ef f3 eb                                      bl #0x30ed6c
00612ed4  08 10 9d e5                                      ldr r1, [sp, #8]
00612ed8  00 80 a0 e1                                      mov r8, r0
00612edc  05 00 a0 e1                                      mov r0, r5
00612ee0  a1 ef f3 eb                                      bl #0x30ed6c
00612ee4  00 10 a0 e1                                      mov r1, r0
00612ee8  08 00 a0 e1                                      mov r0, r8
00612eec  2c ef f3 eb                                      bl #0x30eba4
00612ef0  07 10 a0 e1                                      mov r1, r7
00612ef4  08 00 84 e5                                      str r0, [r4, #8]
00612ef8  06 00 a0 e1                                      mov r0, r6
00612efc  9a ef f3 eb                                      bl #0x30ed6c
00612f00  04 10 9d e5                                      ldr r1, [sp, #4]
00612f04  00 60 a0 e1                                      mov r6, r0
00612f08  05 00 a0 e1                                      mov r0, r5
00612f0c  34 00 00 ea                                      b #0x612fe4
00612f10  05 10 a0 e1                                      mov r1, r5
00612f14  3f 04 a0 e3                                      mov r0, #0x3f000000
00612f18  23 ed f3 eb                                      bl #0x30e3ac
00612f1c  db 1f 00 e3                                      movw r1, #0xfdb
00612f20  49 10 44 e3                                      movt r1, #0x4049
00612f24  90 ef f3 eb                                      bl #0x30ed6c
00612f28  f6 ee f3 eb                                      bl #0x30eb08
00612f2c  db 1f 00 e3                                      movw r1, #0xfdb
00612f30  00 60 a0 e1                                      mov r6, r0
00612f34  49 10 44 e3                                      movt r1, #0x4049
00612f38  05 00 a0 e1                                      mov r0, r5
00612f3c  8a ef f3 eb                                      bl #0x30ed6c
00612f40  f0 ee f3 eb                                      bl #0x30eb08
00612f44  09 10 a0 e1                                      mov r1, sb
00612f48  00 50 a0 e1                                      mov r5, r0
00612f4c  06 00 a0 e1                                      mov r0, r6
00612f50  85 ef f3 eb                                      bl #0x30ed6c
00612f54  05 10 a0 e1                                      mov r1, r5
00612f58  00 b0 a0 e1                                      mov fp, r0
00612f5c  02 01 8a e2                                      add r0, sl, #0x80000000
00612f60  81 ef f3 eb                                      bl #0x30ed6c
00612f64  00 10 a0 e1                                      mov r1, r0
00612f68  0b 00 a0 e1                                      mov r0, fp
00612f6c  0c ef f3 eb                                      bl #0x30eba4
00612f70  0a 10 a0 e1                                      mov r1, sl
00612f74  00 00 84 e5                                      str r0, [r4]
00612f78  06 00 a0 e1                                      mov r0, r6
00612f7c  7a ef f3 eb                                      bl #0x30ed6c
00612f80  09 10 a0 e1                                      mov r1, sb
00612f84  00 a0 a0 e1                                      mov sl, r0
00612f88  05 00 a0 e1                                      mov r0, r5
00612f8c  76 ef f3 eb                                      bl #0x30ed6c
00612f90  00 10 a0 e1                                      mov r1, r0
00612f94  0a 00 a0 e1                                      mov r0, sl
00612f98  01 ef f3 eb                                      bl #0x30eba4
00612f9c  08 10 a0 e1                                      mov r1, r8
00612fa0  04 00 84 e5                                      str r0, [r4, #4]
00612fa4  06 00 a0 e1                                      mov r0, r6
00612fa8  6f ef f3 eb                                      bl #0x30ed6c
00612fac  05 10 a0 e1                                      mov r1, r5
00612fb0  00 a0 a0 e1                                      mov sl, r0
00612fb4  02 01 87 e2                                      add r0, r7, #0x80000000
00612fb8  6b ef f3 eb                                      bl #0x30ed6c
00612fbc  00 10 a0 e1                                      mov r1, r0
00612fc0  0a 00 a0 e1                                      mov r0, sl
00612fc4  f6 ee f3 eb                                      bl #0x30eba4
00612fc8  07 10 a0 e1                                      mov r1, r7
00612fcc  08 00 84 e5                                      str r0, [r4, #8]
00612fd0  06 00 a0 e1                                      mov r0, r6
00612fd4  64 ef f3 eb                                      bl #0x30ed6c
00612fd8  08 10 a0 e1                                      mov r1, r8
00612fdc  00 60 a0 e1                                      mov r6, r0
00612fe0  05 00 a0 e1                                      mov r0, r5
00612fe4  60 ef f3 eb                                      bl #0x30ed6c
00612fe8  00 10 a0 e1                                      mov r1, r0
00612fec  06 00 a0 e1                                      mov r0, r6
00612ff0  eb ee f3 eb                                      bl #0x30eba4
00612ff4  0c 00 84 e5                                      str r0, [r4, #0xc]
00612ff8  04 00 a0 e1                                      mov r0, r4
00612ffc  1c d0 8d e2                                      add sp, sp, #0x1c
00613000  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00613004  10 d0 8d e2                                      add sp, sp, #0x10
00613008  1e ff 2f e1                                      bx lr
0061300c  05 10 a0 e1                                      mov r1, r5
00613010  fe 05 a0 e3                                      mov r0, #0x3f800000
00613014  e4 ec f3 eb                                      bl #0x30e3ac
00613018  09 10 a0 e1                                      mov r1, sb
0061301c  00 60 a0 e1                                      mov r6, r0
00613020  51 ef f3 eb                                      bl #0x30ed6c
00613024  0b 10 a0 e1                                      mov r1, fp
00613028  00 90 a0 e1                                      mov sb, r0
0061302c  05 00 a0 e1                                      mov r0, r5
00613030  4d ef f3 eb                                      bl #0x30ed6c
00613034  00 10 a0 e1                                      mov r1, r0
00613038  09 00 a0 e1                                      mov r0, sb
0061303c  d8 ee f3 eb                                      bl #0x30eba4
00613040  0a 10 a0 e1                                      mov r1, sl
00613044  00 00 84 e5                                      str r0, [r4]
00613048  06 00 a0 e1                                      mov r0, r6
0061304c  46 ef f3 eb                                      bl #0x30ed6c
00613050  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00613054  00 a0 a0 e1                                      mov sl, r0
00613058  05 00 a0 e1                                      mov r0, r5
0061305c  42 ef f3 eb                                      bl #0x30ed6c
00613060  00 10 a0 e1                                      mov r1, r0
00613064  0a 00 a0 e1                                      mov r0, sl
00613068  cd ee f3 eb                                      bl #0x30eba4
0061306c  08 10 a0 e1                                      mov r1, r8
00613070  04 00 84 e5                                      str r0, [r4, #4]
00613074  06 00 a0 e1                                      mov r0, r6
00613078  3b ef f3 eb                                      bl #0x30ed6c
0061307c  08 10 9d e5                                      ldr r1, [sp, #8]
00613080  00 80 a0 e1                                      mov r8, r0
00613084  05 00 a0 e1                                      mov r0, r5
00613088  37 ef f3 eb                                      bl #0x30ed6c
0061308c  00 10 a0 e1                                      mov r1, r0
00613090  08 00 a0 e1                                      mov r0, r8
00613094  c2 ee f3 eb                                      bl #0x30eba4
00613098  07 10 a0 e1                                      mov r1, r7
0061309c  08 00 84 e5                                      str r0, [r4, #8]
006130a0  06 00 a0 e1                                      mov r0, r6
006130a4  30 ef f3 eb                                      bl #0x30ed6c
006130a8  04 10 9d e5                                      ldr r1, [sp, #4]
006130ac  00 60 a0 e1                                      mov r6, r0
006130b0  05 00 a0 e1                                      mov r0, r5
006130b4  2c ef f3 eb                                      bl #0x30ed6c
006130b8  00 10 a0 e1                                      mov r1, r0
006130bc  06 00 a0 e1                                      mov r0, r6
006130c0  b7 ee f3 eb                                      bl #0x30eba4
006130c4  0c 00 84 e5                                      str r0, [r4, #0xc]
006130c8  04 00 a0 e1                                      mov r0, r4
006130cc  07 26 f5 eb                                      bl #0x35c8f0
006130d0  c8 ff ff ea                                      b #0x612ff8
