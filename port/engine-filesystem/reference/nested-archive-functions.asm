; Exact ARM instruction ranges used by ANALYSIS.md.
; Addresses are ELF virtual addresses. This is evidence, not assembler input.

; FUNCTION 0x0056d4e0, declared_size=976, range_size=976, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem17createAndOpenFileEPKc
; demangled: glitch::io::CFileSystem::createAndOpenFile(char const*)
; decoder-mode: arm
0056d4e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056d4e4  b8 43 9f e5                                      ldr r4, [pc, #0x3b8]
0056d4e8  b8 53 9f e5                                      ldr r5, [pc, #0x3b8]
0056d4ec  e4 d0 4d e2                                      sub sp, sp, #0xe4
0056d4f0  04 40 8f e0                                      add r4, pc, r4
0056d4f4  05 30 94 e7                                      ldr r3, [r4, r5]
0056d4f8  00 80 a0 e1                                      mov r8, r0
0056d4fc  01 70 a0 e1                                      mov r7, r1
0056d500  00 30 93 e5                                      ldr r3, [r3]
0056d504  dc 30 8d e5                                      str r3, [sp, #0xdc]
0056d508  fa fa ff eb                                      bl #0x56c0f8
0056d50c  00 60 50 e2                                      subs r6, r0, #0
0056d510  07 00 00 0a                                      beq #0x56d534
0056d514  05 30 94 e7                                      ldr r3, [r4, r5]
0056d518  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
0056d51c  06 00 a0 e1                                      mov r0, r6
0056d520  00 30 93 e5                                      ldr r3, [r3]
0056d524  03 00 52 e1                                      cmp r2, r3
0056d528  dc 00 00 1a                                      bne #0x56d8a0
0056d52c  e4 d0 8d e2                                      add sp, sp, #0xe4
0056d530  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056d534  07 00 a0 e1                                      mov r0, r7
0056d538  9d 0c 00 eb                                      bl #0x5707b4
0056d53c  00 60 50 e2                                      subs r6, r0, #0
0056d540  f3 ff ff 1a                                      bne #0x56d514
0056d544  c4 b0 8d e2                                      add fp, sp, #0xc4
0056d548  07 10 a0 e1                                      mov r1, r7
0056d54c  78 20 8d e2                                      add r2, sp, #0x78
0056d550  0b 00 a0 e1                                      mov r0, fp
0056d554  b8 e2 f6 eb                                      bl #0x32603c
0056d558  4c 33 9f e5                                      ldr r3, [pc, #0x34c]
0056d55c  ac 20 8d e2                                      add r2, sp, #0xac
0056d560  34 70 8d e5                                      str r7, [sp, #0x34]
0056d564  03 30 8f e0                                      add r3, pc, r3
0056d568  10 30 8d e5                                      str r3, [sp, #0x10]
0056d56c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0056d570  70 30 8d e2                                      add r3, sp, #0x70
0056d574  0c 30 8d e5                                      str r3, [sp, #0xc]
0056d578  01 c0 8c e2                                      add ip, ip, #1
0056d57c  38 30 8d e2                                      add r3, sp, #0x38
0056d580  14 c0 8d e5                                      str ip, [sp, #0x14]
0056d584  64 c0 8d e2                                      add ip, sp, #0x64
0056d588  18 30 8d e5                                      str r3, [sp, #0x18]
0056d58c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0056d590  60 30 8d e2                                      add r3, sp, #0x60
0056d594  5c c0 8d e2                                      add ip, sp, #0x5c
0056d598  20 30 8d e5                                      str r3, [sp, #0x20]
0056d59c  24 c0 8d e5                                      str ip, [sp, #0x24]
0056d5a0  58 30 8d e2                                      add r3, sp, #0x58
0056d5a4  68 c0 8d e2                                      add ip, sp, #0x68
0056d5a8  05 70 a0 e1                                      mov r7, r5
0056d5ac  00 90 e0 e3                                      mvn sb, #0
0056d5b0  28 30 8d e5                                      str r3, [sp, #0x28]
0056d5b4  2c c0 8d e5                                      str ip, [sp, #0x2c]
0056d5b8  30 60 8d e5                                      str r6, [sp, #0x30]
0056d5bc  04 a0 a0 e1                                      mov sl, r4
0056d5c0  02 50 a0 e1                                      mov r5, r2
0056d5c4  35 00 00 ea                                      b #0x56d6a0
0056d5c8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0056d5cc  01 30 43 e2                                      sub r3, r3, #1
0056d5d0  03 00 59 e1                                      cmp sb, r3
0056d5d4  09 30 a0 31                                      movlo r3, sb
0056d5d8  5c c0 8d e5                                      str ip, [sp, #0x5c]
0056d5dc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0056d5e0  01 60 83 e2                                      add r6, r3, #1
0056d5e4  06 60 84 e0                                      add r6, r4, r6
0056d5e8  58 c0 8d e5                                      str ip, [sp, #0x58]
0056d5ec  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0056d5f0  18 00 9d e5                                      ldr r0, [sp, #0x18]
0056d5f4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0056d5f8  00 c0 8d e5                                      str ip, [sp]
0056d5fc  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0056d600  20 20 9d e5                                      ldr r2, [sp, #0x20]
0056d604  24 30 9d e5                                      ldr r3, [sp, #0x24]
0056d608  64 60 8d e5                                      str r6, [sp, #0x64]
0056d60c  60 40 8d e5                                      str r4, [sp, #0x60]
0056d610  04 c0 8d e5                                      str ip, [sp, #4]
0056d614  1a 07 fa eb                                      bl #0x3ef284
0056d618  38 90 9d e5                                      ldr sb, [sp, #0x38]
0056d61c  09 00 54 e1                                      cmp r4, sb
0056d620  06 90 a0 01                                      moveq sb, r6
0056d624  01 90 49 12                                      subne sb, sb, #1
0056d628  09 00 56 e1                                      cmp r6, sb
0056d62c  1f 00 00 0a                                      beq #0x56d6b0
0056d630  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
0056d634  09 90 63 e0                                      rsb sb, r3, sb
0056d638  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0056d63c  09 30 a0 e1                                      mov r3, sb
0056d640  0b 10 a0 e1                                      mov r1, fp
0056d644  00 20 a0 e3                                      mov r2, #0
0056d648  05 00 a0 e1                                      mov r0, r5
0056d64c  00 c0 8d e5                                      str ip, [sp]
0056d650  9b fb ff eb                                      bl #0x56c4c4
0056d654  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
0056d658  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
0056d65c  0b 00 a0 e1                                      mov r0, fp
0056d660  48 cd f6 eb                                      bl #0x320b88
0056d664  05 00 a0 e1                                      mov r0, r5
0056d668  13 fb ff eb                                      bl #0x56c2bc
0056d66c  08 00 a0 e1                                      mov r0, r8
0056d670  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
0056d674  9f fa ff eb                                      bl #0x56c0f8
0056d678  00 00 50 e3                                      cmp r0, #0
0056d67c  72 00 00 1a                                      bne #0x56d84c
0056d680  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
0056d684  4a 0c 00 eb                                      bl #0x5707b4
0056d688  01 30 70 e2                                      rsbs r3, r0, #1
0056d68c  00 30 a0 33                                      movlo r3, #0
0056d690  01 00 79 e3                                      cmn sb, #1
0056d694  00 30 a0 03                                      moveq r3, #0
0056d698  00 00 53 e3                                      cmp r3, #0
0056d69c  05 00 00 0a                                      beq #0x56d6b8
0056d6a0  d8 40 9d e5                                      ldr r4, [sp, #0xd8]
0056d6a4  d4 30 9d e5                                      ldr r3, [sp, #0xd4]
0056d6a8  04 30 53 e0                                      subs r3, r3, r4
0056d6ac  c5 ff ff 1a                                      bne #0x56d5c8
0056d6b0  00 90 e0 e3                                      mvn sb, #0
0056d6b4  df ff ff ea                                      b #0x56d638
0056d6b8  00 00 50 e3                                      cmp r0, #0
0056d6bc  0a 40 a0 e1                                      mov r4, sl
0056d6c0  07 50 a0 e1                                      mov r5, r7
0056d6c4  30 60 9d e5                                      ldr r6, [sp, #0x30]
0056d6c8  00 a0 a0 e1                                      mov sl, r0
0056d6cc  34 70 9d e5                                      ldr r7, [sp, #0x34]
0056d6d0  59 00 00 0a                                      beq #0x56d83c
0056d6d4  01 00 79 e3                                      cmn sb, #1
0056d6d8  57 00 00 0a                                      beq #0x56d83c
0056d6dc  0a 00 a0 e1                                      mov r0, sl
0056d6e0  91 25 00 eb                                      bl #0x576d2c
0056d6e4  00 00 50 e3                                      cmp r0, #0
0056d6e8  69 00 00 0a                                      beq #0x56d894
0056d6ec  01 90 89 e2                                      add sb, sb, #1
0056d6f0  01 00 79 e3                                      cmn sb, #1
0056d6f4  50 00 00 0a                                      beq #0x56d83c
0056d6f8  74 30 8d e2                                      add r3, sp, #0x74
0056d6fc  38 20 8d e2                                      add r2, sp, #0x38
0056d700  10 30 8d e5                                      str r3, [sp, #0x10]
0056d704  6c c0 8d e2                                      add ip, sp, #0x6c
0056d708  7c 30 8d e2                                      add r3, sp, #0x7c
0056d70c  07 60 a0 e1                                      mov r6, r7
0056d710  20 b0 8d e5                                      str fp, [sp, #0x20]
0056d714  14 20 8d e5                                      str r2, [sp, #0x14]
0056d718  94 80 8d e2                                      add r8, sp, #0x94
0056d71c  0c c0 8d e5                                      str ip, [sp, #0xc]
0056d720  18 40 8d e5                                      str r4, [sp, #0x18]
0056d724  02 70 a0 e1                                      mov r7, r2
0056d728  1c 50 8d e5                                      str r5, [sp, #0x1c]
0056d72c  03 b0 a0 e1                                      mov fp, r3
0056d730  1e 00 00 ea                                      b #0x56d7b0
0056d734  00 50 a0 e3                                      mov r5, #0
0056d738  00 40 e0 e3                                      mvn r4, #0
0056d73c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0056d740  04 30 69 e0                                      rsb r3, sb, r4
0056d744  09 20 a0 e1                                      mov r2, sb
0056d748  08 10 a0 e1                                      mov r1, r8
0056d74c  0b 00 a0 e1                                      mov r0, fp
0056d750  00 c0 8d e5                                      str ip, [sp]
0056d754  5a fb ff eb                                      bl #0x56c4c4
0056d758  90 10 9d e5                                      ldr r1, [sp, #0x90]
0056d75c  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
0056d760  08 00 a0 e1                                      mov r0, r8
0056d764  07 cd f6 eb                                      bl #0x320b88
0056d768  0b 00 a0 e1                                      mov r0, fp
0056d76c  d2 fa ff eb                                      bl #0x56c2bc
0056d770  0a 00 a0 e1                                      mov r0, sl
0056d774  82 bf f6 eb                                      bl #0x31d584
0056d778  07 00 a0 e1                                      mov r0, r7
0056d77c  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0056d780  a7 2b 00 eb                                      bl #0x578624
0056d784  01 00 74 e3                                      cmn r4, #1
0056d788  00 a0 a0 e1                                      mov sl, r0
0056d78c  38 00 00 0a                                      beq #0x56d874
0056d790  08 00 a0 e1                                      mov r0, r8
0056d794  c8 fa ff eb                                      bl #0x56c2bc
0056d798  07 00 a0 e1                                      mov r0, r7
0056d79c  39 27 00 eb                                      bl #0x577488
0056d7a0  00 00 5a e3                                      cmp sl, #0
0056d7a4  01 00 75 13                                      cmnne r5, #1
0056d7a8  2d 00 00 0a                                      beq #0x56d864
0056d7ac  05 90 a0 e1                                      mov sb, r5
0056d7b0  01 20 a0 e3                                      mov r2, #1
0056d7b4  02 30 a0 e1                                      mov r3, r2
0056d7b8  0a 10 a0 e1                                      mov r1, sl
0056d7bc  07 00 a0 e1                                      mov r0, r7
0056d7c0  f7 29 00 eb                                      bl #0x577fa4
0056d7c4  06 10 a0 e1                                      mov r1, r6
0056d7c8  10 20 9d e5                                      ldr r2, [sp, #0x10]
0056d7cc  08 00 a0 e1                                      mov r0, r8
0056d7d0  19 e2 f6 eb                                      bl #0x32603c
0056d7d4  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
0056d7d8  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0056d7dc  02 30 61 e0                                      rsb r3, r1, r2
0056d7e0  09 00 53 e1                                      cmp r3, sb
0056d7e4  d2 ff ff 9a                                      bls #0x56d734
0056d7e8  01 00 89 e2                                      add r0, sb, #1
0056d7ec  00 00 53 e1                                      cmp r3, r0
0056d7f0  cf ff ff 3a                                      blo #0x56d734
0056d7f4  09 40 81 e0                                      add r4, r1, sb
0056d7f8  04 00 52 e1                                      cmp r2, r4
0056d7fc  02 40 a0 01                                      moveq r4, r2
0056d800  08 00 00 0a                                      beq #0x56d828
0056d804  d9 30 91 e1                                      ldrsb r3, [r1, sb]
0056d808  2f 00 53 e3                                      cmp r3, #0x2f
0056d80c  05 00 00 0a                                      beq #0x56d828
0056d810  01 40 84 e2                                      add r4, r4, #1
0056d814  02 00 54 e1                                      cmp r4, r2
0056d818  02 00 00 0a                                      beq #0x56d828
0056d81c  d0 30 d4 e1                                      ldrsb r3, [r4]
0056d820  2f 00 53 e3                                      cmp r3, #0x2f
0056d824  f9 ff ff 1a                                      bne #0x56d810
0056d828  04 00 52 e1                                      cmp r2, r4
0056d82c  04 40 61 10                                      rsbne r4, r1, r4
0056d830  01 50 84 12                                      addne r5, r4, #1
0056d834  c0 ff ff 1a                                      bne #0x56d73c
0056d838  bd ff ff ea                                      b #0x56d734
0056d83c  0a 60 a0 e1                                      mov r6, sl
0056d840  0b 00 a0 e1                                      mov r0, fp
0056d844  9c fa ff eb                                      bl #0x56c2bc
0056d848  31 ff ff ea                                      b #0x56d514
0056d84c  0a 40 a0 e1                                      mov r4, sl
0056d850  07 50 a0 e1                                      mov r5, r7
0056d854  30 60 9d e5                                      ldr r6, [sp, #0x30]
0056d858  00 a0 a0 e1                                      mov sl, r0
0056d85c  34 70 9d e5                                      ldr r7, [sp, #0x34]
0056d860  9b ff ff ea                                      b #0x56d6d4
0056d864  0a 60 a0 e1                                      mov r6, sl
0056d868  18 40 8d e2                                      add r4, sp, #0x18
0056d86c  30 08 94 e8                                      ldm r4, {r4, r5, fp}
0056d870  f2 ff ff ea                                      b #0x56d840
0056d874  00 60 a0 e1                                      mov r6, r0
0056d878  08 00 a0 e1                                      mov r0, r8
0056d87c  18 40 8d e2                                      add r4, sp, #0x18
0056d880  30 08 94 e8                                      ldm r4, {r4, r5, fp}
0056d884  8c fa ff eb                                      bl #0x56c2bc
0056d888  14 00 9d e5                                      ldr r0, [sp, #0x14]
0056d88c  fd 26 00 eb                                      bl #0x577488
0056d890  ea ff ff ea                                      b #0x56d840
0056d894  0a 00 a0 e1                                      mov r0, sl
0056d898  39 bf f6 eb                                      bl #0x31d584
0056d89c  e7 ff ff ea                                      b #0x56d840
0056d8a0  9a 82 f6 eb                                      bl #0x30e310

; FUNCTION 0x005707b4, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io14createReadFileEPKc
; demangled: glitch::io::createReadFile(char const*)
; decoder-mode: arm
005707b4  70 40 2d e9                                      push {r4, r5, r6, lr}
005707b8  00 10 a0 e3                                      mov r1, #0
005707bc  00 50 a0 e1                                      mov r5, r0
005707c0  30 00 a0 e3                                      mov r0, #0x30
005707c4  78 0e ff eb                                      bl #0x5341ac
005707c8  05 10 a0 e1                                      mov r1, r5
005707cc  00 40 a0 e1                                      mov r4, r0
005707d0  00 20 a0 e3                                      mov r2, #0
005707d4  d6 ff ff eb                                      bl #0x570734
005707d8  00 30 94 e5                                      ldr r3, [r4]
005707dc  04 00 a0 e1                                      mov r0, r4
005707e0  0f e0 a0 e1                                      mov lr, pc
005707e4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005707e8  00 50 50 e2                                      subs r5, r0, #0
005707ec  01 00 00 0a                                      beq #0x5707f8
005707f0  04 00 a0 e1                                      mov r0, r4
005707f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005707f8  04 00 a0 e1                                      mov r0, r4
005707fc  60 b3 f6 eb                                      bl #0x31d584
00570800  05 00 a0 e1                                      mov r0, r5
00570804  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00576d2c, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader7isValidEPNS0_9IReadFileE
; demangled: glitch::io::CZipReader::isValid(glitch::io::IReadFile*)
; decoder-mode: arm
00576d2c  30 40 2d e9                                      push {r4, r5, lr}
00576d30  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00576d34  0c d0 4d e2                                      sub sp, sp, #0xc
00576d38  00 30 90 e5                                      ldr r3, [r0]
00576d3c  02 20 9f e7                                      ldr r2, [pc, r2]
00576d40  04 20 8d e5                                      str r2, [sp, #4]
00576d44  00 40 a0 e1                                      mov r4, r0
00576d48  0f e0 a0 e1                                      mov lr, pc
00576d4c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00576d50  00 10 a0 e3                                      mov r1, #0
00576d54  00 50 a0 e1                                      mov r5, r0
00576d58  01 20 a0 e1                                      mov r2, r1
00576d5c  00 30 94 e5                                      ldr r3, [r4]
00576d60  04 00 a0 e1                                      mov r0, r4
00576d64  0f e0 a0 e1                                      mov lr, pc
00576d68  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00576d6c  0d 10 a0 e1                                      mov r1, sp
00576d70  00 30 94 e5                                      ldr r3, [r4]
00576d74  04 20 a0 e3                                      mov r2, #4
00576d78  04 00 a0 e1                                      mov r0, r4
00576d7c  0f e0 a0 e1                                      mov lr, pc
00576d80  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576d84  00 30 94 e5                                      ldr r3, [r4]
00576d88  04 00 a0 e1                                      mov r0, r4
00576d8c  05 10 a0 e1                                      mov r1, r5
00576d90  00 20 a0 e3                                      mov r2, #0
00576d94  0f e0 a0 e1                                      mov lr, pc
00576d98  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00576d9c  09 00 9d e8                                      ldm sp, {r0, r3}
00576da0  03 00 50 e1                                      cmp r0, r3
00576da4  00 00 a0 13                                      movne r0, #0
00576da8  01 00 a0 03                                      moveq r0, #1
00576dac  0c d0 8d e2                                      add sp, sp, #0xc
00576db0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00578624, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader8openFileEPKc
; demangled: glitch::io::CZipReader::openFile(char const*)
; decoder-mode: arm
00578624  10 40 2d e9                                      push {r4, lr}
00578628  00 40 a0 e1                                      mov r4, r0
0057862c  bb ff ff eb                                      bl #0x578520
00578630  01 00 70 e3                                      cmn r0, #1
00578634  00 10 a0 e1                                      mov r1, r0
00578638  02 00 00 0a                                      beq #0x578648
0057863c  04 00 a0 e1                                      mov r0, r4
00578640  10 40 bd e8                                      pop {r4, lr}
00578644  33 fa ff ea                                      b #0x576f18
00578648  00 00 a0 e3                                      mov r0, #0
0057864c  10 80 bd e8                                      pop {r4, pc}
