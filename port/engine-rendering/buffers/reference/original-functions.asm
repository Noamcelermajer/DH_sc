; Original ARM32 engine buffer lifecycle and draw path.
; LLVM objdump ARM disassembly; byte columns are from the verified APK ELF PT_LOAD mapping.
; Input member: lib/armeabi-v7a/libDungeonHunter2.so

; FUNCTION driver_create_buffer
; ELF VA 0x005b13f4; range_size=140; file_offset=0x005b13f4; SHA-256=c5f898fae99be254df857996c4e1effdfcff6340bccc213792c864fb0c5f4494
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12createBufferENS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::createBuffer(glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, bool)
005b13f4  f0 45 2d e9  push	{r4, r5, r6, r7, r8, r10, lr}
005b13f8  00 60 a0 e1  mov	r6, r0
005b13fc  14 d0 4d e2  sub	sp, sp, #20
005b1400  01 50 a0 e1  mov	r5, r1
005b1404  20 00 a0 e3  mov	r0, #32
005b1408  00 10 a0 e3  mov	r1, #0
005b140c  38 70 dd e5  ldrb	r7, [sp, #0x38]
005b1410  02 a0 a0 e1  mov	r10, r2
005b1414  03 80 a0 e1  mov	r8, r3
005b1418  63 0b fe eb  bl	0x5341ac <operator new(unsigned int, glitch::memory::E_MEMORY_HINT)> @ imm = #-0x7d274
005b141c  30 c0 9d e5  ldr	r12, [sp, #0x30]
005b1420  05 10 a0 e1  mov	r1, r5
005b1424  08 30 a0 e1  mov	r3, r8
005b1428  00 c0 8d e5  str	r12, [sp]
005b142c  34 c0 9d e5  ldr	r12, [sp, #0x34]
005b1430  0a 20 a0 e1  mov	r2, r10
005b1434  3c 50 9f e5  ldr	r5, [pc, #0x3c]         @ 0x5b1478 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::createBuffer(glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, bool)+0x84>
005b1438  00 40 a0 e1  mov	r4, r0
005b143c  04 c0 8d e5  str	r12, [sp, #0x4]
005b1440  08 70 8d e5  str	r7, [sp, #0x8]
005b1444  ce b2 04 eb  bl	0x6ddf84 <glitch::video::CCommonGLDriverBase::CBufferBase::CBufferBase(glitch::video::CCommonGLDriverBase*, glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, bool)> @ imm = #0x12cb38
005b1448  2c 30 9f e5  ldr	r3, [pc, #0x2c]         @ 0x5b147c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::createBuffer(glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, bool)+0x88>
005b144c  05 50 8f e0  add	r5, pc, r5
005b1450  06 00 a0 e1  mov	r0, r6
005b1454  03 30 95 e7  ldr	r3, [r5, r3]
005b1458  08 30 83 e2  add	r3, r3, #8
005b145c  00 30 84 e5  str	r3, [r4]
005b1460  00 40 86 e5  str	r4, [r6]
005b1464  04 30 94 e5  ldr	r3, [r4, #0x4]
005b1468  01 30 83 e2  add	r3, r3, #1
005b146c  04 30 84 e5  str	r3, [r4, #0x4]
005b1470  14 d0 8d e2  add	sp, sp, #20
005b1474  f0 85 bd e8  pop	{r4, r5, r6, r7, r8, r10, pc}
005b1478  44 36 3e 00  .word	0x003e3644
005b147c  14 14 00 00  .word	0x00001414

; FUNCTION buffer_base_constructor
; ELF VA 0x006ddf84; range_size=108; file_offset=0x006ddf84; SHA-256=23fcd161cead82617c968279070cbb2dcf5734c3d903140cfe55fb9096ae2af0
; alias: _ZN6glitch5video19CCommonGLDriverBase11CBufferBaseC2EPS1_NS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvb
; demangled: glitch::video::CCommonGLDriverBase::CBufferBase::CBufferBase(glitch::video::CCommonGLDriverBase*, glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, bool)
006ddf84  70 40 2d e9  push	{r4, r5, r6, lr}
006ddf88  08 d0 4d e2  sub	sp, sp, #8
006ddf8c  20 c0 dd e5  ldrb	r12, [sp, #0x20]
006ddf90  1c e0 9d e5  ldr	lr, [sp, #0x1c]
006ddf94  01 60 a0 e1  mov	r6, r1
006ddf98  48 50 9f e5  ldr	r5, [pc, #0x48]         @ 0x6ddfe8 <glitch::video::CCommonGLDriverBase::CBufferBase::CBufferBase(glitch::video::CCommonGLDriverBase*, glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, bool)+0x64>
006ddf9c  02 10 a0 e1  mov	r1, r2
006ddfa0  03 20 a0 e1  mov	r2, r3
006ddfa4  18 30 9d e5  ldr	r3, [sp, #0x18]
006ddfa8  00 40 a0 e1  mov	r4, r0
006ddfac  00 e0 8d e5  str	lr, [sp]
006ddfb0  04 c0 8d e5  str	r12, [sp, #0x4]
006ddfb4  53 0e fb eb  bl	0x5a1908 <glitch::video::IBuffer::IBuffer(glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, unsigned char)> @ imm = #-0x13c6b4
006ddfb8  2c 30 9f e5  ldr	r3, [pc, #0x2c]         @ 0x6ddfec <glitch::video::CCommonGLDriverBase::CBufferBase::CBufferBase(glitch::video::CCommonGLDriverBase*, glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, bool)+0x68>
006ddfbc  05 50 8f e0  add	r5, pc, r5
006ddfc0  00 20 a0 e3  mov	r2, #0
006ddfc4  03 30 95 e7  ldr	r3, [r5, r3]
006ddfc8  14 60 84 e5  str	r6, [r4, #0x14]
006ddfcc  1c 20 84 e5  str	r2, [r4, #0x1c]
006ddfd0  08 30 83 e2  add	r3, r3, #8
006ddfd4  00 30 84 e5  str	r3, [r4]
006ddfd8  18 20 84 e5  str	r2, [r4, #0x18]
006ddfdc  04 00 a0 e1  mov	r0, r4
006ddfe0  08 d0 8d e2  add	sp, sp, #8
006ddfe4  70 80 bd e8  pop	{r4, r5, r6, pc}
006ddfe8  d4 6a 2b 00  .word	0x002b6ad4
006ddfec  7c 1f 00 00  .word	0x00001f7c

; FUNCTION ibuffer_constructor
; ELF VA 0x005a1908; range_size=116; file_offset=0x005a1908; SHA-256=e1ce95307c23f9577b07f0330838b9546ebd1c4cfec4118e2ecd5a96f80c5068
; alias: _ZN6glitch5video7IBufferC2ENS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvh
; demangled: glitch::video::IBuffer::IBuffer(glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, unsigned char)
005a1908  f0 00 2d e9  push	{r4, r5, r6, r7}
005a190c  60 c0 9f e5  ldr	r12, [pc, #0x60]        @ 0x5a1974 <glitch::video::IBuffer::IBuffer(glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, unsigned char)+0x6c>
005a1910  60 40 9f e5  ldr	r4, [pc, #0x60]         @ 0x5a1978 <glitch::video::IBuffer::IBuffer(glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, unsigned char)+0x70>
005a1914  10 50 9d e5  ldr	r5, [sp, #0x10]
005a1918  0c c0 8f e0  add	r12, pc, r12
005a191c  04 40 9c e7  ldr	r4, [r12, r4]
005a1920  14 60 dd e5  ldrb	r6, [sp, #0x14]
005a1924  00 70 a0 e3  mov	r7, #0
005a1928  08 40 84 e2  add	r4, r4, #8
005a192c  72 20 ef e6  uxtb	r2, r2
005a1930  00 00 53 e3  cmp	r3, #0
005a1934  00 40 80 e5  str	r4, [r0]
005a1938  10 10 c0 e5  strb	r1, [r0, #0x10]
005a193c  13 70 c0 e5  strb	r7, [r0, #0x13]
005a1940  04 70 80 e5  str	r7, [r0, #0x4]
005a1944  08 50 80 e5  str	r5, [r0, #0x8]
005a1948  0c 30 80 e5  str	r3, [r0, #0xc]
005a194c  11 20 c0 e5  strb	r2, [r0, #0x11]
005a1950  12 60 c0 e5  strb	r6, [r0, #0x12]
005a1954  04 00 00 0a  beq	0x5a196c <glitch::video::IBuffer::IBuffer(glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, unsigned char)+0x64> @ imm = #0x10
005a1958  04 00 52 e3  cmp	r2, #4
005a195c  02 00 00 0a  beq	0x5a196c <glitch::video::IBuffer::IBuffer(glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, unsigned char)+0x64> @ imm = #0x8
005a1960  07 00 55 e1  cmp	r5, r7
005a1964  02 60 86 13  orrne	r6, r6, #2
005a1968  12 60 c0 15  strbne	r6, [r0, #0x12]
005a196c  f0 00 bd e8  pop	{r4, r5, r6, r7}
005a1970  1e ff 2f e1  bx	lr
005a1974  78 31 3f 00  .word	0x003f3178
005a1978  28 19 00 00  .word	0x00001928

; FUNCTION ibuffer_map
; ELF VA 0x005a19f0; range_size=204; file_offset=0x005a19f0; SHA-256=501cadbe1d99f459451034dcedf6b9bc712b29f31de3b9df9c73226f1e0582a6
; alias: _ZN6glitch5video7IBuffer3mapENS0_19E_BUFFER_MAP_ACCESSE
; demangled: glitch::video::IBuffer::map(glitch::video::E_BUFFER_MAP_ACCESS)
005a19f0  10 40 2d e9  push	{r4, lr}
005a19f4  13 20 d0 e5  ldrb	r2, [r0, #0x13]
005a19f8  00 30 a0 e1  mov	r3, r0
005a19fc  00 00 52 e3  cmp	r2, #0
005a1a00  09 00 00 0a  beq	0x5a1a2c <glitch::video::IBuffer::map(glitch::video::E_BUFFER_MAP_ACCESS)+0x3c> @ imm = #0x24
005a1a04  12 10 d0 e5  ldrb	r1, [r0, #0x12]
005a1a08  1f c0 02 e2  and	r12, r2, #31
005a1a0c  01 c0 8c e2  add	r12, r12, #1
005a1a10  1f 20 c2 e3  bic	r2, r2, #31
005a1a14  02 20 8c e1  orr	r2, r12, r2
005a1a18  20 00 11 e3  tst	r1, #32
005a1a1c  13 20 c0 e5  strb	r2, [r0, #0x13]
005a1a20  1d 00 00 1a  bne	0x5a1a9c <glitch::video::IBuffer::map(glitch::video::E_BUFFER_MAP_ACCESS)+0xac> @ imm = #0x74
005a1a24  08 00 90 e5  ldr	r0, [r0, #0x8]
005a1a28  10 80 bd e8  pop	{r4, pc}
005a1a2c  12 20 d0 e5  ldrb	r2, [r0, #0x12]
005a1a30  08 00 12 e3  tst	r2, #8
005a1a34  08 00 00 0a  beq	0x5a1a5c <glitch::video::IBuffer::map(glitch::video::E_BUFFER_MAP_ACCESS)+0x6c> @ imm = #0x20
005a1a38  03 00 51 e3  cmp	r1, #3
005a1a3c  1a 00 00 ca  bgt	0x5a1aac <glitch::video::IBuffer::map(glitch::video::E_BUFFER_MAP_ACCESS)+0xbc> @ imm = #0x68
005a1a40  01 10 01 e2  and	r1, r1, #1
005a1a44  03 00 a0 e1  mov	r0, r3
005a1a48  02 10 81 e3  orr	r1, r1, #2
005a1a4c  00 30 93 e5  ldr	r3, [r3]
005a1a50  0f e0 a0 e1  mov	lr, pc
005a1a54  14 f0 93 e5  ldr	pc, [r3, #0x14]
005a1a58  10 80 bd e8  pop	{r4, pc}
005a1a5c  08 00 90 e5  ldr	r0, [r0, #0x8]
005a1a60  00 00 50 e3  cmp	r0, #0
005a1a64  0a 00 00 0a  beq	0x5a1a94 <glitch::video::IBuffer::map(glitch::video::E_BUFFER_MAP_ACCESS)+0xa4> @ imm = #0x28
005a1a68  11 c0 d3 e5  ldrb	r12, [r3, #0x11]
005a1a6c  81 12 a0 e1  lsl	r1, r1, #5
005a1a70  01 10 81 e3  orr	r1, r1, #1
005a1a74  04 00 5c e3  cmp	r12, #4
005a1a78  13 10 c3 e5  strb	r1, [r3, #0x13]
005a1a7c  05 00 00 0a  beq	0x5a1a98 <glitch::video::IBuffer::map(glitch::video::E_BUFFER_MAP_ACCESS)+0xa8> @ imm = #0x14
005a1a80  00 00 50 e3  cmp	r0, #0
005a1a84  02 00 00 0a  beq	0x5a1a94 <glitch::video::IBuffer::map(glitch::video::E_BUFFER_MAP_ACCESS)+0xa4> @ imm = #0x8
005a1a88  02 20 82 e3  orr	r2, r2, #2
005a1a8c  12 20 c3 e5  strb	r2, [r3, #0x12]
005a1a90  10 80 bd e8  pop	{r4, pc}
005a1a94  00 00 a0 e3  mov	r0, #0
005a1a98  10 80 bd e8  pop	{r4, pc}
005a1a9c  00 30 90 e5  ldr	r3, [r0]
005a1aa0  0f e0 a0 e1  mov	lr, pc
005a1aa4  1c f0 93 e5  ldr	pc, [r3, #0x1c]
005a1aa8  10 80 bd e8  pop	{r4, pc}
005a1aac  08 00 90 e5  ldr	r0, [r0, #0x8]
005a1ab0  00 00 50 e3  cmp	r0, #0
005a1ab4  eb ff ff 1a  bne	0x5a1a68 <glitch::video::IBuffer::map(glitch::video::E_BUFFER_MAP_ACCESS)+0x78> @ imm = #-0x54
005a1ab8  e0 ff ff ea  b	0x5a1a40 <glitch::video::IBuffer::map(glitch::video::E_BUFFER_MAP_ACCESS)+0x50> @ imm = #-0x80

; FUNCTION ibuffer_reset
; ELF VA 0x005a1cb4; range_size=360; file_offset=0x005a1cb4; SHA-256=075c2ed22bf2c8bb139b5a3e04cba6c2df4b0bfc9fa07b2c3781a9a09241089c
; alias: _ZN6glitch5video7IBuffer5resetEjPvb
; demangled: glitch::video::IBuffer::reset(unsigned int, void*, bool)
005a1cb4  30 40 2d e9  push	{r4, r5, lr}
005a1cb8  00 50 51 e2  subs	r5, r1, #0
005a1cbc  0c d0 4d e2  sub	sp, sp, #12
005a1cc0  00 40 a0 e1  mov	r4, r0
005a1cc4  17 00 00 1a  bne	0x5a1d28 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x74> @ imm = #0x5c
005a1cc8  12 10 d0 e5  ldrb	r1, [r0, #0x12]
005a1ccc  01 00 11 e3  tst	r1, #1
005a1cd0  0c 00 00 0a  beq	0x5a1d08 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x54> @ imm = #0x30
005a1cd4  08 00 90 e5  ldr	r0, [r0, #0x8]
005a1cd8  00 00 50 e3  cmp	r0, #0
005a1cdc  09 00 00 0a  beq	0x5a1d08 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x54> @ imm = #0x24
005a1ce0  f4 b0 f5 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x293c30
005a1ce4  11 30 d4 e5  ldrb	r3, [r4, #0x11]
005a1ce8  04 00 53 e3  cmp	r3, #4
005a1cec  48 00 00 0a  beq	0x5a1e14 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x160> @ imm = #0x120
005a1cf0  08 30 94 e5  ldr	r3, [r4, #0x8]
005a1cf4  00 00 53 e3  cmp	r3, #0
005a1cf8  45 00 00 0a  beq	0x5a1e14 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x160> @ imm = #0x114
005a1cfc  12 10 d4 e5  ldrb	r1, [r4, #0x12]
005a1d00  02 10 81 e3  orr	r1, r1, #2
005a1d04  12 10 c4 e5  strb	r1, [r4, #0x12]
005a1d08  01 10 81 e3  orr	r1, r1, #1
005a1d0c  00 30 a0 e3  mov	r3, #0
005a1d10  04 10 c1 e3  bic	r1, r1, #4
005a1d14  12 10 c4 e5  strb	r1, [r4, #0x12]
005a1d18  08 30 84 e5  str	r3, [r4, #0x8]
005a1d1c  0c 30 84 e5  str	r3, [r4, #0xc]
005a1d20  0c d0 8d e2  add	sp, sp, #12
005a1d24  30 80 bd e8  pop	{r4, r5, pc}
005a1d28  08 00 90 e5  ldr	r0, [r0, #0x8]
005a1d2c  00 00 52 e1  cmp	r2, r0
005a1d30  12 10 d4 05  ldrbeq	r1, [r4, #0x12]
005a1d34  2f 00 00 0a  beq	0x5a1df8 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x144> @ imm = #0xbc
005a1d38  00 00 50 e3  cmp	r0, #0
005a1d3c  12 10 d4 05  ldrbeq	r1, [r4, #0x12]
005a1d40  02 00 00 0a  beq	0x5a1d50 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x9c> @ imm = #0x8
005a1d44  12 10 d4 e5  ldrb	r1, [r4, #0x12]
005a1d48  01 00 11 e3  tst	r1, #1
005a1d4c  1b 00 00 1a  bne	0x5a1dc0 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x10c> @ imm = #0x6c
005a1d50  0c c0 94 e5  ldr	r12, [r4, #0xc]
005a1d54  11 00 d4 e5  ldrb	r0, [r4, #0x11]
005a1d58  08 20 84 e5  str	r2, [r4, #0x8]
005a1d5c  0c 00 55 e1  cmp	r5, r12
005a1d60  02 c0 a0 13  movne	r12, #2
005a1d64  00 c0 a0 03  moveq	r12, #0
005a1d68  04 00 50 e3  cmp	r0, #4
005a1d6c  21 00 00 0a  beq	0x5a1df8 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x144> @ imm = #0x84
005a1d70  00 00 52 e3  cmp	r2, #0
005a1d74  01 10 8c 01  orreq	r1, r12, r1
005a1d78  02 10 81 13  orrne	r1, r1, #2
005a1d7c  0c 50 84 05  streq	r5, [r4, #0xc]
005a1d80  12 10 c4 05  strbeq	r1, [r4, #0x12]
005a1d84  0c 50 84 15  strne	r5, [r4, #0xc]
005a1d88  12 10 c4 15  strbne	r1, [r4, #0x12]
005a1d8c  1c 00 00 0a  beq	0x5a1e04 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x150> @ imm = #0x70
005a1d90  00 00 53 e3  cmp	r3, #0
005a1d94  01 10 c1 03  biceq	r1, r1, #1
005a1d98  12 10 c4 05  strbeq	r1, [r4, #0x12]
005a1d9c  df ff ff 0a  beq	0x5a1d20 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x6c> @ imm = #-0x84
005a1da0  12 10 d4 e5  ldrb	r1, [r4, #0x12]
005a1da4  00 00 52 e3  cmp	r2, #0
005a1da8  01 10 81 e3  orr	r1, r1, #1
005a1dac  12 10 c4 e5  strb	r1, [r4, #0x12]
005a1db0  da ff ff 1a  bne	0x5a1d20 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x6c> @ imm = #-0x98
005a1db4  04 10 c1 e3  bic	r1, r1, #4
005a1db8  12 10 c4 e5  strb	r1, [r4, #0x12]
005a1dbc  d7 ff ff ea  b	0x5a1d20 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x6c> @ imm = #-0xa4
005a1dc0  04 20 8d e5  str	r2, [sp, #0x4]
005a1dc4  00 30 8d e5  str	r3, [sp]
005a1dc8  ba b0 f5 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x293d18
005a1dcc  0c c0 94 e5  ldr	r12, [r4, #0xc]
005a1dd0  11 00 d4 e5  ldrb	r0, [r4, #0x11]
005a1dd4  04 20 9d e5  ldr	r2, [sp, #0x4]
005a1dd8  0c 00 55 e1  cmp	r5, r12
005a1ddc  02 c0 a0 13  movne	r12, #2
005a1de0  00 c0 a0 03  moveq	r12, #0
005a1de4  04 00 50 e3  cmp	r0, #4
005a1de8  00 30 9d e5  ldr	r3, [sp]
005a1dec  12 10 d4 e5  ldrb	r1, [r4, #0x12]
005a1df0  08 20 84 e5  str	r2, [r4, #0x8]
005a1df4  dd ff ff 1a  bne	0x5a1d70 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0xbc> @ imm = #-0x8c
005a1df8  00 00 52 e3  cmp	r2, #0
005a1dfc  0c 50 84 e5  str	r5, [r4, #0xc]
005a1e00  e2 ff ff 1a  bne	0x5a1d90 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0xdc> @ imm = #-0x78
005a1e04  01 10 81 e3  orr	r1, r1, #1
005a1e08  71 10 ef e6  uxtb	r1, r1
005a1e0c  12 10 c4 e5  strb	r1, [r4, #0x12]
005a1e10  e7 ff ff ea  b	0x5a1db4 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x100> @ imm = #-0x64
005a1e14  12 10 d4 e5  ldrb	r1, [r4, #0x12]
005a1e18  ba ff ff ea  b	0x5a1d08 <glitch::video::IBuffer::reset(unsigned int, void*, bool)+0x54> @ imm = #-0x118

; FUNCTION gl_buffer_map_impl
; ELF VA 0x005b3a1c; range_size=224; file_offset=0x005b3a1c; SHA-256=112cc72809c6d63f30bd465f12a8b4719e67a7c489418c8c6ddd192b38d3676a
; alias: _ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBuffer7mapImplEj
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(unsigned int) const
005b3a1c  f0 41 2d e9  push	{r4, r5, r6, r7, r8, lr}
005b3a20  d0 30 9f e5  ldr	r3, [pc, #0xd0]         @ 0x5b3af8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(unsigned int) const+0xdc>
005b3a24  10 20 d0 e5  ldrb	r2, [r0, #0x10]
005b3a28  00 40 a0 e1  mov	r4, r0
005b3a2c  03 30 8f e0  add	r3, pc, r3
005b3a30  11 0e 83 e2  add	r0, r3, #272
005b3a34  02 01 90 e7  ldr	r0, [r0, r2, lsl #2]
005b3a38  01 50 a0 e1  mov	r5, r1
005b3a3c  00 00 50 e3  cmp	r0, #0
005b3a40  03 00 00 0a  beq	0x5b3a54 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(unsigned int) const+0x38> @ imm = #0xc
005b3a44  01 31 83 e0  add	r3, r3, r1, lsl #2
005b3a48  24 31 93 e5  ldr	r3, [r3, #0x124]
005b3a4c  00 00 53 e3  cmp	r3, #0
005b3a50  08 00 00 1a  bne	0x5b3a78 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(unsigned int) const+0x5c> @ imm = #0x20
005b3a54  08 30 94 e5  ldr	r3, [r4, #0x8]
005b3a58  00 00 53 e3  cmp	r3, #0
005b3a5c  18 00 00 0a  beq	0x5b3ac4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(unsigned int) const+0xa8> @ imm = #0x60
005b3a60  02 00 55 e3  cmp	r5, #2
005b3a64  0a 00 00 8a  bhi	0x5b3a94 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(unsigned int) const+0x78> @ imm = #0x28
005b3a68  21 20 a0 e3  mov	r2, #33
005b3a6c  13 20 c4 e5  strb	r2, [r4, #0x13]
005b3a70  03 00 a0 e1  mov	r0, r3
005b3a74  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
005b3a78  02 00 51 e3  cmp	r1, #2
005b3a7c  12 00 00 9a  bls	0x5b3acc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(unsigned int) const+0xb0> @ imm = #0x48
005b3a80  04 00 51 e3  cmp	r1, #4
005b3a84  10 00 00 8a  bhi	0x5b3acc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(unsigned int) const+0xb0> @ imm = #0x40
005b3a88  08 30 94 e5  ldr	r3, [r4, #0x8]
005b3a8c  00 00 53 e3  cmp	r3, #0
005b3a90  0d 00 00 0a  beq	0x5b3acc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(unsigned int) const+0xb0> @ imm = #0x34
005b3a94  11 20 d4 e5  ldrb	r2, [r4, #0x11]
005b3a98  04 00 52 e3  cmp	r2, #4
005b3a9c  12 20 d4 15  ldrbne	r2, [r4, #0x12]
005b3aa0  02 20 82 13  orrne	r2, r2, #2
005b3aa4  12 20 c4 15  strbne	r2, [r4, #0x12]
005b3aa8  03 00 55 e3  cmp	r5, #3
005b3aac  75 20 ef 16  uxtbne	r2, r5
005b3ab0  a1 20 a0 03  moveq	r2, #161
005b3ab4  82 22 a0 11  lslne	r2, r2, #5
005b3ab8  01 20 82 13  orrne	r2, r2, #1
005b3abc  72 20 ef 16  uxtbne	r2, r2
005b3ac0  13 20 c4 e5  strb	r2, [r4, #0x13]
005b3ac4  03 00 a0 e1  mov	r0, r3
005b3ac8  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
005b3acc  14 30 94 e5  ldr	r3, [r4, #0x14]
005b3ad0  94 20 82 e2  add	r2, r2, #148
005b3ad4  18 60 94 e5  ldr	r6, [r4, #0x18]
005b3ad8  02 71 83 e0  add	r7, r3, r2, lsl #2
005b3adc  04 30 97 e5  ldr	r3, [r7, #0x4]
005b3ae0  03 00 56 e1  cmp	r6, r3
005b3ae4  da ff ff 0a  beq	0x5b3a54 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(unsigned int) const+0x38> @ imm = #-0x98
005b3ae8  06 10 a0 e1  mov	r1, r6
005b3aec  c0 68 f5 eb  bl	0x30ddf4 <glBindBuffer@plt> @ imm = #-0x2a5d00
005b3af0  04 60 87 e5  str	r6, [r7, #0x4]
005b3af4  d6 ff ff ea  b	0x5b3a54 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(unsigned int) const+0x38> @ imm = #-0xa8
005b3af8  08 c6 32 00  .word	0x0032c608

; FUNCTION gl_buffer_unmap_impl
; ELF VA 0x005b2468; range_size=96; file_offset=0x005b2468; SHA-256=c8b0e937081bb1d4976132ba2568840342672c3317aee9085ef978fa0e60554a
; alias: _ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBuffer9unmapImplEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unmapImpl() const
005b2468  70 40 2d e9  push	{r4, r5, r6, lr}
005b246c  10 30 d0 e5  ldrb	r3, [r0, #0x10]
005b2470  14 20 90 e5  ldr	r2, [r0, #0x14]
005b2474  18 50 90 e5  ldr	r5, [r0, #0x18]
005b2478  94 60 83 e2  add	r6, r3, #148
005b247c  06 61 82 e0  add	r6, r2, r6, lsl #2
005b2480  04 20 96 e5  ldr	r2, [r6, #0x4]
005b2484  00 40 a0 e1  mov	r4, r0
005b2488  02 00 55 e1  cmp	r5, r2
005b248c  06 00 00 0a  beq	0x5b24ac <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unmapImpl() const+0x44> @ imm = #0x18
005b2490  2c 20 9f e5  ldr	r2, [pc, #0x2c]         @ 0x5b24c4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unmapImpl() const+0x5c>
005b2494  05 10 a0 e1  mov	r1, r5
005b2498  02 20 8f e0  add	r2, pc, r2
005b249c  11 2e 82 e2  add	r2, r2, #272
005b24a0  03 01 92 e7  ldr	r0, [r2, r3, lsl #2]
005b24a4  52 6e f5 eb  bl	0x30ddf4 <glBindBuffer@plt> @ imm = #-0x2a46b8
005b24a8  04 50 86 e5  str	r5, [r6, #0x4]
005b24ac  12 30 d4 e5  ldrb	r3, [r4, #0x12]
005b24b0  00 20 a0 e3  mov	r2, #0
005b24b4  1c 20 84 e5  str	r2, [r4, #0x1c]
005b24b8  20 30 c3 e3  bic	r3, r3, #32
005b24bc  12 30 c4 e5  strb	r3, [r4, #0x12]
005b24c0  70 80 bd e8  pop	{r4, r5, r6, pc}
005b24c4  9c db 32 00  .word	0x0032db9c

; FUNCTION gl_buffer_update
; ELF VA 0x005b6374; range_size=332; file_offset=0x005b6374; SHA-256=8325739357c9732b8df71a1dbb34c5841a6562a726acfe273ae04ddc6eee5bb0
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBuffer6updateEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()
005b6374  70 40 2d e9  push	{r4, r5, r6, lr}
005b6378  10 30 d0 e5  ldrb	r3, [r0, #0x10]
005b637c  14 20 90 e5  ldr	r2, [r0, #0x14]
005b6380  18 50 90 e5  ldr	r5, [r0, #0x18]
005b6384  94 60 83 e2  add	r6, r3, #148
005b6388  06 61 82 e0  add	r6, r2, r6, lsl #2
005b638c  04 20 96 e5  ldr	r2, [r6, #0x4]
005b6390  00 40 a0 e1  mov	r4, r0
005b6394  02 00 55 e1  cmp	r5, r2
005b6398  06 00 00 0a  beq	0x5b63b8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()+0x44> @ imm = #0x18
005b639c  10 21 9f e5  ldr	r2, [pc, #0x110]        @ 0x5b64b4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()+0x140>
005b63a0  05 10 a0 e1  mov	r1, r5
005b63a4  02 20 8f e0  add	r2, pc, r2
005b63a8  11 2e 82 e2  add	r2, r2, #272
005b63ac  03 01 92 e7  ldr	r0, [r2, r3, lsl #2]
005b63b0  8f 5e f5 eb  bl	0x30ddf4 <glBindBuffer@plt> @ imm = #-0x2a85c4
005b63b4  04 50 86 e5  str	r5, [r6, #0x4]
005b63b8  12 10 d4 e5  ldrb	r1, [r4, #0x12]
005b63bc  02 10 11 e2  ands	r1, r1, #2
005b63c0  12 00 00 0a  beq	0x5b6410 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()+0x9c> @ imm = #0x48
005b63c4  77 5f f5 eb  bl	0x30e1a8 <glGetError@plt> @ imm = #-0x2a8224
005b63c8  e8 10 9f e5  ldr	r1, [pc, #0xe8]         @ 0x5b64b8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()+0x144>
005b63cc  11 20 d4 e5  ldrb	r2, [r4, #0x11]
005b63d0  10 00 d4 e5  ldrb	r0, [r4, #0x10]
005b63d4  01 10 8f e0  add	r1, pc, r1
005b63d8  4f 3f 81 e2  add	r3, r1, #316
005b63dc  11 1e 81 e2  add	r1, r1, #272
005b63e0  00 01 91 e7  ldr	r0, [r1, r0, lsl #2]
005b63e4  02 31 93 e7  ldr	r3, [r3, r2, lsl #2]
005b63e8  0c 10 94 e5  ldr	r1, [r4, #0xc]
005b63ec  08 20 94 e5  ldr	r2, [r4, #0x8]
005b63f0  fb 60 f5 eb  bl	0x30e7e4 <glBufferData@plt> @ imm = #-0x2a7c14
005b63f4  6b 5f f5 eb  bl	0x30e1a8 <glGetError@plt> @ imm = #-0x2a8254
005b63f8  00 00 50 e3  cmp	r0, #0
005b63fc  0f 00 00 1a  bne	0x5b6440 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()+0xcc> @ imm = #0x3c
005b6400  12 30 d4 e5  ldrb	r3, [r4, #0x12]
005b6404  02 30 c3 e3  bic	r3, r3, #2
005b6408  12 30 c4 e5  strb	r3, [r4, #0x12]
005b640c  70 80 bd e8  pop	{r4, r5, r6, pc}
005b6410  a4 30 9f e5  ldr	r3, [pc, #0xa4]         @ 0x5b64bc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()+0x148>
005b6414  10 20 d4 e5  ldrb	r2, [r4, #0x10]
005b6418  03 30 8f e0  add	r3, pc, r3
005b641c  11 3e 83 e2  add	r3, r3, #272
005b6420  02 01 93 e7  ldr	r0, [r3, r2, lsl #2]
005b6424  08 30 94 e5  ldr	r3, [r4, #0x8]
005b6428  0c 20 94 e5  ldr	r2, [r4, #0xc]
005b642c  01 61 f5 eb  bl	0x30e838 <glBufferSubData@plt> @ imm = #-0x2a7bfc
005b6430  12 30 d4 e5  ldrb	r3, [r4, #0x12]
005b6434  02 30 c3 e3  bic	r3, r3, #2
005b6438  12 30 c4 e5  strb	r3, [r4, #0x12]
005b643c  70 80 bd e8  pop	{r4, r5, r6, pc}
005b6440  01 00 a0 e3  mov	r0, #1
005b6444  18 10 84 e2  add	r1, r4, #24
005b6448  20 62 f5 eb  bl	0x30ecd0 <glDeleteBuffers@plt> @ imm = #-0x2a7780
005b644c  11 30 d4 e5  ldrb	r3, [r4, #0x11]
005b6450  00 20 a0 e3  mov	r2, #0
005b6454  18 20 84 e5  str	r2, [r4, #0x18]
005b6458  04 00 53 e3  cmp	r3, #4
005b645c  e7 ff ff 0a  beq	0x5b6400 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()+0x8c> @ imm = #-0x64
005b6460  08 20 94 e5  ldr	r2, [r4, #0x8]
005b6464  00 00 52 e3  cmp	r2, #0
005b6468  12 20 d4 e5  ldrb	r2, [r4, #0x12]
005b646c  10 20 82 03  orreq	r2, r2, #16
005b6470  12 20 82 13  orrne	r2, r2, #18
005b6474  04 00 53 e3  cmp	r3, #4
005b6478  12 20 c4 e5  strb	r2, [r4, #0x12]
005b647c  df ff ff 0a  beq	0x5b6400 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()+0x8c> @ imm = #-0x84
005b6480  08 00 12 e3  tst	r2, #8
005b6484  05 00 00 1a  bne	0x5b64a0 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()+0x12c> @ imm = #0x14
005b6488  04 30 a0 e3  mov	r3, #4
005b648c  11 30 c4 e5  strb	r3, [r4, #0x11]
005b6490  12 30 d4 e5  ldrb	r3, [r4, #0x12]
005b6494  02 30 c3 e3  bic	r3, r3, #2
005b6498  12 30 c4 e5  strb	r3, [r4, #0x12]
005b649c  70 80 bd e8  pop	{r4, r5, r6, pc}
005b64a0  00 30 94 e5  ldr	r3, [r4]
005b64a4  04 00 a0 e1  mov	r0, r4
005b64a8  0f e0 a0 e1  mov	lr, pc
005b64ac  10 f0 93 e5  ldr	pc, [r3, #0x10]
005b64b0  f4 ff ff ea  b	0x5b6488 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()+0x114> @ imm = #-0x30
005b64b4  90 9c 32 00  .word	0x00329c90
005b64b8  60 9c 32 00  .word	0x00329c60
005b64bc  1c 9c 32 00  .word	0x00329c1c

; FUNCTION gl_buffer_bind_impl
; ELF VA 0x005b67b0; range_size=528; file_offset=0x005b67b0; SHA-256=0afdd4bd3d7a48b5cd79a25a8e114e41a54817769a9024828e563dc54b3f5228
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBuffer8bindImplEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)
005b67b0  f0 45 2d e9  push	{r4, r5, r6, r7, r8, r10, lr}
005b67b4  18 30 90 e5  ldr	r3, [r0, #0x18]
005b67b8  0c d0 4d e2  sub	sp, sp, #12
005b67bc  00 40 a0 e1  mov	r4, r0
005b67c0  00 00 53 e3  cmp	r3, #0
005b67c4  01 50 a0 e1  mov	r5, r1
005b67c8  11 00 00 0a  beq	0x5b6814 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x64> @ imm = #0x44
005b67cc  12 30 d0 e5  ldrb	r3, [r0, #0x12]
005b67d0  02 00 13 e3  tst	r3, #2
005b67d4  23 00 00 1a  bne	0x5b6868 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0xb8> @ imm = #0x8c
005b67d8  00 00 55 e3  cmp	r5, #0
005b67dc  0a 00 00 0a  beq	0x5b680c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x5c> @ imm = #0x28
005b67e0  08 30 94 e5  ldr	r3, [r4, #0x8]
005b67e4  00 00 53 e3  cmp	r3, #0
005b67e8  07 00 00 0a  beq	0x5b680c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x5c> @ imm = #0x1c
005b67ec  01 30 a0 e3  mov	r3, #1
005b67f0  04 00 a0 e1  mov	r0, r4
005b67f4  0c 10 94 e5  ldr	r1, [r4, #0xc]
005b67f8  00 20 a0 e3  mov	r2, #0
005b67fc  2c ad ff eb  bl	0x5a1cb4 <glitch::video::IBuffer::reset(unsigned int, void*, bool)> @ imm = #-0x14b50
005b6800  12 30 d4 e5  ldrb	r3, [r4, #0x12]
005b6804  02 30 c3 e3  bic	r3, r3, #2
005b6808  12 30 c4 e5  strb	r3, [r4, #0x12]
005b680c  0c d0 8d e2  add	sp, sp, #12
005b6810  f0 85 bd e8  pop	{r4, r5, r6, r7, r8, r10, pc}
005b6814  9c 71 9f e5  ldr	r7, [pc, #0x19c]        @ 0x5b69b8 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x208>
005b6818  10 30 d0 e5  ldrb	r3, [r0, #0x10]
005b681c  07 70 8f e0  add	r7, pc, r7
005b6820  11 7e 87 e2  add	r7, r7, #272
005b6824  03 31 97 e7  ldr	r3, [r7, r3, lsl #2]
005b6828  00 00 53 e3  cmp	r3, #0
005b682c  f6 ff ff 0a  beq	0x5b680c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x5c> @ imm = #-0x28
005b6830  18 60 80 e2  add	r6, r0, #24
005b6834  06 10 a0 e1  mov	r1, r6
005b6838  01 00 a0 e3  mov	r0, #1
005b683c  3b 5e f5 eb  bl	0x30e130 <glGenBuffers@plt> @ imm = #-0x2a8714
005b6840  18 80 94 e5  ldr	r8, [r4, #0x18]
005b6844  00 00 58 e3  cmp	r8, #0
005b6848  ef ff ff 0a  beq	0x5b680c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x5c> @ imm = #-0x44
005b684c  0c 30 94 e5  ldr	r3, [r4, #0xc]
005b6850  00 00 53 e3  cmp	r3, #0
005b6854  12 30 d4 05  ldrbeq	r3, [r4, #0x12]
005b6858  06 00 00 1a  bne	0x5b6878 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0xc8> @ imm = #0x18
005b685c  08 30 83 e3  orr	r3, r3, #8
005b6860  12 30 c4 e5  strb	r3, [r4, #0x12]
005b6864  e8 ff ff ea  b	0x5b680c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x5c> @ imm = #-0x60
005b6868  c1 fe ff eb  bl	0x5b6374 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()> @ imm = #-0x4fc
005b686c  00 00 55 e3  cmp	r5, #0
005b6870  e5 ff ff 0a  beq	0x5b680c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x5c> @ imm = #-0x6c
005b6874  d9 ff ff ea  b	0x5b67e0 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x30> @ imm = #-0x9c
005b6878  10 30 d4 e5  ldrb	r3, [r4, #0x10]
005b687c  14 20 94 e5  ldr	r2, [r4, #0x14]
005b6880  94 a0 83 e2  add	r10, r3, #148
005b6884  0a a1 82 e0  add	r10, r2, r10, lsl #2
005b6888  04 20 9a e5  ldr	r2, [r10, #0x4]
005b688c  02 00 58 e1  cmp	r8, r2
005b6890  03 00 00 0a  beq	0x5b68a4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0xf4> @ imm = #0xc
005b6894  03 01 97 e7  ldr	r0, [r7, r3, lsl #2]
005b6898  08 10 a0 e1  mov	r1, r8
005b689c  54 5d f5 eb  bl	0x30ddf4 <glBindBuffer@plt> @ imm = #-0x2a8ab0
005b68a0  04 80 8a e5  str	r8, [r10, #0x4]
005b68a4  10 71 9f e5  ldr	r7, [pc, #0x110]        @ 0x5b69bc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x20c>
005b68a8  3e 5e f5 eb  bl	0x30e1a8 <glGetError@plt> @ imm = #-0x2a8708
005b68ac  10 20 d4 e5  ldrb	r2, [r4, #0x10]
005b68b0  11 30 d4 e5  ldrb	r3, [r4, #0x11]
005b68b4  07 70 8f e0  add	r7, pc, r7
005b68b8  4f 8f 87 e2  add	r8, r7, #316
005b68bc  11 7e 87 e2  add	r7, r7, #272
005b68c0  02 01 97 e7  ldr	r0, [r7, r2, lsl #2]
005b68c4  03 31 98 e7  ldr	r3, [r8, r3, lsl #2]
005b68c8  0c 10 94 e5  ldr	r1, [r4, #0xc]
005b68cc  08 20 94 e5  ldr	r2, [r4, #0x8]
005b68d0  c3 5f f5 eb  bl	0x30e7e4 <glBufferData@plt> @ imm = #-0x2a80f4
005b68d4  10 20 d4 e5  ldrb	r2, [r4, #0x10]
005b68d8  14 c0 94 e5  ldr	r12, [r4, #0x14]
005b68dc  11 30 d4 e5  ldrb	r3, [r4, #0x11]
005b68e0  02 21 97 e7  ldr	r2, [r7, r2, lsl #2]
005b68e4  08 e0 94 e5  ldr	lr, [r4, #0x8]
005b68e8  0c 70 94 e5  ldr	r7, [r4, #0xc]
005b68ec  03 31 98 e7  ldr	r3, [r8, r3, lsl #2]
005b68f0  18 10 94 e5  ldr	r1, [r4, #0x18]
005b68f4  0c 00 a0 e1  mov	r0, r12
005b68f8  00 c0 9c e5  ldr	r12, [r12]
005b68fc  80 40 8d e8  stm	sp, {r7, lr}
005b6900  0f e0 a0 e1  mov	lr, pc
005b6904  48 f0 9c e5  ldr	pc, [r12, #0x48]
005b6908  26 5e f5 eb  bl	0x30e1a8 <glGetError@plt> @ imm = #-0x2a8768
005b690c  00 20 50 e2  subs	r2, r0, #0
005b6910  05 00 00 1a  bne	0x5b692c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x17c> @ imm = #0x14
005b6914  00 00 55 e3  cmp	r5, #0
005b6918  19 00 00 1a  bne	0x5b6984 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x1d4> @ imm = #0x64
005b691c  12 30 d4 e5  ldrb	r3, [r4, #0x12]
005b6920  fd 30 03 e2  and	r3, r3, #253
005b6924  12 30 c4 e5  strb	r3, [r4, #0x12]
005b6928  cb ff ff ea  b	0x5b685c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0xac> @ imm = #-0xd4
005b692c  06 10 a0 e1  mov	r1, r6
005b6930  01 00 a0 e3  mov	r0, #1
005b6934  e5 60 f5 eb  bl	0x30ecd0 <glDeleteBuffers@plt> @ imm = #-0x2a7c6c
005b6938  11 30 d4 e5  ldrb	r3, [r4, #0x11]
005b693c  00 20 a0 e3  mov	r2, #0
005b6940  18 20 84 e5  str	r2, [r4, #0x18]
005b6944  04 00 53 e3  cmp	r3, #4
005b6948  af ff ff 0a  beq	0x5b680c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x5c> @ imm = #-0x144
005b694c  08 20 94 e5  ldr	r2, [r4, #0x8]
005b6950  00 00 52 e3  cmp	r2, #0
005b6954  12 20 d4 e5  ldrb	r2, [r4, #0x12]
005b6958  10 20 82 03  orreq	r2, r2, #16
005b695c  12 20 82 13  orrne	r2, r2, #18
005b6960  04 00 53 e3  cmp	r3, #4
005b6964  12 20 c4 e5  strb	r2, [r4, #0x12]
005b6968  a7 ff ff 0a  beq	0x5b680c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x5c> @ imm = #-0x164
005b696c  12 30 d4 e5  ldrb	r3, [r4, #0x12]
005b6970  08 00 13 e3  tst	r3, #8
005b6974  0a 00 00 1a  bne	0x5b69a4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x1f4> @ imm = #0x28
005b6978  04 30 a0 e3  mov	r3, #4
005b697c  11 30 c4 e5  strb	r3, [r4, #0x11]
005b6980  a1 ff ff ea  b	0x5b680c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x5c> @ imm = #-0x17c
005b6984  01 30 a0 e3  mov	r3, #1
005b6988  04 00 a0 e1  mov	r0, r4
005b698c  0c 10 94 e5  ldr	r1, [r4, #0xc]
005b6990  c7 ac ff eb  bl	0x5a1cb4 <glitch::video::IBuffer::reset(unsigned int, void*, bool)> @ imm = #-0x14ce4
005b6994  12 30 d4 e5  ldrb	r3, [r4, #0x12]
005b6998  fd 30 03 e2  and	r3, r3, #253
005b699c  12 30 c4 e5  strb	r3, [r4, #0x12]
005b69a0  ad ff ff ea  b	0x5b685c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0xac> @ imm = #-0x14c
005b69a4  00 30 94 e5  ldr	r3, [r4]
005b69a8  04 00 a0 e1  mov	r0, r4
005b69ac  0f e0 a0 e1  mov	lr, pc
005b69b0  10 f0 93 e5  ldr	pc, [r3, #0x10]
005b69b4  ef ff ff ea  b	0x5b6978 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)+0x1c8> @ imm = #-0x44
005b69b8  18 98 32 00  .word	0x00329818
005b69bc  80 97 32 00  .word	0x00329780

; FUNCTION driver_update_binding
; ELF VA 0x005b64c0; range_size=84; file_offset=0x005b64c0; SHA-256=bc38e5f99c65ad9141ea70749a19da41779bca3136cd8a8ca44d5181540dc491
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13updateBindingEPNS0_7IBufferE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::updateBinding(glitch::video::IBuffer*)
005b64c0  10 40 2d e9  push	{r4, lr}
005b64c4  00 40 51 e2  subs	r4, r1, #0
005b64c8  0b 00 00 0a  beq	0x5b64fc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::updateBinding(glitch::video::IBuffer*)+0x3c> @ imm = #0x2c
005b64cc  12 10 d4 e5  ldrb	r1, [r4, #0x12]
005b64d0  02 00 11 e3  tst	r1, #2
005b64d4  08 00 00 0a  beq	0x5b64fc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::updateBinding(glitch::video::IBuffer*)+0x3c> @ imm = #0x20
005b64d8  08 10 11 e2  ands	r1, r1, #8
005b64dc  08 00 00 1a  bne	0x5b6504 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::updateBinding(glitch::video::IBuffer*)+0x44> @ imm = #0x20
005b64e0  11 30 d4 e5  ldrb	r3, [r4, #0x11]
005b64e4  04 00 53 e3  cmp	r3, #4
005b64e8  03 00 00 0a  beq	0x5b64fc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::updateBinding(glitch::video::IBuffer*)+0x3c> @ imm = #0xc
005b64ec  00 30 94 e5  ldr	r3, [r4]
005b64f0  04 00 a0 e1  mov	r0, r4
005b64f4  0f e0 a0 e1  mov	lr, pc
005b64f8  0c f0 93 e5  ldr	pc, [r3, #0xc]
005b64fc  04 00 a0 e1  mov	r0, r4
005b6500  10 80 bd e8  pop	{r4, pc}
005b6504  04 00 a0 e1  mov	r0, r4
005b6508  99 ff ff eb  bl	0x5b6374 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()> @ imm = #-0x19c
005b650c  04 00 a0 e1  mov	r0, r4
005b6510  10 80 bd e8  pop	{r4, pc}

; FUNCTION driver_set_buffer
; ELF VA 0x005b6514; range_size=112; file_offset=0x005b6514; SHA-256=6f1c46e8fb5d9f0bd632329936a69d6f0fc089d56154b820b7ff51b65ad6cb44
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE9setBufferEPNS0_7IBufferE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBuffer(glitch::video::IBuffer*)
005b6514  70 40 2d e9  push	{r4, r5, r6, lr}
005b6518  00 50 a0 e1  mov	r5, r0
005b651c  e7 ff ff eb  bl	0x5b64c0 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::updateBinding(glitch::video::IBuffer*)> @ imm = #-0x64
005b6520  00 00 50 e3  cmp	r0, #0
005b6524  00 60 a0 01  moveq	r6, r0
005b6528  12 00 00 0a  beq	0x5b6578 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBuffer(glitch::video::IBuffer*)+0x64> @ imm = #0x48
005b652c  11 30 d0 e5  ldrb	r3, [r0, #0x11]
005b6530  04 00 53 e3  cmp	r3, #4
005b6534  10 30 d0 e5  ldrb	r3, [r0, #0x10]
005b6538  18 40 90 15  ldrne	r4, [r0, #0x18]
005b653c  00 40 a0 03  moveq	r4, #0
005b6540  94 20 83 e2  add	r2, r3, #148
005b6544  02 51 85 e0  add	r5, r5, r2, lsl #2
005b6548  04 20 95 e5  ldr	r2, [r5, #0x4]
005b654c  00 60 a0 13  movne	r6, #0
005b6550  08 60 90 05  ldreq	r6, [r0, #0x8]
005b6554  02 00 54 e1  cmp	r4, r2
005b6558  06 00 00 0a  beq	0x5b6578 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBuffer(glitch::video::IBuffer*)+0x64> @ imm = #0x18
005b655c  1c 20 9f e5  ldr	r2, [pc, #0x1c]         @ 0x5b6580 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBuffer(glitch::video::IBuffer*)+0x6c>
005b6560  04 10 a0 e1  mov	r1, r4
005b6564  02 20 8f e0  add	r2, pc, r2
005b6568  11 2e 82 e2  add	r2, r2, #272
005b656c  03 01 92 e7  ldr	r0, [r2, r3, lsl #2]
005b6570  1f 5e f5 eb  bl	0x30ddf4 <glBindBuffer@plt> @ imm = #-0x2a8784
005b6574  04 40 85 e5  str	r4, [r5, #0x4]
005b6578  06 00 a0 e1  mov	r0, r6
005b657c  70 80 bd e8  pop	{r4, r5, r6, pc}
005b6580  d0 9a 32 00  .word	0x00329ad0

; FUNCTION gl_buffer_unbind_impl
; ELF VA 0x005b051c; range_size=120; file_offset=0x005b051c; SHA-256=fa285897a978d3c111826437f0c917ec0af64e1b97a4c9ebed4390964fe308d6
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBuffer10unbindImplEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unbindImpl()
005b051c  10 40 2d e9  push	{r4, lr}
005b0520  14 30 90 e5  ldr	r3, [r0, #0x14]
005b0524  10 20 d0 e5  ldrb	r2, [r0, #0x10]
005b0528  00 40 a0 e1  mov	r4, r0
005b052c  95 3f 83 e2  add	r3, r3, #596
005b0530  18 10 90 e5  ldr	r1, [r0, #0x18]
005b0534  02 01 93 e7  ldr	r0, [r3, r2, lsl #2]
005b0538  01 00 50 e1  cmp	r0, r1
005b053c  00 10 a0 03  moveq	r1, #0
005b0540  02 11 83 07  streq	r1, [r3, r2, lsl #2]
005b0544  01 00 a0 e3  mov	r0, #1
005b0548  18 10 84 e2  add	r1, r4, #24
005b054c  df 79 f5 eb  bl	0x30ecd0 <glDeleteBuffers@plt> @ imm = #-0x2a1884
005b0550  14 30 94 e5  ldr	r3, [r4, #0x14]
005b0554  18 10 94 e5  ldr	r1, [r4, #0x18]
005b0558  03 00 a0 e1  mov	r0, r3
005b055c  00 30 93 e5  ldr	r3, [r3]
005b0560  0f e0 a0 e1  mov	lr, pc
005b0564  50 f0 93 e5  ldr	pc, [r3, #0x50]
005b0568  12 30 d4 e5  ldrb	r3, [r4, #0x12]
005b056c  0c 20 94 e5  ldr	r2, [r4, #0xc]
005b0570  e7 30 03 e2  and	r3, r3, #231
005b0574  00 00 52 e3  cmp	r2, #0
005b0578  12 30 c4 e5  strb	r3, [r4, #0x12]
005b057c  02 30 83 13  orrne	r3, r3, #2
005b0580  00 20 a0 e3  mov	r2, #0
005b0584  04 30 c3 13  bicne	r3, r3, #4
005b0588  18 20 84 e5  str	r2, [r4, #0x18]
005b058c  12 30 c4 15  strbne	r3, [r4, #0x12]
005b0590  10 80 bd e8  pop	{r4, pc}

; FUNCTION gl_buffer_destructor
; ELF VA 0x005b24c8; range_size=116; file_offset=0x005b24c8; SHA-256=04ca1cd4a3f1947254530bb464936af1f23559154639fdde22c7e34689d2caed
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBufferD1Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer()
005b24c8  70 40 2d e9  push	{r4, r5, r6, lr}
005b24cc  5c 50 9f e5  ldr	r5, [pc, #0x5c]         @ 0x5b2530 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer()+0x68>
005b24d0  5c 30 9f e5  ldr	r3, [pc, #0x5c]         @ 0x5b2534 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer()+0x6c>
005b24d4  12 20 d0 e5  ldrb	r2, [r0, #0x12]
005b24d8  05 50 8f e0  add	r5, pc, r5
005b24dc  03 30 95 e7  ldr	r3, [r5, r3]
005b24e0  20 00 12 e3  tst	r2, #32
005b24e4  00 40 a0 e1  mov	r4, r0
005b24e8  08 30 83 e2  add	r3, r3, #8
005b24ec  00 30 80 e5  str	r3, [r0]
005b24f0  0b 00 00 1a  bne	0x5b2524 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer()+0x5c> @ imm = #0x2c
005b24f4  08 00 12 e3  tst	r2, #8
005b24f8  01 00 00 0a  beq	0x5b2504 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer()+0x3c> @ imm = #0x4
005b24fc  04 00 a0 e1  mov	r0, r4
005b2500  05 f8 ff eb  bl	0x5b051c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unbindImpl()> @ imm = #-0x1fec
005b2504  2c 30 9f e5  ldr	r3, [pc, #0x2c]         @ 0x5b2538 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer()+0x70>
005b2508  04 00 a0 e1  mov	r0, r4
005b250c  03 30 95 e7  ldr	r3, [r5, r3]
005b2510  08 30 83 e2  add	r3, r3, #8
005b2514  00 30 84 e5  str	r3, [r4]
005b2518  4f be ff eb  bl	0x5a1e5c <glitch::video::IBuffer::~IBuffer()> @ imm = #-0x106c4
005b251c  04 00 a0 e1  mov	r0, r4
005b2520  70 80 bd e8  pop	{r4, r5, r6, pc}
005b2524  cf ff ff eb  bl	0x5b2468 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unmapImpl() const> @ imm = #-0xc4
005b2528  12 20 d4 e5  ldrb	r2, [r4, #0x12]
005b252c  f0 ff ff ea  b	0x5b24f4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer()+0x2c> @ imm = #-0x40
005b2530  b8 25 3e 00  .word	0x003e25b8
005b2534  14 14 00 00  .word	0x00001414
005b2538  7c 1f 00 00  .word	0x00001f7c

; FUNCTION vertex_streams_setup_from_buffer
; ELF VA 0x005a15c0; range_size=460; file_offset=0x005a15c0; SHA-256=b4c8dd180c6b56481dedfd70ee4fb64ecf80af286fac6a2b59f0d1251ba50a5d
; alias: _ZN6glitch5video14CVertexStreams12setupStreamsERKN5boost13intrusive_ptrINS0_7IBufferEEEj
; demangled: glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)
005a15c0  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
005a15c4  24 d0 4d e2  sub	sp, sp, #36
005a15c8  0c 00 8d e5  str	r0, [sp, #0xc]
005a15cc  10 50 90 e5  ldr	r5, [r0, #0x10]
005a15d0  a8 41 9f e5  ldr	r4, [pc, #0x1a8]        @ 0x5a1780 <glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)+0x1c0>
005a15d4  14 00 80 e2  add	r0, r0, #20
005a15d8  05 00 50 e1  cmp	r0, r5
005a15dc  04 40 8f e0  add	r4, pc, r4
005a15e0  1c 00 8d e5  str	r0, [sp, #0x1c]
005a15e4  10 10 8d e5  str	r1, [sp, #0x10]
005a15e8  02 80 a0 e1  mov	r8, r2
005a15ec  00 a0 a0 03  moveq	r10, #0
005a15f0  5a 00 00 0a  beq	0x5a1760 <glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)+0x1a0> @ imm = #0x168
005a15f4  88 21 9f e5  ldr	r2, [pc, #0x188]        @ 0x5a1784 <glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)+0x1c4>
005a15f8  88 31 9f e5  ldr	r3, [pc, #0x188]        @ 0x5a1788 <glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)+0x1c8>
005a15fc  00 a0 a0 e3  mov	r10, #0
005a1600  14 20 8d e5  str	r2, [sp, #0x14]
005a1604  18 30 8d e5  str	r3, [sp, #0x18]
005a1608  1c 60 9d e5  ldr	r6, [sp, #0x1c]
005a160c  01 90 a0 e3  mov	r9, #1
005a1610  0a b0 a0 e1  mov	r11, r10
005a1614  04 50 8d e5  str	r5, [sp, #0x4]
005a1618  08 40 8d e5  str	r4, [sp, #0x8]
005a161c  2b 00 00 ea  b	0x5a16d0 <glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)+0x110> @ imm = #0xac
005a1620  10 c0 9d e5  ldr	r12, [sp, #0x10]
005a1624  00 70 9c e5  ldr	r7, [r12]
005a1628  00 00 57 e3  cmp	r7, #0
005a162c  04 30 97 15  ldrne	r3, [r7, #0x4]
005a1630  01 30 83 12  addne	r3, r3, #1
005a1634  04 30 87 15  strne	r3, [r7, #0x4]
005a1638  08 20 9d e5  ldr	r2, [sp, #0x8]
005a163c  14 00 9d e5  ldr	r0, [sp, #0x14]
005a1640  b8 30 d6 11  ldrhne	r3, [r6, #8]
005a1644  18 c0 9d e5  ldr	r12, [sp, #0x18]
005a1648  00 10 92 e7  ldr	r1, [r2, r0]
005a164c  03 31 a0 e1  lsl	r3, r3, #2
005a1650  0c 20 92 e7  ldr	r2, [r2, r12]
005a1654  b3 50 91 e1  ldrh	r5, [r1, r3]
005a1658  00 00 57 e3  cmp	r7, #0
005a165c  03 30 81 e0  add	r3, r1, r3
005a1660  02 40 d3 e5  ldrb	r4, [r3, #0x2]
005a1664  05 30 d2 e7  ldrb	r3, [r2, r5]
005a1668  04 20 97 15  ldrne	r2, [r7, #0x4]
005a166c  93 04 03 e0  mul	r3, r3, r4
005a1670  01 20 82 12  addne	r2, r2, #1
005a1674  04 20 87 15  strne	r2, [r7, #0x4]
005a1678  00 00 96 e5  ldr	r0, [r6]
005a167c  00 70 86 e5  str	r7, [r6]
005a1680  00 00 50 e3  cmp	r0, #0
005a1684  02 00 00 0a  beq	0x5a1694 <glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)+0xd4> @ imm = #0x8
005a1688  00 30 8d e5  str	r3, [sp]
005a168c  bc ef f5 eb  bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x284110
005a1690  00 30 9d e5  ldr	r3, [sp]
005a1694  03 30 8a e0  add	r3, r10, r3
005a1698  00 00 a0 e3  mov	r0, #0
005a169c  00 00 57 e3  cmp	r7, #0
005a16a0  04 a0 86 e5  str	r10, [r6, #0x4]
005a16a4  ba 50 c6 e1  strh	r5, [r6, #10]
005a16a8  bc 40 c6 e1  strh	r4, [r6, #12]
005a16ac  be 00 c6 e1  strh	r0, [r6, #14]
005a16b0  73 a0 ff e6  uxth	r10, r3
005a16b4  01 00 00 0a  beq	0x5a16c0 <glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)+0x100> @ imm = #0x4
005a16b8  07 00 a0 e1  mov	r0, r7
005a16bc  b0 ef f5 eb  bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x284140
005a16c0  04 c0 9d e5  ldr	r12, [sp, #0x4]
005a16c4  10 60 86 e2  add	r6, r6, #16
005a16c8  0c 00 56 e1  cmp	r6, r12
005a16cc  10 00 00 0a  beq	0x5a1714 <glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)+0x154> @ imm = #0x40
005a16d0  b8 30 d6 e1  ldrh	r3, [r6, #8]
005a16d4  19 23 18 e0  ands	r2, r8, r9, lsl r3
005a16d8  d0 ff ff 1a  bne	0x5a1620 <glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)+0x60> @ imm = #-0xc0
005a16dc  00 00 96 e5  ldr	r0, [r6]
005a16e0  00 20 86 e5  str	r2, [r6]
005a16e4  00 00 50 e3  cmp	r0, #0
005a16e8  00 00 00 0a  beq	0x5a16f0 <glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)+0x130> @ imm = #0x0
005a16ec  a4 ef f5 eb  bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x284170
005a16f0  ff 20 a0 e3  mov	r2, #255
005a16f4  04 b0 86 e5  str	r11, [r6, #0x4]
005a16f8  ba 20 c6 e1  strh	r2, [r6, #10]
005a16fc  bc b0 c6 e1  strh	r11, [r6, #12]
005a1700  be b0 c6 e1  strh	r11, [r6, #14]
005a1704  04 c0 9d e5  ldr	r12, [sp, #0x4]
005a1708  10 60 86 e2  add	r6, r6, #16
005a170c  0c 00 56 e1  cmp	r6, r12
005a1710  ee ff ff 1a  bne	0x5a16d0 <glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)+0x110> @ imm = #-0x48
005a1714  0c 00 9d e5  ldr	r0, [sp, #0xc]
005a1718  1c 20 9d e5  ldr	r2, [sp, #0x1c]
005a171c  10 30 90 e5  ldr	r3, [r0, #0x10]
005a1720  03 00 52 e1  cmp	r2, r3
005a1724  0d 00 00 0a  beq	0x5a1760 <glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)+0x1a0> @ imm = #0x34
005a1728  0c c0 9d e5  ldr	r12, [sp, #0xc]
005a172c  24 00 80 e2  add	r0, r0, #36
005a1730  03 30 60 e0  rsb	r3, r0, r3
005a1734  0f 30 c3 e3  bic	r3, r3, #15
005a1738  10 00 8c e2  add	r0, r12, #16
005a173c  03 00 80 e0  add	r0, r0, r3
005a1740  01 10 a0 e3  mov	r1, #1
005a1744  0c 30 a0 e1  mov	r3, r12
005a1748  bc 21 d3 e1  ldrh	r2, [r3, #28]
005a174c  11 22 18 e0  ands	r2, r8, r1, lsl r2
005a1750  b2 a2 c3 11  strhne	r10, [r3, #34]
005a1754  10 30 83 e2  add	r3, r3, #16
005a1758  00 00 53 e1  cmp	r3, r0
005a175c  f9 ff ff 1a  bne	0x5a1748 <glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)+0x188> @ imm = #-0x1c
005a1760  0c 00 9d e5  ldr	r0, [sp, #0xc]
005a1764  0c 20 9d e5  ldr	r2, [sp, #0xc]
005a1768  be 30 d0 e1  ldrh	r3, [r0, #14]
005a176c  0a 00 a0 e1  mov	r0, r10
005a1770  01 30 83 e3  orr	r3, r3, #1
005a1774  be 30 c2 e1  strh	r3, [r2, #14]
005a1778  24 d0 8d e2  add	sp, sp, #36
005a177c  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
005a1780  b4 34 3f 00  .word	0x003f34b4
005a1784  f0 1d 00 00  .word	0x00001df0
005a1788  08 11 00 00  .word	0x00001108

; FUNCTION vertex_streams_setup_from_records
; ELF VA 0x005a178c; range_size=236; file_offset=0x005a178c; SHA-256=985be40058f4d862eb1e37b5c3d9c850e1a3b5dccce2b3f307c3cd0eb6b32045
; alias: _ZN6glitch5video14CVertexStreams12setupStreamsEPKNS0_17SVertexStreamDataEjb
; demangled: glitch::video::CVertexStreams::setupStreams(glitch::video::SVertexStreamData const*, unsigned int, bool)
005a178c  f8 4f 2d e9  push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
005a1790  10 50 90 e5  ldr	r5, [r0, #0x10]
005a1794  04 70 90 e5  ldr	r7, [r0, #0x4]
005a1798  00 40 a0 e1  mov	r4, r0
005a179c  14 00 80 e2  add	r0, r0, #20
005a17a0  00 00 55 e1  cmp	r5, r0
005a17a4  07 70 02 e0  and	r7, r2, r7
005a17a8  01 60 a0 e1  mov	r6, r1
005a17ac  03 b0 a0 e1  mov	r11, r3
005a17b0  2e 00 00 0a  beq	0x5a1870 <glitch::video::CVertexStreams::setupStreams(glitch::video::SVertexStreamData const*, unsigned int, bool)+0xe4> @ imm = #0xb8
005a17b4  24 80 84 e2  add	r8, r4, #36
005a17b8  01 90 a0 e3  mov	r9, #1
005a17bc  00 a0 a0 e3  mov	r10, #0
005a17c0  10 00 00 ea  b	0x5a1808 <glitch::video::CVertexStreams::setupStreams(glitch::video::SVertexStreamData const*, unsigned int, bool)+0x7c> @ imm = #0x40
005a17c4  10 00 18 e5  ldr	r0, [r8, #-0x10]
005a17c8  10 30 08 e5  str	r3, [r8, #-0x10]
005a17cc  00 00 50 e3  cmp	r0, #0
005a17d0  00 00 00 0a  beq	0x5a17d8 <glitch::video::CVertexStreams::setupStreams(glitch::video::SVertexStreamData const*, unsigned int, bool)+0x4c> @ imm = #0x0
005a17d4  6a ef f5 eb  bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x284258
005a17d8  ff 30 a0 e3  mov	r3, #255
005a17dc  0c a0 08 e5  str	r10, [r8, #-0xc]
005a17e0  b6 30 48 e1  strh	r3, [r8, #-6]
005a17e4  b4 a0 48 e1  strh	r10, [r8, #-4]
005a17e8  b2 a0 48 e1  strh	r10, [r8, #-2]
005a17ec  04 00 a0 e1  mov	r0, r4
005a17f0  0b 10 a0 e1  mov	r1, r11
005a17f4  00 fd ff eb  bl	0x5a0bfc <glitch::video::CVertexStreams::updateHomogeneityInternal(bool)> @ imm = #-0xc00
005a17f8  08 00 55 e1  cmp	r5, r8
005a17fc  1b 00 00 0a  beq	0x5a1870 <glitch::video::CVertexStreams::setupStreams(glitch::video::SVertexStreamData const*, unsigned int, bool)+0xe4> @ imm = #0x6c
005a1800  10 60 86 e2  add	r6, r6, #16
005a1804  10 80 88 e2  add	r8, r8, #16
005a1808  b8 30 58 e1  ldrh	r3, [r8, #-8]
005a180c  19 33 17 e0  ands	r3, r7, r9, lsl r3
005a1810  eb ff ff 0a  beq	0x5a17c4 <glitch::video::CVertexStreams::setupStreams(glitch::video::SVertexStreamData const*, unsigned int, bool)+0x38> @ imm = #-0x54
005a1814  00 30 96 e5  ldr	r3, [r6]
005a1818  00 00 53 e3  cmp	r3, #0
005a181c  04 20 93 15  ldrne	r2, [r3, #0x4]
005a1820  01 20 82 12  addne	r2, r2, #1
005a1824  04 20 83 15  strne	r2, [r3, #0x4]
005a1828  10 00 18 e5  ldr	r0, [r8, #-0x10]
005a182c  10 30 08 e5  str	r3, [r8, #-0x10]
005a1830  00 00 50 e3  cmp	r0, #0
005a1834  00 00 00 0a  beq	0x5a183c <glitch::video::CVertexStreams::setupStreams(glitch::video::SVertexStreamData const*, unsigned int, bool)+0xb0> @ imm = #0x0
005a1838  51 ef f5 eb  bl	0x31d584 <glitch::IReferenceCounted::drop() const> @ imm = #-0x2842bc
005a183c  04 30 96 e5  ldr	r3, [r6, #0x4]
005a1840  04 00 a0 e1  mov	r0, r4
005a1844  0b 10 a0 e1  mov	r1, r11
005a1848  0c 30 08 e5  str	r3, [r8, #-0xc]
005a184c  b8 30 d6 e1  ldrh	r3, [r6, #8]
005a1850  b6 30 48 e1  strh	r3, [r8, #-6]
005a1854  bc 30 d6 e1  ldrh	r3, [r6, #12]
005a1858  b4 30 48 e1  strh	r3, [r8, #-4]
005a185c  be 30 d6 e1  ldrh	r3, [r6, #14]
005a1860  b2 30 48 e1  strh	r3, [r8, #-2]
005a1864  e4 fc ff eb  bl	0x5a0bfc <glitch::video::CVertexStreams::updateHomogeneityInternal(bool)> @ imm = #-0xc70
005a1868  08 00 55 e1  cmp	r5, r8
005a186c  e3 ff ff 1a  bne	0x5a1800 <glitch::video::CVertexStreams::setupStreams(glitch::video::SVertexStreamData const*, unsigned int, bool)+0x74> @ imm = #-0x74
005a1870  07 00 a0 e1  mov	r0, r7
005a1874  f8 8f bd e8  pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION gles_setup_vertex_arrays
; ELF VA 0x005b6584; range_size=484; file_offset=0x005b6584; SHA-256=6f2a62d4dcd27b55bde8de4f2c4b15dc237474b8ddef46b64564fd09ad96b4d5
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)
005b6584  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
005b6588  24 40 91 e5  ldr	r4, [r1, #0x24]
005b658c  3c 80 d1 e5  ldrb	r8, [r1, #0x3c]
005b6590  2c d0 4d e2  sub	sp, sp, #44
005b6594  18 00 8d e5  str	r0, [sp, #0x18]
005b6598  88 81 84 e0  add	r8, r4, r8, lsl #3
005b659c  08 00 54 e1  cmp	r4, r8
005b65a0  14 20 8d e5  str	r2, [sp, #0x14]
005b65a4  10 30 8d e5  str	r3, [sp, #0x10]
005b65a8  00 70 a0 03  moveq	r7, #0
005b65ac  4e 00 00 0a  beq	0x5b66ec <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x168> @ imm = #0x138
005b65b0  a4 11 9f e5  ldr	r1, [pc, #0x1a4]        @ 0x5b675c <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x1d8>
005b65b4  a4 21 9f e5  ldr	r2, [pc, #0x1a4]        @ 0x5b6760 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x1dc>
005b65b8  a4 31 9f e5  ldr	r3, [pc, #0x1a4]        @ 0x5b6764 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x1e0>
005b65bc  01 10 8f e0  add	r1, pc, r1
005b65c0  02 20 8f e0  add	r2, pc, r2
005b65c4  03 30 8f e0  add	r3, pc, r3
005b65c8  00 70 a0 e3  mov	r7, #0
005b65cc  15 1e 81 e2  add	r1, r1, #336
005b65d0  33 2e 82 e2  add	r2, r2, #816
005b65d4  15 3e 83 e2  add	r3, r3, #336
005b65d8  20 10 8d e5  str	r1, [sp, #0x20]
005b65dc  1c 20 8d e5  str	r2, [sp, #0x1c]
005b65e0  24 30 8d e5  str	r3, [sp, #0x24]
005b65e4  07 a0 a0 e1  mov	r10, r7
005b65e8  07 c0 a0 e1  mov	r12, r7
005b65ec  1e 00 00 ea  b	0x5b666c <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0xe8> @ imm = #0x78
005b65f0  05 00 5c e1  cmp	r12, r5
005b65f4  03 00 00 0a  beq	0x5b6608 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x84> @ imm = #0xc
005b65f8  18 00 9d e5  ldr	r0, [sp, #0x18]
005b65fc  05 10 a0 e1  mov	r1, r5
005b6600  c3 ff ff eb  bl	0x5b6514 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBuffer(glitch::video::IBuffer*)> @ imm = #-0xf4
005b6604  00 a0 a0 e1  mov	r10, r0
005b6608  ba 30 d9 e1  ldrh	r3, [r9, #10]
005b660c  1c 00 9d e5  ldr	r0, [sp, #0x1c]
005b6610  bc 10 d9 e1  ldrh	r1, [r9, #12]
005b6614  06 00 53 e3  cmp	r3, #6
005b6618  03 21 90 e7  ldr	r2, [r0, r3, lsl #2]
005b661c  00 30 a0 03  moveq	r3, #0
005b6620  04 00 00 0a  beq	0x5b6638 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0xb4> @ imm = #0x10
005b6624  01 30 a0 e3  mov	r3, #1
005b6628  13 bb a0 e1  lsl	r11, r3, r11
005b662c  12 32 db e3  bics	r3, r11, #536870913
005b6630  00 30 a0 03  moveq	r3, #0
005b6634  01 30 a0 13  movne	r3, #1
005b6638  04 c0 99 e5  ldr	r12, [r9, #0x4]
005b663c  be e0 d9 e1  ldrh	lr, [r9, #14]
005b6640  06 00 a0 e1  mov	r0, r6
005b6644  0c c0 8a e0  add	r12, r10, r12
005b6648  08 40 84 e2  add	r4, r4, #8
005b664c  04 c0 8d e5  str	r12, [sp, #0x4]
005b6650  00 e0 8d e5  str	lr, [sp]
005b6654  85 61 f5 eb  bl	0x30ec70 <glVertexAttribPointer@plt> @ imm = #-0x2a79ec
005b6658  01 30 a0 e3  mov	r3, #1
005b665c  08 00 54 e1  cmp	r4, r8
005b6660  13 76 87 e1  orr	r7, r7, r3, lsl r6
005b6664  05 c0 a0 e1  mov	r12, r5
005b6668  1f 00 00 0a  beq	0x5b66ec <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x168> @ imm = #0x7c
005b666c  b4 b0 d4 e1  ldrh	r11, [r4, #4]
005b6670  10 00 9d e5  ldr	r0, [sp, #0x10]
005b6674  b6 60 d4 e1  ldrh	r6, [r4, #6]
005b6678  0b 30 d0 e7  ldrb	r3, [r0, r11]
005b667c  ff 00 53 e3  cmp	r3, #255
005b6680  2b 00 00 0a  beq	0x5b6734 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x1b0> @ imm = #0xac
005b6684  14 00 9d e5  ldr	r0, [sp, #0x14]
005b6688  14 90 80 e2  add	r9, r0, #20
005b668c  03 52 99 e7  ldr	r5, [r9, r3, lsl #4]
005b6690  03 92 89 e0  add	r9, r9, r3, lsl #4
005b6694  00 00 55 e3  cmp	r5, #0
005b6698  05 00 00 0a  beq	0x5b66b4 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x130> @ imm = #0x14
005b669c  11 30 d5 e5  ldrb	r3, [r5, #0x11]
005b66a0  04 00 53 e3  cmp	r3, #4
005b66a4  d1 ff ff 1a  bne	0x5b65f0 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x6c> @ imm = #-0xbc
005b66a8  08 30 95 e5  ldr	r3, [r5, #0x8]
005b66ac  00 00 53 e3  cmp	r3, #0
005b66b0  ce ff ff 1a  bne	0x5b65f0 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x6c> @ imm = #-0xc8
005b66b4  20 30 9d e5  ldr	r3, [sp, #0x20]
005b66b8  0b 12 93 e7  ldr	r1, [r3, r11, lsl #4]
005b66bc  0b 02 83 e0  add	r0, r3, r11, lsl #4
005b66c0  0c e0 90 e5  ldr	lr, [r0, #0xc]
005b66c4  04 20 90 e5  ldr	r2, [r0, #0x4]
005b66c8  08 30 90 e5  ldr	r3, [r0, #0x8]
005b66cc  08 40 84 e2  add	r4, r4, #8
005b66d0  06 00 a0 e1  mov	r0, r6
005b66d4  0c c0 8d e5  str	r12, [sp, #0xc]
005b66d8  00 e0 8d e5  str	lr, [sp]
005b66dc  a9 60 f5 eb  bl	0x30e988 <glVertexAttrib4f@plt> @ imm = #-0x2a7d5c
005b66e0  08 00 54 e1  cmp	r4, r8
005b66e4  0c c0 9d e5  ldr	r12, [sp, #0xc]
005b66e8  df ff ff 1a  bne	0x5b666c <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0xe8> @ imm = #-0x84
005b66ec  18 00 9d e5  ldr	r0, [sp, #0x18]
005b66f0  70 52 90 e5  ldr	r5, [r0, #0x270]
005b66f4  05 50 37 e0  eors	r5, r7, r5
005b66f8  13 00 00 0a  beq	0x5b674c <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x1c8> @ imm = #0x4c
005b66fc  00 40 a0 e3  mov	r4, #0
005b6700  01 80 a0 e3  mov	r8, #1
005b6704  18 64 a0 e1  lsl	r6, r8, r4
005b6708  05 00 16 e1  tst	r6, r5
005b670c  04 00 00 0a  beq	0x5b6724 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x1a0> @ imm = #0x10
005b6710  07 00 16 e1  tst	r6, r7
005b6714  04 00 a0 e1  mov	r0, r4
005b6718  09 00 00 0a  beq	0x5b6744 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x1c0> @ imm = #0x24
005b671c  ed 5d f5 eb  bl	0x30ded8 <glEnableVertexAttribArray@plt> @ imm = #-0x2a884c
005b6720  06 50 c5 e1  bic	r5, r5, r6
005b6724  00 00 55 e3  cmp	r5, #0
005b6728  07 00 00 0a  beq	0x5b674c <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x1c8> @ imm = #0x1c
005b672c  01 40 84 e2  add	r4, r4, #1
005b6730  f3 ff ff ea  b	0x5b6704 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x180> @ imm = #-0x34
005b6734  24 20 9d e5  ldr	r2, [sp, #0x24]
005b6738  0b 02 82 e0  add	r0, r2, r11, lsl #4
005b673c  0b 12 92 e7  ldr	r1, [r2, r11, lsl #4]
005b6740  de ff ff ea  b	0x5b66c0 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x13c> @ imm = #-0x88
005b6744  6a 61 f5 eb  bl	0x30ecf4 <glDisableVertexAttribArray@plt> @ imm = #-0x2a7a58
005b6748  f4 ff ff ea  b	0x5b6720 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)+0x19c> @ imm = #-0x30
005b674c  18 20 9d e5  ldr	r2, [sp, #0x18]
005b6750  70 72 82 e5  str	r7, [r2, #0x270]
005b6754  2c d0 8d e2  add	sp, sp, #44
005b6758  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
005b675c  78 9a 32 00  .word	0x00329a78
005b6760  74 9a 32 00  .word	0x00329a74
005b6764  70 9a 32 00  .word	0x00329a70

; FUNCTION mesh_draw_mesh_buffer
; ELF VA 0x0035ebd0; range_size=96; file_offset=0x0035ebd0; SHA-256=a3231d4e55f82fef057c82464d5b2193f4b82ed21bb1dd76b2ede928531731ec
; alias: _ZN6glitch5video12IVideoDriver14drawMeshBufferERKN5boost13intrusive_ptrIKNS_5scene11CMeshBufferEEE
; demangled: glitch::video::IVideoDriver::drawMeshBuffer(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
0035ebd0  10 40 2d e9  push	{r4, lr}
0035ebd4  00 20 91 e5  ldr	r2, [r1]
0035ebd8  10 d0 4d e2  sub	sp, sp, #16
0035ebdc  00 00 52 e3  cmp	r2, #0
0035ebe0  10 00 00 0a  beq	0x35ec28 <glitch::video::IVideoDriver::drawMeshBuffer(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)+0x58> @ imm = #0x40
0035ebe4  14 30 92 e5  ldr	r3, [r2, #0x14]
0035ebe8  00 c0 90 e5  ldr	r12, [r0]
0035ebec  0c 40 8d e2  add	r4, sp, #12
0035ebf0  00 00 53 e3  cmp	r3, #0
0035ebf4  58 c0 9c e5  ldr	r12, [r12, #0x58]
0035ebf8  0c 30 8d e5  str	r3, [sp, #0xc]
0035ebfc  00 20 93 15  ldrne	r2, [r3]
0035ec00  01 20 82 12  addne	r2, r2, #1
0035ec04  00 20 83 15  strne	r2, [r3]
0035ec08  00 20 91 15  ldrne	r2, [r1]
0035ec0c  00 10 8d e5  str	r1, [sp]
0035ec10  04 10 a0 e1  mov	r1, r4
0035ec14  30 30 82 e2  add	r3, r2, #48
0035ec18  18 20 82 e2  add	r2, r2, #24
0035ec1c  3c ff 2f e1  blx	r12
0035ec20  04 00 a0 e1  mov	r0, r4
0035ec24  d9 ff ff eb  bl	0x35eb90 <boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr()> @ imm = #-0x9c
0035ec28  10 d0 8d e2  add	sp, sp, #16
0035ec2c  10 80 bd e8  pop	{r4, pc}

; FUNCTION driver_draw_mesh_buffer
; ELF VA 0x005adfa8; range_size=56; file_offset=0x005adfa8; SHA-256=8759f549895af320ff70cdb172a6bfd4a847471f05422d6ce48fee0240d3c816
; alias: _ZN6glitch5video12IVideoDriver4drawERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingERKNS3_IKNS_5scene11CMeshBufferEEE
; demangled: glitch::video::IVideoDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**, boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
005adfa8  10 40 2d e9  push	{r4, lr}
005adfac  08 c0 92 e5  ldr	r12, [r2, #0x8]
005adfb0  00 40 a0 e1  mov	r4, r0
005adfb4  00 00 5c e3  cmp	r12, #0
005adfb8  05 00 00 0a  beq	0x5adfd4 <glitch::video::IVideoDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**, boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)+0x2c> @ imm = #0x14
005adfbc  88 c0 90 e5  ldr	r12, [r0, #0x88]
005adfc0  01 0c 1c e3  tst	r12, #256
005adfc4  03 00 00 1a  bne	0x5adfd8 <glitch::video::IVideoDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**, boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)+0x30> @ imm = #0xc
005adfc8  00 c0 90 e5  ldr	r12, [r0]
005adfcc  0f e0 a0 e1  mov	lr, pc
005adfd0  00 f2 9c e5  ldr	pc, [r12, #0x200]
005adfd4  10 80 bd e8  pop	{r4, pc}
005adfd8  10 40 bd e8  pop	{r4, lr}
005adfdc  ef fe ff ea  b	0x5adba0 <glitch::video::IVideoDriver::appendBatch(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)> @ imm = #-0x444

; FUNCTION gles_driver_draw_impl
; ELF VA 0x005b8bc8; range_size=448; file_offset=0x005b8bc8; SHA-256=dfcb26685c696eaf6be64f6c911ed5adb7b12dd5ad0911a489b3e7c9bf899363
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8drawImplERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)
005b8bc8  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
005b8bcc  ac c1 9f e5  ldr	r12, [pc, #0x1ac]       @ 0x5b8d80 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)+0x1b8>
005b8bd0  38 31 90 e5  ldr	r3, [r0, #0x138]
005b8bd4  00 40 a0 e1  mov	r4, r0
005b8bd8  a0 00 90 e5  ldr	r0, [r0, #0xa0]
005b8bdc  02 30 83 e3  orr	r3, r3, #2
005b8be0  1c d0 4d e2  sub	sp, sp, #28
005b8be4  0c c0 8f e0  add	r12, pc, r12
005b8be8  01 00 50 e3  cmp	r0, #1
005b8bec  38 31 84 e5  str	r3, [r4, #0x138]
005b8bf0  10 c0 8d e5  str	r12, [sp, #0x10]
005b8bf4  08 10 8d e5  str	r1, [sp, #0x8]
005b8bf8  80 30 94 05  ldreq	r3, [r4, #0x80]
005b8bfc  7c 30 94 15  ldrne	r3, [r4, #0x7c]
005b8c00  02 90 a0 e1  mov	r9, r2
005b8c04  01 30 83 02  addeq	r3, r3, #1
005b8c08  02 20 a0 13  movne	r2, #2
005b8c0c  01 30 83 12  addne	r3, r3, #1
005b8c10  09 00 a0 e1  mov	r0, r9
005b8c14  80 30 84 05  streq	r3, [r4, #0x80]
005b8c18  a0 20 84 15  strne	r2, [r4, #0xa0]
005b8c1c  7c 30 84 15  strne	r3, [r4, #0x7c]
005b8c20  78 50 94 e5  ldr	r5, [r4, #0x78]
005b8c24  b5 9d ff eb  bl	0x5a0300 <glitch::video::CPrimitiveStream::getPrimitiveCount() const> @ imm = #-0x1892c
005b8c28  05 00 80 e0  add	r0, r0, r5
005b8c2c  78 00 84 e5  str	r0, [r4, #0x78]
005b8c30  00 10 99 e5  ldr	r1, [r9]
005b8c34  04 00 a0 e1  mov	r0, r4
005b8c38  35 f6 ff eb  bl	0x5b6514 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBuffer(glitch::video::IBuffer*)> @ imm = #-0x272c
005b8c3c  0c 00 8d e5  str	r0, [sp, #0xc]
005b8c40  ec 20 94 e5  ldr	r2, [r4, #0xec]
005b8c44  f8 30 d4 e5  ldrb	r3, [r4, #0xf8]
005b8c48  0c 10 a0 e3  mov	r1, #12
005b8c4c  04 20 92 e5  ldr	r2, [r2, #0x4]
005b8c50  18 20 92 e5  ldr	r2, [r2, #0x18]
005b8c54  91 23 23 e0  mla	r3, r1, r3, r2
005b8c58  04 b0 d3 e5  ldrb	r11, [r3, #0x4]
005b8c5c  00 00 5b e3  cmp	r11, #0
005b8c60  01 80 a0 03  moveq	r8, #1
005b8c64  1e 00 00 0a  beq	0x5b8ce4 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)+0x11c> @ imm = #0x78
005b8c68  14 11 9f e5  ldr	r1, [pc, #0x114]        @ 0x5b8d84 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)+0x1bc>
005b8c6c  00 50 a0 e3  mov	r5, #0
005b8c70  01 80 a0 e3  mov	r8, #1
005b8c74  14 10 8d e5  str	r1, [sp, #0x14]
005b8c78  05 a0 a0 e1  mov	r10, r5
005b8c7c  e8 70 94 e5  ldr	r7, [r4, #0xe8]
005b8c80  08 20 9d e5  ldr	r2, [sp, #0x8]
005b8c84  00 00 57 e3  cmp	r7, #0
005b8c88  00 60 92 e5  ldr	r6, [r2]
005b8c8c  1a 00 00 0a  beq	0x5b8cfc <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)+0x134> @ imm = #0x68
005b8c90  05 71 97 e7  ldr	r7, [r7, r5, lsl #2]
005b8c94  04 70 87 e2  add	r7, r7, #4
005b8c98  0a 10 a0 e1  mov	r1, r10
005b8c9c  06 20 a0 e1  mov	r2, r6
005b8ca0  07 30 a0 e1  mov	r3, r7
005b8ca4  04 00 a0 e1  mov	r0, r4
005b8ca8  b7 ff ff eb  bl	0x5b8b8c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitPassParameters(unsigned char, glitch::video::CVertexStreams const*, unsigned char const*)> @ imm = #-0x124
005b8cac  04 00 a0 e1  mov	r0, r4
005b8cb0  06 20 a0 e1  mov	r2, r6
005b8cb4  07 30 a0 e1  mov	r3, r7
005b8cb8  f4 10 94 e5  ldr	r1, [r4, #0xf4]
005b8cbc  30 f6 ff eb  bl	0x5b6584 <glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)> @ imm = #-0x2740
005b8cc0  09 00 a0 e1  mov	r0, r9
005b8cc4  e4 11 94 e5  ldr	r1, [r4, #0x1e4]
005b8cc8  0c 20 9d e5  ldr	r2, [sp, #0xc]
005b8ccc  3d df ff eb  bl	0x5b09c8 <bool glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, unsigned char const*)> @ imm = #-0x830c
005b8cd0  01 50 85 e2  add	r5, r5, #1
005b8cd4  75 a0 ef e6  uxtb	r10, r5
005b8cd8  0a 00 5b e1  cmp	r11, r10
005b8cdc  08 80 00 e0  and	r8, r0, r8
005b8ce0  e5 ff ff 8a  bhi	0x5b8c7c <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)+0xb4> @ imm = #-0x6c
005b8ce4  38 31 94 e5  ldr	r3, [r4, #0x138]
005b8ce8  08 00 a0 e1  mov	r0, r8
005b8cec  02 30 c3 e3  bic	r3, r3, #2
005b8cf0  38 31 84 e5  str	r3, [r4, #0x138]
005b8cf4  1c d0 8d e2  add	sp, sp, #28
005b8cf8  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
005b8cfc  10 10 9d e5  ldr	r1, [sp, #0x10]
005b8d00  14 c0 9d e5  ldr	r12, [sp, #0x14]
005b8d04  1e 20 a0 e3  mov	r2, #30
005b8d08  0c 30 91 e7  ldr	r3, [r1, r12]
005b8d0c  ff 10 a0 e3  mov	r1, #255
005b8d10  03 00 a0 e1  mov	r0, r3
005b8d14  04 30 8d e5  str	r3, [sp, #0x4]
005b8d18  d0 55 f5 eb  bl	0x30e460 <memset@plt>   @ imm = #-0x2aa8c0
005b8d1c  10 20 96 e5  ldr	r2, [r6, #0x10]
005b8d20  14 10 86 e2  add	r1, r6, #20
005b8d24  04 30 9d e5  ldr	r3, [sp, #0x4]
005b8d28  01 00 52 e1  cmp	r2, r1
005b8d2c  0f 00 00 0a  beq	0x5b8d70 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)+0x1a8> @ imm = #0x3c
005b8d30  24 10 86 e2  add	r1, r6, #36
005b8d34  02 00 61 e0  rsb	r0, r1, r2
005b8d38  0f 00 c0 e3  bic	r0, r0, #15
005b8d3c  07 20 a0 e1  mov	r2, r7
005b8d40  10 00 80 e2  add	r0, r0, #16
005b8d44  03 70 a0 e1  mov	r7, r3
005b8d48  bc 31 d6 e1  ldrh	r3, [r6, #28]
005b8d4c  42 12 a0 e1  asr	r1, r2, #4
005b8d50  10 20 82 e2  add	r2, r2, #16
005b8d54  00 00 52 e1  cmp	r2, r0
005b8d58  07 10 c3 e7  strb	r1, [r3, r7]
005b8d5c  10 60 86 e2  add	r6, r6, #16
005b8d60  f8 ff ff 1a  bne	0x5b8d48 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)+0x180> @ imm = #-0x20
005b8d64  08 30 9d e5  ldr	r3, [sp, #0x8]
005b8d68  00 60 93 e5  ldr	r6, [r3]
005b8d6c  c9 ff ff ea  b	0x5b8c98 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)+0xd0> @ imm = #-0xdc
005b8d70  08 20 9d e5  ldr	r2, [sp, #0x8]
005b8d74  03 70 a0 e1  mov	r7, r3
005b8d78  00 60 92 e5  ldr	r6, [r2]
005b8d7c  c5 ff ff ea  b	0x5b8c98 <glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)+0xd0> @ imm = #-0xec
005b8d80  ac be 3d 00  .word	0x003dbeac
005b8d84  b8 39 00 00  .word	0x000039b8

; FUNCTION draw_primitives
; ELF VA 0x005b09c8; range_size=212; file_offset=0x005b09c8; SHA-256=b3d74f710f772035cc917c97bdcaa01168c008fc2b6ae04028d0eef025c2f11f
; alias: _ZN6glitch5video6detail14drawPrimitivesINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEEEbRKNS0_16CPrimitiveStreamENS0_14E_POLYGON_MODEEPKh
; demangled: bool glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, unsigned char const*)
005b09c8  70 40 2d e9  push	{r4, r5, r6, lr}
005b09cc  00 40 90 e5  ldr	r4, [r0]
005b09d0  00 c0 a0 e1  mov	r12, r0
005b09d4  01 50 a0 e1  mov	r5, r1
005b09d8  00 00 54 e3  cmp	r4, #0
005b09dc  14 00 00 0a  beq	0x5b0a34 <bool glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, unsigned char const*)+0x6c> @ imm = #0x50
005b09e0  00 00 51 e3  cmp	r1, #0
005b09e4  04 30 90 e5  ldr	r3, [r0, #0x4]
005b09e8  21 00 00 1a  bne	0x5b0a74 <bool glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, unsigned char const*)+0xac> @ imm = #0x84
005b09ec  b6 11 d0 e1  ldrh	r1, [r0, #22]
005b09f0  08 00 51 e3  cmp	r1, #8
005b09f4  0b 00 00 0a  beq	0x5b0a28 <bool glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, unsigned char const*)+0x60> @ imm = #0x2c
005b09f8  94 00 9f e5  ldr	r0, [pc, #0x94]         @ 0x5b0a94 <bool glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, unsigned char const*)+0xcc>
005b09fc  b4 e1 dc e1  ldrh	lr, [r12, #20]
005b0a00  03 30 82 e0  add	r3, r2, r3
005b0a04  00 00 8f e0  add	r0, pc, r0
005b0a08  e0 20 80 e2  add	r2, r0, #224
005b0a0c  ec 00 80 e2  add	r0, r0, #236
005b0a10  01 01 90 e7  ldr	r0, [r0, r1, lsl #2]
005b0a14  0e 21 92 e7  ldr	r2, [r2, lr, lsl #2]
005b0a18  08 10 9c e5  ldr	r1, [r12, #0x8]
005b0a1c  ec 76 f5 eb  bl	0x30e5d4 <glDrawElements@plt> @ imm = #-0x2a2450
005b0a20  01 00 a0 e3  mov	r0, #1
005b0a24  70 80 bd e8  pop	{r4, r5, r6, pc}
005b0a28  08 10 94 e5  ldr	r1, [r4, #0x8]
005b0a2c  70 40 bd e8  pop	{r4, r5, r6, lr}
005b0a30  4d ff ff ea  b	0x5b076c <bool glitch::video::detail::drawIndexedSoftQuads<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&, void const*)> @ imm = #-0x2cc
005b0a34  00 00 51 e3  cmp	r1, #0
005b0a38  10 00 00 1a  bne	0x5b0a80 <bool glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, unsigned char const*)+0xb8> @ imm = #0x40
005b0a3c  b6 31 dc e1  ldrh	r3, [r12, #22]
005b0a40  08 00 53 e3  cmp	r3, #8
005b0a44  0f 00 00 0a  beq	0x5b0a88 <bool glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, unsigned char const*)+0xc0> @ imm = #0x3c
005b0a48  07 00 53 e3  cmp	r3, #7
005b0a4c  0d 00 00 0a  beq	0x5b0a88 <bool glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, unsigned char const*)+0xc0> @ imm = #0x34
005b0a50  40 00 9f e5  ldr	r0, [pc, #0x40]         @ 0x5b0a98 <bool glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, unsigned char const*)+0xd0>
005b0a54  08 20 9c e5  ldr	r2, [r12, #0x8]
005b0a58  0c 10 9c e5  ldr	r1, [r12, #0xc]
005b0a5c  00 00 8f e0  add	r0, pc, r0
005b0a60  ec 00 80 e2  add	r0, r0, #236
005b0a64  03 01 90 e7  ldr	r0, [r0, r3, lsl #2]
005b0a68  cf 74 f5 eb  bl	0x30ddac <glDrawArrays@plt> @ imm = #-0x2a2cc4
005b0a6c  01 00 a0 e3  mov	r0, #1
005b0a70  70 80 bd e8  pop	{r4, r5, r6, pc}
005b0a74  08 20 94 e5  ldr	r2, [r4, #0x8]
005b0a78  70 40 bd e8  pop	{r4, r5, r6, lr}
005b0a7c  ed fe ff ea  b	0x5b0638 <bool glitch::video::detail::drawIndexedSoftPolygonMode<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, void const*)> @ imm = #-0x44c
005b0a80  70 40 bd e8  pop	{r4, r5, r6, lr}
005b0a84  59 ff ff ea  b	0x5b07f0 <bool glitch::video::detail::drawUnindexedSoftPolygonMode<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE)> @ imm = #-0x29c
005b0a88  0c 00 a0 e1  mov	r0, r12
005b0a8c  70 40 bd e8  pop	{r4, r5, r6, lr}
005b0a90  94 ff ff ea  b	0x5b08e8 <bool glitch::video::detail::drawUnindexedSoftQuads<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&)> @ imm = #-0x1b0
005b0a94  30 f6 32 00  .word	0x0032f630
005b0a98  d8 f5 32 00  .word	0x0032f5d8

