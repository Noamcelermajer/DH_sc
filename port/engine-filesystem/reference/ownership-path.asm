; APK-derived ARM ranges for OWNERSHIP-ANALYSIS.md. Evidence only; not assembler input.

; OWNERSHIP RANGE 0x0056d2c0, size=276, instruction_or_code_bytes=276, sha256=56e0697b55563af11a91cb66247b1c9954ba5055149c833ee2915cd4c2d319ad
; role: ZIP archive registration; factory stream transfer and registration ownership
; APK file offset: 0x0056d2c0, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x0056d2c0, declared_size=276, range_size=276, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem17addZipFileArchiveEPKcbb
; demangled: glitch::io::CFileSystem::addZipFileArchive(char const*, bool, bool)
0056d2c0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056d2c4  00 c0 90 e5                                      ldr ip, [r0]
0056d2c8  00 40 a0 e1                                      mov r4, r0
0056d2cc  02 80 a0 e1                                      mov r8, r2
0056d2d0  03 70 a0 e1                                      mov r7, r3
0056d2d4  0f e0 a0 e1                                      mov lr, pc
0056d2d8  0c f0 9c e5                                      ldr pc, [ip, #0xc]
0056d2dc  00 60 50 e2                                      subs r6, r0, #0
0056d2e0  19 00 00 0a                                      beq #0x56d34c
0056d2e4  00 10 a0 e3                                      mov r1, #0
0056d2e8  20 00 a0 e3                                      mov r0, #0x20
0056d2ec  ae 1b ff eb                                      bl #0x5341ac
0056d2f0  06 10 a0 e1                                      mov r1, r6
0056d2f4  00 50 a0 e1                                      mov r5, r0
0056d2f8  08 20 a0 e1                                      mov r2, r8
0056d2fc  07 30 a0 e1                                      mov r3, r7
0056d300  27 2b 00 eb                                      bl #0x577fa4
0056d304  00 00 55 e3                                      cmp r5, #0
0056d308  0a 00 00 0a                                      beq #0x56d338
0056d30c  10 30 95 e5                                      ldr r3, [r5, #0x10]
0056d310  01 30 83 e3                                      orr r3, r3, #1
0056d314  10 30 85 e5                                      str r3, [r5, #0x10]
0056d318  0c a0 94 e5                                      ldr sl, [r4, #0xc]
0056d31c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0056d320  03 00 5a e1                                      cmp sl, r3
0056d324  0a 00 00 0a                                      beq #0x56d354
0056d328  00 50 8a e5                                      str r5, [sl]
0056d32c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0056d330  04 30 83 e2                                      add r3, r3, #4
0056d334  0c 30 84 e5                                      str r3, [r4, #0xc]
0056d338  06 00 a0 e1                                      mov r0, r6
0056d33c  90 c0 f6 eb                                      bl #0x31d584
0056d340  00 00 55 e2                                      subs r0, r5, #0
0056d344  01 00 a0 13                                      movne r0, #1
0056d348  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056d34c  06 00 a0 e1                                      mov r0, r6
0056d350  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056d354  08 30 94 e5                                      ldr r3, [r4, #8]
0056d358  0a 30 63 e0                                      rsb r3, r3, sl
0056d35c  43 31 a0 e1                                      asr r3, r3, #2
0056d360  01 00 53 e3                                      cmp r3, #1
0056d364  03 80 83 20                                      addhs r8, r3, r3
0056d368  01 80 83 32                                      addlo r8, r3, #1
0056d36c  07 01 78 e3                                      cmn r8, #0xc0000001
0056d370  15 00 00 8a                                      bhi #0x56d3cc
0056d374  08 00 53 e1                                      cmp r3, r8
0056d378  08 81 a0 91                                      lslls r8, r8, #2
0056d37c  12 00 00 8a                                      bhi #0x56d3cc
0056d380  00 10 a0 e3                                      mov r1, #0
0056d384  08 00 a0 e1                                      mov r0, r8
0056d388  76 8c f6 eb                                      bl #0x310568
0056d38c  08 10 94 e5                                      ldr r1, [r4, #8]
0056d390  00 70 a0 e1                                      mov r7, r0
0056d394  01 a0 5a e0                                      subs sl, sl, r1
0056d398  00 a0 a0 01                                      moveq sl, r0
0056d39c  02 00 00 0a                                      beq #0x56d3ac
0056d3a0  0a 20 a0 e1                                      mov r2, sl
0056d3a4  e3 82 f6 eb                                      bl #0x30df38
0056d3a8  0a a0 80 e0                                      add sl, r0, sl
0056d3ac  04 50 8a e4                                      str r5, [sl], #4
0056d3b0  08 00 94 e5                                      ldr r0, [r4, #8]
0056d3b4  08 80 87 e0                                      add r8, r7, r8
0056d3b8  24 8c f6 eb                                      bl #0x310450
0056d3bc  10 80 84 e5                                      str r8, [r4, #0x10]
0056d3c0  0c a0 84 e5                                      str sl, [r4, #0xc]
0056d3c4  08 70 84 e5                                      str r7, [r4, #8]
0056d3c8  da ff ff ea                                      b #0x56d338
0056d3cc  03 80 e0 e3                                      mvn r8, #3
0056d3d0  ea ff ff ea                                      b #0x56d380

; OWNERSHIP RANGE 0x0056c0f8, size=284, instruction_or_code_bytes=284, sha256=8b140d1dcd3d6e3a951be56bb55269e194975dcb77d0a0b2ffcba7bb10e765de
; role: registered archive dispatch; first nonnull returned stream
; APK file offset: 0x0056c0f8, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x0056c0f8, declared_size=284, range_size=284, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc
; demangled: glitch::io::CFileSystem::createAndOpenFileFromArchives(char const*)
0056c0f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c0fc  08 30 90 e5                                      ldr r3, [r0, #8]
0056c100  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0056c104  00 50 a0 e1                                      mov r5, r0
0056c108  01 60 a0 e1                                      mov r6, r1
0056c10c  02 20 63 e0                                      rsb r2, r3, r2
0056c110  22 21 b0 e1                                      lsrs r2, r2, #2
0056c114  10 00 00 0a                                      beq #0x56c15c
0056c118  00 40 a0 e3                                      mov r4, #0
0056c11c  04 00 00 ea                                      b #0x56c134
0056c120  08 30 95 e5                                      ldr r3, [r5, #8]
0056c124  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0056c128  02 20 63 e0                                      rsb r2, r3, r2
0056c12c  42 01 54 e1                                      cmp r4, r2, asr #2
0056c130  09 00 00 2a                                      bhs #0x56c15c
0056c134  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0056c138  06 10 a0 e1                                      mov r1, r6
0056c13c  01 40 84 e2                                      add r4, r4, #1
0056c140  03 00 a0 e1                                      mov r0, r3
0056c144  00 30 93 e5                                      ldr r3, [r3]
0056c148  0f e0 a0 e1                                      mov lr, pc
0056c14c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056c150  00 00 50 e3                                      cmp r0, #0
0056c154  f1 ff ff 0a                                      beq #0x56c120
0056c158  70 80 bd e8                                      pop {r4, r5, r6, pc}
0056c15c  14 30 95 e5                                      ldr r3, [r5, #0x14]
0056c160  18 20 95 e5                                      ldr r2, [r5, #0x18]
0056c164  02 20 63 e0                                      rsb r2, r3, r2
0056c168  22 21 b0 e1                                      lsrs r2, r2, #2
0056c16c  10 00 00 0a                                      beq #0x56c1b4
0056c170  00 40 a0 e3                                      mov r4, #0
0056c174  04 00 00 ea                                      b #0x56c18c
0056c178  14 30 95 e5                                      ldr r3, [r5, #0x14]
0056c17c  18 20 95 e5                                      ldr r2, [r5, #0x18]
0056c180  02 20 63 e0                                      rsb r2, r3, r2
0056c184  42 01 54 e1                                      cmp r4, r2, asr #2
0056c188  09 00 00 2a                                      bhs #0x56c1b4
0056c18c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0056c190  06 10 a0 e1                                      mov r1, r6
0056c194  01 40 84 e2                                      add r4, r4, #1
0056c198  03 00 a0 e1                                      mov r0, r3
0056c19c  00 30 93 e5                                      ldr r3, [r3]
0056c1a0  0f e0 a0 e1                                      mov lr, pc
0056c1a4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056c1a8  00 00 50 e3                                      cmp r0, #0
0056c1ac  f1 ff ff 0a                                      beq #0x56c178
0056c1b0  e8 ff ff ea                                      b #0x56c158
0056c1b4  20 30 95 e5                                      ldr r3, [r5, #0x20]
0056c1b8  24 20 95 e5                                      ldr r2, [r5, #0x24]
0056c1bc  02 20 63 e0                                      rsb r2, r3, r2
0056c1c0  22 21 b0 e1                                      lsrs r2, r2, #2
0056c1c4  10 00 00 0a                                      beq #0x56c20c
0056c1c8  00 40 a0 e3                                      mov r4, #0
0056c1cc  04 00 00 ea                                      b #0x56c1e4
0056c1d0  20 30 95 e5                                      ldr r3, [r5, #0x20]
0056c1d4  24 20 95 e5                                      ldr r2, [r5, #0x24]
0056c1d8  02 20 63 e0                                      rsb r2, r3, r2
0056c1dc  42 01 54 e1                                      cmp r4, r2, asr #2
0056c1e0  09 00 00 2a                                      bhs #0x56c20c
0056c1e4  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0056c1e8  06 10 a0 e1                                      mov r1, r6
0056c1ec  01 40 84 e2                                      add r4, r4, #1
0056c1f0  03 00 a0 e1                                      mov r0, r3
0056c1f4  00 30 93 e5                                      ldr r3, [r3]
0056c1f8  0f e0 a0 e1                                      mov lr, pc
0056c1fc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056c200  00 00 50 e3                                      cmp r0, #0
0056c204  f1 ff ff 0a                                      beq #0x56c1d0
0056c208  d2 ff ff ea                                      b #0x56c158
0056c20c  00 00 a0 e3                                      mov r0, #0
0056c210  70 80 bd e8                                      pop {r4, r5, r6, pc}

; OWNERSHIP RANGE 0x0056d4e0, size=976, instruction_or_code_bytes=964, sha256=5df6367ec061a600cd1fdc4ff4e130e2572126e0771de9fd151fbd5c4c496e41
; role: nested path walk; candidate validation, stack reader lifetime, returned member stream
; APK file offset: 0x0056d4e0, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x0056d4e0, declared_size=976, range_size=976, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem17createAndOpenFileEPKc
; demangled: glitch::io::CFileSystem::createAndOpenFile(char const*)
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
0056d8a4  a0 75 42 00 ac 40 00 00 f4 36 35 00              .byte 0xa0, 0x75, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x36, 0x35, 0x00

; OWNERSHIP RANGE 0x005707b4, size=84, instruction_or_code_bytes=84, sha256=b353d74ff93a4ce64acc549e7156a7930e6966b8f7e0fbf6a55590b994b0fdcb
; role: read-file factory used for direct and slash-prefix candidates
; APK file offset: 0x005707b4, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x005707b4, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io14createReadFileEPKc
; demangled: glitch::io::createReadFile(char const*)
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

; OWNERSHIP RANGE 0x0056ce60, size=512, instruction_or_code_bytes=512, sha256=9e50a5159efb65437e9423470e6e24e08eaa00fa48c803ee32412bbe9f45ba6b
; role: single archive removal; registered reference release
; APK file offset: 0x0056ce60, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x0056ce60, declared_size=512, range_size=512, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem17removeFileArchiveEPKc
; demangled: glitch::io::CFileSystem::removeFileArchive(char const*)
0056ce60  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056ce64  08 30 90 e5                                      ldr r3, [r0, #8]
0056ce68  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0056ce6c  00 40 a0 e1                                      mov r4, r0
0056ce70  01 70 a0 e1                                      mov r7, r1
0056ce74  02 20 63 e0                                      rsb r2, r3, r2
0056ce78  42 21 a0 e1                                      asr r2, r2, #2
0056ce7c  01 60 52 e2                                      subs r6, r2, #1
0056ce80  25 00 00 4a                                      bmi #0x56cf1c
0056ce84  07 21 42 e2                                      sub r2, r2, #0xc0000001
0056ce88  02 51 a0 e1                                      lsl r5, r2, #2
0056ce8c  03 00 00 ea                                      b #0x56cea0
0056ce90  01 60 56 e2                                      subs r6, r6, #1
0056ce94  04 50 45 e2                                      sub r5, r5, #4
0056ce98  1f 00 00 4a                                      bmi #0x56cf1c
0056ce9c  08 30 94 e5                                      ldr r3, [r4, #8]
0056cea0  05 30 93 e7                                      ldr r3, [r3, r5]
0056cea4  08 10 93 e5                                      ldr r1, [r3, #8]
0056cea8  00 00 51 e3                                      cmp r1, #0
0056ceac  04 00 00 0a                                      beq #0x56cec4
0056ceb0  01 00 a0 e1                                      mov r0, r1
0056ceb4  00 30 91 e5                                      ldr r3, [r1]
0056ceb8  0f e0 a0 e1                                      mov lr, pc
0056cebc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0056cec0  00 10 a0 e1                                      mov r1, r0
0056cec4  07 00 a0 e1                                      mov r0, r7
0056cec8  13 85 f6 eb                                      bl #0x30e31c
0056cecc  00 00 50 e3                                      cmp r0, #0
0056ced0  ee ff ff 1a                                      bne #0x56ce90
0056ced4  08 30 94 e5                                      ldr r3, [r4, #8]
0056ced8  05 00 93 e7                                      ldr r0, [r3, r5]
0056cedc  a8 c1 f6 eb                                      bl #0x31d584
0056cee0  08 00 94 e5                                      ldr r0, [r4, #8]
0056cee4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0056cee8  05 00 80 e0                                      add r0, r0, r5
0056ceec  04 10 80 e2                                      add r1, r0, #4
0056cef0  03 00 51 e1                                      cmp r1, r3
0056cef4  04 00 00 0a                                      beq #0x56cf0c
0056cef8  01 20 53 e0                                      subs r2, r3, r1
0056cefc  03 10 a0 01                                      moveq r1, r3
0056cf00  01 00 00 0a                                      beq #0x56cf0c
0056cf04  0b 84 f6 eb                                      bl #0x30df38
0056cf08  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0056cf0c  04 10 41 e2                                      sub r1, r1, #4
0056cf10  0c 10 84 e5                                      str r1, [r4, #0xc]
0056cf14  01 00 a0 e3                                      mov r0, #1
0056cf18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056cf1c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cf20  18 50 94 e5                                      ldr r5, [r4, #0x18]
0056cf24  05 50 63 e0                                      rsb r5, r3, r5
0056cf28  45 51 a0 e1                                      asr r5, r5, #2
0056cf2c  01 60 55 e2                                      subs r6, r5, #1
0056cf30  25 00 00 4a                                      bmi #0x56cfcc
0056cf34  07 51 45 e2                                      sub r5, r5, #0xc0000001
0056cf38  05 51 a0 e1                                      lsl r5, r5, #2
0056cf3c  03 00 00 ea                                      b #0x56cf50
0056cf40  01 60 56 e2                                      subs r6, r6, #1
0056cf44  04 50 45 e2                                      sub r5, r5, #4
0056cf48  1f 00 00 4a                                      bmi #0x56cfcc
0056cf4c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cf50  05 30 93 e7                                      ldr r3, [r3, r5]
0056cf54  08 10 93 e5                                      ldr r1, [r3, #8]
0056cf58  00 00 51 e3                                      cmp r1, #0
0056cf5c  04 00 00 0a                                      beq #0x56cf74
0056cf60  01 00 a0 e1                                      mov r0, r1
0056cf64  00 30 91 e5                                      ldr r3, [r1]
0056cf68  0f e0 a0 e1                                      mov lr, pc
0056cf6c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0056cf70  00 10 a0 e1                                      mov r1, r0
0056cf74  07 00 a0 e1                                      mov r0, r7
0056cf78  e7 84 f6 eb                                      bl #0x30e31c
0056cf7c  00 00 50 e3                                      cmp r0, #0
0056cf80  ee ff ff 1a                                      bne #0x56cf40
0056cf84  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cf88  05 00 93 e7                                      ldr r0, [r3, r5]
0056cf8c  7c c1 f6 eb                                      bl #0x31d584
0056cf90  14 00 94 e5                                      ldr r0, [r4, #0x14]
0056cf94  18 30 94 e5                                      ldr r3, [r4, #0x18]
0056cf98  05 00 80 e0                                      add r0, r0, r5
0056cf9c  04 10 80 e2                                      add r1, r0, #4
0056cfa0  03 00 51 e1                                      cmp r1, r3
0056cfa4  04 00 00 0a                                      beq #0x56cfbc
0056cfa8  01 20 53 e0                                      subs r2, r3, r1
0056cfac  03 10 a0 01                                      moveq r1, r3
0056cfb0  01 00 00 0a                                      beq #0x56cfbc
0056cfb4  df 83 f6 eb                                      bl #0x30df38
0056cfb8  18 10 94 e5                                      ldr r1, [r4, #0x18]
0056cfbc  04 10 41 e2                                      sub r1, r1, #4
0056cfc0  18 10 84 e5                                      str r1, [r4, #0x18]
0056cfc4  01 00 a0 e3                                      mov r0, #1
0056cfc8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056cfcc  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0056cfd0  24 50 94 e5                                      ldr r5, [r4, #0x24]
0056cfd4  05 50 6a e0                                      rsb r5, sl, r5
0056cfd8  45 51 a0 e1                                      asr r5, r5, #2
0056cfdc  01 60 55 e2                                      subs r6, r5, #1
0056cfe0  1c 00 00 4a                                      bmi #0x56d058
0056cfe4  07 51 45 e2                                      sub r5, r5, #0xc0000001
0056cfe8  05 51 a0 e1                                      lsl r5, r5, #2
0056cfec  02 00 00 ea                                      b #0x56cffc
0056cff0  01 60 56 e2                                      subs r6, r6, #1
0056cff4  04 50 45 e2                                      sub r5, r5, #4
0056cff8  16 00 00 4a                                      bmi #0x56d058
0056cffc  05 80 9a e7                                      ldr r8, [sl, r5]
0056d000  07 00 a0 e1                                      mov r0, r7
0056d004  38 10 98 e5                                      ldr r1, [r8, #0x38]
0056d008  c3 84 f6 eb                                      bl #0x30e31c
0056d00c  00 00 50 e3                                      cmp r0, #0
0056d010  f6 ff ff 1a                                      bne #0x56cff0
0056d014  08 00 a0 e1                                      mov r0, r8
0056d018  59 c1 f6 eb                                      bl #0x31d584
0056d01c  20 00 94 e5                                      ldr r0, [r4, #0x20]
0056d020  24 30 94 e5                                      ldr r3, [r4, #0x24]
0056d024  05 00 80 e0                                      add r0, r0, r5
0056d028  04 10 80 e2                                      add r1, r0, #4
0056d02c  03 00 51 e1                                      cmp r1, r3
0056d030  04 00 00 0a                                      beq #0x56d048
0056d034  01 20 53 e0                                      subs r2, r3, r1
0056d038  03 10 a0 01                                      moveq r1, r3
0056d03c  01 00 00 0a                                      beq #0x56d048
0056d040  bc 83 f6 eb                                      bl #0x30df38
0056d044  24 10 94 e5                                      ldr r1, [r4, #0x24]
0056d048  04 10 41 e2                                      sub r1, r1, #4
0056d04c  24 10 84 e5                                      str r1, [r4, #0x24]
0056d050  01 00 a0 e3                                      mov r0, #1
0056d054  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056d058  00 00 a0 e3                                      mov r0, #0
0056d05c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; OWNERSHIP RANGE 0x0056cb78, size=204, instruction_or_code_bytes=204, sha256=5dfc5f9c0c6501e603ee956a1b134bf572d99e4d809bf59e197d3c53f1eaa51b
; role: clear archive lists; registered reference release
; APK file offset: 0x0056cb78, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x0056cb78, declared_size=204, range_size=204, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem5clearEv
; demangled: glitch::io::CFileSystem::clear()
0056cb78  70 40 2d e9                                      push {r4, r5, r6, lr}
0056cb7c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0056cb80  08 30 90 e5                                      ldr r3, [r0, #8]
0056cb84  00 40 a0 e1                                      mov r4, r0
0056cb88  02 10 63 e0                                      rsb r1, r3, r2
0056cb8c  21 11 b0 e1                                      lsrs r1, r1, #2
0056cb90  08 00 00 0a                                      beq #0x56cbb8
0056cb94  00 50 a0 e3                                      mov r5, #0
0056cb98  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0056cb9c  78 c2 f6 eb                                      bl #0x31d584
0056cba0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0056cba4  08 30 94 e5                                      ldr r3, [r4, #8]
0056cba8  01 50 85 e2                                      add r5, r5, #1
0056cbac  02 10 63 e0                                      rsb r1, r3, r2
0056cbb0  41 01 55 e1                                      cmp r5, r1, asr #2
0056cbb4  f7 ff ff 3a                                      blo #0x56cb98
0056cbb8  03 00 52 e1                                      cmp r2, r3
0056cbbc  0c 30 84 15                                      strne r3, [r4, #0xc]
0056cbc0  18 20 94 e5                                      ldr r2, [r4, #0x18]
0056cbc4  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cbc8  02 10 63 e0                                      rsb r1, r3, r2
0056cbcc  21 11 b0 e1                                      lsrs r1, r1, #2
0056cbd0  08 00 00 0a                                      beq #0x56cbf8
0056cbd4  00 50 a0 e3                                      mov r5, #0
0056cbd8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0056cbdc  68 c2 f6 eb                                      bl #0x31d584
0056cbe0  18 20 94 e5                                      ldr r2, [r4, #0x18]
0056cbe4  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cbe8  01 50 85 e2                                      add r5, r5, #1
0056cbec  02 10 63 e0                                      rsb r1, r3, r2
0056cbf0  41 01 55 e1                                      cmp r5, r1, asr #2
0056cbf4  f7 ff ff 3a                                      blo #0x56cbd8
0056cbf8  03 00 52 e1                                      cmp r2, r3
0056cbfc  18 30 84 15                                      strne r3, [r4, #0x18]
0056cc00  24 20 94 e5                                      ldr r2, [r4, #0x24]
0056cc04  20 30 94 e5                                      ldr r3, [r4, #0x20]
0056cc08  02 10 63 e0                                      rsb r1, r3, r2
0056cc0c  21 11 b0 e1                                      lsrs r1, r1, #2
0056cc10  08 00 00 0a                                      beq #0x56cc38
0056cc14  00 50 a0 e3                                      mov r5, #0
0056cc18  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0056cc1c  58 c2 f6 eb                                      bl #0x31d584
0056cc20  24 20 94 e5                                      ldr r2, [r4, #0x24]
0056cc24  20 30 94 e5                                      ldr r3, [r4, #0x20]
0056cc28  01 50 85 e2                                      add r5, r5, #1
0056cc2c  02 10 63 e0                                      rsb r1, r3, r2
0056cc30  41 01 55 e1                                      cmp r5, r1, asr #2
0056cc34  f7 ff ff 3a                                      blo #0x56cc18
0056cc38  03 00 52 e1                                      cmp r2, r3
0056cc3c  24 30 84 15                                      strne r3, [r4, #0x24]
0056cc40  70 80 bd e8                                      pop {r4, r5, r6, pc}

; OWNERSHIP RANGE 0x00576d2c, size=140, instruction_or_code_bytes=136, sha256=593ad3179131fe2eaed75477345203410811f85e8138690726bc97f9d2831e4a
; role: candidate ZIP signature validation; no refcount operation
; APK file offset: 0x00576d2c, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x00576d2c, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader7isValidEPNS0_9IReadFileE
; demangled: glitch::io::CZipReader::isValid(glitch::io::IReadFile*)
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
00576db4  f8 83 36 00                                      .byte 0xf8, 0x83, 0x36, 0x00

; OWNERSHIP RANGE 0x00576f18, size=652, instruction_or_code_bytes=632, sha256=0b5d214ead3ef02397fa3754844abab7c853a9b21e0374bcfebf462ebe6217e1
; role: indexed member open; returned stream construction paths
; APK file offset: 0x00576f18, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x00576f18, declared_size=652, range_size=652, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader8openFileEi
; demangled: glitch::io::CZipReader::openFile(int)
00576f18  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00576f1c  6c 50 a0 e3                                      mov r5, #0x6c
00576f20  95 01 05 e0                                      mul r5, r5, r1
00576f24  14 20 90 e5                                      ldr r2, [r0, #0x14]
00576f28  44 d0 4d e2                                      sub sp, sp, #0x44
00576f2c  00 40 a0 e1                                      mov r4, r0
00576f30  05 20 82 e0                                      add r2, r2, r5
00576f34  f4 65 d2 e1                                      ldrsh r6, [r2, #0x54]
00576f38  00 00 56 e3                                      cmp r6, #0
00576f3c  1a 00 00 1a                                      bne #0x576fac
00576f40  08 30 90 e5                                      ldr r3, [r0, #8]
00576f44  48 10 92 e5                                      ldr r1, [r2, #0x48]
00576f48  06 20 a0 e1                                      mov r2, r6
00576f4c  03 00 a0 e1                                      mov r0, r3
00576f50  00 30 93 e5                                      ldr r3, [r3]
00576f54  0f e0 a0 e1                                      mov lr, pc
00576f58  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00576f5c  10 10 94 e5                                      ldr r1, [r4, #0x10]
00576f60  01 10 11 e2                                      ands r1, r1, #1
00576f64  57 00 00 0a                                      beq #0x5770c8
00576f68  14 30 94 e5                                      ldr r3, [r4, #0x14]
00576f6c  06 10 a0 e1                                      mov r1, r6
00576f70  50 00 a0 e3                                      mov r0, #0x50
00576f74  05 50 83 e0                                      add r5, r3, r5
00576f78  b2 36 d5 e1                                      ldrh r3, [r5, #0x62]
00576f7c  b4 66 d5 e1                                      ldrh r6, [r5, #0x64]
00576f80  2c 50 95 e5                                      ldr r5, [r5, #0x2c]
00576f84  06 68 83 e1                                      orr r6, r3, r6, lsl #16
00576f88  87 f4 fe eb                                      bl #0x5341ac
00576f8c  08 10 94 e5                                      ldr r1, [r4, #8]
00576f90  00 80 a0 e1                                      mov r8, r0
00576f94  06 20 a0 e1                                      mov r2, r6
00576f98  05 30 a0 e1                                      mov r3, r5
00576f9c  00 50 8d e5                                      str r5, [sp]
00576fa0  1a f6 04 eb                                      bl #0x6b4810
00576fa4  08 00 a0 e1                                      mov r0, r8
00576fa8  07 00 00 ea                                      b #0x576fcc
00576fac  08 00 56 e3                                      cmp r6, #8
00576fb0  07 00 00 0a                                      beq #0x576fd4
00576fb4  d4 01 9f e5                                      ldr r0, [pc, #0x1d4]
00576fb8  2c 10 92 e5                                      ldr r1, [r2, #0x2c]
00576fbc  03 20 a0 e3                                      mov r2, #3
00576fc0  00 00 8f e0                                      add r0, pc, r0
00576fc4  47 4f 02 eb                                      bl #0x60ace8
00576fc8  00 00 a0 e3                                      mov r0, #0
00576fcc  44 d0 8d e2                                      add sp, sp, #0x44
00576fd0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00576fd4  b2 16 d2 e1                                      ldrh r1, [r2, #0x62]
00576fd8  b4 a6 d2 e1                                      ldrh sl, [r2, #0x64]
00576fdc  b0 66 d2 e1                                      ldrh r6, [r2, #0x60]
00576fe0  be 35 d2 e1                                      ldrh r3, [r2, #0x5e]
00576fe4  0a a8 81 e1                                      orr sl, r1, sl, lsl #16
00576fe8  0a 00 a0 e1                                      mov r0, sl
00576fec  00 10 a0 e3                                      mov r1, #0
00576ff0  06 68 83 e1                                      orr r6, r3, r6, lsl #16
00576ff4  6b f4 fe eb                                      bl #0x5341a8
00576ff8  00 b0 50 e2                                      subs fp, r0, #0
00576ffc  51 00 00 0a                                      beq #0x577148
00577000  06 00 a0 e1                                      mov r0, r6
00577004  00 10 a0 e3                                      mov r1, #0
00577008  66 f4 fe eb                                      bl #0x5341a8
0057700c  00 70 50 e2                                      subs r7, r0, #0
00577010  55 00 00 0a                                      beq #0x57716c
00577014  14 10 94 e5                                      ldr r1, [r4, #0x14]
00577018  08 30 94 e5                                      ldr r3, [r4, #8]
0057701c  00 20 a0 e3                                      mov r2, #0
00577020  05 10 81 e0                                      add r1, r1, r5
00577024  48 10 91 e5                                      ldr r1, [r1, #0x48]
00577028  03 00 a0 e1                                      mov r0, r3
0057702c  00 30 93 e5                                      ldr r3, [r3]
00577030  0f e0 a0 e1                                      mov lr, pc
00577034  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00577038  08 30 94 e5                                      ldr r3, [r4, #8]
0057703c  07 10 a0 e1                                      mov r1, r7
00577040  06 20 a0 e1                                      mov r2, r6
00577044  03 00 a0 e1                                      mov r0, r3
00577048  00 30 93 e5                                      ldr r3, [r3]
0057704c  0f e0 a0 e1                                      mov lr, pc
00577050  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00577054  38 21 9f e5                                      ldr r2, [pc, #0x138]
00577058  08 90 8d e2                                      add sb, sp, #8
0057705c  00 80 a0 e3                                      mov r8, #0
00577060  02 20 8f e0                                      add r2, pc, r2
00577064  09 00 a0 e1                                      mov r0, sb
00577068  0e 10 e0 e3                                      mvn r1, #0xe
0057706c  38 30 a0 e3                                      mov r3, #0x38
00577070  0c 60 8d e5                                      str r6, [sp, #0xc]
00577074  08 70 8d e5                                      str r7, [sp, #8]
00577078  14 b0 8d e5                                      str fp, [sp, #0x14]
0057707c  18 a0 8d e5                                      str sl, [sp, #0x18]
00577080  28 80 8d e5                                      str r8, [sp, #0x28]
00577084  2c 80 8d e5                                      str r8, [sp, #0x2c]
00577088  b5 ed 03 eb                                      bl #0x672764
0057708c  08 00 50 e1                                      cmp r0, r8
00577090  1b 00 00 0a                                      beq #0x577104
00577094  07 00 a0 e1                                      mov r0, r7
00577098  06 5c f6 eb                                      bl #0x30e0b8
0057709c  14 30 94 e5                                      ldr r3, [r4, #0x14]
005770a0  f0 00 9f e5                                      ldr r0, [pc, #0xf0]
005770a4  03 20 a0 e3                                      mov r2, #3
005770a8  05 50 83 e0                                      add r5, r3, r5
005770ac  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
005770b0  00 00 8f e0                                      add r0, pc, r0
005770b4  0b 4f 02 eb                                      bl #0x60ace8
005770b8  0b 00 a0 e1                                      mov r0, fp
005770bc  fd 5b f6 eb                                      bl #0x30e0b8
005770c0  08 00 a0 e1                                      mov r0, r8
005770c4  c0 ff ff ea                                      b #0x576fcc
005770c8  14 30 94 e5                                      ldr r3, [r4, #0x14]
005770cc  50 00 a0 e3                                      mov r0, #0x50
005770d0  05 50 83 e0                                      add r5, r3, r5
005770d4  b2 36 d5 e1                                      ldrh r3, [r5, #0x62]
005770d8  b4 66 d5 e1                                      ldrh r6, [r5, #0x64]
005770dc  2c 50 95 e5                                      ldr r5, [r5, #0x2c]
005770e0  06 68 83 e1                                      orr r6, r3, r6, lsl #16
005770e4  30 f4 fe eb                                      bl #0x5341ac
005770e8  08 10 94 e5                                      ldr r1, [r4, #8]
005770ec  00 80 a0 e1                                      mov r8, r0
005770f0  06 20 a0 e1                                      mov r2, r6
005770f4  05 30 a0 e1                                      mov r3, r5
005770f8  31 f6 04 eb                                      bl #0x6b49c4
005770fc  08 00 a0 e1                                      mov r0, r8
00577100  b1 ff ff ea                                      b #0x576fcc
00577104  04 10 a0 e3                                      mov r1, #4
00577108  09 00 a0 e1                                      mov r0, sb
0057710c  8d ef 03 eb                                      bl #0x672f48
00577110  09 00 a0 e1                                      mov r0, sb
00577114  de ed 03 eb                                      bl #0x672894
00577118  09 00 a0 e1                                      mov r0, sb
0057711c  dc ed 03 eb                                      bl #0x672894
00577120  07 00 a0 e1                                      mov r0, r7
00577124  e3 5b f6 eb                                      bl #0x30e0b8
00577128  14 30 94 e5                                      ldr r3, [r4, #0x14]
0057712c  0b 00 a0 e1                                      mov r0, fp
00577130  0a 10 a0 e1                                      mov r1, sl
00577134  05 50 83 e0                                      add r5, r3, r5
00577138  14 20 95 e5                                      ldr r2, [r5, #0x14]
0057713c  01 30 a0 e3                                      mov r3, #1
00577140  8a e0 ff eb                                      bl #0x56f370
00577144  a0 ff ff ea                                      b #0x576fcc
00577148  14 30 94 e5                                      ldr r3, [r4, #0x14]
0057714c  48 00 9f e5                                      ldr r0, [pc, #0x48]
00577150  03 20 a0 e3                                      mov r2, #3
00577154  05 50 83 e0                                      add r5, r3, r5
00577158  00 00 8f e0                                      add r0, pc, r0
0057715c  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
00577160  e0 4e 02 eb                                      bl #0x60ace8
00577164  0b 00 a0 e1                                      mov r0, fp
00577168  97 ff ff ea                                      b #0x576fcc
0057716c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00577170  28 00 9f e5                                      ldr r0, [pc, #0x28]
00577174  03 20 a0 e3                                      mov r2, #3
00577178  05 50 83 e0                                      add r5, r3, r5
0057717c  00 00 8f e0                                      add r0, pc, r0
00577180  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
00577184  d7 4e 02 eb                                      bl #0x60ace8
00577188  07 00 a0 e1                                      mov r0, r7
0057718c  8e ff ff ea                                      b #0x576fcc
00577190  c0 81 36 00 00 81 36 00 b8 80 36 00 e0 7f 36 00  .byte 0xc0, 0x81, 0x36, 0x00, 0x00, 0x81, 0x36, 0x00, 0xb8, 0x80, 0x36, 0x00, 0xe0, 0x7f, 0x36, 0x00
005771a0  bc 7f 36 00                                      .byte 0xbc, 0x7f, 0x36, 0x00

; OWNERSHIP RANGE 0x00577444, size=68, instruction_or_code_bytes=68, sha256=9cb7e2681fa573547e283f886c2cdce0faa4bf5ce5346b1abedbe7999e5abfbd
; role: ZIP reader destructor dependency; vector entry and storage destruction
; APK file offset: 0x00577444, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x00577444, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::io::SZipFileEntry, glitch::core::SAllocator<glitch::io::SZipFileEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2io13SZipFileEntryENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::io::SZipFileEntry, glitch::core::SAllocator<glitch::io::SZipFileEntry, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
00577444  70 40 2d e9                                      push {r4, r5, r6, lr}
00577448  04 40 90 e5                                      ldr r4, [r0, #4]
0057744c  00 50 90 e5                                      ldr r5, [r0]
00577450  00 60 a0 e1                                      mov r6, r0
00577454  05 00 54 e1                                      cmp r4, r5
00577458  04 00 00 0a                                      beq #0x577470
0057745c  6c 40 44 e2                                      sub r4, r4, #0x6c
00577460  04 00 a0 e1                                      mov r0, r4
00577464  de ff ff eb                                      bl #0x5773e4
00577468  04 00 55 e1                                      cmp r5, r4
0057746c  fa ff ff 1a                                      bne #0x57745c
00577470  00 00 96 e5                                      ldr r0, [r6]
00577474  00 00 50 e3                                      cmp r0, #0
00577478  00 00 00 0a                                      beq #0x577480
0057747c  f3 63 f6 eb                                      bl #0x310450
00577480  06 00 a0 e1                                      mov r0, r6
00577484  70 80 bd e8                                      pop {r4, r5, r6, pc}

; OWNERSHIP RANGE 0x00577488, size=72, instruction_or_code_bytes=64, sha256=235fbb96895e06e5a4997e53589c86f1ab13b11812da6fec7ee69649c92260bd
; role: complete-object/stack reader destructor; drops held stream
; APK file offset: 0x00577488, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x00577488, declared_size=72, range_size=72, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReaderD1Ev
; demangled: glitch::io::CZipReader::~CZipReader()
00577488  10 40 2d e9                                      push {r4, lr}
0057748c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00577490  34 20 9f e5                                      ldr r2, [pc, #0x34]
00577494  00 40 a0 e1                                      mov r4, r0
00577498  03 30 8f e0                                      add r3, pc, r3
0057749c  08 00 90 e5                                      ldr r0, [r0, #8]
005774a0  02 20 93 e7                                      ldr r2, [r3, r2]
005774a4  00 00 50 e3                                      cmp r0, #0
005774a8  08 20 82 e2                                      add r2, r2, #8
005774ac  00 20 84 e5                                      str r2, [r4]
005774b0  00 00 00 0a                                      beq #0x5774b8
005774b4  32 98 f6 eb                                      bl #0x31d584
005774b8  14 00 84 e2                                      add r0, r4, #0x14
005774bc  e0 ff ff eb                                      bl #0x577444
005774c0  04 00 a0 e1                                      mov r0, r4
005774c4  10 80 bd e8                                      pop {r4, pc}
005774c8  f8 d5 41 00 b0 24 00 00                          .byte 0xf8, 0xd5, 0x41, 0x00, 0xb0, 0x24, 0x00, 0x00

; OWNERSHIP RANGE 0x005774d0, size=28, instruction_or_code_bytes=28, sha256=4c90d2b8a907390edf7f560a9c2cf1ed9a33752accaa37d1e5660b3079619a3f
; role: deleting reader destructor used by zero-count drop
; APK file offset: 0x005774d0, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x005774d0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReaderD0Ev
; demangled: glitch::io::CZipReader::~CZipReader()
005774d0  10 40 2d e9                                      push {r4, lr}
005774d4  00 40 a0 e1                                      mov r4, r0
005774d8  ea ff ff eb                                      bl #0x577488
005774dc  04 00 a0 e1                                      mov r0, r4
005774e0  72 5b f6 eb                                      bl #0x30e2b0
005774e4  04 00 a0 e1                                      mov r0, r4
005774e8  10 80 bd e8                                      pop {r4, pc}

; OWNERSHIP RANGE 0x00577fa4, size=172, instruction_or_code_bytes=164, sha256=a7dc25d7406cd67ee17e1a688c9381bfb74766a8f91ecfbb802aac3da617e267
; role: reader construction from IReadFile; initial count and retained input
; APK file offset: 0x00577fa4, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x00577fa4, declared_size=172, range_size=172, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReaderC1EPNS0_9IReadFileEbb
; demangled: glitch::io::CZipReader::CZipReader(glitch::io::IReadFile*, bool, bool)
00577fa4  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
00577fa8  70 40 2d e9                                      push {r4, r5, r6, lr}
00577fac  98 50 9f e5                                      ldr r5, [pc, #0x98]
00577fb0  0c c0 8f e0                                      add ip, pc, ip
00577fb4  00 40 a0 e1                                      mov r4, r0
00577fb8  05 50 9c e7                                      ldr r5, [ip, r5]
00577fbc  00 00 a0 e3                                      mov r0, #0
00577fc0  01 60 a0 e3                                      mov r6, #1
00577fc4  08 50 85 e2                                      add r5, r5, #8
00577fc8  00 00 51 e3                                      cmp r1, #0
00577fcc  60 00 84 e8                                      stm r4, {r5, r6}
00577fd0  0c 20 c4 e5                                      strb r2, [r4, #0xc]
00577fd4  0d 30 c4 e5                                      strb r3, [r4, #0xd]
00577fd8  1c 00 84 e5                                      str r0, [r4, #0x1c]
00577fdc  08 10 84 e5                                      str r1, [r4, #8]
00577fe0  10 00 84 e5                                      str r0, [r4, #0x10]
00577fe4  14 00 84 e5                                      str r0, [r4, #0x14]
00577fe8  18 00 84 e5                                      str r0, [r4, #0x18]
00577fec  13 00 00 0a                                      beq #0x578040
00577ff0  04 30 91 e5                                      ldr r3, [r1, #4]
00577ff4  06 30 83 e0                                      add r3, r3, r6
00577ff8  04 30 81 e5                                      str r3, [r1, #4]
00577ffc  04 00 a0 e1                                      mov r0, r4
00578000  6b ff ff eb                                      bl #0x577db4
00578004  00 00 50 e3                                      cmp r0, #0
00578008  fb ff ff 1a                                      bne #0x577ffc
0057800c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00578010  18 30 94 e5                                      ldr r3, [r4, #0x18]
00578014  03 30 60 e0                                      rsb r3, r0, r3
00578018  43 31 a0 e1                                      asr r3, r3, #2
0057801c  83 11 83 e0                                      add r1, r3, r3, lsl #3
00578020  81 30 83 e0                                      add r3, r3, r1, lsl #1
00578024  83 14 a0 e1                                      lsl r1, r3, #9
00578028  01 10 63 e0                                      rsb r1, r3, r1
0057802c  01 19 81 e0                                      add r1, r1, r1, lsl #18
00578030  00 10 61 e2                                      rsb r1, r1, #0
00578034  01 00 51 e3                                      cmp r1, #1
00578038  00 00 00 9a                                      bls #0x578040
0057803c  da fd ff eb                                      bl #0x5777ac
00578040  04 00 a0 e1                                      mov r0, r4
00578044  70 80 bd e8                                      pop {r4, r5, r6, pc}
00578048  e0 ca 41 00 b0 24 00 00                          .byte 0xe0, 0xca, 0x41, 0x00, 0xb0, 0x24, 0x00, 0x00

; OWNERSHIP RANGE 0x00578624, size=44, instruction_or_code_bytes=44, sha256=1def98d844a0d4317c44eb824dc8dc379308ded5d69512630241bd4fc62c3425
; role: named member open; dispatches to findFile and indexed open
; APK file offset: 0x00578624, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x00578624, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader8openFileEPKc
; demangled: glitch::io::CZipReader::openFile(char const*)
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

; OWNERSHIP RANGE 0x0031d584, size=72, instruction_or_code_bytes=72, sha256=031bcb422bbf342aaf77d522ed55d90a7e23c759e1df0ae80d63a2966541a4d2
; role: IReferenceCounted drop; decrement and zero-count destructor dispatch
; APK file offset: 0x0031d584, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x0031d584, declared_size=72, range_size=72, mode=arm
; class-group: glitch::IReferenceCounted
; alias: _ZNK6glitch17IReferenceCounted4dropEv
; demangled: glitch::IReferenceCounted::drop() const
0031d584  10 40 2d e9                                      push {r4, lr}
0031d588  04 30 90 e5                                      ldr r3, [r0, #4]
0031d58c  00 40 a0 e1                                      mov r4, r0
0031d590  01 30 43 e2                                      sub r3, r3, #1
0031d594  00 00 53 e3                                      cmp r3, #0
0031d598  04 30 80 e5                                      str r3, [r0, #4]
0031d59c  01 00 00 0a                                      beq #0x31d5a8
0031d5a0  00 00 a0 e3                                      mov r0, #0
0031d5a4  10 80 bd e8                                      pop {r4, pc}
0031d5a8  00 30 90 e5                                      ldr r3, [r0]
0031d5ac  0f e0 a0 e1                                      mov lr, pc
0031d5b0  08 f0 93 e5                                      ldr pc, [r3, #8]
0031d5b4  04 00 a0 e1                                      mov r0, r4
0031d5b8  00 30 94 e5                                      ldr r3, [r4]
0031d5bc  0f e0 a0 e1                                      mov lr, pc
0031d5c0  04 f0 93 e5                                      ldr pc, [r3, #4]
0031d5c4  01 00 a0 e3                                      mov r0, #1
0031d5c8  10 80 bd e8                                      pop {r4, pc}

; OWNERSHIP RANGE 0x006b4810, size=172, instruction_or_code_bytes=164, sha256=a3b483f7650008d663fc81186bfd84f90cee4247a9ba9a5d22617bef24f13cf2
; role: CLimitReadFile constructor on member-open path; initial count and retained slot
; APK file offset: 0x006b4810, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x006b4810, declared_size=172, range_size=172, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFileC1EPNS0_9IReadFileElPKcS5_
; demangled: glitch::io::CLimitReadFile::CLimitReadFile(glitch::io::IReadFile*, long, char const*, char const*)
006b4810  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
006b4814  70 40 2d e9                                      push {r4, r5, r6, lr}
006b4818  98 e0 9f e5                                      ldr lr, [pc, #0x98]
006b481c  0c c0 8f e0                                      add ip, pc, ip
006b4820  00 40 a0 e1                                      mov r4, r0
006b4824  0e e0 9c e7                                      ldr lr, [ip, lr]
006b4828  08 d0 4d e2                                      sub sp, sp, #8
006b482c  01 50 a0 e3                                      mov r5, #1
006b4830  08 e0 8e e2                                      add lr, lr, #8
006b4834  04 50 84 e5                                      str r5, [r4, #4]
006b4838  02 60 a0 e1                                      mov r6, r2
006b483c  0c e0 80 e4                                      str lr, [r0], #0xc
006b4840  01 50 a0 e1                                      mov r5, r1
006b4844  04 20 8d e2                                      add r2, sp, #4
006b4848  03 10 a0 e1                                      mov r1, r3
006b484c  fa c5 f1 eb                                      bl #0x32603c
006b4850  24 30 84 e2                                      add r3, r4, #0x24
006b4854  03 00 a0 e1                                      mov r0, r3
006b4858  34 30 84 e5                                      str r3, [r4, #0x34]
006b485c  38 30 84 e5                                      str r3, [r4, #0x38]
006b4860  10 10 a0 e3                                      mov r1, #0x10
006b4864  4f b0 f1 eb                                      bl #0x3209a8
006b4868  34 20 94 e5                                      ldr r2, [r4, #0x34]
006b486c  00 30 a0 e3                                      mov r3, #0
006b4870  05 00 a0 e1                                      mov r0, r5
006b4874  00 30 c2 e5                                      strb r3, [r2]
006b4878  3c 60 84 e5                                      str r6, [r4, #0x3c]
006b487c  4c 30 84 e5                                      str r3, [r4, #0x4c]
006b4880  40 30 84 e5                                      str r3, [r4, #0x40]
006b4884  44 30 84 e5                                      str r3, [r4, #0x44]
006b4888  48 50 84 e5                                      str r5, [r4, #0x48]
006b488c  00 30 95 e5                                      ldr r3, [r5]
006b4890  0f e0 a0 e1                                      mov lr, pc
006b4894  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b4898  48 00 84 e5                                      str r0, [r4, #0x48]
006b489c  18 10 9d e5                                      ldr r1, [sp, #0x18]
006b48a0  04 00 a0 e1                                      mov r0, r4
006b48a4  a5 ff ff eb                                      bl #0x6b4740
006b48a8  04 00 a0 e1                                      mov r0, r4
006b48ac  08 d0 8d e2                                      add sp, sp, #8
006b48b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b48b4  74 02 2e 00 b4 2b 00 00                          .byte 0x74, 0x02, 0x2e, 0x00, 0xb4, 0x2b, 0x00, 0x00

; OWNERSHIP RANGE 0x006b4bcc, size=120, instruction_or_code_bytes=112, sha256=fddf3403682f5a2679c772117bc5254905ddabaa1157b4df6549c577e4dc3bfe
; role: CLimitReadFile complete-object destructor; drops retained slot
; APK file offset: 0x006b4bcc, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x006b4bcc, declared_size=120, range_size=120, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFileD1Ev
; demangled: glitch::io::CLimitReadFile::~CLimitReadFile()
006b4bcc  10 40 2d e9                                      push {r4, lr}
006b4bd0  64 30 9f e5                                      ldr r3, [pc, #0x64]
006b4bd4  64 20 9f e5                                      ldr r2, [pc, #0x64]
006b4bd8  00 40 a0 e1                                      mov r4, r0
006b4bdc  03 30 8f e0                                      add r3, pc, r3
006b4be0  48 00 90 e5                                      ldr r0, [r0, #0x48]
006b4be4  02 20 93 e7                                      ldr r2, [r3, r2]
006b4be8  00 00 50 e3                                      cmp r0, #0
006b4bec  08 20 82 e2                                      add r2, r2, #8
006b4bf0  00 20 84 e5                                      str r2, [r4]
006b4bf4  00 00 00 0a                                      beq #0x6b4bfc
006b4bf8  61 a2 f1 eb                                      bl #0x31d584
006b4bfc  24 30 84 e2                                      add r3, r4, #0x24
006b4c00  14 00 93 e5                                      ldr r0, [r3, #0x14]
006b4c04  03 00 50 e1                                      cmp r0, r3
006b4c08  02 00 00 0a                                      beq #0x6b4c18
006b4c0c  00 00 50 e3                                      cmp r0, #0
006b4c10  00 00 00 0a                                      beq #0x6b4c18
006b4c14  0d 6e f1 eb                                      bl #0x310450
006b4c18  0c 30 84 e2                                      add r3, r4, #0xc
006b4c1c  14 00 93 e5                                      ldr r0, [r3, #0x14]
006b4c20  03 00 50 e1                                      cmp r0, r3
006b4c24  02 00 00 0a                                      beq #0x6b4c34
006b4c28  00 00 50 e3                                      cmp r0, #0
006b4c2c  00 00 00 0a                                      beq #0x6b4c34
006b4c30  06 6e f1 eb                                      bl #0x310450
006b4c34  04 00 a0 e1                                      mov r0, r4
006b4c38  10 80 bd e8                                      pop {r4, pc}
006b4c3c  b4 fe 2d 00 b4 2b 00 00                          .byte 0xb4, 0xfe, 0x2d, 0x00, 0xb4, 0x2b, 0x00, 0x00

; OWNERSHIP RANGE 0x006b4c44, size=28, instruction_or_code_bytes=28, sha256=bb87ef7c2a8dfc8a42404692041fd0c59fae598ed20a2db5c1ce8334bdcf2bef
; role: deleting CLimitReadFile destructor
; APK file offset: 0x006b4c44, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x006b4c44, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFileD0Ev
; demangled: glitch::io::CLimitReadFile::~CLimitReadFile()
006b4c44  10 40 2d e9                                      push {r4, lr}
006b4c48  00 40 a0 e1                                      mov r4, r0
006b4c4c  de ff ff eb                                      bl #0x6b4bcc
006b4c50  04 00 a0 e1                                      mov r0, r4
006b4c54  95 65 f1 eb                                      bl #0x30e2b0
006b4c58  04 00 a0 e1                                      mov r0, r4
006b4c5c  10 80 bd e8                                      pop {r4, pc}

; OWNERSHIP RANGE 0x00578520, size=260, instruction_or_code_bytes=252, sha256=44ec4bd1f62fc7d9ee52084b2a7b44163a44641aafb9483cda3a5274051312c4
; role: member-name lookup used by openFile(char const*); -1 denotes no index found
; APK file offset: 0x00578520, PT_LOAD #1 (p_offset=0x0, p_vaddr=0x0)
; FUNCTION 0x00578520, declared_size=260, range_size=260, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader8findFileEPKc
; demangled: glitch::io::CZipReader::findFile(char const*)
00578520  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00578524  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
00578528  f0 70 9f e5                                      ldr r7, [pc, #0xf0]
0057852c  70 d0 4d e2                                      sub sp, sp, #0x70
00578530  04 40 8f e0                                      add r4, pc, r4
00578534  07 30 94 e7                                      ldr r3, [r4, r7]
00578538  01 80 a0 e1                                      mov r8, r1
0057853c  00 60 a0 e1                                      mov r6, r0
00578540  00 30 93 e5                                      ldr r3, [r3]
00578544  0d 00 a0 e1                                      mov r0, sp
00578548  0d 50 a0 e1                                      mov r5, sp
0057854c  6c 30 8d e5                                      str r3, [sp, #0x6c]
00578550  6c fb ff eb                                      bl #0x577308
00578554  08 00 a0 e1                                      mov r0, r8
00578558  3d 56 f6 eb                                      bl #0x30de54
0057855c  08 10 a0 e1                                      mov r1, r8
00578560  00 20 88 e0                                      add r2, r8, r0
00578564  18 00 8d e2                                      add r0, sp, #0x18
00578568  86 a1 f6 eb                                      bl #0x320b88
0057856c  0c 30 d6 e5                                      ldrb r3, [r6, #0xc]
00578570  00 00 53 e3                                      cmp r3, #0
00578574  13 00 00 0a                                      beq #0x5785c8
00578578  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0057857c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00578580  03 00 52 e1                                      cmp r2, r3
00578584  0f 00 00 0a                                      beq #0x5785c8
00578588  00 30 a0 e3                                      mov r3, #0
0057858c  03 10 d2 e7                                      ldrb r1, [r2, r3]
00578590  03 20 82 e0                                      add r2, r2, r3
00578594  01 30 83 e2                                      add r3, r3, #1
00578598  71 00 ef e6                                      uxtb r0, r1
0057859c  41 c0 40 e2                                      sub ip, r0, #0x41
005785a0  7c c0 ef e6                                      uxtb ip, ip
005785a4  19 00 5c e3                                      cmp ip, #0x19
005785a8  20 10 80 92                                      addls r1, r0, #0x20
005785ac  71 10 ef 96                                      uxtbls r1, r1
005785b0  00 10 c2 e5                                      strb r1, [r2]
005785b4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005785b8  28 10 9d e5                                      ldr r1, [sp, #0x28]
005785bc  01 10 62 e0                                      rsb r1, r2, r1
005785c0  01 00 53 e1                                      cmp r3, r1
005785c4  f0 ff ff 3a                                      blo #0x57858c
005785c8  0d 30 d6 e5                                      ldrb r3, [r6, #0xd]
005785cc  00 00 53 e3                                      cmp r3, #0
005785d0  02 00 00 0a                                      beq #0x5785e0
005785d4  06 00 a0 e1                                      mov r0, r6
005785d8  18 10 85 e2                                      add r1, r5, #0x18
005785dc  5b fd ff eb                                      bl #0x577b50
005785e0  14 00 86 e2                                      add r0, r6, #0x14
005785e4  0d 10 a0 e1                                      mov r1, sp
005785e8  75 ff ff eb                                      bl #0x5783c4
005785ec  00 60 a0 e1                                      mov r6, r0
005785f0  0d 00 a0 e1                                      mov r0, sp
005785f4  7a fb ff eb                                      bl #0x5773e4
005785f8  07 30 94 e7                                      ldr r3, [r4, r7]
005785fc  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00578600  06 00 a0 e1                                      mov r0, r6
00578604  00 30 93 e5                                      ldr r3, [r3]
00578608  03 00 52 e1                                      cmp r2, r3
0057860c  01 00 00 1a                                      bne #0x578618
00578610  70 d0 8d e2                                      add sp, sp, #0x70
00578614  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00578618  3c 57 f6 eb                                      bl #0x30e310
0057861c  60 c5 41 00 ac 40 00 00                          .byte 0x60, 0xc5, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00
