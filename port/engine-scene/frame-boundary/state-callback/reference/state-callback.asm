; ARMv7 little-endian listing, decoded from exact source ELF byte ranges.
; This is an evidence listing, not assembler-ready source.
; Source ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80

; FUNCTION 0x00323ae0, size=228, sha256=4284eda22be9df734e1acc2a2022683f6a43fa475cd3137bdca1424e0344207c
; Application::Init(glitch::IDevice*)
00323ae0  70 40 2d e9   push     {r4, r5, r6, lr}
00323ae4  01 50 a0 e1   mov      r5, r1
00323ae8  00 00 55 e3   cmp      r5, #0
00323aec  10 50 80 e5   str      r5, [r0, #0x10]
00323af0  04 30 95 15   ldrne    r3, [r5, #4]
00323af4  00 10 a0 e1   mov      r1, r0
00323af8  05 00 a0 e1   mov      r0, r5
00323afc  01 30 83 12   addne    r3, r3, #1
00323b00  04 30 85 15   strne    r3, [r5, #4]
00323b04  6f 36 0d eb   bl       #0x6714c8
00323b08  2c 30 95 e5   ldr      r3, [r5, #0x2c]
00323b0c  a4 40 9f e5   ldr      r4, [pc, #0xa4]
00323b10  00 00 53 e3   cmp      r3, #0
00323b14  04 40 8f e0   add      r4, pc, r4
00323b18  04 00 00 0a   beq      #0x323b30
00323b1c  03 00 a0 e1   mov      r0, r3
00323b20  04 10 a0 e3   mov      r1, #4
00323b24  00 30 93 e5   ldr      r3, [r3]
00323b28  0f e0 a0 e1   mov      lr, pc
00323b2c  10 f0 93 e5   ldr      pc, [r3, #0x10]
00323b30  10 50 95 e5   ldr      r5, [r5, #0x10]
00323b34  01 1c a0 e3   mov      r1, #0x100
00323b38  01 20 a0 e3   mov      r2, #1
00323b3c  05 00 a0 e1   mov      r0, r5
00323b40  00 30 95 e5   ldr      r3, [r5]
00323b44  0f e0 a0 e1   mov      lr, pc
00323b48  a0 f0 93 e5   ldr      pc, [r3, #0xa0]
00323b4c  05 00 a0 e1   mov      r0, r5
00323b50  00 30 95 e5   ldr      r3, [r5]
00323b54  10 10 a0 e3   mov      r1, #0x10
00323b58  00 20 a0 e3   mov      r2, #0
00323b5c  0f e0 a0 e1   mov      lr, pc
00323b60  a0 f0 93 e5   ldr      pc, [r3, #0xa0]
00323b64  e0 30 95 e5   ldr      r3, [r5, #0xe0]
00323b68  4c 10 9f e5   ldr      r1, [pc, #0x4c]
00323b6c  00 20 a0 e3   mov      r2, #0
00323b70  74 00 93 e5   ldr      r0, [r3, #0x74]
00323b74  01 10 94 e7   ldr      r1, [r4, r1]
00323b78  04 00 80 e3   orr      r0, r0, #4
00323b7c  74 00 83 e5   str      r0, [r3, #0x74]
00323b80  00 c0 91 e5   ldr      ip, [r1]
00323b84  34 00 9f e5   ldr      r0, [pc, #0x34]
00323b88  29 20 cc e5   strb     r2, [ip, #0x29]
00323b8c  74 c0 93 e5   ldr      ip, [r3, #0x74]
00323b90  00 00 94 e7   ldr      r0, [r4, r0]
00323b94  01 c0 cc e3   bic      ip, ip, #1
00323b98  74 c0 83 e5   str      ip, [r3, #0x74]
00323b9c  00 30 91 e5   ldr      r3, [r1]
00323ba0  2b 20 c3 e5   strb     r2, [r3, #0x2b]
00323ba4  00 00 90 e5   ldr      r0, [r0]
00323ba8  7d 3a a0 e3   mov      r3, #0x7d000
00323bac  18 30 80 e5   str      r3, [r0, #0x18]
00323bb0  70 40 bd e8   pop      {r4, r5, r6, lr}
00323bb4  75 9f 0b ea   b        #0x60b990
00323bb8  7c 0f 67 00   rsbeq    r0, r7, ip, ror pc
00323bbc  48 44 00 00   andeq    r4, r0, r8, asr #8
00323bc0  74 09 00 00   andeq    r0, r0, r4, ror sb

; FUNCTION 0x0032f7e8, size=628, sha256=0387dace44d32551cb6531d9fe0bddcef7a5853ca3adecabdb755e6e16587043
; Application::PostInit()
0032f7e8  f0 4f 2d e9   push     {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032f7ec  58 82 9f e5   ldr      r8, [pc, #0x258]
0032f7f0  58 22 9f e5   ldr      r2, [pc, #0x258]
0032f7f4  44 d0 4d e2   sub      sp, sp, #0x44
0032f7f8  08 80 8f e0   add      r8, pc, r8
0032f7fc  02 30 98 e7   ldr      r3, [r8, r2]
0032f800  00 50 a0 e1   mov      r5, r0
0032f804  00 10 a0 e3   mov      r1, #0
0032f808  00 30 93 e5   ldr      r3, [r3]
0032f80c  30 00 a0 e3   mov      r0, #0x30
0032f810  04 20 8d e5   str      r2, [sp, #4]
0032f814  3c 30 8d e5   str      r3, [sp, #0x3c]
0032f818  54 83 ff eb   bl       #0x310570
0032f81c  00 60 a0 e1   mov      r6, r0
0032f820  25 22 00 eb   bl       #0x3380bc
0032f824  00 10 a0 e3   mov      r1, #0
0032f828  14 60 85 e5   str      r6, [r5, #0x14]
0032f82c  20 00 a0 e3   mov      r0, #0x20
0032f830  4e 83 ff eb   bl       #0x310570
0032f834  00 60 a0 e1   mov      r6, r0
0032f838  a2 29 00 eb   bl       #0x339ec8
0032f83c  18 60 85 e5   str      r6, [r5, #0x18]
0032f840  00 10 a0 e3   mov      r1, #0
0032f844  24 00 a0 e3   mov      r0, #0x24
0032f848  48 83 ff eb   bl       #0x310570
0032f84c  28 10 95 e5   ldr      r1, [r5, #0x28]
0032f850  00 60 a0 e1   mov      r6, r0
0032f854  97 4f 06 eb   bl       #0x4c36b8
0032f858  2c 60 85 e5   str      r6, [r5, #0x2c]
0032f85c  00 10 a0 e3   mov      r1, #0
0032f860  3c 00 a0 e3   mov      r0, #0x3c
0032f864  41 83 ff eb   bl       #0x310570
0032f868  28 10 95 e5   ldr      r1, [r5, #0x28]
0032f86c  00 60 a0 e1   mov      r6, r0
0032f870  36 3b 06 eb   bl       #0x4be550
0032f874  00 10 a0 e3   mov      r1, #0
0032f878  30 60 85 e5   str      r6, [r5, #0x30]
0032f87c  d8 07 00 e3   movw     r0, #0x7d8
0032f880  3a 83 ff eb   bl       #0x310570
0032f884  00 60 a0 e1   mov      r6, r0
0032f888  20 61 07 eb   bl       #0x507d10
0032f88c  00 10 a0 e3   mov      r1, #0
0032f890  34 60 85 e5   str      r6, [r5, #0x34]
0032f894  1b 0e a0 e3   mov      r0, #0x1b0
0032f898  34 83 ff eb   bl       #0x310570
0032f89c  00 60 a0 e1   mov      r6, r0
0032f8a0  50 6a 00 eb   bl       #0x34a1e8
0032f8a4  00 10 a0 e3   mov      r1, #0
0032f8a8  38 60 85 e5   str      r6, [r5, #0x38]
0032f8ac  1c 00 a0 e3   mov      r0, #0x1c
0032f8b0  2e 83 ff eb   bl       #0x310570
0032f8b4  00 60 a0 e1   mov      r6, r0
0032f8b8  7c 29 01 eb   bl       #0x379eb0
0032f8bc  00 10 a0 e3   mov      r1, #0
0032f8c0  3c 60 85 e5   str      r6, [r5, #0x3c]
0032f8c4  72 0e a0 e3   mov      r0, #0x720
0032f8c8  28 83 ff eb   bl       #0x310570
0032f8cc  00 60 a0 e1   mov      r6, r0
0032f8d0  94 14 01 eb   bl       #0x374b28
0032f8d4  40 60 85 e5   str      r6, [r5, #0x40]
0032f8d8  00 10 a0 e3   mov      r1, #0
0032f8dc  14 00 a0 e3   mov      r0, #0x14
0032f8e0  22 83 ff eb   bl       #0x310570
0032f8e4  68 b1 9f e5   ldr      fp, [pc, #0x168]
0032f8e8  00 60 a0 e1   mov      r6, r0
0032f8ec  e2 70 00 eb   bl       #0x34bc7c
0032f8f0  08 30 8d e2   add      r3, sp, #8
0032f8f4  44 60 85 e5   str      r6, [r5, #0x44]
0032f8f8  0c 40 8d e2   add      r4, sp, #0xc
0032f8fc  05 70 a0 e1   mov      r7, r5
0032f900  00 60 a0 e3   mov      r6, #0
0032f904  24 90 8d e2   add      sb, sp, #0x24
0032f908  00 30 8d e5   str      r3, [sp]
0032f90c  00 10 a0 e3   mov      r1, #0
0032f910  51 0f a0 e3   mov      r0, #0x144
0032f914  15 83 ff eb   bl       #0x310570
0032f918  00 a0 a0 e1   mov      sl, r0
0032f91c  64 fe ff eb   bl       #0x32f2b4
0032f920  0b 30 98 e7   ldr      r3, [r8, fp]
0032f924  58 a0 87 e5   str      sl, [r7, #0x58]
0032f928  00 20 9d e5   ldr      r2, [sp]
0032f92c  06 10 93 e7   ldr      r1, [r3, r6]
0032f930  09 00 a0 e1   mov      r0, sb
0032f934  c0 d9 ff eb   bl       #0x32603c
0032f938  58 a0 97 e5   ldr      sl, [r7, #0x58]
0032f93c  04 00 a0 e1   mov      r0, r4
0032f940  38 10 9d e5   ldr      r1, [sp, #0x38]
0032f944  34 20 9d e5   ldr      r2, [sp, #0x34]
0032f948  1c 40 8d e5   str      r4, [sp, #0x1c]
0032f94c  20 40 8d e5   str      r4, [sp, #0x20]
0032f950  a7 d9 ff eb   bl       #0x325ff4
0032f954  f8 00 8a e2   add      r0, sl, #0xf8
0032f958  04 00 50 e1   cmp      r0, r4
0032f95c  02 00 00 0a   beq      #0x32f96c
0032f960  20 10 9d e5   ldr      r1, [sp, #0x20]
0032f964  1c 20 9d e5   ldr      r2, [sp, #0x1c]
0032f968  86 c4 ff eb   bl       #0x320b88
0032f96c  20 00 9d e5   ldr      r0, [sp, #0x20]
0032f970  04 00 50 e1   cmp      r0, r4
0032f974  02 00 00 0a   beq      #0x32f984
0032f978  00 00 50 e3   cmp      r0, #0
0032f97c  00 00 00 0a   beq      #0x32f984
0032f980  b2 82 ff eb   bl       #0x310450
0032f984  38 00 9d e5   ldr      r0, [sp, #0x38]
0032f988  09 00 50 e1   cmp      r0, sb
0032f98c  02 00 00 0a   beq      #0x32f99c
0032f990  00 00 50 e3   cmp      r0, #0
0032f994  00 00 00 0a   beq      #0x32f99c
0032f998  ac 82 ff eb   bl       #0x310450
0032f99c  04 60 86 e2   add      r6, r6, #4
0032f9a0  10 00 56 e3   cmp      r6, #0x10
0032f9a4  04 70 87 e2   add      r7, r7, #4
0032f9a8  d7 ff ff 1a   bne      #0x32f90c
0032f9ac  00 10 a0 e3   mov      r1, #0
0032f9b0  e8 00 a0 e3   mov      r0, #0xe8
0032f9b4  ed 82 ff eb   bl       #0x310570
0032f9b8  00 60 a0 e1   mov      r6, r0
0032f9bc  ac fd ff eb   bl       #0x32f074
0032f9c0  10 30 95 e5   ldr      r3, [r5, #0x10]
0032f9c4  00 40 a0 e3   mov      r4, #0
0032f9c8  68 60 85 e5   str      r6, [r5, #0x68]
0032f9cc  b8 40 85 e5   str      r4, [r5, #0xb8]
0032f9d0  1c 30 93 e5   ldr      r3, [r3, #0x1c]
0032f9d4  01 20 a0 e3   mov      r2, #1
0032f9d8  50 22 c3 e5   strb     r2, [r3, #0x250]
0032f9dc  74 30 9f e5   ldr      r3, [pc, #0x74]
0032f9e0  04 20 a0 e1   mov      r2, r4
0032f9e4  18 00 95 e5   ldr      r0, [r5, #0x18]
0032f9e8  03 10 98 e7   ldr      r1, [r8, r3]
0032f9ec  65 2a 00 eb   bl       #0x33a388
0032f9f0  04 10 a0 e1   mov      r1, r4
0032f9f4  44 00 a0 e3   mov      r0, #0x44
0032f9f8  dc 82 ff eb   bl       #0x310570
0032f9fc  00 60 a0 e1   mov      r6, r0
0032fa00  ff 49 01 eb   bl       #0x382204
0032fa04  50 60 85 e5   str      r6, [r5, #0x50]
0032fa08  61 37 13 eb   bl       #0x7fd794
0032fa0c  4b d5 13 eb   bl       #0x824f40
0032fa10  04 10 a0 e1   mov      r1, r4
0032fa14  a8 00 a0 e3   mov      r0, #0xa8
0032fa18  d4 82 ff eb   bl       #0x310570
0032fa1c  00 40 a0 e1   mov      r4, r0
0032fa20  09 10 00 eb   bl       #0x333a4c
0032fa24  04 20 9d e5   ldr      r2, [sp, #4]
0032fa28  48 40 85 e5   str      r4, [r5, #0x48]
0032fa2c  02 30 98 e7   ldr      r3, [r8, r2]
0032fa30  3c 20 9d e5   ldr      r2, [sp, #0x3c]
0032fa34  00 30 93 e5   ldr      r3, [r3]
0032fa38  03 00 52 e1   cmp      r2, r3
0032fa3c  01 00 00 1a   bne      #0x32fa48
0032fa40  44 d0 8d e2   add      sp, sp, #0x44
0032fa44  f0 8f bd e8   pop      {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032fa48  30 7a ff eb   bl       #0x30e310
0032fa4c  98 52 66 00   mlseq    r6, r8, r2, r5
0032fa50  ac 40 00 00   andeq    r4, r0, ip, lsr #1
0032fa54  54 4a 00 00   andeq    r4, r0, r4, asr sl
0032fa58  e8 13 00 00   andeq    r1, r0, r8, ror #7

; FUNCTION 0x0033a100, size=72, sha256=6391346c424d1364426401cc7cc6c76960701a8ab2d76c6aec26583846cae88b
; StateMachine::Draw() const
0033a100  10 40 2d e9   push     {r4, lr}
0033a104  10 30 90 e5   ldr      r3, [r0, #0x10]
0033a108  0c 20 90 e5   ldr      r2, [r0, #0xc]
0033a10c  00 40 a0 e1   mov      r4, r0
0033a110  03 20 62 e0   rsb      r2, r2, r3
0033a114  a2 21 b0 e1   lsrs     r2, r2, #3
0033a118  09 00 00 0a   beq      #0x33a144
0033a11c  01 20 a0 e3   mov      r2, #1
0033a120  1d 20 c0 e5   strb     r2, [r0, #0x1d]
0033a124  08 30 13 e5   ldr      r3, [r3, #-8]
0033a128  00 10 a0 e1   mov      r1, r0
0033a12c  03 00 a0 e1   mov      r0, r3
0033a130  00 30 93 e5   ldr      r3, [r3]
0033a134  0f e0 a0 e1   mov      lr, pc
0033a138  1c f0 93 e5   ldr      pc, [r3, #0x1c]
0033a13c  00 30 a0 e3   mov      r3, #0
0033a140  1d 30 c4 e5   strb     r3, [r4, #0x1d]
0033a144  10 80 bd e8   pop      {r4, pc}

; FUNCTION 0x00350a80, size=108, sha256=d10f1fc866b5a798a820ec84780aa4cf7af57dded6af9bc1aa3adc6b25e01613
; IrrFactory::createSceneManager(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::gui::ICursorControl*, glitch::gui::IGUIEnvironment*)
00350a80  70 40 2d e9   push     {r4, r5, r6, lr}
00350a84  00 20 92 e5   ldr      r2, [r2]
00350a88  10 d0 4d e2   sub      sp, sp, #0x10
00350a8c  03 60 a0 e1   mov      r6, r3
00350a90  00 00 52 e3   cmp      r2, #0
00350a94  0c 20 8d e5   str      r2, [sp, #0xc]
00350a98  04 30 92 15   ldrne    r3, [r2, #4]
00350a9c  01 50 a0 e1   mov      r5, r1
00350aa0  94 04 00 e3   movw     r0, #0x494
00350aa4  01 30 83 12   addne    r3, r3, #1
00350aa8  04 30 82 15   strne    r3, [r2, #4]
00350aac  00 10 a0 e3   mov      r1, #0
00350ab0  ae fe fe eb   bl       #0x310570
00350ab4  20 c0 9d e5   ldr      ip, [sp, #0x20]
00350ab8  05 10 a0 e1   mov      r1, r5
00350abc  06 30 a0 e1   mov      r3, r6
00350ac0  0c 20 8d e2   add      r2, sp, #0xc
00350ac4  00 40 a0 e1   mov      r4, r0
00350ac8  00 c0 8d e5   str      ip, [sp]
00350acc  5a 08 00 eb   bl       #0x352c3c
00350ad0  0c 00 9d e5   ldr      r0, [sp, #0xc]
00350ad4  00 00 50 e3   cmp      r0, #0
00350ad8  00 00 00 0a   beq      #0x350ae0
00350adc  a8 32 ff eb   bl       #0x31d584
00350ae0  04 00 a0 e1   mov      r0, r4
00350ae4  10 d0 8d e2   add      sp, sp, #0x10
00350ae8  70 80 bd e8   pop      {r4, r5, r6, pc}

; FUNCTION 0x00350b24, size=284, sha256=fe3384d71d4413318c7342545062b3e6c63a04d80341f53161fd70a441c8b7b0
; _GLOBAL__I_.._.._sources_Core_Irrlicht_IrrFactory.cpp
00350b24  f0 41 2d e9   push     {r4, r5, r6, r7, r8, lr}
00350b28  e0 40 9f e5   ldr      r4, [pc, #0xe0]
00350b2c  e0 20 9f e5   ldr      r2, [pc, #0xe0]
00350b30  e0 30 9f e5   ldr      r3, [pc, #0xe0]
00350b34  04 40 8f e0   add      r4, pc, r4
00350b38  02 50 94 e7   ldr      r5, [r4, r2]
00350b3c  03 30 8f e0   add      r3, pc, r3
00350b40  3f 24 a0 e3   mov      r2, #0x3f000000
00350b44  08 20 83 e5   str      r2, [r3, #8]
00350b48  00 20 83 e5   str      r2, [r3]
00350b4c  04 20 83 e5   str      r2, [r3, #4]
00350b50  05 00 a0 e1   mov      r0, r5
00350b54  cf 8c 07 eb   bl       #0x533e98
00350b58  bc 30 9f e5   ldr      r3, [pc, #0xbc]
00350b5c  bc 60 9f e5   ldr      r6, [pc, #0xbc]
00350b60  bc 20 9f e5   ldr      r2, [pc, #0xbc]
00350b64  03 30 94 e7   ldr      r3, [r4, r3]
00350b68  06 70 94 e7   ldr      r7, [r4, r6]
00350b6c  02 10 94 e7   ldr      r1, [r4, r2]
00350b70  08 30 83 e2   add      r3, r3, #8
00350b74  07 20 a0 e1   mov      r2, r7
00350b78  00 30 85 e5   str      r3, [r5]
00350b7c  05 00 a0 e1   mov      r0, r5
00350b80  df f5 fe eb   bl       #0x30e304
00350b84  9c 30 9f e5   ldr      r3, [pc, #0x9c]
00350b88  03 30 94 e7   ldr      r3, [r4, r3]
00350b8c  00 20 93 e5   ldr      r2, [r3]
00350b90  01 00 12 e3   tst      r2, #1
00350b94  11 00 00 0a   beq      #0x350be0
00350b98  8c 30 9f e5   ldr      r3, [pc, #0x8c]
00350b9c  03 30 94 e7   ldr      r3, [r4, r3]
00350ba0  00 20 93 e5   ldr      r2, [r3]
00350ba4  01 00 12 e3   tst      r2, #1
00350ba8  00 00 00 0a   beq      #0x350bb0
00350bac  f0 81 bd e8   pop      {r4, r5, r6, r7, r8, pc}
00350bb0  01 20 a0 e3   mov      r2, #1
00350bb4  00 20 83 e5   str      r2, [r3]
00350bb8  70 30 9f e5   ldr      r3, [pc, #0x70]
00350bbc  03 50 94 e7   ldr      r5, [r4, r3]
00350bc0  05 00 a0 e1   mov      r0, r5
00350bc4  f4 72 ff eb   bl       #0x32d79c
00350bc8  64 30 9f e5   ldr      r3, [pc, #0x64]
00350bcc  06 20 94 e7   ldr      r2, [r4, r6]
00350bd0  05 00 a0 e1   mov      r0, r5
00350bd4  03 10 94 e7   ldr      r1, [r4, r3]
00350bd8  f0 41 bd e8   pop      {r4, r5, r6, r7, r8, lr}
00350bdc  c8 f5 fe ea   b        #0x30e304
00350be0  01 20 a0 e3   mov      r2, #1
00350be4  00 20 83 e5   str      r2, [r3]
00350be8  48 30 9f e5   ldr      r3, [pc, #0x48]
00350bec  03 50 94 e7   ldr      r5, [r4, r3]
00350bf0  05 00 a0 e1   mov      r0, r5
00350bf4  2b a1 00 eb   bl       #0x3790a8
00350bf8  3c 30 9f e5   ldr      r3, [pc, #0x3c]
00350bfc  05 00 a0 e1   mov      r0, r5
00350c00  07 20 a0 e1   mov      r2, r7
00350c04  03 10 94 e7   ldr      r1, [r4, r3]
00350c08  bd f5 fe eb   bl       #0x30e304
00350c0c  e1 ff ff ea   b        #0x350b98
; literal-pool bytes, preserved without disassembly
00350c10  5c 3f 64 00  .word 0x00643f5c
00350c14  30 47 00 00  .word 0x00004730
00350c18  9c 13 65 00  .word 0x0065139c
00350c1c  98 25 00 00  .word 0x00002598
00350c20  90 18 00 00  .word 0x00001890
00350c24  10 39 00 00  .word 0x00003910
00350c28  f4 0c 00 00  .word 0x00000cf4
00350c2c  ac 0f 00 00  .word 0x00000fac
00350c30  f4 37 00 00  .word 0x000037f4
00350c34  c0 08 00 00  .word 0x000008c0
00350c38  14 27 00 00  .word 0x00002714
00350c3c  9c 25 00 00  .word 0x0000259c

; FUNCTION 0x00352c3c, size=272, sha256=60c96a4eb12ded6e9e70f0d82486e385c3ee161bad9a3e41f4ab57e892c51ece
; SceneManager::SceneManager(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::io::IFileSystem>, glitch::gui::ICursorControl*, glitch::gui::IGUIEnvironment*)
00352c3c  f0 41 2d e9   push     {r4, r5, r6, r7, r8, lr}
00352c40  f4 50 9f e5   ldr      r5, [pc, #0xf4]
00352c44  f4 c0 9f e5   ldr      ip, [pc, #0xf4]
00352c48  f4 e0 9f e5   ldr      lr, [pc, #0xf4]
00352c4c  05 50 8f e0   add      r5, pc, r5
00352c50  0c c0 95 e7   ldr      ip, [r5, ip]
00352c54  0e e0 95 e7   ldr      lr, [r5, lr]
00352c58  01 70 a0 e3   mov      r7, #1
00352c5c  18 60 9c e5   ldr      r6, [ip, #0x18]
00352c60  08 e0 8e e2   add      lr, lr, #8
00352c64  8c e4 80 e5   str      lr, [r0, #0x48c]
00352c68  00 60 80 e5   str      r6, [r0]
00352c6c  90 74 80 e5   str      r7, [r0, #0x490]
00352c70  0c 70 16 e5   ldr      r7, [r6, #-0xc]
00352c74  1c 80 9c e5   ldr      r8, [ip, #0x1c]
00352c78  10 d0 4d e2   sub      sp, sp, #0x10
00352c7c  01 60 a0 e1   mov      r6, r1
00352c80  07 80 80 e7   str      r8, [r0, r7]
00352c84  04 10 8c e2   add      r1, ip, #4
00352c88  28 c0 9d e5   ldr      ip, [sp, #0x28]
00352c8c  02 e0 a0 e1   mov      lr, r2
00352c90  00 30 8d e5   str      r3, [sp]
00352c94  06 20 a0 e1   mov      r2, r6
00352c98  0e 30 a0 e1   mov      r3, lr
00352c9c  00 60 a0 e3   mov      r6, #0
00352ca0  00 40 a0 e1   mov      r4, r0
00352ca4  40 10 8d e9   stmib    sp, {r6, ip}
00352ca8  48 ec 08 eb   bl       #0x58ddd0
00352cac  94 30 9f e5   ldr      r3, [pc, #0x94]
00352cb0  8c 62 84 e5   str      r6, [r4, #0x28c]
00352cb4  90 62 c4 e5   strb     r6, [r4, #0x290]
00352cb8  03 30 95 e7   ldr      r3, [r5, r3]
00352cbc  a5 0f 84 e2   add      r0, r4, #0x294
00352cc0  c0 20 83 e2   add      r2, r3, #0xc0
00352cc4  1c 30 83 e2   add      r3, r3, #0x1c
00352cc8  00 30 84 e5   str      r3, [r4]
00352ccc  8c 24 84 e5   str      r2, [r4, #0x48c]
00352cd0  bf ea 02 eb   bl       #0x40d7d4
00352cd4  04 20 a0 e3   mov      r2, #4
00352cd8  00 30 a0 e3   mov      r3, #0
00352cdc  44 24 84 e5   str      r2, [r4, #0x444]
00352ce0  fe 25 a0 e3   mov      r2, #0x3f800000
00352ce4  5c 34 84 e5   str      r3, [r4, #0x45c]
00352ce8  60 24 84 e5   str      r2, [r4, #0x460]
00352cec  84 64 84 e5   str      r6, [r4, #0x484]
00352cf0  38 64 84 e5   str      r6, [r4, #0x438]
00352cf4  3c 64 c4 e5   strb     r6, [r4, #0x43c]
00352cf8  40 64 84 e5   str      r6, [r4, #0x440]
00352cfc  48 64 c4 e5   strb     r6, [r4, #0x448]
00352d00  4c 64 84 e5   str      r6, [r4, #0x44c]
00352d04  50 64 84 e5   str      r6, [r4, #0x450]
00352d08  54 64 84 e5   str      r6, [r4, #0x454]
00352d0c  58 34 84 e5   str      r3, [r4, #0x458]
00352d10  64 64 84 e5   str      r6, [r4, #0x464]
00352d14  68 64 84 e5   str      r6, [r4, #0x468]
00352d18  6c 64 84 e5   str      r6, [r4, #0x46c]
00352d1c  70 64 84 e5   str      r6, [r4, #0x470]
00352d20  74 64 84 e5   str      r6, [r4, #0x474]
00352d24  78 64 84 e5   str      r6, [r4, #0x478]
00352d28  7c 64 84 e5   str      r6, [r4, #0x47c]
00352d2c  80 64 84 e5   str      r6, [r4, #0x480]
00352d30  04 00 a0 e1   mov      r0, r4
00352d34  10 d0 8d e2   add      sp, sp, #0x10
00352d38  f0 81 bd e8   pop      {r4, r5, r6, r7, r8, pc}
00352d3c  44 1e 64 00   rsbeq    r1, r4, r4, asr #28
00352d40  40 31 00 00   andeq    r3, r0, r0, asr #2
00352d44  44 2b 00 00   andeq    r2, r0, r4, asr #22
00352d48  00 42 00 00   andeq    r4, r0, r0, lsl #4

; FUNCTION 0x00359338, size=364, sha256=d44c8f6e041dfb62c19c7648a978842d7526c196b455bd053a4363144432196c
; SceneManager::drawAll(glitch::scene::ISceneNode*)
00359338  f0 45 2d e9   push     {r4, r5, r6, r7, r8, sl, lr}
0035933c  4c 41 9f e5   ldr      r4, [pc, #0x14c]
00359340  4c 51 9f e5   ldr      r5, [pc, #0x14c]
00359344  8c d0 4d e2   sub      sp, sp, #0x8c
00359348  04 40 8f e0   add      r4, pc, r4
0035934c  05 30 94 e7   ldr      r3, [r4, r5]
00359350  00 60 a0 e1   mov      r6, r0
00359354  01 70 a0 e1   mov      r7, r1
00359358  00 30 93 e5   ldr      r3, [r3]
0035935c  a5 0f 80 e2   add      r0, r0, #0x294
00359360  84 30 8d e5   str      r3, [sp, #0x84]
00359364  8d d0 02 eb   bl       #0x40d5a0
00359368  06 00 a0 e1   mov      r0, r6
0035936c  07 10 a0 e1   mov      r1, r7
00359370  ce ff ff eb   bl       #0x3592b0
00359374  90 32 d6 e5   ldrb     r3, [r6, #0x290]
00359378  00 00 53 e3   cmp      r3, #0
0035937c  06 00 00 1a   bne      #0x35939c
00359380  05 30 94 e7   ldr      r3, [r4, r5]
00359384  84 20 9d e5   ldr      r2, [sp, #0x84]
00359388  00 30 93 e5   ldr      r3, [r3]
0035938c  03 00 52 e1   cmp      r2, r3
00359390  3d 00 00 1a   bne      #0x35948c
00359394  8c d0 8d e2   add      sp, sp, #0x8c
00359398  f0 85 bd e8   pop      {r4, r5, r6, r7, r8, sl, pc}
0035939c  f4 30 9f e5   ldr      r3, [pc, #0xf4]
003593a0  00 80 a0 e3   mov      r8, #0
003593a4  90 82 c6 e5   strb     r8, [r6, #0x290]
003593a8  03 a0 94 e7   ldr      sl, [r4, r3]
003593ac  6c 70 8d e2   add      r7, sp, #0x6c
003593b0  0a 00 a0 e1   mov      r0, sl
003593b4  33 79 ff eb   bl       #0x337888
003593b8  dc 10 9f e5   ldr      r1, [pc, #0xdc]
003593bc  04 20 8d e2   add      r2, sp, #4
003593c0  07 00 a0 e1   mov      r0, r7
003593c4  01 10 8f e0   add      r1, pc, r1
003593c8  47 eb fe eb   bl       #0x3140ec
003593cc  0a 00 a0 e1   mov      r0, sl
003593d0  07 10 a0 e1   mov      r1, r7
003593d4  ab 79 ff eb   bl       #0x337a88
003593d8  00 a0 a0 e1   mov      sl, r0
003593dc  07 00 a0 e1   mov      r0, r7
003593e0  9b fb fe eb   bl       #0x318254
003593e4  08 00 5a e1   cmp      sl, r8
003593e8  e4 ff ff 0a   beq      #0x359380
003593ec  08 00 a0 e1   mov      r0, r8
003593f0  62 d4 fe eb   bl       #0x30e580
003593f4  a4 10 9f e5   ldr      r1, [pc, #0xa4]
003593f8  08 70 8d e2   add      r7, sp, #8
003593fc  00 20 a0 e1   mov      r2, r0
00359400  01 10 8f e0   add      r1, pc, r1
00359404  07 00 a0 e1   mov      r0, r7
00359408  b5 d5 fe eb   bl       #0x30eae4
0035940c  14 30 96 e5   ldr      r3, [r6, #0x14]
00359410  0d 00 a0 e1   mov      r0, sp
00359414  0d a0 a0 e1   mov      sl, sp
00359418  03 10 a0 e1   mov      r1, r3
0035941c  00 30 93 e5   ldr      r3, [r3]
00359420  0f e0 a0 e1   mov      lr, pc
00359424  98 f0 93 e5   ldr      pc, [r3, #0x98]
00359428  07 00 a0 e1   mov      r0, r7
0035942c  08 10 a0 e1   mov      r1, r8
00359430  ef 5d 08 eb   bl       #0x570bf4
00359434  08 10 a0 e1   mov      r1, r8
00359438  00 70 a0 e1   mov      r7, r0
0035943c  08 00 a0 e3   mov      r0, #8
00359440  59 6b 07 eb   bl       #0x5341ac
00359444  00 60 a0 e1   mov      r6, r0
00359448  af b7 0a eb   bl       #0x60730c
0035944c  0d 20 a0 e1   mov      r2, sp
00359450  08 30 a0 e1   mov      r3, r8
00359454  07 10 a0 e1   mov      r1, r7
00359458  00 c0 96 e5   ldr      ip, [r6]
0035945c  06 00 a0 e1   mov      r0, r6
00359460  0f e0 a0 e1   mov      lr, pc
00359464  10 f0 9c e5   ldr      pc, [ip, #0x10]
00359468  06 00 a0 e1   mov      r0, r6
0035946c  44 10 ff eb   bl       #0x31d584
00359470  07 00 a0 e1   mov      r0, r7
00359474  42 10 ff eb   bl       #0x31d584
00359478  00 00 9d e5   ldr      r0, [sp]
0035947c  08 00 50 e1   cmp      r0, r8
00359480  be ff ff 0a   beq      #0x359380
00359484  3e 10 ff eb   bl       #0x31d584
00359488  bc ff ff ea   b        #0x359380
0035948c  9f d3 fe eb   bl       #0x30e310
00359490  48 b7 63 00   rsbeq    fp, r3, r8, asr #14
00359494  ac 40 00 00   andeq    r4, r0, ip, lsr #1
00359498  84 08 00 00   andeq    r0, r0, r4, lsl #17
0035949c  0c 67 56 00   subseq   r6, r6, ip, lsl #14
003594a0  c0 77 56 00   subseq   r7, r6, r0, asr #15

; FUNCTION 0x00383264, size=4, sha256=379bec29dccd0a93c94826144d7ef6e42fab64ef195a3b8313a16926f66f388f
; StateBase::Draw(StateMachine const*)
00383264  1e ff 2f e1   bx       lr

; FUNCTION 0x003832fc, size=8, sha256=ebeb84d03b636c90737846ba81c1a801ae09afd100b218190a3ac99f6137f6fc
; GSConsole::Draw(StateMachine const*)
003832fc  01 00 a0 e1   mov      r0, r1
00383300  62 db fe ea   b        #0x33a090

; FUNCTION 0x00383618, size=20, sha256=76ba53692b1696374f1058c206c90e9d0036f73dff255785e6297a087ebfb0a3
; GSEndGame::Draw(StateMachine const*)
00383618  10 40 2d e9   push     {r4, lr}
0038361c  1a a5 02 eb   bl       #0x42ca8c
00383620  00 10 a0 e3   mov      r1, #0
00383624  10 40 bd e8   pop      {r4, lr}
00383628  7a ac 02 ea   b        #0x42e818

; FUNCTION 0x003841a8, size=12, sha256=f36ba15be5846afb116df940f32bfa7ac0f316cbdc36cbb471d300a5cde73894
; GSFlashMenu::Draw(StateMachine const*)
003841a8  04 00 90 e5   ldr      r0, [r0, #4]
003841ac  00 10 a0 e3   mov      r1, #0
003841b0  98 a9 02 ea   b        #0x42e818

; FUNCTION 0x00384a4c, size=612, sha256=84337b5063039ecb605a49037f3433036c7a85638d178bd3038770337a1eeac2
; GSInit::Draw(StateMachine const*)
00384a4c  4c 32 9f e5   ldr      r3, [pc, #0x24c]
00384a50  4c 22 9f e5   ldr      r2, [pc, #0x24c]
00384a54  f0 47 2d e9   push     {r4, r5, r6, r7, r8, sb, sl, lr}
00384a58  03 30 8f e0   add      r3, pc, r3
00384a5c  02 70 93 e7   ldr      r7, [r3, r2]
00384a60  40 d0 4d e2   sub      sp, sp, #0x40
00384a64  00 60 a0 e1   mov      r6, r0
00384a68  10 30 97 e5   ldr      r3, [r7, #0x10]
00384a6c  10 40 93 e5   ldr      r4, [r3, #0x10]
00384a70  00 30 94 e5   ldr      r3, [r4]
00384a74  04 00 a0 e1   mov      r0, r4
00384a78  0f e0 a0 e1   mov      lr, pc
00384a7c  0c f0 93 e5   ldr      pc, [r3, #0xc]
00384a80  04 00 a0 e1   mov      r0, r4
00384a84  01 10 a0 e3   mov      r1, #1
00384a88  00 30 94 e5   ldr      r3, [r4]
00384a8c  0f e0 a0 e1   mov      lr, pc
00384a90  a8 f0 93 e5   ldr      pc, [r3, #0xa8]
00384a94  00 30 94 e5   ldr      r3, [r4]
00384a98  04 00 a0 e1   mov      r0, r4
00384a9c  0f e0 a0 e1   mov      lr, pc
00384aa0  14 f0 93 e5   ldr      pc, [r3, #0x14]
00384aa4  10 30 96 e5   ldr      r3, [r6, #0x10]
00384aa8  00 00 53 e3   cmp      r3, #0
00384aac  14 00 00 0a   beq      #0x384b04
00384ab0  cc 30 94 e5   ldr      r3, [r4, #0xcc]
00384ab4  05 cc a0 e3   mov      ip, #0x500
00384ab8  10 80 86 e2   add      r8, r6, #0x10
00384abc  04 20 13 e5   ldr      r2, [r3, #-4]
00384ac0  00 50 a0 e3   mov      r5, #0
00384ac4  30 30 8d e2   add      r3, sp, #0x30
00384ac8  38 c0 8d e5   str      ip, [sp, #0x38]
00384acc  14 20 82 e2   add      r2, r2, #0x14
00384ad0  2f ce a0 e3   mov      ip, #0x2f0
00384ad4  04 00 a0 e1   mov      r0, r4
00384ad8  08 10 a0 e1   mov      r1, r8
00384adc  3c c0 8d e5   str      ip, [sp, #0x3c]
00384ae0  30 50 8d e5   str      r5, [sp, #0x30]
00384ae4  34 50 8d e5   str      r5, [sp, #0x34]
00384ae8  00 50 8d e5   str      r5, [sp]
00384aec  04 50 8d e5   str      r5, [sp, #4]
00384af0  08 50 8d e5   str      r5, [sp, #8]
00384af4  9d 6b 08 eb   bl       #0x59f970
00384af8  08 30 96 e5   ldr      r3, [r6, #8]
00384afc  05 00 53 e1   cmp      r3, r5
00384b00  0e 00 00 ba   blt      #0x384b40
00384b04  00 30 94 e5   ldr      r3, [r4]
00384b08  04 00 a0 e1   mov      r0, r4
00384b0c  0f e0 a0 e1   mov      lr, pc
00384b10  18 f0 93 e5   ldr      pc, [r3, #0x18]
00384b14  00 30 94 e5   ldr      r3, [r4]
00384b18  04 00 a0 e1   mov      r0, r4
00384b1c  0f e0 a0 e1   mov      lr, pc
00384b20  10 f0 93 e5   ldr      pc, [r3, #0x10]
00384b24  04 00 a0 e1   mov      r0, r4
00384b28  00 30 94 e5   ldr      r3, [r4]
00384b2c  00 10 a0 e3   mov      r1, #0
00384b30  0f e0 a0 e1   mov      lr, pc
00384b34  a4 f0 93 e5   ldr      pc, [r3, #0xa4]
00384b38  40 d0 8d e2   add      sp, sp, #0x40
00384b3c  f0 87 bd e8   pop      {r4, r5, r6, r7, r8, sb, sl, pc}
00384b40  07 00 a0 e1   mov      r0, r7
00384b44  c8 6a fe eb   bl       #0x31f66c
00384b48  58 31 9f e5   ldr      r3, [pc, #0x158]
00384b4c  03 30 8f e0   add      r3, pc, r3
00384b50  00 20 93 e5   ldr      r2, [r3]
00384b54  02 20 80 e0   add      r2, r0, r2
00384b58  19 00 52 e3   cmp      r2, #0x19
00384b5c  00 20 83 e5   str      r2, [r3]
00384b60  05 00 00 9a   bls      #0x384b7c
00384b64  04 20 93 e5   ldr      r2, [r3, #4]
00384b68  00 50 83 e5   str      r5, [r3]
00384b6c  0c 00 52 e3   cmp      r2, #0xc
00384b70  01 20 82 12   addne    r2, r2, #1
00384b74  00 20 a0 03   moveq    r2, #0
00384b78  04 20 83 e5   str      r2, [r3, #4]
00384b7c  f3 f2 ff eb   bl       #0x381750
00384b80  02 53 00 e3   movw     r5, #0x302
00384b84  00 00 50 e3   cmp      r0, #0
00384b88  05 a0 a0 01   moveq    sl, r5
00384b8c  17 a0 a0 13   movne    sl, #0x17
00384b90  ee f2 ff eb   bl       #0x381750
00384b94  00 00 50 e3   cmp      r0, #0
00384b98  c6 5f a0 13   movne    r5, #0x318
00384b9c  eb f2 ff eb   bl       #0x381750
00384ba0  42 94 a0 e3   mov      sb, #0x42000000
00384ba4  00 00 50 e3   cmp      r0, #0
00384ba8  40 60 a0 03   moveq    r6, #0x40
00384bac  36 60 a0 13   movne    r6, #0x36
00384bb0  02 95 89 02   addeq    sb, sb, #0x800000
00384bb4  16 97 89 12   addne    sb, sb, #0x580000
00384bb8  e4 f2 ff eb   bl       #0x381750
00384bbc  e8 30 9f e5   ldr      r3, [pc, #0xe8]
00384bc0  00 00 50 e3   cmp      r0, #0
00384bc4  42 74 a0 e3   mov      r7, #0x42000000
00384bc8  03 30 8f e0   add      r3, pc, r3
00384bcc  04 30 93 e5   ldr      r3, [r3, #4]
00384bd0  40 10 a0 03   moveq    r1, #0x40
00384bd4  38 10 a0 13   movne    r1, #0x38
00384bd8  c3 2f a0 e1   asr      r2, r3, #0x1f
00384bdc  03 c0 83 e2   add      ip, r3, #3
00384be0  22 2f a0 e1   lsr      r2, r2, #0x1e
00384be4  02 00 83 e0   add      r0, r3, r2
00384be8  02 75 87 02   addeq    r7, r7, #0x800000
00384bec  06 76 87 12   addne    r7, r7, #0x600000
00384bf0  00 00 53 e3   cmp      r3, #0
00384bf4  0c 30 a0 b1   movlt    r3, ip
00384bf8  03 00 00 e2   and      r0, r0, #3
00384bfc  00 20 62 e0   rsb      r2, r2, r0
00384c00  43 31 a0 e1   asr      r3, r3, #2
00384c04  92 a6 2a e0   mla      sl, r2, r6, sl
00384c08  93 51 25 e0   mla      r5, r3, r1, r5
00384c0c  06 60 8a e0   add      r6, sl, r6
00384c10  01 10 85 e0   add      r1, r5, r1
00384c14  20 a0 8d e5   str      sl, [sp, #0x20]
00384c18  24 50 8d e5   str      r5, [sp, #0x24]
00384c1c  28 60 8d e5   str      r6, [sp, #0x28]
00384c20  2c 10 8d e5   str      r1, [sp, #0x2c]
00384c24  cc 30 94 e5   ldr      r3, [r4, #0xcc]
00384c28  04 20 13 e5   ldr      r2, [r3, #-4]
00384c2c  14 10 82 e2   add      r1, r2, #0x14
00384c30  4a 00 91 e8   ldm      r1, {r1, r3, r6}
00384c34  20 50 92 e5   ldr      r5, [r2, #0x20]
00384c38  06 60 61 e0   rsb      r6, r1, r6
00384c3c  06 00 a0 e1   mov      r0, r6
00384c40  05 50 63 e0   rsb      r5, r3, r5
00384c44  46 27 fe eb   bl       #0x30e964
00384c48  09 10 a0 e1   mov      r1, sb
00384c4c  d6 25 fe eb   bl       #0x30e3ac
00384c50  1d 26 fe eb   bl       #0x30e4cc
00384c54  10 00 8d e5   str      r0, [sp, #0x10]
00384c58  05 00 a0 e1   mov      r0, r5
00384c5c  40 27 fe eb   bl       #0x30e964
00384c60  07 10 a0 e1   mov      r1, r7
00384c64  d0 25 fe eb   bl       #0x30e3ac
00384c68  17 26 fe eb   bl       #0x30e4cc
00384c6c  00 c0 a0 e3   mov      ip, #0
00384c70  14 00 8d e5   str      r0, [sp, #0x14]
00384c74  08 10 a0 e1   mov      r1, r8
00384c78  04 00 a0 e1   mov      r0, r4
00384c7c  10 20 8d e2   add      r2, sp, #0x10
00384c80  20 30 8d e2   add      r3, sp, #0x20
00384c84  18 60 8d e5   str      r6, [sp, #0x18]
00384c88  1c 50 8d e5   str      r5, [sp, #0x1c]
00384c8c  08 c0 8d e5   str      ip, [sp, #8]
00384c90  00 c0 8d e5   str      ip, [sp]
00384c94  04 c0 8d e5   str      ip, [sp, #4]
00384c98  34 6b 08 eb   bl       #0x59f970
00384c9c  98 ff ff ea   b        #0x384b04
00384ca0  38 00 61 00   rsbeq    r0, r1, r8, lsr r0
00384ca4  f4 37 00 00   strdeq   r3, r4, [r0], -r4
00384ca8  48 d9 61 00   rsbeq    sp, r1, r8, asr #18
00384cac  cc d8 61 00   rsbeq    sp, r1, ip, asr #17

; FUNCTION 0x00385a84, size=8, sha256=8fcedc60df1334b0e2172bed84d9799f5672461612d63cca654863fdf5692024
; GSKeyboard::Draw(StateMachine const*)
00385a84  01 00 a0 e1   mov      r0, r1
00385a88  80 d1 fe ea   b        #0x33a090

; FUNCTION 0x00386014, size=44, sha256=363e6361bfa2921dee80ffb08e225a35afa268e7769c0ca0f7819a930f7b6573
; GSLevel::Draw(StateMachine const*)
00386014  10 40 2d e9   push     {r4, lr}
00386018  00 40 a0 e1   mov      r4, r0
0038601c  34 00 90 e5   ldr      r0, [r0, #0x34]
00386020  49 b1 01 eb   bl       #0x3f254c
00386024  98 9a 02 eb   bl       #0x42ca8c
00386028  38 10 94 e5   ldr      r1, [r4, #0x38]
0038602c  03 00 51 e3   cmp      r1, #3
00386030  00 10 a0 d3   movle    r1, #0
00386034  01 10 a0 c3   movgt    r1, #1
00386038  10 40 bd e8   pop      {r4, lr}
0038603c  f5 a1 02 ea   b        #0x42e818

; FUNCTION 0x00386938, size=8, sha256=8f3e928e3d8d0d41c4f0a19c091118976fefa029afab07cfb4279c449e55fbbc
; GSLevelMap::Draw(StateMachine const*)
00386938  08 00 90 e5   ldr      r0, [r0, #8]
0038693c  e8 cc 01 ea   b        #0x3f9ce4

; FUNCTION 0x00386adc, size=4, sha256=379bec29dccd0a93c94826144d7ef6e42fab64ef195a3b8313a16926f66f388f
; GSTest::Draw(StateMachine const*)
00386adc  1e ff 2f e1   bx       lr

; FUNCTION 0x003872bc, size=60, sha256=f876935d5390abffad97ba7b29d73bbe6fca826a685c462449e85d7e85b6bbad
; GSViewer::Draw(StateMachine const*)
003872bc  2c 30 9f e5   ldr      r3, [pc, #0x2c]
003872c0  2c 20 9f e5   ldr      r2, [pc, #0x2c]
003872c4  10 40 2d e9   push     {r4, lr}
003872c8  03 30 8f e0   add      r3, pc, r3
003872cc  02 20 93 e7   ldr      r2, [r3, r2]
003872d0  00 10 a0 e3   mov      r1, #0
003872d4  10 30 92 e5   ldr      r3, [r2, #0x10]
003872d8  1c 30 93 e5   ldr      r3, [r3, #0x1c]
003872dc  03 00 a0 e1   mov      r0, r3
003872e0  00 30 93 e5   ldr      r3, [r3]
003872e4  0f e0 a0 e1   mov      lr, pc
003872e8  3c f0 93 e5   ldr      pc, [r3, #0x3c]
003872ec  10 80 bd e8   pop      {r4, pc}
003872f0  c8 d7 60 00   rsbeq    sp, r0, r8, asr #15
003872f4  f4 37 00 00   strdeq   r3, r4, [r0], -r4

; FUNCTION 0x0041744c, size=8, sha256=fa04763cc015275f81b1d864426513948ce8bfb90e0889b5098b558301847cdd
; non-virtual thunk to GS_InterruptLoading::Draw(StateMachine const*)
0041744c  04 00 40 e2   sub      r0, r0, #4
00417450  ff ff ff ea   b        #0x417454

; FUNCTION 0x00417454, size=632, sha256=899b90fbf72037cbaf4ced6dbd222ab258489985c09134cba0eedce26a4c1e2a
; GS_InterruptLoading::Draw(StateMachine const*)
00417454  f0 47 2d e9   push     {r4, r5, r6, r7, r8, sb, sl, lr}
00417458  5c 42 9f e5   ldr      r4, [pc, #0x25c]
0041745c  5c a2 9f e5   ldr      sl, [pc, #0x25c]
00417460  5c 62 9f e5   ldr      r6, [pc, #0x25c]
00417464  04 40 8f e0   add      r4, pc, r4
00417468  0a 70 94 e7   ldr      r7, [r4, sl]
0041746c  06 60 8f e0   add      r6, pc, r6
00417470  00 20 96 e5   ldr      r2, [r6]
00417474  10 30 97 e5   ldr      r3, [r7, #0x10]
00417478  40 d0 4d e2   sub      sp, sp, #0x40
0041747c  01 00 52 e3   cmp      r2, #1
00417480  10 50 93 e5   ldr      r5, [r3, #0x10]
00417484  73 00 00 da   ble      #0x417658
00417488  00 30 95 e5   ldr      r3, [r5]
0041748c  05 00 a0 e1   mov      r0, r5
00417490  0f e0 a0 e1   mov      lr, pc
00417494  14 f0 93 e5   ldr      pc, [r3, #0x14]
00417498  10 30 97 e5   ldr      r3, [r7, #0x10]
0041749c  24 92 9f e5   ldr      sb, [pc, #0x224]
004174a0  05 cc a0 e3   mov      ip, #0x500
004174a4  10 00 93 e5   ldr      r0, [r3, #0x10]
004174a8  00 80 a0 e3   mov      r8, #0
004174ac  30 30 8d e2   add      r3, sp, #0x30
004174b0  cc 20 90 e5   ldr      r2, [r0, #0xcc]
004174b4  09 10 94 e7   ldr      r1, [r4, sb]
004174b8  04 20 12 e5   ldr      r2, [r2, #-4]
004174bc  38 c0 8d e5   str      ip, [sp, #0x38]
004174c0  2f ce a0 e3   mov      ip, #0x2f0
004174c4  14 20 82 e2   add      r2, r2, #0x14
004174c8  3c c0 8d e5   str      ip, [sp, #0x3c]
004174cc  30 80 8d e5   str      r8, [sp, #0x30]
004174d0  34 80 8d e5   str      r8, [sp, #0x34]
004174d4  00 80 8d e5   str      r8, [sp]
004174d8  04 80 8d e5   str      r8, [sp, #4]
004174dc  08 80 8d e5   str      r8, [sp, #8]
004174e0  22 21 06 eb   bl       #0x59f970
004174e4  07 00 a0 e1   mov      r0, r7
004174e8  5f 20 fc eb   bl       #0x31f66c
004174ec  04 30 96 e5   ldr      r3, [r6, #4]
004174f0  03 30 80 e0   add      r3, r0, r3
004174f4  19 00 53 e3   cmp      r3, #0x19
004174f8  04 30 86 e5   str      r3, [r6, #4]
004174fc  42 00 00 8a   bhi      #0x41760c
00417500  08 30 96 e5   ldr      r3, [r6, #8]
00417504  c3 2f a0 e1   asr      r2, r3, #0x1f
00417508  03 10 83 e2   add      r1, r3, #3
0041750c  22 2f a0 e1   lsr      r2, r2, #0x1e
00417510  02 c0 83 e0   add      ip, r3, r2
00417514  08 00 53 e1   cmp      r3, r8
00417518  03 c0 0c e2   and      ip, ip, #3
0041751c  0c 20 62 e0   rsb      r2, r2, ip
00417520  01 30 a0 b1   movlt    r3, r1
00417524  36 c0 a0 e3   mov      ip, #0x36
00417528  9c 02 0c e0   mul      ip, ip, r2
0041752c  43 31 a0 e1   asr      r3, r3, #2
00417530  38 20 a0 e3   mov      r2, #0x38
00417534  93 02 03 e0   mul      r3, r3, r2
00417538  4d 10 8c e2   add      r1, ip, #0x4d
0041753c  35 2e 83 e2   add      r2, r3, #0x350
00417540  17 c0 8c e2   add      ip, ip, #0x17
00417544  c6 3f 83 e2   add      r3, r3, #0x318
00417548  0a 00 94 e7   ldr      r0, [r4, sl]
0041754c  24 30 8d e5   str      r3, [sp, #0x24]
00417550  20 c0 8d e5   str      ip, [sp, #0x20]
00417554  10 30 90 e5   ldr      r3, [r0, #0x10]
00417558  28 10 8d e5   str      r1, [sp, #0x28]
0041755c  2c 20 8d e5   str      r2, [sp, #0x2c]
00417560  10 a0 93 e5   ldr      sl, [r3, #0x10]
00417564  00 60 a0 e3   mov      r6, #0
00417568  cc 30 9a e5   ldr      r3, [sl, #0xcc]
0041756c  04 20 13 e5   ldr      r2, [r3, #-4]
00417570  14 10 82 e2   add      r1, r2, #0x14
00417574  8a 01 91 e8   ldm      r1, {r1, r3, r7, r8}
00417578  07 70 61 e0   rsb      r7, r1, r7
0041757c  07 00 a0 e1   mov      r0, r7
00417580  08 80 63 e0   rsb      r8, r3, r8
00417584  f6 dc fb eb   bl       #0x30e964
00417588  42 14 a0 e3   mov      r1, #0x42000000
0041758c  16 17 81 e2   add      r1, r1, #0x580000
00417590  85 db fb eb   bl       #0x30e3ac
00417594  cc db fb eb   bl       #0x30e4cc
00417598  10 00 8d e5   str      r0, [sp, #0x10]
0041759c  08 00 a0 e1   mov      r0, r8
004175a0  ef dc fb eb   bl       #0x30e964
004175a4  42 14 a0 e3   mov      r1, #0x42000000
004175a8  06 16 81 e2   add      r1, r1, #0x600000
004175ac  7e db fb eb   bl       #0x30e3ac
004175b0  c5 db fb eb   bl       #0x30e4cc
004175b4  09 10 94 e7   ldr      r1, [r4, sb]
004175b8  14 00 8d e5   str      r0, [sp, #0x14]
004175bc  10 20 8d e2   add      r2, sp, #0x10
004175c0  0a 00 a0 e1   mov      r0, sl
004175c4  20 30 8d e2   add      r3, sp, #0x20
004175c8  18 70 8d e5   str      r7, [sp, #0x18]
004175cc  1c 80 8d e5   str      r8, [sp, #0x1c]
004175d0  00 60 8d e5   str      r6, [sp]
004175d4  04 60 8d e5   str      r6, [sp, #4]
004175d8  08 60 8d e5   str      r6, [sp, #8]
004175dc  e3 20 06 eb   bl       #0x59f970
004175e0  00 30 95 e5   ldr      r3, [r5]
004175e4  05 00 a0 e1   mov      r0, r5
004175e8  0f e0 a0 e1   mov      lr, pc
004175ec  18 f0 93 e5   ldr      pc, [r3, #0x18]
004175f0  05 00 a0 e1   mov      r0, r5
004175f4  06 10 a0 e1   mov      r1, r6
004175f8  00 30 95 e5   ldr      r3, [r5]
004175fc  0f e0 a0 e1   mov      lr, pc
00417600  a4 f0 93 e5   ldr      pc, [r3, #0xa4]
00417604  40 d0 8d e2   add      sp, sp, #0x40
00417608  f0 87 bd e8   pop      {r4, r5, r6, r7, r8, sb, sl, pc}
0041760c  08 20 96 e5   ldr      r2, [r6, #8]
00417610  04 80 86 e5   str      r8, [r6, #4]
00417614  01 30 82 e2   add      r3, r2, #1
00417618  04 00 53 e3   cmp      r3, #4
0041761c  08 30 86 e5   str      r3, [r6, #8]
00417620  1f 00 00 0a   beq      #0x4176a4
00417624  c3 1f a0 e1   asr      r1, r3, #0x1f
00417628  00 00 53 e3   cmp      r3, #0
0041762c  21 1f a0 e1   lsr      r1, r1, #0x1e
00417630  01 c0 83 e0   add      ip, r3, r1
00417634  03 c0 0c e2   and      ip, ip, #3
00417638  03 20 a0 a1   movge    r2, r3
0041763c  0c 10 61 e0   rsb      r1, r1, ip
00417640  04 20 82 b2   addlt    r2, r2, #4
00417644  36 c0 a0 e3   mov      ip, #0x36
00417648  42 21 a0 e1   asr      r2, r2, #2
0041764c  9c 01 0c e0   mul      ip, ip, r1
00417650  38 30 a0 e3   mov      r3, #0x38
00417654  b6 ff ff ea   b        #0x417534
00417658  00 30 95 e5   ldr      r3, [r5]
0041765c  05 00 a0 e1   mov      r0, r5
00417660  0f e0 a0 e1   mov      lr, pc
00417664  14 f0 93 e5   ldr      pc, [r3, #0x14]
00417668  05 00 a0 e1   mov      r0, r5
0041766c  03 10 a0 e3   mov      r1, #3
00417670  00 30 95 e5   ldr      r3, [r5]
00417674  0f e0 a0 e1   mov      lr, pc
00417678  a8 f0 93 e5   ldr      pc, [r3, #0xa8]
0041767c  00 30 95 e5   ldr      r3, [r5]
00417680  05 00 a0 e1   mov      r0, r5
00417684  0f e0 a0 e1   mov      lr, pc
00417688  18 f0 93 e5   ldr      pc, [r3, #0x18]
0041768c  05 00 a0 e1   mov      r0, r5
00417690  00 30 95 e5   ldr      r3, [r5]
00417694  00 10 a0 e3   mov      r1, #0
00417698  0f e0 a0 e1   mov      lr, pc
0041769c  a4 f0 93 e5   ldr      pc, [r3, #0xa4]
004176a0  d7 ff ff ea   b        #0x417604
004176a4  08 80 86 e5   str      r8, [r6, #8]
004176a8  35 2e a0 e3   mov      r2, #0x350
004176ac  4d 10 a0 e3   mov      r1, #0x4d
004176b0  c6 3f a0 e3   mov      r3, #0x318
004176b4  17 c0 a0 e3   mov      ip, #0x17
004176b8  a2 ff ff ea   b        #0x417548
004176bc  2c d6 57 00   subseq   sp, r7, ip, lsr #12
004176c0  f4 37 00 00   strdeq   r3, r4, [r0], -r4
004176c4  08 c2 58 00   subseq   ip, r8, r8, lsl #4
004176c8  84 0d 00 00   andeq    r0, r0, r4, lsl #27

; FUNCTION 0x00533e98, size=52, sha256=d5bada98ea73d9256aca25b8b2756edde71c9696bad57ab0fdb903a16b50eba7
; glitch::CIrrFactory::CIrrFactory()
00533e98  20 30 9f e5   ldr      r3, [pc, #0x20]
00533e9c  20 20 9f e5   ldr      r2, [pc, #0x20]
00533ea0  20 10 9f e5   ldr      r1, [pc, #0x20]
00533ea4  03 30 8f e0   add      r3, pc, r3
00533ea8  02 20 93 e7   ldr      r2, [r3, r2]
00533eac  01 c0 93 e7   ldr      ip, [r3, r1]
00533eb0  08 20 82 e2   add      r2, r2, #8
00533eb4  00 20 80 e5   str      r2, [r0]
00533eb8  00 00 8c e5   str      r0, [ip]
00533ebc  1e ff 2f e1   bx       lr
00533ec0  ec 0b 46 00   subeq    r0, r6, ip, ror #23
00533ec4  9c 45 00 00   muleq    r0, ip, r5
00533ec8  d0 14 00 00   ldrdeq   r1, r2, [r0], -r0

; FUNCTION 0x00533fe8, size=168, sha256=ba42151002a9da50c29264b12a8ca2cf65b8ae5ea8d6889972158e879cf56e13
; glitch::CIrrFactory::getInstance()
00533fe8  70 40 2d e9   push     {r4, r5, r6, lr}
00533fec  84 50 9f e5   ldr      r5, [pc, #0x84]
00533ff0  84 30 9f e5   ldr      r3, [pc, #0x84]
00533ff4  05 50 8f e0   add      r5, pc, r5
00533ff8  03 30 95 e7   ldr      r3, [r5, r3]
00533ffc  00 00 93 e5   ldr      r0, [r3]
00534000  00 00 50 e3   cmp      r0, #0
00534004  00 00 00 0a   beq      #0x53400c
00534008  70 80 bd e8   pop      {r4, r5, r6, pc}
0053400c  6c 40 9f e5   ldr      r4, [pc, #0x6c]
00534010  04 40 8f e0   add      r4, pc, r4
00534014  0c 30 94 e5   ldr      r3, [r4, #0xc]
00534018  01 00 13 e3   tst      r3, #1
0053401c  03 00 00 0a   beq      #0x534030
00534020  5c 00 9f e5   ldr      r0, [pc, #0x5c]
00534024  00 00 8f e0   add      r0, pc, r0
00534028  10 00 80 e2   add      r0, r0, #0x10
0053402c  70 80 bd e8   pop      {r4, r5, r6, pc}
00534030  0c 60 84 e2   add      r6, r4, #0xc
00534034  06 00 a0 e1   mov      r0, r6
00534038  cb 69 f7 eb   bl       #0x30e76c
0053403c  00 00 50 e3   cmp      r0, #0
00534040  f6 ff ff 0a   beq      #0x534020
00534044  10 40 84 e2   add      r4, r4, #0x10
00534048  04 00 a0 e1   mov      r0, r4
0053404c  9e ff ff eb   bl       #0x533ecc
00534050  06 00 a0 e1   mov      r0, r6
00534054  78 6a f7 eb   bl       #0x30ea3c
00534058  28 30 9f e5   ldr      r3, [pc, #0x28]
0053405c  04 00 a0 e1   mov      r0, r4
00534060  03 10 95 e7   ldr      r1, [r5, r3]
00534064  20 30 9f e5   ldr      r3, [pc, #0x20]
00534068  03 20 95 e7   ldr      r2, [r5, r3]
0053406c  a4 68 f7 eb   bl       #0x30e304
00534070  04 00 a0 e1   mov      r0, r4
00534074  70 80 bd e8   pop      {r4, r5, r6, pc}
00534078  9c 0a 46 00   umaaleq  r0, r6, ip, sl
0053407c  d0 14 00 00   ldrdeq   r1, r2, [r0], -r0
00534080  34 25 4c 00   subeq    r2, ip, r4, lsr r5
00534084  20 25 4c 00   subeq    r2, ip, r0, lsr #10
00534088  78 18 00 00   andeq    r1, r0, r8, ror r8
0053408c  90 18 00 00   muleq    r0, r0, r8

; FUNCTION 0x0058b7f4, size=152, sha256=f62f4b133640af42ad0bee80f1761278cb595589be3c3834fd83a1bf4c9452f2
; glitch::scene::CSceneManager::drawAll(glitch::scene::ISceneNode*)
0058b7f4  70 40 2d e9   push     {r4, r5, r6, lr}
0058b7f8  01 50 a0 e1   mov      r5, r1
0058b7fc  00 30 90 e5   ldr      r3, [r0]
0058b800  18 10 90 e5   ldr      r1, [r0, #0x18]
0058b804  00 40 a0 e1   mov      r4, r0
0058b808  0f e0 a0 e1   mov      lr, pc
0058b80c  40 f0 93 e5   ldr      pc, [r3, #0x40]
0058b810  00 00 55 e3   cmp      r5, #0
0058b814  16 00 00 0a   beq      #0x58b874
0058b818  04 00 a0 e1   mov      r0, r4
0058b81c  00 30 94 e5   ldr      r3, [r4]
0058b820  0f e0 a0 e1   mov      lr, pc
0058b824  44 f0 93 e5   ldr      pc, [r3, #0x44]
0058b828  05 10 a0 e1   mov      r1, r5
0058b82c  04 00 a0 e1   mov      r0, r4
0058b830  00 30 94 e5   ldr      r3, [r4]
0058b834  0f e0 a0 e1   mov      lr, pc
0058b838  28 f0 93 e5   ldr      pc, [r3, #0x28]
0058b83c  04 00 a0 e1   mov      r0, r4
0058b840  00 30 94 e5   ldr      r3, [r4]
0058b844  0f e0 a0 e1   mov      lr, pc
0058b848  4c f0 93 e5   ldr      pc, [r3, #0x4c]
0058b84c  04 00 a0 e1   mov      r0, r4
0058b850  00 30 94 e5   ldr      r3, [r4]
0058b854  18 10 94 e5   ldr      r1, [r4, #0x18]
0058b858  0f e0 a0 e1   mov      lr, pc
0058b85c  48 f0 93 e5   ldr      pc, [r3, #0x48]
0058b860  09 30 a0 e3   mov      r3, #9
0058b864  45 0f 84 e2   add      r0, r4, #0x114
0058b868  74 31 84 e5   str      r3, [r4, #0x174]
0058b86c  70 40 bd e8   pop      {r4, r5, r6, lr}
0058b870  b9 fb ff ea   b        #0x58a75c
0058b874  88 32 d4 e5   ldrb     r3, [r4, #0x288]
0058b878  00 00 53 e3   cmp      r3, #0
0058b87c  e5 ff ff 0a   beq      #0x58b818
0058b880  04 00 a0 e1   mov      r0, r4
0058b884  c8 ff ff eb   bl       #0x58b7ac
0058b888  e2 ff ff ea   b        #0x58b818

; FUNCTION 0x00671554, size=148, sha256=87b72762d2659692489b9d803cd55100d2cf109a05c08f78589bc89fef7d26f9
; glitch::IDevice::createGUIAndScene()
00671554  30 40 2d e9   push     {r4, r5, lr}
00671558  10 30 90 e5   ldr      r3, [r0, #0x10]
0067155c  0c d0 4d e2   sub      sp, sp, #0xc
00671560  00 40 a0 e1   mov      r4, r0
00671564  00 00 53 e3   cmp      r3, #0
00671568  06 00 00 0a   beq      #0x671588
0067156c  00 10 a0 e3   mov      r1, #0
00671570  20 00 a0 e3   mov      r0, #0x20
00671574  0c 0b fb eb   bl       #0x5341ac
00671578  10 10 94 e5   ldr      r1, [r4, #0x10]
0067157c  00 50 a0 e1   mov      r5, r0
00671580  a0 b6 fc eb   bl       #0x59f008
00671584  14 50 84 e5   str      r5, [r4, #0x14]
00671588  96 0a fb eb   bl       #0x533fe8
0067158c  34 50 84 e2   add      r5, r4, #0x34
00671590  05 10 a0 e1   mov      r1, r5
00671594  10 20 94 e5   ldr      r2, [r4, #0x10]
00671598  30 30 94 e5   ldr      r3, [r4, #0x30]
0067159c  00 c0 90 e5   ldr      ip, [r0]
006715a0  0f e0 a0 e1   mov      lr, pc
006715a4  10 f0 9c e5   ldr      pc, [ip, #0x10]
006715a8  18 00 84 e5   str      r0, [r4, #0x18]
006715ac  8d 0a fb eb   bl       #0x533fe8
006715b0  18 e0 94 e5   ldr      lr, [r4, #0x18]
006715b4  10 10 94 e5   ldr      r1, [r4, #0x10]
006715b8  24 30 94 e5   ldr      r3, [r4, #0x24]
006715bc  00 c0 90 e5   ldr      ip, [r0]
006715c0  05 20 a0 e1   mov      r2, r5
006715c4  00 e0 8d e5   str      lr, [sp]
006715c8  0f e0 a0 e1   mov      lr, pc
006715cc  0c f0 9c e5   ldr      pc, [ip, #0xc]
006715d0  28 10 94 e5   ldr      r1, [r4, #0x28]
006715d4  1c 00 84 e5   str      r0, [r4, #0x1c]
006715d8  04 00 a0 e1   mov      r0, r4
006715dc  0c d0 8d e2   add      sp, sp, #0xc
006715e0  30 40 bd e8   pop      {r4, r5, lr}
006715e4  b7 ff ff ea   b        #0x6714c8

; FUNCTION 0x006a0634, size=276, sha256=75fb2ae2c290339e2f3339ef0a233356ce7bd0f1703736e800cd2afc23d06a6b
; glitch::CAndroidOSDevice::CAndroidOSDevice(glitch::SCreationParameters const&) [_ZN6glitch16CAndroidOSDeviceC1ERKNS_19SCreationParametersE]
006a0634  f0 45 2d e9   push     {r4, r5, r6, r7, r8, sl, lr}
006a0638  fc 50 9f e5   ldr      r5, [pc, #0xfc]
006a063c  fc 60 9f e5   ldr      r6, [pc, #0xfc]
006a0640  65 df 4d e2   sub      sp, sp, #0x194
006a0644  05 50 8f e0   add      r5, pc, r5
006a0648  06 30 95 e7   ldr      r3, [r5, r6]
006a064c  00 40 a0 e1   mov      r4, r0
006a0650  01 70 a0 e3   mov      r7, #1
006a0654  00 30 93 e5   ldr      r3, [r3]
006a0658  04 a0 8d e2   add      sl, sp, #4
006a065c  c3 80 8a e2   add      r8, sl, #0xc3
006a0660  8c 31 8d e5   str      r3, [sp, #0x18c]
006a0664  08 47 ff eb   bl       #0x67228c
006a0668  d4 10 9f e5   ldr      r1, [pc, #0xd4]
006a066c  00 20 a0 e3   mov      r2, #0
006a0670  04 30 a0 e1   mov      r3, r4
006a0674  01 10 95 e7   ldr      r1, [r5, r1]
006a0678  dc 20 84 e5   str      r2, [r4, #0xdc]
006a067c  ec 20 84 e5   str      r2, [r4, #0xec]
006a0680  08 10 81 e2   add      r1, r1, #8
006a0684  00 10 84 e5   str      r1, [r4]
006a0688  e8 20 e3 e5   strb     r2, [r3, #0xe8]!
006a068c  f4 30 84 e5   str      r3, [r4, #0xf4]
006a0690  f0 30 84 e5   str      r3, [r4, #0xf0]
006a0694  f8 20 84 e5   str      r2, [r4, #0xf8]
006a0698  0a 00 a0 e1   mov      r0, sl
006a069c  08 71 c4 e5   strb     r7, [r4, #0x108]
006a06a0  09 71 c4 e5   strb     r7, [r4, #0x109]
006a06a4  3e b6 f1 eb   bl       #0x30dfa4
006a06a8  50 00 a0 e3   mov      r0, #0x50
006a06ac  76 b8 f1 eb   bl       #0x30e88c
006a06b0  08 10 a0 e1   mov      r1, r8
006a06b4  00 a0 a0 e1   mov      sl, r0
006a06b8  ae 01 00 eb   bl       #0x6a0d78
006a06bc  07 10 a0 e1   mov      r1, r7
006a06c0  08 00 a0 e1   mov      r0, r8
006a06c4  30 a0 84 e5   str      sl, [r4, #0x30]
006a06c8  74 a9 fd eb   bl       #0x60aca0
006a06cc  04 00 a0 e1   mov      r0, r4
006a06d0  1a ff ff eb   bl       #0x6a0340
006a06d4  5c 30 94 e5   ldr      r3, [r4, #0x5c]
006a06d8  00 00 53 e3   cmp      r3, #0
006a06dc  12 00 00 1a   bne      #0x6a072c
006a06e0  38 00 a0 e3   mov      r0, #0x38
006a06e4  68 b8 f1 eb   bl       #0x30e88c
006a06e8  04 20 a0 e1   mov      r2, r4
006a06ec  60 10 84 e2   add      r1, r4, #0x60
006a06f0  00 70 a0 e1   mov      r7, r0
006a06f4  3b fe ff eb   bl       #0x69ffe8
006a06f8  04 00 a0 e1   mov      r0, r4
006a06fc  24 70 84 e5   str      r7, [r4, #0x24]
006a0700  53 ff ff eb   bl       #0x6a0454
006a0704  04 00 a0 e1   mov      r0, r4
006a0708  91 43 ff eb   bl       #0x671554
006a070c  06 30 95 e7   ldr      r3, [r5, r6]
006a0710  8c 21 9d e5   ldr      r2, [sp, #0x18c]
006a0714  04 00 a0 e1   mov      r0, r4
006a0718  00 30 93 e5   ldr      r3, [r3]
006a071c  03 00 52 e1   cmp      r2, r3
006a0720  04 00 00 1a   bne      #0x6a0738
006a0724  65 df 8d e2   add      sp, sp, #0x194
006a0728  f0 85 bd e8   pop      {r4, r5, r6, r7, r8, sl, pc}
006a072c  04 00 a0 e1   mov      r0, r4
006a0730  de fe ff eb   bl       #0x6a02b0
006a0734  e9 ff ff ea   b        #0x6a06e0
006a0738  f4 b6 f1 eb   bl       #0x30e310
006a073c  4c 44 2f 00   eoreq    r4, pc, ip, asr #8
006a0740  ac 40 00 00   andeq    r4, r0, ip, lsr #1
006a0744  9c 34 00 00   muleq    r0, ip, r4

; FUNCTION 0x006a079c, size=276, sha256=a4cd0db03cf930d9b5bb2c77c689fc9e05a1acfbef3f41b161766727e9b1f7e8
; glitch::CAndroidOSDevice::CAndroidOSDevice(glitch::SCreationParameters const&) [_ZN6glitch16CAndroidOSDeviceC2ERKNS_19SCreationParametersE]
006a079c  f0 45 2d e9   push     {r4, r5, r6, r7, r8, sl, lr}
006a07a0  fc 50 9f e5   ldr      r5, [pc, #0xfc]
006a07a4  fc 60 9f e5   ldr      r6, [pc, #0xfc]
006a07a8  65 df 4d e2   sub      sp, sp, #0x194
006a07ac  05 50 8f e0   add      r5, pc, r5
006a07b0  06 30 95 e7   ldr      r3, [r5, r6]
006a07b4  00 40 a0 e1   mov      r4, r0
006a07b8  01 70 a0 e3   mov      r7, #1
006a07bc  00 30 93 e5   ldr      r3, [r3]
006a07c0  04 a0 8d e2   add      sl, sp, #4
006a07c4  c3 80 8a e2   add      r8, sl, #0xc3
006a07c8  8c 31 8d e5   str      r3, [sp, #0x18c]
006a07cc  ae 46 ff eb   bl       #0x67228c
006a07d0  d4 10 9f e5   ldr      r1, [pc, #0xd4]
006a07d4  00 20 a0 e3   mov      r2, #0
006a07d8  04 30 a0 e1   mov      r3, r4
006a07dc  01 10 95 e7   ldr      r1, [r5, r1]
006a07e0  dc 20 84 e5   str      r2, [r4, #0xdc]
006a07e4  ec 20 84 e5   str      r2, [r4, #0xec]
006a07e8  08 10 81 e2   add      r1, r1, #8
006a07ec  00 10 84 e5   str      r1, [r4]
006a07f0  e8 20 e3 e5   strb     r2, [r3, #0xe8]!
006a07f4  f4 30 84 e5   str      r3, [r4, #0xf4]
006a07f8  f0 30 84 e5   str      r3, [r4, #0xf0]
006a07fc  f8 20 84 e5   str      r2, [r4, #0xf8]
006a0800  0a 00 a0 e1   mov      r0, sl
006a0804  08 71 c4 e5   strb     r7, [r4, #0x108]
006a0808  09 71 c4 e5   strb     r7, [r4, #0x109]
006a080c  e4 b5 f1 eb   bl       #0x30dfa4
006a0810  50 00 a0 e3   mov      r0, #0x50
006a0814  1c b8 f1 eb   bl       #0x30e88c
006a0818  08 10 a0 e1   mov      r1, r8
006a081c  00 a0 a0 e1   mov      sl, r0
006a0820  54 01 00 eb   bl       #0x6a0d78
006a0824  07 10 a0 e1   mov      r1, r7
006a0828  08 00 a0 e1   mov      r0, r8
006a082c  30 a0 84 e5   str      sl, [r4, #0x30]
006a0830  1a a9 fd eb   bl       #0x60aca0
006a0834  04 00 a0 e1   mov      r0, r4
006a0838  c0 fe ff eb   bl       #0x6a0340
006a083c  5c 30 94 e5   ldr      r3, [r4, #0x5c]
006a0840  00 00 53 e3   cmp      r3, #0
006a0844  12 00 00 1a   bne      #0x6a0894
006a0848  38 00 a0 e3   mov      r0, #0x38
006a084c  0e b8 f1 eb   bl       #0x30e88c
006a0850  04 20 a0 e1   mov      r2, r4
006a0854  60 10 84 e2   add      r1, r4, #0x60
006a0858  00 70 a0 e1   mov      r7, r0
006a085c  e1 fd ff eb   bl       #0x69ffe8
006a0860  04 00 a0 e1   mov      r0, r4
006a0864  24 70 84 e5   str      r7, [r4, #0x24]
006a0868  f9 fe ff eb   bl       #0x6a0454
006a086c  04 00 a0 e1   mov      r0, r4
006a0870  37 43 ff eb   bl       #0x671554
006a0874  06 30 95 e7   ldr      r3, [r5, r6]
006a0878  8c 21 9d e5   ldr      r2, [sp, #0x18c]
006a087c  04 00 a0 e1   mov      r0, r4
006a0880  00 30 93 e5   ldr      r3, [r3]
006a0884  03 00 52 e1   cmp      r2, r3
006a0888  04 00 00 1a   bne      #0x6a08a0
006a088c  65 df 8d e2   add      sp, sp, #0x194
006a0890  f0 85 bd e8   pop      {r4, r5, r6, r7, r8, sl, pc}
006a0894  04 00 a0 e1   mov      r0, r4
006a0898  84 fe ff eb   bl       #0x6a02b0
006a089c  e9 ff ff ea   b        #0x6a0848
006a08a0  9a b6 f1 eb   bl       #0x30e310
006a08a4  e4 42 2f 00   eoreq    r4, pc, r4, ror #5
006a08a8  ac 40 00 00   andeq    r4, r0, ip, lsr #1
006a08ac  9c 34 00 00   muleq    r0, ip, r4

; VTABLE _ZTV8GSViewer, VA 0x00963f00, size=52
00963f14  003871c8  ; raw +0x14: GSViewer::Dtor(StateMachine const*)
00963f24  003872bc  ; raw +0x24: GSViewer::Draw(StateMachine const*)

; VTABLE _ZTV10IrrFactory, VA 0x0095cd18, size=28
0095cd2c  00350a80  ; raw +0x14: IrrFactory::createSceneManager(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::gui::ICursorControl*, glitch::gui::IGUIEnvironment*)

; VTABLE _ZTV12SceneManager, VA 0x0095cd78, size=204
0095cd8c  00000000  ; raw +0x14: 
0095cd9c  00356bec  ; raw +0x24: SceneManager::~SceneManager()
0095cdd0  00359338  ; raw +0x58: SceneManager::drawAll(glitch::scene::ISceneNode*)

; VTABLE _ZTVN6glitch5scene13CSceneManagerE, VA 0x009766d8, size=192
009766ec  00000000  ; raw +0x14: 
009766fc  0058eb70  ; raw +0x24: glitch::scene::CSceneManager::~CSceneManager()
00976730  0058b7f4  ; raw +0x58: glitch::scene::CSceneManager::drawAll(glitch::scene::ISceneNode*)

; VTABLE _ZTVN6glitch11CIrrFactoryE, VA 0x0096cb78, size=28
0096cb8c  00533f60  ; raw +0x14: glitch::CIrrFactory::createSceneManager(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::gui::ICursorControl*, glitch::gui::IGUIEnvironment*)

