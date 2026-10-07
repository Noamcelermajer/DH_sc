; Extracted from recovery assembly listings; selected function bytes are verified against the APK ELF by hash manifest.

; FUNCTION 0x00657894, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManagerC2EPNS_7IDeviceE
; demangled: glitch::collada::CResFileManager::CResFileManager(glitch::IDevice*)
; decoder-mode: arm
00657894  68 20 9f e5                                      ldr r2, [pc, #0x68]
00657898  68 30 9f e5                                      ldr r3, [pc, #0x68]
0065789c  68 c0 9f e5                                      ldr ip, [pc, #0x68]
006578a0  02 20 8f e0                                      add r2, pc, r2
006578a4  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
006578a8  03 70 92 e7                                      ldr r7, [r2, r3]
006578ac  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
006578b0  0c c0 92 e7                                      ldr ip, [r2, ip]
006578b4  00 40 a0 e3                                      mov r4, #0
006578b8  03 60 92 e7                                      ldr r6, [r2, r3]
006578bc  00 50 a0 e1                                      mov r5, r0
006578c0  08 80 8c e2                                      add r8, ip, #8
006578c4  01 c0 a0 e3                                      mov ip, #1
006578c8  00 11 80 e8                                      stm r0, {r8, ip}
006578cc  0c 40 80 e5                                      str r4, [r0, #0xc]
006578d0  08 40 e5 e5                                      strb r4, [r5, #8]!
006578d4  14 50 80 e5                                      str r5, [r0, #0x14]
006578d8  20 10 80 e5                                      str r1, [r0, #0x20]
006578dc  24 70 80 e5                                      str r7, [r0, #0x24]
006578e0  29 40 c0 e5                                      strb r4, [r0, #0x29]
006578e4  2b c0 c0 e5                                      strb ip, [r0, #0x2b]
006578e8  10 50 80 e5                                      str r5, [r0, #0x10]
006578ec  18 40 80 e5                                      str r4, [r0, #0x18]
006578f0  28 c0 c0 e5                                      strb ip, [r0, #0x28]
006578f4  2a c0 c0 e5                                      strb ip, [r0, #0x2a]
006578f8  00 00 86 e5                                      str r0, [r6]
006578fc  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
00657900  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00657904  f0 d1 33 00 ec 1b 00 00 58 22 00 00 48 44 00 00  .byte 0xf0, 0xd1, 0x33, 0x00, 0xec, 0x1b, 0x00, 0x00, 0x58, 0x22, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x00657914, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManagerC1EPNS_7IDeviceE
; demangled: glitch::collada::CResFileManager::CResFileManager(glitch::IDevice*)
; decoder-mode: arm
00657914  68 20 9f e5                                      ldr r2, [pc, #0x68]
00657918  68 30 9f e5                                      ldr r3, [pc, #0x68]
0065791c  68 c0 9f e5                                      ldr ip, [pc, #0x68]
00657920  02 20 8f e0                                      add r2, pc, r2
00657924  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
00657928  03 70 92 e7                                      ldr r7, [r2, r3]
0065792c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00657930  0c c0 92 e7                                      ldr ip, [r2, ip]
00657934  00 40 a0 e3                                      mov r4, #0
00657938  03 60 92 e7                                      ldr r6, [r2, r3]
0065793c  00 50 a0 e1                                      mov r5, r0
00657940  08 80 8c e2                                      add r8, ip, #8
00657944  01 c0 a0 e3                                      mov ip, #1
00657948  00 11 80 e8                                      stm r0, {r8, ip}
0065794c  0c 40 80 e5                                      str r4, [r0, #0xc]
00657950  08 40 e5 e5                                      strb r4, [r5, #8]!
00657954  14 50 80 e5                                      str r5, [r0, #0x14]
00657958  20 10 80 e5                                      str r1, [r0, #0x20]
0065795c  24 70 80 e5                                      str r7, [r0, #0x24]
00657960  29 40 c0 e5                                      strb r4, [r0, #0x29]
00657964  2b c0 c0 e5                                      strb ip, [r0, #0x2b]
00657968  10 50 80 e5                                      str r5, [r0, #0x10]
0065796c  18 40 80 e5                                      str r4, [r0, #0x18]
00657970  28 c0 c0 e5                                      strb ip, [r0, #0x28]
00657974  2a c0 c0 e5                                      strb ip, [r0, #0x2a]
00657978  00 00 86 e5                                      str r0, [r6]
0065797c  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
00657980  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00657984  70 d1 33 00 ec 1b 00 00 58 22 00 00 48 44 00 00  .byte 0x70, 0xd1, 0x33, 0x00, 0xec, 0x1b, 0x00, 0x00, 0x58, 0x22, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x006582c4, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManagerD1Ev
; demangled: glitch::collada::CResFileManager::~CResFileManager()
; decoder-mode: arm
006582c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006582c8  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
006582cc  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
006582d0  10 60 90 e5                                      ldr r6, [r0, #0x10]
006582d4  07 70 8f e0                                      add r7, pc, r7
006582d8  03 30 97 e7                                      ldr r3, [r7, r3]
006582dc  00 50 a0 e1                                      mov r5, r0
006582e0  08 40 80 e2                                      add r4, r0, #8
006582e4  08 30 83 e2                                      add r3, r3, #8
006582e8  00 30 80 e5                                      str r3, [r0]
006582ec  06 00 54 e1                                      cmp r4, r6
006582f0  0c 00 00 0a                                      beq #0x658328
006582f4  28 00 96 e5                                      ldr r0, [r6, #0x28]
006582f8  a1 14 f3 eb                                      bl #0x31d584
006582fc  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00658300  00 00 52 e3                                      cmp r2, #0
00658304  01 00 00 1a                                      bne #0x658310
00658308  16 00 00 ea                                      b #0x658368
0065830c  03 20 a0 e1                                      mov r2, r3
00658310  08 30 92 e5                                      ldr r3, [r2, #8]
00658314  00 00 53 e3                                      cmp r3, #0
00658318  fb ff ff 1a                                      bne #0x65830c
0065831c  02 60 a0 e1                                      mov r6, r2
00658320  06 00 54 e1                                      cmp r4, r6
00658324  f2 ff ff 1a                                      bne #0x6582f4
00658328  74 30 9f e5                                      ldr r3, [pc, #0x74]
0065832c  00 60 a0 e3                                      mov r6, #0
00658330  03 30 97 e7                                      ldr r3, [r7, r3]
00658334  00 60 83 e5                                      str r6, [r3]
00658338  18 30 95 e5                                      ldr r3, [r5, #0x18]
0065833c  06 00 53 e1                                      cmp r3, r6
00658340  06 00 00 0a                                      beq #0x658360
00658344  04 00 a0 e1                                      mov r0, r4
00658348  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0065834c  c7 ff ff eb                                      bl #0x658270
00658350  14 40 85 e5                                      str r4, [r5, #0x14]
00658354  18 60 85 e5                                      str r6, [r5, #0x18]
00658358  10 40 85 e5                                      str r4, [r5, #0x10]
0065835c  0c 60 85 e5                                      str r6, [r5, #0xc]
00658360  05 00 a0 e1                                      mov r0, r5
00658364  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00658368  04 30 96 e5                                      ldr r3, [r6, #4]
0065836c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00658370  01 00 56 e1                                      cmp r6, r1
00658374  05 00 00 1a                                      bne #0x658390
00658378  03 60 a0 e1                                      mov r6, r3
0065837c  04 30 93 e5                                      ldr r3, [r3, #4]
00658380  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00658384  02 00 56 e1                                      cmp r6, r2
00658388  fa ff ff 0a                                      beq #0x658378
0065838c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00658390  03 00 52 e1                                      cmp r2, r3
00658394  03 60 a0 11                                      movne r6, r3
00658398  d3 ff ff ea                                      b #0x6582ec
; mapping-symbol data/literal pool
0065839c  bc c7 33 00 58 22 00 00 48 44 00 00              .byte 0xbc, 0xc7, 0x33, 0x00, 0x58, 0x22, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x0065a9a8, declared_size=692, range_size=692, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager3getEPKcb
; demangled: glitch::collada::CResFileManager::get(char const*, bool)
; decoder-mode: arm
0065a9a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065a9ac  88 42 9f e5                                      ldr r4, [pc, #0x288]
0065a9b0  88 b2 9f e5                                      ldr fp, [pc, #0x288]
0065a9b4  88 92 9f e5                                      ldr sb, [pc, #0x288]
0065a9b8  04 40 8f e0                                      add r4, pc, r4
0065a9bc  0b c0 94 e7                                      ldr ip, [r4, fp]
0065a9c0  09 30 94 e7                                      ldr r3, [r4, sb]
0065a9c4  5c d0 4d e2                                      sub sp, sp, #0x5c
0065a9c8  00 c0 9c e5                                      ldr ip, [ip]
0065a9cc  00 30 93 e5                                      ldr r3, [r3]
0065a9d0  00 60 a0 e1                                      mov r6, r0
0065a9d4  54 c0 8d e5                                      str ip, [sp, #0x54]
0065a9d8  28 00 d3 e5                                      ldrb r0, [r3, #0x28]
0065a9dc  24 50 8d e2                                      add r5, sp, #0x24
0065a9e0  3c 70 8d e2                                      add r7, sp, #0x3c
0065a9e4  04 00 8d e5                                      str r0, [sp, #4]
0065a9e8  00 00 a0 e3                                      mov r0, #0
0065a9ec  28 00 c3 e5                                      strb r0, [r3, #0x28]
0065a9f0  20 30 96 e5                                      ldr r3, [r6, #0x20]
0065a9f4  08 20 8d e5                                      str r2, [sp, #8]
0065a9f8  05 00 a0 e1                                      mov r0, r5
0065a9fc  34 80 93 e5                                      ldr r8, [r3, #0x34]
0065aa00  20 20 8d e2                                      add r2, sp, #0x20
0065aa04  00 30 98 e5                                      ldr r3, [r8]
0065aa08  0c 10 8d e5                                      str r1, [sp, #0xc]
0065aa0c  34 a0 93 e5                                      ldr sl, [r3, #0x34]
0065aa10  89 2d f3 eb                                      bl #0x32603c
0065aa14  07 00 a0 e1                                      mov r0, r7
0065aa18  08 10 a0 e1                                      mov r1, r8
0065aa1c  05 20 a0 e1                                      mov r2, r5
0065aa20  3a ff 2f e1                                      blx sl
0065aa24  38 00 9d e5                                      ldr r0, [sp, #0x38]
0065aa28  05 00 50 e1                                      cmp r0, r5
0065aa2c  02 00 00 0a                                      beq #0x65aa3c
0065aa30  00 00 50 e3                                      cmp r0, #0
0065aa34  00 00 00 0a                                      beq #0x65aa3c
0065aa38  84 d6 f2 eb                                      bl #0x310450
0065aa3c  50 30 9d e5                                      ldr r3, [sp, #0x50]
0065aa40  58 10 8d e2                                      add r1, sp, #0x58
0065aa44  08 50 86 e2                                      add r5, r6, #8
0065aa48  3c 30 21 e5                                      str r3, [r1, #-0x3c]!
0065aa4c  05 00 a0 e1                                      mov r0, r5
0065aa50  d1 fc ff eb                                      bl #0x659d9c
0065aa54  05 00 50 e1                                      cmp r0, r5
0065aa58  00 80 a0 e1                                      mov r8, r0
0065aa5c  2b 00 00 0a                                      beq #0x65ab10
0065aa60  50 30 9d e5                                      ldr r3, [sp, #0x50]
0065aa64  58 10 8d e2                                      add r1, sp, #0x58
0065aa68  05 00 a0 e1                                      mov r0, r5
0065aa6c  44 30 21 e5                                      str r3, [r1, #-0x44]!
0065aa70  d5 fe ff eb                                      bl #0x65a5cc
0065aa74  00 50 90 e5                                      ldr r5, [r0]
0065aa78  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
0065aa7c  24 20 95 e5                                      ldr r2, [r5, #0x24]
0065aa80  03 10 94 e7                                      ldr r1, [r4, r3]
0065aa84  c0 31 9f e5                                      ldr r3, [pc, #0x1c0]
0065aa88  14 c0 92 e5                                      ldr ip, [r2, #0x14]
0065aa8c  03 30 94 e7                                      ldr r3, [r4, r3]
0065aa90  ac cf a0 e1                                      lsr ip, ip, #0x1f
0065aa94  0c 21 81 e7                                      str r2, [r1, ip, lsl #2]
0065aa98  24 20 95 e5                                      ldr r2, [r5, #0x24]
0065aa9c  ac 11 9f e5                                      ldr r1, [pc, #0x1ac]
0065aaa0  00 00 93 e5                                      ldr r0, [r3]
0065aaa4  10 c0 92 e5                                      ldr ip, [r2, #0x10]
0065aaa8  14 20 92 e5                                      ldr r2, [r2, #0x14]
0065aaac  01 10 94 e7                                      ldr r1, [r4, r1]
0065aab0  0c 01 80 e0                                      add r0, r0, ip, lsl #2
0065aab4  a2 2f a0 e1                                      lsr r2, r2, #0x1f
0065aab8  02 01 81 e7                                      str r0, [r1, r2, lsl #2]
0065aabc  24 20 95 e5                                      ldr r2, [r5, #0x24]
0065aac0  08 20 92 e5                                      ldr r2, [r2, #8]
0065aac4  00 20 83 e5                                      str r2, [r3]
0065aac8  50 00 9d e5                                      ldr r0, [sp, #0x50]
0065aacc  07 00 50 e1                                      cmp r0, r7
0065aad0  02 00 00 0a                                      beq #0x65aae0
0065aad4  00 00 50 e3                                      cmp r0, #0
0065aad8  00 00 00 0a                                      beq #0x65aae0
0065aadc  5b d6 f2 eb                                      bl #0x310450
0065aae0  09 20 94 e7                                      ldr r2, [r4, sb]
0065aae4  04 10 9d e5                                      ldr r1, [sp, #4]
0065aae8  0b 30 94 e7                                      ldr r3, [r4, fp]
0065aaec  00 20 92 e5                                      ldr r2, [r2]
0065aaf0  05 00 a0 e1                                      mov r0, r5
0065aaf4  28 10 c2 e5                                      strb r1, [r2, #0x28]
0065aaf8  54 20 9d e5                                      ldr r2, [sp, #0x54]
0065aafc  00 30 93 e5                                      ldr r3, [r3]
0065ab00  03 00 52 e1                                      cmp r2, r3
0065ab04  41 00 00 1a                                      bne #0x65ac10
0065ab08  5c d0 8d e2                                      add sp, sp, #0x5c
0065ab0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065ab10  08 10 9d e5                                      ldr r1, [sp, #8]
0065ab14  00 00 51 e3                                      cmp r1, #0
0065ab18  01 50 a0 01                                      moveq r5, r1
0065ab1c  e9 ff ff 0a                                      beq #0x65aac8
0065ab20  20 30 96 e5                                      ldr r3, [r6, #0x20]
0065ab24  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0065ab28  34 30 93 e5                                      ldr r3, [r3, #0x34]
0065ab2c  03 00 a0 e1                                      mov r0, r3
0065ab30  00 30 93 e5                                      ldr r3, [r3]
0065ab34  0f e0 a0 e1                                      mov lr, pc
0065ab38  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0065ab3c  00 a0 50 e2                                      subs sl, r0, #0
0065ab40  33 00 00 0a                                      beq #0x65ac14
0065ab44  50 30 9d e5                                      ldr r3, [sp, #0x50]
0065ab48  00 10 a0 e3                                      mov r1, #0
0065ab4c  50 00 a0 e3                                      mov r0, #0x50
0065ab50  00 30 8d e5                                      str r3, [sp]
0065ab54  94 65 fb eb                                      bl #0x5341ac
0065ab58  00 30 9d e5                                      ldr r3, [sp]
0065ab5c  00 50 a0 e1                                      mov r5, r0
0065ab60  0a 20 a0 e1                                      mov r2, sl
0065ab64  03 10 a0 e1                                      mov r1, r3
0065ab68  00 30 a0 e3                                      mov r3, #0
0065ab6c  35 f5 ff eb                                      bl #0x658048
0065ab70  00 00 55 e3                                      cmp r5, #0
0065ab74  09 00 00 0a                                      beq #0x65aba0
0065ab78  50 30 9d e5                                      ldr r3, [sp, #0x50]
0065ab7c  58 10 8d e2                                      add r1, sp, #0x58
0065ab80  08 00 a0 e1                                      mov r0, r8
0065ab84  40 30 21 e5                                      str r3, [r1, #-0x40]!
0065ab88  8f fe ff eb                                      bl #0x65a5cc
0065ab8c  00 50 80 e5                                      str r5, [r0]
0065ab90  24 30 95 e5                                      ldr r3, [r5, #0x24]
0065ab94  14 80 93 e5                                      ldr r8, [r3, #0x14]
0065ab98  00 00 58 e3                                      cmp r8, #0
0065ab9c  02 00 00 0a                                      beq #0x65abac
0065aba0  0a 00 a0 e1                                      mov r0, sl
0065aba4  76 0a f3 eb                                      bl #0x31d584
0065aba8  c6 ff ff ea                                      b #0x65aac8
0065abac  0a 10 a0 e1                                      mov r1, sl
0065abb0  06 00 a0 e1                                      mov r0, r6
0065abb4  05 f4 ff eb                                      bl #0x657bd0
0065abb8  00 c0 a0 e1                                      mov ip, r0
0065abbc  0c 20 a0 e1                                      mov r2, ip
0065abc0  05 10 a0 e1                                      mov r1, r5
0065abc4  06 00 a0 e1                                      mov r0, r6
0065abc8  00 c0 8d e5                                      str ip, [sp]
0065abcc  2f f8 ff eb                                      bl #0x658c90
0065abd0  00 c0 9d e5                                      ldr ip, [sp]
0065abd4  00 30 a0 e1                                      mov r3, r0
0065abd8  00 30 8d e5                                      str r3, [sp]
0065abdc  0c 00 a0 e1                                      mov r0, ip
0065abe0  67 0a f3 eb                                      bl #0x31d584
0065abe4  00 30 9d e5                                      ldr r3, [sp]
0065abe8  00 00 53 e3                                      cmp r3, #0
0065abec  eb ff ff 0a                                      beq #0x65aba0
0065abf0  06 00 a0 e1                                      mov r0, r6
0065abf4  50 10 9d e5                                      ldr r1, [sp, #0x50]
0065abf8  08 20 a0 e1                                      mov r2, r8
0065abfc  d7 fb ff eb                                      bl #0x659b60
0065ac00  0a 00 a0 e1                                      mov r0, sl
0065ac04  08 50 a0 e1                                      mov r5, r8
0065ac08  5d 0a f3 eb                                      bl #0x31d584
0065ac0c  ad ff ff ea                                      b #0x65aac8
0065ac10  be cd f2 eb                                      bl #0x30e310
0065ac14  38 00 9f e5                                      ldr r0, [pc, #0x38]
0065ac18  0a 50 a0 e1                                      mov r5, sl
0065ac1c  00 00 8f e0                                      add r0, pc, r0
0065ac20  96 c1 fe eb                                      bl #0x60b280
0065ac24  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0065ac28  94 c1 fe eb                                      bl #0x60b280
0065ac2c  24 00 9f e5                                      ldr r0, [pc, #0x24]
0065ac30  00 00 8f e0                                      add r0, pc, r0
0065ac34  91 c1 fe eb                                      bl #0x60b280
0065ac38  a2 ff ff ea                                      b #0x65aac8
; mapping-symbol data/literal pool
0065ac3c  d8 a0 33 00 ac 40 00 00 48 44 00 00 b4 22 00 00  .byte 0xd8, 0xa0, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00, 0xb4, 0x22, 0x00, 0x00
0065ac4c  84 10 00 00 34 39 00 00 8c ab 28 00 98 ab 28 00  .byte 0x84, 0x10, 0x00, 0x00, 0x34, 0x39, 0x00, 0x00, 0x8c, 0xab, 0x28, 0x00, 0x98, 0xab, 0x28, 0x00

; FUNCTION 0x00659d9c, declared_size=416, range_size=416, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNKSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_PNS3_7collada8CResFileEENS_10_Select1stISH_EENS_11_MapTraitsTISH_EENS5_ISH_LS7_0EEEE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
00659d9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00659da0  8c 21 9f e5                                      ldr r2, [pc, #0x18c]
00659da4  8c 31 9f e5                                      ldr r3, [pc, #0x18c]
00659da8  54 d0 4d e2                                      sub sp, sp, #0x54
00659dac  02 20 8f e0                                      add r2, pc, r2
00659db0  0c 30 8d e5                                      str r3, [sp, #0xc]
00659db4  03 30 92 e7                                      ldr r3, [r2, r3]
00659db8  04 20 8d e5                                      str r2, [sp, #4]
00659dbc  08 00 8d e5                                      str r0, [sp, #8]
00659dc0  04 50 90 e5                                      ldr r5, [r0, #4]
00659dc4  00 30 93 e5                                      ldr r3, [r3]
00659dc8  01 90 a0 e1                                      mov sb, r1
00659dcc  00 00 55 e3                                      cmp r5, #0
00659dd0  4c 30 8d e5                                      str r3, [sp, #0x4c]
00659dd4  4a 00 00 0a                                      beq #0x659f04
00659dd8  00 a0 a0 e1                                      mov sl, r0
00659ddc  34 80 8d e2                                      add r8, sp, #0x34
00659de0  18 b0 8d e2                                      add fp, sp, #0x18
00659de4  00 10 99 e5                                      ldr r1, [sb]
00659de8  0b 20 a0 e1                                      mov r2, fp
00659dec  08 00 a0 e1                                      mov r0, r8
00659df0  91 30 f3 eb                                      bl #0x32603c
00659df4  24 30 95 e5                                      ldr r3, [r5, #0x24]
00659df8  48 40 9d e5                                      ldr r4, [sp, #0x48]
00659dfc  20 70 95 e5                                      ldr r7, [r5, #0x20]
00659e00  44 60 9d e5                                      ldr r6, [sp, #0x44]
00659e04  03 00 a0 e1                                      mov r0, r3
00659e08  07 70 63 e0                                      rsb r7, r3, r7
00659e0c  06 60 64 e0                                      rsb r6, r4, r6
00659e10  07 00 56 e1                                      cmp r6, r7
00659e14  06 20 a0 b1                                      movlt r2, r6
00659e18  07 20 a0 a1                                      movge r2, r7
00659e1c  04 10 a0 e1                                      mov r1, r4
00659e20  ee d1 f2 eb                                      bl #0x30e5e0
00659e24  00 30 50 e2                                      subs r3, r0, #0
00659e28  04 00 00 1a                                      bne #0x659e40
00659e2c  06 00 57 e1                                      cmp r7, r6
00659e30  00 30 e0 b3                                      mvnlt r3, #0
00659e34  01 00 00 ba                                      blt #0x659e40
00659e38  00 30 a0 d3                                      movle r3, #0
00659e3c  01 30 a0 c3                                      movgt r3, #1
00659e40  08 00 54 e1                                      cmp r4, r8
00659e44  05 00 00 0a                                      beq #0x659e60
00659e48  00 00 54 e3                                      cmp r4, #0
00659e4c  03 00 00 0a                                      beq #0x659e60
00659e50  04 00 a0 e1                                      mov r0, r4
00659e54  00 30 8d e5                                      str r3, [sp]
00659e58  7c d9 f2 eb                                      bl #0x310450
00659e5c  00 30 9d e5                                      ldr r3, [sp]
00659e60  00 00 53 e3                                      cmp r3, #0
00659e64  05 a0 a0 a1                                      movge sl, r5
00659e68  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
00659e6c  08 50 95 a5                                      ldrge r5, [r5, #8]
00659e70  00 00 55 e3                                      cmp r5, #0
00659e74  da ff ff 1a                                      bne #0x659de4
00659e78  08 00 9d e5                                      ldr r0, [sp, #8]
00659e7c  00 00 5a e1                                      cmp sl, r0
00659e80  20 00 00 0a                                      beq #0x659f08
00659e84  1c 50 8d e2                                      add r5, sp, #0x1c
00659e88  00 10 99 e5                                      ldr r1, [sb]
00659e8c  14 20 8d e2                                      add r2, sp, #0x14
00659e90  05 00 a0 e1                                      mov r0, r5
00659e94  68 30 f3 eb                                      bl #0x32603c
00659e98  24 30 9a e5                                      ldr r3, [sl, #0x24]
00659e9c  30 40 9d e5                                      ldr r4, [sp, #0x30]
00659ea0  20 70 9a e5                                      ldr r7, [sl, #0x20]
00659ea4  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
00659ea8  03 10 a0 e1                                      mov r1, r3
00659eac  07 70 63 e0                                      rsb r7, r3, r7
00659eb0  06 60 64 e0                                      rsb r6, r4, r6
00659eb4  06 00 57 e1                                      cmp r7, r6
00659eb8  07 20 a0 b1                                      movlt r2, r7
00659ebc  06 20 a0 a1                                      movge r2, r6
00659ec0  04 00 a0 e1                                      mov r0, r4
00659ec4  c5 d1 f2 eb                                      bl #0x30e5e0
00659ec8  00 80 50 e2                                      subs r8, r0, #0
00659ecc  04 00 00 1a                                      bne #0x659ee4
00659ed0  07 00 56 e1                                      cmp r6, r7
00659ed4  00 80 e0 b3                                      mvnlt r8, #0
00659ed8  01 00 00 ba                                      blt #0x659ee4
00659edc  00 80 a0 d3                                      movle r8, #0
00659ee0  01 80 a0 c3                                      movgt r8, #1
00659ee4  05 00 54 e1                                      cmp r4, r5
00659ee8  03 00 00 0a                                      beq #0x659efc
00659eec  00 00 54 e3                                      cmp r4, #0
00659ef0  01 00 00 0a                                      beq #0x659efc
00659ef4  04 00 a0 e1                                      mov r0, r4
00659ef8  54 d9 f2 eb                                      bl #0x310450
00659efc  00 00 58 e3                                      cmp r8, #0
00659f00  00 00 00 aa                                      bge #0x659f08
00659f04  08 a0 9d e5                                      ldr sl, [sp, #8]
00659f08  04 20 9d e5                                      ldr r2, [sp, #4]
00659f0c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00659f10  0a 00 a0 e1                                      mov r0, sl
00659f14  01 30 92 e7                                      ldr r3, [r2, r1]
00659f18  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00659f1c  00 30 93 e5                                      ldr r3, [r3]
00659f20  03 00 52 e1                                      cmp r2, r3
00659f24  01 00 00 1a                                      bne #0x659f30
00659f28  54 d0 8d e2                                      add sp, sp, #0x54
00659f2c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00659f30  f6 d0 f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00659f34  e4 ac 33 00 ac 40 00 00                          .byte 0xe4, 0xac, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0065a5cc, declared_size=380, range_size=380, mode=arm
; class-group: glitch::collada::CResFile*& std::map<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::collada::CResFile*, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt3mapISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEEPNS2_7collada8CResFileESt4lessIS8_ENS4_ISt4pairIKS8_SB_ELS6_0EEEEixIPKcEERSB_RKT_
; demangled: glitch::collada::CResFile*& std::map<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::collada::CResFile*, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
0065a5cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065a5d0  68 41 9f e5                                      ldr r4, [pc, #0x168]
0065a5d4  68 71 9f e5                                      ldr r7, [pc, #0x168]
0065a5d8  6c d0 4d e2                                      sub sp, sp, #0x6c
0065a5dc  04 40 8f e0                                      add r4, pc, r4
0065a5e0  07 30 94 e7                                      ldr r3, [r4, r7]
0065a5e4  00 80 a0 e1                                      mov r8, r0
0065a5e8  01 a0 a0 e1                                      mov sl, r1
0065a5ec  00 30 93 e5                                      ldr r3, [r3]
0065a5f0  64 30 8d e5                                      str r3, [sp, #0x64]
0065a5f4  5b fc ff eb                                      bl #0x659768
0065a5f8  08 00 50 e1                                      cmp r0, r8
0065a5fc  00 50 a0 e1                                      mov r5, r0
0065a600  23 00 00 0a                                      beq #0x65a694
0065a604  4c 30 8d e2                                      add r3, sp, #0x4c
0065a608  00 10 9a e5                                      ldr r1, [sl]
0065a60c  03 00 a0 e1                                      mov r0, r3
0065a610  14 20 8d e2                                      add r2, sp, #0x14
0065a614  04 30 8d e5                                      str r3, [sp, #4]
0065a618  87 2e f3 eb                                      bl #0x32603c
0065a61c  24 20 95 e5                                      ldr r2, [r5, #0x24]
0065a620  60 60 9d e5                                      ldr r6, [sp, #0x60]
0065a624  20 b0 95 e5                                      ldr fp, [r5, #0x20]
0065a628  5c 90 9d e5                                      ldr sb, [sp, #0x5c]
0065a62c  02 10 a0 e1                                      mov r1, r2
0065a630  0b b0 62 e0                                      rsb fp, r2, fp
0065a634  09 90 66 e0                                      rsb sb, r6, sb
0065a638  09 00 5b e1                                      cmp fp, sb
0065a63c  0b 20 a0 b1                                      movlt r2, fp
0065a640  09 20 a0 a1                                      movge r2, sb
0065a644  06 00 a0 e1                                      mov r0, r6
0065a648  e4 cf f2 eb                                      bl #0x30e5e0
0065a64c  00 00 50 e3                                      cmp r0, #0
0065a650  05 20 a0 e1                                      mov r2, r5
0065a654  04 30 9d e5                                      ldr r3, [sp, #4]
0065a658  a0 9f a0 11                                      lsrne sb, r0, #0x1f
0065a65c  02 00 00 1a                                      bne #0x65a66c
0065a660  0b 00 59 e1                                      cmp sb, fp
0065a664  00 90 a0 a3                                      movge sb, #0
0065a668  01 90 a0 b3                                      movlt sb, #1
0065a66c  03 00 56 e1                                      cmp r6, r3
0065a670  05 00 00 0a                                      beq #0x65a68c
0065a674  00 00 56 e3                                      cmp r6, #0
0065a678  03 00 00 0a                                      beq #0x65a68c
0065a67c  06 00 a0 e1                                      mov r0, r6
0065a680  04 20 8d e5                                      str r2, [sp, #4]
0065a684  71 d7 f2 eb                                      bl #0x310450
0065a688  04 20 9d e5                                      ldr r2, [sp, #4]
0065a68c  00 00 59 e3                                      cmp sb, #0
0065a690  21 00 00 0a                                      beq #0x65a71c
0065a694  34 90 8d e2                                      add sb, sp, #0x34
0065a698  18 60 8d e2                                      add r6, sp, #0x18
0065a69c  00 10 9a e5                                      ldr r1, [sl]
0065a6a0  10 20 8d e2                                      add r2, sp, #0x10
0065a6a4  09 00 a0 e1                                      mov r0, sb
0065a6a8  63 2e f3 eb                                      bl #0x32603c
0065a6ac  06 00 a0 e1                                      mov r0, r6
0065a6b0  48 10 9d e5                                      ldr r1, [sp, #0x48]
0065a6b4  44 20 9d e5                                      ldr r2, [sp, #0x44]
0065a6b8  28 60 8d e5                                      str r6, [sp, #0x28]
0065a6bc  2c 60 8d e5                                      str r6, [sp, #0x2c]
0065a6c0  4b 2e f3 eb                                      bl #0x325ff4
0065a6c4  0c 00 8d e2                                      add r0, sp, #0xc
0065a6c8  00 c0 a0 e3                                      mov ip, #0
0065a6cc  08 10 a0 e1                                      mov r1, r8
0065a6d0  08 20 8d e2                                      add r2, sp, #8
0065a6d4  06 30 a0 e1                                      mov r3, r6
0065a6d8  08 50 8d e5                                      str r5, [sp, #8]
0065a6dc  30 c0 8d e5                                      str ip, [sp, #0x30]
0065a6e0  15 fe ff eb                                      bl #0x659f3c
0065a6e4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0065a6e8  0c 50 9d e5                                      ldr r5, [sp, #0xc]
0065a6ec  06 00 50 e1                                      cmp r0, r6
0065a6f0  02 00 00 0a                                      beq #0x65a700
0065a6f4  00 00 50 e3                                      cmp r0, #0
0065a6f8  00 00 00 0a                                      beq #0x65a700
0065a6fc  53 d7 f2 eb                                      bl #0x310450
0065a700  48 00 9d e5                                      ldr r0, [sp, #0x48]
0065a704  09 00 50 e1                                      cmp r0, sb
0065a708  02 00 00 0a                                      beq #0x65a718
0065a70c  00 00 50 e3                                      cmp r0, #0
0065a710  00 00 00 0a                                      beq #0x65a718
0065a714  4d d7 f2 eb                                      bl #0x310450
0065a718  05 20 a0 e1                                      mov r2, r5
0065a71c  07 30 94 e7                                      ldr r3, [r4, r7]
0065a720  64 10 9d e5                                      ldr r1, [sp, #0x64]
0065a724  28 00 82 e2                                      add r0, r2, #0x28
0065a728  00 30 93 e5                                      ldr r3, [r3]
0065a72c  03 00 51 e1                                      cmp r1, r3
0065a730  01 00 00 1a                                      bne #0x65a73c
0065a734  6c d0 8d e2                                      add sp, sp, #0x6c
0065a738  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065a73c  f3 ce f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0065a740  b4 a4 33 00 ac 40 00 00                          .byte 0xb4, 0xa4, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00
