; Exact assembly listing excerpts from the recovered libDungeonHunter2.so ARM mapping.
; Each FUNCTION block includes the declared byte range and its inline literal/data bytes.
; Range hashes are listed in the adjacent original-functions.json index.

; FUNCTION 0x0056c6b4, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZNK6glitch2io11CFileSystem10getFileDirERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::io::CFileSystem::getFileDir(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&) const
; decoder-mode: arm
0056c6b4  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c6b8  2f 10 a0 e3                                      mov r1, #0x2f
0056c6bc  10 d0 4d e2                                      sub sp, sp, #0x10
0056c6c0  00 40 a0 e1                                      mov r4, r0
0056c6c4  02 00 a0 e1                                      mov r0, r2
0056c6c8  02 50 a0 e1                                      mov r5, r2
0056c6cc  db ff ff eb                                      bl #0x56c640
0056c6d0  5c 10 a0 e3                                      mov r1, #0x5c
0056c6d4  00 60 a0 e1                                      mov r6, r0
0056c6d8  05 00 a0 e1                                      mov r0, r5
0056c6dc  d7 ff ff eb                                      bl #0x56c640
0056c6e0  10 10 95 e5                                      ldr r1, [r5, #0x10]
0056c6e4  14 20 95 e5                                      ldr r2, [r5, #0x14]
0056c6e8  06 00 50 e1                                      cmp r0, r6
0056c6ec  00 30 a0 a1                                      movge r3, r0
0056c6f0  06 30 a0 b1                                      movlt r3, r6
0056c6f4  01 20 62 e0                                      rsb r2, r2, r1
0056c6f8  02 00 53 e1                                      cmp r3, r2
0056c6fc  07 00 00 3a                                      blo #0x56c720
0056c700  34 10 9f e5                                      ldr r1, [pc, #0x34]
0056c704  04 00 a0 e1                                      mov r0, r4
0056c708  0c 20 8d e2                                      add r2, sp, #0xc
0056c70c  01 10 8f e0                                      add r1, pc, r1
0056c710  49 e6 f6 eb                                      bl #0x32603c
0056c714  04 00 a0 e1                                      mov r0, r4
0056c718  10 d0 8d e2                                      add sp, sp, #0x10
0056c71c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0056c720  08 c0 8d e2                                      add ip, sp, #8
0056c724  05 10 a0 e1                                      mov r1, r5
0056c728  04 00 a0 e1                                      mov r0, r4
0056c72c  00 20 a0 e3                                      mov r2, #0
0056c730  00 c0 8d e5                                      str ip, [sp]
0056c734  62 ff ff eb                                      bl #0x56c4c4
0056c738  f5 ff ff ea                                      b #0x56c714
; mapping-symbol data/literal pool
0056c73c  94 83 37 00                                      .byte 0x94, 0x83, 0x37, 0x00


; FUNCTION 0x0056c640, declared_size=116, range_size=116, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNKSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE5rfindEcj.clone.1
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::rfind(char, unsigned int) const [clone .clone.1]
; decoder-mode: arm
0056c640  30 40 2d e9                                      push {r4, r5, lr}
0056c644  14 c0 90 e5                                      ldr ip, [r0, #0x14]
0056c648  10 30 90 e5                                      ldr r3, [r0, #0x10]
0056c64c  24 d0 4d e2                                      sub sp, sp, #0x24
0056c650  00 40 a0 e1                                      mov r4, r0
0056c654  0c 30 53 e0                                      subs r3, r3, ip
0056c658  01 50 a0 e1                                      mov r5, r1
0056c65c  12 00 00 0a                                      beq #0x56c6ac
0056c660  03 e0 8c e0                                      add lr, ip, r3
0056c664  14 00 8d e2                                      add r0, sp, #0x14
0056c668  1c 30 8d e2                                      add r3, sp, #0x1c
0056c66c  0c c0 8d e5                                      str ip, [sp, #0xc]
0056c670  10 10 8d e2                                      add r1, sp, #0x10
0056c674  18 c0 8d e2                                      add ip, sp, #0x18
0056c678  0c 20 8d e2                                      add r2, sp, #0xc
0056c67c  10 e0 8d e5                                      str lr, [sp, #0x10]
0056c680  1c 50 cd e5                                      strb r5, [sp, #0x1c]
0056c684  00 c0 8d e5                                      str ip, [sp]
0056c688  2c 5d fc eb                                      bl #0x483b40
0056c68c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0056c690  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056c694  00 00 53 e1                                      cmp r3, r0
0056c698  01 00 40 12                                      subne r0, r0, #1
0056c69c  00 00 63 10                                      rsbne r0, r3, r0
0056c6a0  01 00 00 0a                                      beq #0x56c6ac
0056c6a4  24 d0 8d e2                                      add sp, sp, #0x24
0056c6a8  30 80 bd e8                                      pop {r4, r5, pc}
0056c6ac  00 00 e0 e3                                      mvn r0, #0
0056c6b0  fb ff ff ea                                      b #0x56c6a4


; FUNCTION 0x0056c4c4, declared_size=100, range_size=100, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEEC1ERKS7_jjRKS6_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::basic_string(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, unsigned int, unsigned int, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> const&)
; decoder-mode: arm
0056c4c4  10 40 2d e9                                      push {r4, lr}
0056c4c8  00 40 a0 e1                                      mov r4, r0
0056c4cc  10 00 84 e5                                      str r0, [r4, #0x10]
0056c4d0  14 00 84 e5                                      str r0, [r4, #0x14]
0056c4d4  10 e0 91 e5                                      ldr lr, [r1, #0x10]
0056c4d8  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0056c4dc  02 10 a0 e1                                      mov r1, r2
0056c4e0  0e e0 6c e0                                      rsb lr, ip, lr
0056c4e4  0e 00 52 e1                                      cmp r2, lr
0056c4e8  08 00 00 8a                                      bhi #0x56c510
0056c4ec  0e e0 62 e0                                      rsb lr, r2, lr
0056c4f0  0e 00 53 e1                                      cmp r3, lr
0056c4f4  03 30 82 90                                      addls r3, r2, r3
0056c4f8  0e 30 82 80                                      addhi r3, r2, lr
0056c4fc  03 20 8c e0                                      add r2, ip, r3
0056c500  01 10 8c e0                                      add r1, ip, r1
0056c504  ba e6 f6 eb                                      bl #0x325ff4
0056c508  04 00 a0 e1                                      mov r0, r4
0056c50c  10 80 bd e8                                      pop {r4, pc}
0056c510  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0056c514  00 00 8f e0                                      add r0, pc, r0
0056c518  64 72 06 eb                                      bl #0x708eb0
0056c51c  04 00 a0 e1                                      mov r0, r4
0056c520  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0056c524  44 1f 35 00                                      .byte 0x44, 0x1f, 0x35, 0x00


; FUNCTION 0x0032603c, declared_size=52, range_size=52, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEEC1EPKcRKS6_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::basic_string(char const*, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> const&)
; decoder-mode: arm
0032603c  70 40 2d e9                                      push {r4, r5, r6, lr}
00326040  00 40 a0 e1                                      mov r4, r0
00326044  10 00 84 e5                                      str r0, [r4, #0x10]
00326048  14 00 84 e5                                      str r0, [r4, #0x14]
0032604c  01 00 a0 e1                                      mov r0, r1
00326050  01 50 a0 e1                                      mov r5, r1
00326054  7e 9f ff eb                                      bl #0x30de54
00326058  05 10 a0 e1                                      mov r1, r5
0032605c  00 20 85 e0                                      add r2, r5, r0
00326060  04 00 a0 e1                                      mov r0, r4
00326064  e2 ff ff eb                                      bl #0x325ff4
00326068  04 00 a0 e1                                      mov r0, r4
0032606c  70 80 bd e8                                      pop {r4, r5, r6, pc}



; FUNCTION 0x0056c740, declared_size=260, range_size=260, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZNK6glitch2io11CFileSystem15getFileBasenameERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEb
; demangled: glitch::io::CFileSystem::getFileBasename(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, bool) const
; decoder-mode: arm
0056c740  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0056c744  2f 10 a0 e3                                      mov r1, #0x2f
0056c748  14 d0 4d e2                                      sub sp, sp, #0x14
0056c74c  00 50 a0 e1                                      mov r5, r0
0056c750  02 00 a0 e1                                      mov r0, r2
0056c754  02 40 a0 e1                                      mov r4, r2
0056c758  03 70 a0 e1                                      mov r7, r3
0056c75c  b7 ff ff eb                                      bl #0x56c640
0056c760  5c 10 a0 e3                                      mov r1, #0x5c
0056c764  00 60 a0 e1                                      mov r6, r0
0056c768  04 00 a0 e1                                      mov r0, r4
0056c76c  b3 ff ff eb                                      bl #0x56c640
0056c770  06 00 50 e1                                      cmp r0, r6
0056c774  00 60 a0 a1                                      movge r6, r0
0056c778  06 60 a0 b1                                      movlt r6, r6
0056c77c  00 00 57 e3                                      cmp r7, #0
0056c780  10 00 00 0a                                      beq #0x56c7c8
0056c784  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056c788  10 20 94 e5                                      ldr r2, [r4, #0x10]
0056c78c  00 70 a0 e3                                      mov r7, #0
0056c790  02 20 63 e0                                      rsb r2, r3, r2
0056c794  02 00 56 e1                                      cmp r6, r2
0056c798  17 00 00 3a                                      blo #0x56c7fc
0056c79c  00 00 57 e3                                      cmp r7, #0
0056c7a0  1f 00 00 1a                                      bne #0x56c824
0056c7a4  10 50 85 e5                                      str r5, [r5, #0x10]
0056c7a8  14 50 85 e5                                      str r5, [r5, #0x14]
0056c7ac  10 20 94 e5                                      ldr r2, [r4, #0x10]
0056c7b0  05 00 a0 e1                                      mov r0, r5
0056c7b4  14 10 94 e5                                      ldr r1, [r4, #0x14]
0056c7b8  0d e6 f6 eb                                      bl #0x325ff4
0056c7bc  05 00 a0 e1                                      mov r0, r5
0056c7c0  14 d0 8d e2                                      add sp, sp, #0x14
0056c7c4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0056c7c8  04 00 a0 e1                                      mov r0, r4
0056c7cc  2e 10 a0 e3                                      mov r1, #0x2e
0056c7d0  9a ff ff eb                                      bl #0x56c640
0056c7d4  01 00 70 e3                                      cmn r0, #1
0056c7d8  10 20 94 15                                      ldrne r2, [r4, #0x10]
0056c7dc  14 30 94 05                                      ldreq r3, [r4, #0x14]
0056c7e0  10 20 94 05                                      ldreq r2, [r4, #0x10]
0056c7e4  14 30 94 15                                      ldrne r3, [r4, #0x14]
0056c7e8  02 20 63 00                                      rsbeq r2, r3, r2
0056c7ec  02 20 63 10                                      rsbne r2, r3, r2
0056c7f0  02 70 60 10                                      rsbne r7, r0, r2
0056c7f4  02 00 56 e1                                      cmp r6, r2
0056c7f8  e7 ff ff 2a                                      bhs #0x56c79c
0056c7fc  06 30 e0 e1                                      mvn r3, r6
0056c800  02 20 83 e0                                      add r2, r3, r2
0056c804  02 30 67 e0                                      rsb r3, r7, r2
0056c808  0c c0 8d e2                                      add ip, sp, #0xc
0056c80c  04 10 a0 e1                                      mov r1, r4
0056c810  01 20 86 e2                                      add r2, r6, #1
0056c814  05 00 a0 e1                                      mov r0, r5
0056c818  00 c0 8d e5                                      str ip, [sp]
0056c81c  28 ff ff eb                                      bl #0x56c4c4
0056c820  e5 ff ff ea                                      b #0x56c7bc
0056c824  02 30 67 e0                                      rsb r3, r7, r2
0056c828  08 c0 8d e2                                      add ip, sp, #8
0056c82c  04 10 a0 e1                                      mov r1, r4
0056c830  05 00 a0 e1                                      mov r0, r5
0056c834  00 20 a0 e3                                      mov r2, #0
0056c838  00 c0 8d e5                                      str ip, [sp]
0056c83c  20 ff ff eb                                      bl #0x56c4c4
0056c840  dd ff ff ea                                      b #0x56c7bc


; FUNCTION 0x0056c0f8, declared_size=284, range_size=284, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc
; demangled: glitch::io::CFileSystem::createAndOpenFileFromArchives(char const*)
; decoder-mode: arm
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


; FUNCTION 0x0056d2c0, declared_size=276, range_size=276, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem17addZipFileArchiveEPKcbb
; demangled: glitch::io::CFileSystem::addZipFileArchive(char const*, bool, bool)
; decoder-mode: arm
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


; FUNCTION 0x0056ca70, declared_size=264, range_size=264, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem17addPakFileArchiveEPKcbb
; demangled: glitch::io::CFileSystem::addPakFileArchive(char const*, bool, bool)
; decoder-mode: arm
0056ca70  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056ca74  00 c0 90 e5                                      ldr ip, [r0]
0056ca78  00 40 a0 e1                                      mov r4, r0
0056ca7c  02 80 a0 e1                                      mov r8, r2
0056ca80  03 70 a0 e1                                      mov r7, r3
0056ca84  0f e0 a0 e1                                      mov lr, pc
0056ca88  0c f0 9c e5                                      ldr pc, [ip, #0xc]
0056ca8c  00 60 50 e2                                      subs r6, r0, #0
0056ca90  16 00 00 0a                                      beq #0x56caf0
0056ca94  00 10 a0 e3                                      mov r1, #0
0056ca98  28 00 a0 e3                                      mov r0, #0x28
0056ca9c  c2 1d ff eb                                      bl #0x5341ac
0056caa0  06 10 a0 e1                                      mov r1, r6
0056caa4  00 50 a0 e1                                      mov r5, r0
0056caa8  08 20 a0 e1                                      mov r2, r8
0056caac  07 30 a0 e1                                      mov r3, r7
0056cab0  5d 0d 00 eb                                      bl #0x57002c
0056cab4  00 00 55 e3                                      cmp r5, #0
0056cab8  07 00 00 0a                                      beq #0x56cadc
0056cabc  18 a0 94 e5                                      ldr sl, [r4, #0x18]
0056cac0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0056cac4  03 00 5a e1                                      cmp sl, r3
0056cac8  0a 00 00 0a                                      beq #0x56caf8
0056cacc  00 50 8a e5                                      str r5, [sl]
0056cad0  18 30 94 e5                                      ldr r3, [r4, #0x18]
0056cad4  04 30 83 e2                                      add r3, r3, #4
0056cad8  18 30 84 e5                                      str r3, [r4, #0x18]
0056cadc  06 00 a0 e1                                      mov r0, r6
0056cae0  a7 c2 f6 eb                                      bl #0x31d584
0056cae4  00 00 55 e2                                      subs r0, r5, #0
0056cae8  01 00 a0 13                                      movne r0, #1
0056caec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056caf0  06 00 a0 e1                                      mov r0, r6
0056caf4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056caf8  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cafc  0a 30 63 e0                                      rsb r3, r3, sl
0056cb00  43 31 a0 e1                                      asr r3, r3, #2
0056cb04  01 00 53 e3                                      cmp r3, #1
0056cb08  03 80 83 20                                      addhs r8, r3, r3
0056cb0c  01 80 83 32                                      addlo r8, r3, #1
0056cb10  07 01 78 e3                                      cmn r8, #0xc0000001
0056cb14  15 00 00 8a                                      bhi #0x56cb70
0056cb18  08 00 53 e1                                      cmp r3, r8
0056cb1c  08 81 a0 91                                      lslls r8, r8, #2
0056cb20  12 00 00 8a                                      bhi #0x56cb70
0056cb24  00 10 a0 e3                                      mov r1, #0
0056cb28  08 00 a0 e1                                      mov r0, r8
0056cb2c  8d 8e f6 eb                                      bl #0x310568
0056cb30  14 10 94 e5                                      ldr r1, [r4, #0x14]
0056cb34  00 70 a0 e1                                      mov r7, r0
0056cb38  01 a0 5a e0                                      subs sl, sl, r1
0056cb3c  00 a0 a0 01                                      moveq sl, r0
0056cb40  02 00 00 0a                                      beq #0x56cb50
0056cb44  0a 20 a0 e1                                      mov r2, sl
0056cb48  fa 84 f6 eb                                      bl #0x30df38
0056cb4c  0a a0 80 e0                                      add sl, r0, sl
0056cb50  04 50 8a e4                                      str r5, [sl], #4
0056cb54  14 00 94 e5                                      ldr r0, [r4, #0x14]
0056cb58  08 80 87 e0                                      add r8, r7, r8
0056cb5c  3b 8e f6 eb                                      bl #0x310450
0056cb60  1c 80 84 e5                                      str r8, [r4, #0x1c]
0056cb64  18 a0 84 e5                                      str sl, [r4, #0x18]
0056cb68  14 70 84 e5                                      str r7, [r4, #0x14]
0056cb6c  da ff ff ea                                      b #0x56cadc
0056cb70  03 80 e0 e3                                      mvn r8, #3
0056cb74  ea ff ff ea                                      b #0x56cb24


; FUNCTION 0x0056d180, declared_size=320, range_size=320, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb
; demangled: glitch::io::CFileSystem::addFolderFileArchive(char const*, bool, bool)
; decoder-mode: arm
0056d180  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056d184  00 60 a0 e1                                      mov r6, r0
0056d188  20 40 90 e5                                      ldr r4, [r0, #0x20]
0056d18c  24 00 90 e5                                      ldr r0, [r0, #0x24]
0056d190  08 d0 4d e2                                      sub sp, sp, #8
0056d194  01 50 a0 e1                                      mov r5, r1
0056d198  00 00 64 e0                                      rsb r0, r4, r0
0056d19c  40 01 a0 e1                                      asr r0, r0, #2
0056d1a0  01 a0 50 e2                                      subs sl, r0, #1
0056d1a4  02 70 a0 e1                                      mov r7, r2
0056d1a8  03 80 a0 e1                                      mov r8, r3
0056d1ac  0d 00 00 4a                                      bmi #0x56d1e8
0056d1b0  07 01 40 e2                                      sub r0, r0, #0xc0000001
0056d1b4  00 91 a0 e1                                      lsl sb, r0, #2
0056d1b8  01 00 00 ea                                      b #0x56d1c4
0056d1bc  01 a0 5a e2                                      subs sl, sl, #1
0056d1c0  08 00 00 4a                                      bmi #0x56d1e8
0056d1c4  09 30 94 e7                                      ldr r3, [r4, sb]
0056d1c8  05 00 a0 e1                                      mov r0, r5
0056d1cc  04 90 49 e2                                      sub sb, sb, #4
0056d1d0  38 10 93 e5                                      ldr r1, [r3, #0x38]
0056d1d4  50 84 f6 eb                                      bl #0x30e31c
0056d1d8  00 00 50 e3                                      cmp r0, #0
0056d1dc  f6 ff ff 1a                                      bne #0x56d1bc
0056d1e0  08 d0 8d e2                                      add sp, sp, #8
0056d1e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056d1e8  00 10 a0 e3                                      mov r1, #0
0056d1ec  3c 00 a0 e3                                      mov r0, #0x3c
0056d1f0  ed 1b ff eb                                      bl #0x5341ac
0056d1f4  05 20 a0 e1                                      mov r2, r5
0056d1f8  00 40 a0 e1                                      mov r4, r0
0056d1fc  07 30 a0 e1                                      mov r3, r7
0056d200  06 10 a0 e1                                      mov r1, r6
0056d204  00 80 8d e5                                      str r8, [sp]
0056d208  bb 2b 00 eb                                      bl #0x5780fc
0056d20c  00 00 54 e3                                      cmp r4, #0
0056d210  07 00 00 0a                                      beq #0x56d234
0056d214  24 80 96 e5                                      ldr r8, [r6, #0x24]
0056d218  28 30 96 e5                                      ldr r3, [r6, #0x28]
0056d21c  03 00 58 e1                                      cmp r8, r3
0056d220  06 00 00 0a                                      beq #0x56d240
0056d224  00 40 88 e5                                      str r4, [r8]
0056d228  24 30 96 e5                                      ldr r3, [r6, #0x24]
0056d22c  04 30 83 e2                                      add r3, r3, #4
0056d230  24 30 86 e5                                      str r3, [r6, #0x24]
0056d234  00 00 54 e2                                      subs r0, r4, #0
0056d238  01 00 a0 13                                      movne r0, #1
0056d23c  e7 ff ff ea                                      b #0x56d1e0
0056d240  20 30 96 e5                                      ldr r3, [r6, #0x20]
0056d244  08 30 63 e0                                      rsb r3, r3, r8
0056d248  43 31 a0 e1                                      asr r3, r3, #2
0056d24c  01 00 53 e3                                      cmp r3, #1
0056d250  03 50 83 20                                      addhs r5, r3, r3
0056d254  01 50 83 32                                      addlo r5, r3, #1
0056d258  07 01 75 e3                                      cmn r5, #0xc0000001
0056d25c  15 00 00 8a                                      bhi #0x56d2b8
0056d260  05 00 53 e1                                      cmp r3, r5
0056d264  05 51 a0 91                                      lslls r5, r5, #2
0056d268  12 00 00 8a                                      bhi #0x56d2b8
0056d26c  00 10 a0 e3                                      mov r1, #0
0056d270  05 00 a0 e1                                      mov r0, r5
0056d274  bb 8c f6 eb                                      bl #0x310568
0056d278  20 10 96 e5                                      ldr r1, [r6, #0x20]
0056d27c  00 70 a0 e1                                      mov r7, r0
0056d280  01 80 58 e0                                      subs r8, r8, r1
0056d284  00 80 a0 01                                      moveq r8, r0
0056d288  02 00 00 0a                                      beq #0x56d298
0056d28c  08 20 a0 e1                                      mov r2, r8
0056d290  28 83 f6 eb                                      bl #0x30df38
0056d294  08 80 80 e0                                      add r8, r0, r8
0056d298  04 40 88 e4                                      str r4, [r8], #4
0056d29c  20 00 96 e5                                      ldr r0, [r6, #0x20]
0056d2a0  05 50 87 e0                                      add r5, r7, r5
0056d2a4  69 8c f6 eb                                      bl #0x310450
0056d2a8  28 50 86 e5                                      str r5, [r6, #0x28]
0056d2ac  24 80 86 e5                                      str r8, [r6, #0x24]
0056d2b0  20 70 86 e5                                      str r7, [r6, #0x20]
0056d2b4  de ff ff ea                                      b #0x56d234
0056d2b8  03 50 e0 e3                                      mvn r5, #3
0056d2bc  ea ff ff ea                                      b #0x56d26c

