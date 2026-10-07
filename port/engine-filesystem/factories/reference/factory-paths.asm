; ARM32 archive factory and dispatch ranges copied from the supplied APK ELF.
; Bytes on each line are in ELF file order. Disassembly mnemonics are from llvm-objdump.
; Each code range includes exactly the manifest size; literal pools within symbol extents are retained.

; FUNCTION 0x0056c0f8, size=284 (0x11c), mode=arm
; symbol: _ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc
; demangled: glitch::io::CFileSystem::createAndOpenFileFromArchives(char const*)
; SHA-256: 8b140d1dcd3d6e3a951be56bb55269e194975dcb77d0a0b2ffcba7bb10e765de  file_offset=0x0056c0f8 PT_LOAD=1
0056c0f8  70 40 2d e9 push	{r4, r5, r6, lr}
0056c0fc  08 30 90 e5 ldr	r3, [r0, #0x8]
0056c100  0c 20 90 e5 ldr	r2, [r0, #0xc]
0056c104  00 50 a0 e1 mov	r5, r0
0056c108  01 60 a0 e1 mov	r6, r1
0056c10c  02 20 63 e0 rsb	r2, r3, r2
0056c110  22 21 b0 e1 lsrs	r2, r2, #2
0056c114  10 00 00 0a beq	0x56c15c <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0x64> @ imm = #0x40
0056c118  00 40 a0 e3 mov	r4, #0
0056c11c  04 00 00 ea b	0x56c134 <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0x3c> @ imm = #0x10
0056c120  08 30 95 e5 ldr	r3, [r5, #0x8]
0056c124  0c 20 95 e5 ldr	r2, [r5, #0xc]
0056c128  02 20 63 e0 rsb	r2, r3, r2
0056c12c  42 01 54 e1 cmp	r4, r2, asr #2
0056c130  09 00 00 2a bhs	0x56c15c <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0x64> @ imm = #0x24
0056c134  04 31 93 e7 ldr	r3, [r3, r4, lsl #2]
0056c138  06 10 a0 e1 mov	r1, r6
0056c13c  01 40 84 e2 add	r4, r4, #1
0056c140  03 00 a0 e1 mov	r0, r3
0056c144  00 30 93 e5 ldr	r3, [r3]
0056c148  0f e0 a0 e1 mov	lr, pc
0056c14c  0c f0 93 e5 ldr	pc, [r3, #0xc]
0056c150  00 00 50 e3 cmp	r0, #0
0056c154  f1 ff ff 0a beq	0x56c120 <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0x28> @ imm = #-0x3c
0056c158  70 80 bd e8 pop	{r4, r5, r6, pc}
0056c15c  14 30 95 e5 ldr	r3, [r5, #0x14]
0056c160  18 20 95 e5 ldr	r2, [r5, #0x18]
0056c164  02 20 63 e0 rsb	r2, r3, r2
0056c168  22 21 b0 e1 lsrs	r2, r2, #2
0056c16c  10 00 00 0a beq	0x56c1b4 <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0xbc> @ imm = #0x40
0056c170  00 40 a0 e3 mov	r4, #0
0056c174  04 00 00 ea b	0x56c18c <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0x94> @ imm = #0x10
0056c178  14 30 95 e5 ldr	r3, [r5, #0x14]
0056c17c  18 20 95 e5 ldr	r2, [r5, #0x18]
0056c180  02 20 63 e0 rsb	r2, r3, r2
0056c184  42 01 54 e1 cmp	r4, r2, asr #2
0056c188  09 00 00 2a bhs	0x56c1b4 <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0xbc> @ imm = #0x24
0056c18c  04 31 93 e7 ldr	r3, [r3, r4, lsl #2]
0056c190  06 10 a0 e1 mov	r1, r6
0056c194  01 40 84 e2 add	r4, r4, #1
0056c198  03 00 a0 e1 mov	r0, r3
0056c19c  00 30 93 e5 ldr	r3, [r3]
0056c1a0  0f e0 a0 e1 mov	lr, pc
0056c1a4  0c f0 93 e5 ldr	pc, [r3, #0xc]
0056c1a8  00 00 50 e3 cmp	r0, #0
0056c1ac  f1 ff ff 0a beq	0x56c178 <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0x80> @ imm = #-0x3c
0056c1b0  e8 ff ff ea b	0x56c158 <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0x60> @ imm = #-0x60
0056c1b4  20 30 95 e5 ldr	r3, [r5, #0x20]
0056c1b8  24 20 95 e5 ldr	r2, [r5, #0x24]
0056c1bc  02 20 63 e0 rsb	r2, r3, r2
0056c1c0  22 21 b0 e1 lsrs	r2, r2, #2
0056c1c4  10 00 00 0a beq	0x56c20c <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0x114> @ imm = #0x40
0056c1c8  00 40 a0 e3 mov	r4, #0
0056c1cc  04 00 00 ea b	0x56c1e4 <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0xec> @ imm = #0x10
0056c1d0  20 30 95 e5 ldr	r3, [r5, #0x20]
0056c1d4  24 20 95 e5 ldr	r2, [r5, #0x24]
0056c1d8  02 20 63 e0 rsb	r2, r3, r2
0056c1dc  42 01 54 e1 cmp	r4, r2, asr #2
0056c1e0  09 00 00 2a bhs	0x56c20c <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0x114> @ imm = #0x24
0056c1e4  04 31 93 e7 ldr	r3, [r3, r4, lsl #2]
0056c1e8  06 10 a0 e1 mov	r1, r6
0056c1ec  01 40 84 e2 add	r4, r4, #1
0056c1f0  03 00 a0 e1 mov	r0, r3
0056c1f4  00 30 93 e5 ldr	r3, [r3]
0056c1f8  0f e0 a0 e1 mov	lr, pc
0056c1fc  0c f0 93 e5 ldr	pc, [r3, #0xc]
0056c200  00 00 50 e3 cmp	r0, #0
0056c204  f1 ff ff 0a beq	0x56c1d0 <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0xd8> @ imm = #-0x3c
0056c208  d2 ff ff ea b	0x56c158 <_ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc+0x60> @ imm = #-0xb8
0056c20c  00 00 a0 e3 mov	r0, #0
0056c210  70 80 bd e8 pop	{r4, r5, r6, pc}
; FUNCTION 0x0056ca70, size=264 (0x108), mode=arm
; symbol: _ZN6glitch2io11CFileSystem17addPakFileArchiveEPKcbb
; demangled: glitch::io::CFileSystem::addPakFileArchive(char const*, bool, bool)
; SHA-256: 2a4725a4db79ccdae2499b05481a971a7807b5cf2a5f04ddc2631512e081b64a  file_offset=0x0056ca70 PT_LOAD=1
0056ca70  f0 47 2d e9 push	{r4, r5, r6, r7, r8, r9, r10, lr}
0056ca74  00 c0 90 e5 ldr	r12, [r0]
0056ca78  00 40 a0 e1 mov	r4, r0
0056ca7c  02 80 a0 e1 mov	r8, r2
0056ca80  03 70 a0 e1 mov	r7, r3
0056ca84  0f e0 a0 e1 mov	lr, pc
0056ca88  0c f0 9c e5 ldr	pc, [r12, #0xc]
0056ca8c  00 60 50 e2 subs	r6, r0, #0
0056ca90  16 00 00 0a beq	0x56caf0 <_ZN6glitch2io11CFileSystem17addPakFileArchiveEPKcbb+0x80> @ imm = #0x58
0056ca94  00 10 a0 e3 mov	r1, #0
0056ca98  28 00 a0 e3 mov	r0, #40
0056ca9c  c2 1d ff eb bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x388f8
0056caa0  06 10 a0 e1 mov	r1, r6
0056caa4  00 50 a0 e1 mov	r5, r0
0056caa8  08 20 a0 e1 mov	r2, r8
0056caac  07 30 a0 e1 mov	r3, r7
0056cab0  5d 0d 00 eb bl	0x57002c <_ZN6glitch2io10CPakReaderC1EPNS0_9IReadFileEbb> @ imm = #0x3574
0056cab4  00 00 55 e3 cmp	r5, #0
0056cab8  07 00 00 0a beq	0x56cadc <_ZN6glitch2io11CFileSystem17addPakFileArchiveEPKcbb+0x6c> @ imm = #0x1c
0056cabc  18 a0 94 e5 ldr	r10, [r4, #0x18]
0056cac0  1c 30 94 e5 ldr	r3, [r4, #0x1c]
0056cac4  03 00 5a e1 cmp	r10, r3
0056cac8  0a 00 00 0a beq	0x56caf8 <_ZN6glitch2io11CFileSystem17addPakFileArchiveEPKcbb+0x88> @ imm = #0x28
0056cacc  00 50 8a e5 str	r5, [r10]
0056cad0  18 30 94 e5 ldr	r3, [r4, #0x18]
0056cad4  04 30 83 e2 add	r3, r3, #4
0056cad8  18 30 84 e5 str	r3, [r4, #0x18]
0056cadc  06 00 a0 e1 mov	r0, r6
0056cae0  a7 c2 f6 eb bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x24f564
0056cae4  00 00 55 e2 subs	r0, r5, #0
0056cae8  01 00 a0 13 movne	r0, #1
0056caec  f0 87 bd e8 pop	{r4, r5, r6, r7, r8, r9, r10, pc}
0056caf0  06 00 a0 e1 mov	r0, r6
0056caf4  f0 87 bd e8 pop	{r4, r5, r6, r7, r8, r9, r10, pc}
0056caf8  14 30 94 e5 ldr	r3, [r4, #0x14]
0056cafc  0a 30 63 e0 rsb	r3, r3, r10
0056cb00  43 31 a0 e1 asr	r3, r3, #2
0056cb04  01 00 53 e3 cmp	r3, #1
0056cb08  03 80 83 20 addhs	r8, r3, r3
0056cb0c  01 80 83 32 addlo	r8, r3, #1
0056cb10  07 01 78 e3 cmn	r8, #-1073741823
0056cb14  15 00 00 8a bhi	0x56cb70 <_ZN6glitch2io11CFileSystem17addPakFileArchiveEPKcbb+0x100> @ imm = #0x54
0056cb18  08 00 53 e1 cmp	r3, r8
0056cb1c  08 81 a0 91 lslls	r8, r8, #2
0056cb20  12 00 00 8a bhi	0x56cb70 <_ZN6glitch2io11CFileSystem17addPakFileArchiveEPKcbb+0x100> @ imm = #0x48
0056cb24  00 10 a0 e3 mov	r1, #0
0056cb28  08 00 a0 e1 mov	r0, r8
0056cb2c  8d 8e f6 eb bl	0x310568 <_Z11GlitchAllocjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x25c5cc
0056cb30  14 10 94 e5 ldr	r1, [r4, #0x14]
0056cb34  00 70 a0 e1 mov	r7, r0
0056cb38  01 a0 5a e0 subs	r10, r10, r1
0056cb3c  00 a0 a0 01 moveq	r10, r0
0056cb40  02 00 00 0a beq	0x56cb50 <_ZN6glitch2io11CFileSystem17addPakFileArchiveEPKcbb+0xe0> @ imm = #0x8
0056cb44  0a 20 a0 e1 mov	r2, r10
0056cb48  fa 84 f6 eb bl	0x30df38 <memmove@plt>  @ imm = #-0x25ec18
0056cb4c  0a a0 80 e0 add	r10, r0, r10
0056cb50  04 50 8a e4 str	r5, [r10], #4
0056cb54  14 00 94 e5 ldr	r0, [r4, #0x14]
0056cb58  08 80 87 e0 add	r8, r7, r8
0056cb5c  3b 8e f6 eb bl	0x310450 <_Z10GlitchFreePv> @ imm = #-0x25c714
0056cb60  1c 80 84 e5 str	r8, [r4, #0x1c]
0056cb64  18 a0 84 e5 str	r10, [r4, #0x18]
0056cb68  14 70 84 e5 str	r7, [r4, #0x14]
0056cb6c  da ff ff ea b	0x56cadc <_ZN6glitch2io11CFileSystem17addPakFileArchiveEPKcbb+0x6c> @ imm = #-0x98
0056cb70  03 80 e0 e3 mvn	r8, #3
0056cb74  ea ff ff ea b	0x56cb24 <_ZN6glitch2io11CFileSystem17addPakFileArchiveEPKcbb+0xb4> @ imm = #-0x58
; FUNCTION 0x0056d180, size=320 (0x140), mode=arm
; symbol: _ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb
; demangled: glitch::io::CFileSystem::addFolderFileArchive(char const*, bool, bool)
; SHA-256: fe8247e6fd3f61eb4e75eaf51cefe719daf997bc2b1ee001474764064cbd3d8b  file_offset=0x0056d180 PT_LOAD=1
0056d180  f0 47 2d e9 push	{r4, r5, r6, r7, r8, r9, r10, lr}
0056d184  00 60 a0 e1 mov	r6, r0
0056d188  20 40 90 e5 ldr	r4, [r0, #0x20]
0056d18c  24 00 90 e5 ldr	r0, [r0, #0x24]
0056d190  08 d0 4d e2 sub	sp, sp, #8
0056d194  01 50 a0 e1 mov	r5, r1
0056d198  00 00 64 e0 rsb	r0, r4, r0
0056d19c  40 01 a0 e1 asr	r0, r0, #2
0056d1a0  01 a0 50 e2 subs	r10, r0, #1
0056d1a4  02 70 a0 e1 mov	r7, r2
0056d1a8  03 80 a0 e1 mov	r8, r3
0056d1ac  0d 00 00 4a bmi	0x56d1e8 <_ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb+0x68> @ imm = #0x34
0056d1b0  07 01 40 e2 sub	r0, r0, #-1073741823
0056d1b4  00 91 a0 e1 lsl	r9, r0, #2
0056d1b8  01 00 00 ea b	0x56d1c4 <_ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb+0x44> @ imm = #0x4
0056d1bc  01 a0 5a e2 subs	r10, r10, #1
0056d1c0  08 00 00 4a bmi	0x56d1e8 <_ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb+0x68> @ imm = #0x20
0056d1c4  09 30 94 e7 ldr	r3, [r4, r9]
0056d1c8  05 00 a0 e1 mov	r0, r5
0056d1cc  04 90 49 e2 sub	r9, r9, #4
0056d1d0  38 10 93 e5 ldr	r1, [r3, #0x38]
0056d1d4  50 84 f6 eb bl	0x30e31c <strcmp@plt>   @ imm = #-0x25eec0
0056d1d8  00 00 50 e3 cmp	r0, #0
0056d1dc  f6 ff ff 1a bne	0x56d1bc <_ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb+0x3c> @ imm = #-0x28
0056d1e0  08 d0 8d e2 add	sp, sp, #8
0056d1e4  f0 87 bd e8 pop	{r4, r5, r6, r7, r8, r9, r10, pc}
0056d1e8  00 10 a0 e3 mov	r1, #0
0056d1ec  3c 00 a0 e3 mov	r0, #60
0056d1f0  ed 1b ff eb bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x3904c
0056d1f4  05 20 a0 e1 mov	r2, r5
0056d1f8  00 40 a0 e1 mov	r4, r0
0056d1fc  07 30 a0 e1 mov	r3, r7
0056d200  06 10 a0 e1 mov	r1, r6
0056d204  00 80 8d e5 str	r8, [sp]
0056d208  bb 2b 00 eb bl	0x5780fc <_ZN6glitch2io12CUnZipReaderC1EPNS0_11IFileSystemEPKcbb> @ imm = #0xaeec
0056d20c  00 00 54 e3 cmp	r4, #0
0056d210  07 00 00 0a beq	0x56d234 <_ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb+0xb4> @ imm = #0x1c
0056d214  24 80 96 e5 ldr	r8, [r6, #0x24]
0056d218  28 30 96 e5 ldr	r3, [r6, #0x28]
0056d21c  03 00 58 e1 cmp	r8, r3
0056d220  06 00 00 0a beq	0x56d240 <_ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb+0xc0> @ imm = #0x18
0056d224  00 40 88 e5 str	r4, [r8]
0056d228  24 30 96 e5 ldr	r3, [r6, #0x24]
0056d22c  04 30 83 e2 add	r3, r3, #4
0056d230  24 30 86 e5 str	r3, [r6, #0x24]
0056d234  00 00 54 e2 subs	r0, r4, #0
0056d238  01 00 a0 13 movne	r0, #1
0056d23c  e7 ff ff ea b	0x56d1e0 <_ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb+0x60> @ imm = #-0x64
0056d240  20 30 96 e5 ldr	r3, [r6, #0x20]
0056d244  08 30 63 e0 rsb	r3, r3, r8
0056d248  43 31 a0 e1 asr	r3, r3, #2
0056d24c  01 00 53 e3 cmp	r3, #1
0056d250  03 50 83 20 addhs	r5, r3, r3
0056d254  01 50 83 32 addlo	r5, r3, #1
0056d258  07 01 75 e3 cmn	r5, #-1073741823
0056d25c  15 00 00 8a bhi	0x56d2b8 <_ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb+0x138> @ imm = #0x54
0056d260  05 00 53 e1 cmp	r3, r5
0056d264  05 51 a0 91 lslls	r5, r5, #2
0056d268  12 00 00 8a bhi	0x56d2b8 <_ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb+0x138> @ imm = #0x48
0056d26c  00 10 a0 e3 mov	r1, #0
0056d270  05 00 a0 e1 mov	r0, r5
0056d274  bb 8c f6 eb bl	0x310568 <_Z11GlitchAllocjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x25cd14
0056d278  20 10 96 e5 ldr	r1, [r6, #0x20]
0056d27c  00 70 a0 e1 mov	r7, r0
0056d280  01 80 58 e0 subs	r8, r8, r1
0056d284  00 80 a0 01 moveq	r8, r0
0056d288  02 00 00 0a beq	0x56d298 <_ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb+0x118> @ imm = #0x8
0056d28c  08 20 a0 e1 mov	r2, r8
0056d290  28 83 f6 eb bl	0x30df38 <memmove@plt>  @ imm = #-0x25f360
0056d294  08 80 80 e0 add	r8, r0, r8
0056d298  04 40 88 e4 str	r4, [r8], #4
0056d29c  20 00 96 e5 ldr	r0, [r6, #0x20]
0056d2a0  05 50 87 e0 add	r5, r7, r5
0056d2a4  69 8c f6 eb bl	0x310450 <_Z10GlitchFreePv> @ imm = #-0x25ce5c
0056d2a8  28 50 86 e5 str	r5, [r6, #0x28]
0056d2ac  24 80 86 e5 str	r8, [r6, #0x24]
0056d2b0  20 70 86 e5 str	r7, [r6, #0x20]
0056d2b4  de ff ff ea b	0x56d234 <_ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb+0xb4> @ imm = #-0x88
0056d2b8  03 50 e0 e3 mvn	r5, #3
0056d2bc  ea ff ff ea b	0x56d26c <_ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb+0xec> @ imm = #-0x58
; FUNCTION 0x0056f6f4, size=72 (0x48), mode=arm
; symbol: _ZN6glitch2io10CPakReaderD1Ev
; demangled: glitch::io::CPakReader::~CPakReader()
; SHA-256: 3fda106835372b80828a467072c8558e46f9128a69c86c1180d441e81d7e20df  file_offset=0x0056f6f4 PT_LOAD=1
0056f6f4  10 40 2d e9 push	{r4, lr}
0056f6f8  34 30 9f e5 ldr	r3, [pc, #0x34]         @ 0x56f734 <_ZN6glitch2io10CPakReaderD1Ev+0x40>
0056f6fc  34 20 9f e5 ldr	r2, [pc, #0x34]         @ 0x56f738 <_ZN6glitch2io10CPakReaderD1Ev+0x44>
0056f700  00 40 a0 e1 mov	r4, r0
0056f704  03 30 8f e0 add	r3, pc, r3
0056f708  08 00 90 e5 ldr	r0, [r0, #0x8]
0056f70c  02 20 93 e7 ldr	r2, [r3, r2]
0056f710  00 00 50 e3 cmp	r0, #0
0056f714  08 20 82 e2 add	r2, r2, #8
0056f718  00 20 84 e5 str	r2, [r4]
0056f71c  00 00 00 0a beq	0x56f724 <_ZN6glitch2io10CPakReaderD1Ev+0x30> @ imm = #0x0
0056f720  97 b7 f6 eb bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2521a4
0056f724  18 00 84 e2 add	r0, r4, #24
0056f728  e0 ff ff eb bl	0x56f6b0 <_ZNSt6vectorIN6glitch2io13SPakFileEntryENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev> @ imm = #-0x80
0056f72c  04 00 a0 e1 mov	r0, r4
0056f730  10 80 bd e8 pop	{r4, pc}
0056f734  8c 53 42 00 .word	0x0042538c
0056f738  d8 1b 00 00 .word	0x00001bd8
; FUNCTION 0x0056f784, size=80 (0x50), mode=arm
; symbol: _ZN6glitch2io10CPakReader8openFileEi
; demangled: glitch::io::CPakReader::openFile(int)
; SHA-256: 277917c9d0b9a12f8c5ebc526a2b1bebed18b79a96eb8bc8e05106e8a7aa892c  file_offset=0x0056f784 PT_LOAD=1
0056f784  70 40 2d e9 push	{r4, r5, r6, lr}
0056f788  50 50 a0 e3 mov	r5, #80
0056f78c  95 01 05 e0 mul	r5, r5, r1
0056f790  18 10 90 e5 ldr	r1, [r0, #0x18]
0056f794  08 30 90 e5 ldr	r3, [r0, #0x8]
0056f798  00 40 a0 e1 mov	r4, r0
0056f79c  05 10 81 e0 add	r1, r1, r5
0056f7a0  00 20 a0 e3 mov	r2, #0
0056f7a4  48 10 91 e5 ldr	r1, [r1, #0x48]
0056f7a8  03 00 a0 e1 mov	r0, r3
0056f7ac  00 30 93 e5 ldr	r3, [r3]
0056f7b0  0f e0 a0 e1 mov	lr, pc
0056f7b4  18 f0 93 e5 ldr	pc, [r3, #0x18]
0056f7b8  18 30 94 e5 ldr	r3, [r4, #0x18]
0056f7bc  08 10 94 e5 ldr	r1, [r4, #0x8]
0056f7c0  05 50 83 e0 add	r5, r3, r5
0056f7c4  4c 20 95 e5 ldr	r2, [r5, #0x4c]
0056f7c8  2c 00 95 e5 ldr	r0, [r5, #0x2c]
0056f7cc  70 40 bd e8 pop	{r4, r5, r6, lr}
0056f7d0  a6 14 05 ea b	0x6b4a70 <_ZN6glitch2io19createLimitReadFileEPKcPNS0_9IReadFileEl> @ imm = #0x145298
; FUNCTION 0x0056fcec, size=344 (0x158), mode=arm
; symbol: _ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE
; demangled: glitch::io::CPakReader::extractFilename(glitch::io::SPakFileEntry*)
; SHA-256: c51011808b5fc46297df12c62eea6245e62fc09bccd0ed4036a879a154304d54  file_offset=0x0056fcec PT_LOAD=1
0056fcec  f0 41 2d e9 push	{r4, r5, r6, r7, r8, lr}
0056fcf0  24 30 d0 e5 ldrb	r3, [r0, #0x24]
0056fcf4  00 50 a0 e1 mov	r5, r0
0056fcf8  01 40 a0 e1 mov	r4, r1
0056fcfc  00 00 53 e3 cmp	r3, #0
0056fd00  14 30 91 05 ldreq	r3, [r1, #0x14]
0056fd04  13 00 00 0a beq	0x56fd58 <_ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE+0x6c> @ imm = #0x4c
0056fd08  14 30 91 e5 ldr	r3, [r1, #0x14]
0056fd0c  10 20 91 e5 ldr	r2, [r1, #0x10]
0056fd10  02 00 53 e1 cmp	r3, r2
0056fd14  0f 00 00 0a beq	0x56fd58 <_ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE+0x6c> @ imm = #0x3c
0056fd18  00 20 a0 e3 mov	r2, #0
0056fd1c  02 10 d3 e7 ldrb	r1, [r3, r2]
0056fd20  02 30 83 e0 add	r3, r3, r2
0056fd24  01 20 82 e2 add	r2, r2, #1
0056fd28  71 00 ef e6 uxtb	r0, r1
0056fd2c  41 c0 40 e2 sub	r12, r0, #65
0056fd30  7c c0 ef e6 uxtb	r12, r12
0056fd34  19 00 5c e3 cmp	r12, #25
0056fd38  20 10 80 92 addls	r1, r0, #32
0056fd3c  71 10 ef 96 uxtbls	r1, r1
0056fd40  00 10 c3 e5 strb	r1, [r3]
0056fd44  14 30 94 e5 ldr	r3, [r4, #0x14]
0056fd48  10 10 94 e5 ldr	r1, [r4, #0x10]
0056fd4c  01 10 63 e0 rsb	r1, r3, r1
0056fd50  01 00 52 e1 cmp	r2, r1
0056fd54  f0 ff ff 3a blo	0x56fd1c <_ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE+0x30> @ imm = #-0x40
0056fd58  d8 23 d3 e1 ldrsb	r2, [r3, #56]
0056fd5c  38 60 83 e2 add	r6, r3, #56
0056fd60  2f 00 52 e3 cmp	r2, #47
0056fd64  37 60 a0 13 movne	r6, #55
0056fd68  02 00 00 1a bne	0x56fd78 <_ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE+0x8c> @ imm = #0x8
0056fd6c  05 00 00 ea b	0x56fd88 <_ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE+0x9c> @ imm = #0x14
0056fd70  01 60 56 e2 subs	r6, r6, #1
0056fd74  1f 00 00 3a blo	0x56fdf8 <_ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE+0x10c> @ imm = #0x7c
0056fd78  d6 20 93 e1 ldrsb	r2, [r3, r6]
0056fd7c  2f 00 52 e3 cmp	r2, #47
0056fd80  fa ff ff 1a bne	0x56fd70 <_ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE+0x84> @ imm = #-0x18
0056fd84  06 60 83 e0 add	r6, r3, r6
0056fd88  03 00 56 e1 cmp	r6, r3
0056fd8c  1a 00 00 0a beq	0x56fdfc <_ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE+0x110> @ imm = #0x68
0056fd90  01 60 86 e2 add	r6, r6, #1
0056fd94  06 00 a0 e1 mov	r0, r6
0056fd98  2d 78 f6 eb bl	0x30de54 <strlen@plt>   @ imm = #-0x261f4c
0056fd9c  18 70 84 e2 add	r7, r4, #24
0056fda0  00 20 86 e0 add	r2, r6, r0
0056fda4  06 10 a0 e1 mov	r1, r6
0056fda8  07 00 a0 e1 mov	r0, r7
0056fdac  75 c3 f6 eb bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x24f22c
0056fdb0  84 10 9f e5 ldr	r1, [pc, #0x84]         @ 0x56fe3c <_ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE+0x150>
0056fdb4  30 80 84 e2 add	r8, r4, #48
0056fdb8  08 00 a0 e1 mov	r0, r8
0056fdbc  01 10 8f e0 add	r1, pc, r1
0056fdc0  01 20 a0 e1 mov	r2, r1
0056fdc4  6f c3 f6 eb bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x24f244
0056fdc8  08 00 a0 e1 mov	r0, r8
0056fdcc  06 20 a0 e1 mov	r2, r6
0056fdd0  14 10 94 e5 ldr	r1, [r4, #0x14]
0056fdd4  1c c3 f6 eb bl	0x320a4c <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_appendEPKcS9_> @ imm = #-0x24f390
0056fdd8  25 30 d5 e5 ldrb	r3, [r5, #0x25]
0056fddc  00 00 53 e3 cmp	r3, #0
0056fde0  14 00 00 1a bne	0x56fe38 <_ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE+0x14c> @ imm = #0x50
0056fde4  10 20 94 e5 ldr	r2, [r4, #0x10]
0056fde8  14 10 94 e5 ldr	r1, [r4, #0x14]
0056fdec  07 00 a0 e1 mov	r0, r7
0056fdf0  f0 41 bd e8 pop	{r4, r5, r6, r7, r8, lr}
0056fdf4  63 c3 f6 ea b	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x24f274
0056fdf8  03 60 a0 e1 mov	r6, r3
0056fdfc  06 00 a0 e1 mov	r0, r6
0056fe00  13 78 f6 eb bl	0x30de54 <strlen@plt>   @ imm = #-0x261fb4
0056fe04  18 70 84 e2 add	r7, r4, #24
0056fe08  00 20 86 e0 add	r2, r6, r0
0056fe0c  06 10 a0 e1 mov	r1, r6
0056fe10  07 00 a0 e1 mov	r0, r7
0056fe14  5b c3 f6 eb bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x24f294
0056fe18  20 10 9f e5 ldr	r1, [pc, #0x20]         @ 0x56fe40 <_ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE+0x154>
0056fe1c  30 00 84 e2 add	r0, r4, #48
0056fe20  01 10 8f e0 add	r1, pc, r1
0056fe24  01 20 a0 e1 mov	r2, r1
0056fe28  56 c3 f6 eb bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x24f2a8
0056fe2c  25 30 d5 e5 ldrb	r3, [r5, #0x25]
0056fe30  00 00 53 e3 cmp	r3, #0
0056fe34  ea ff ff 0a beq	0x56fde4 <_ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE+0xf8> @ imm = #-0x58
0056fe38  f0 81 bd e8 pop	{r4, r5, r6, r7, r8, pc}
0056fe3c  4c ba 35 00 .word	0x0035ba4c
0056fe40  e8 b9 35 00 .word	0x0035b9e8
; FUNCTION 0x0056fe44, size=488 (0x1e8), mode=arm
; symbol: _ZN6glitch2io10CPakReader15scanLocalHeaderEv
; demangled: glitch::io::CPakReader::scanLocalHeader()
; SHA-256: ecdb9cff2f9f4bd7eb6c2c0ae5c96c6d333408c8ec05f1e19cb47a83257d9195  file_offset=0x0056fe44 PT_LOAD=1
0056fe44  f0 4f 2d e9 push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
0056fe48  d4 11 9f e5 ldr	r1, [pc, #0x1d4]        @ 0x570024 <_ZN6glitch2io10CPakReader15scanLocalHeaderEv+0x1e0>
0056fe4c  d4 21 9f e5 ldr	r2, [pc, #0x1d4]        @ 0x570028 <_ZN6glitch2io10CPakReader15scanLocalHeaderEv+0x1e4>
0056fe50  46 de 4d e2 sub	sp, sp, #1120
0056fe54  01 10 8f e0 add	r1, pc, r1
0056fe58  02 30 91 e7 ldr	r3, [r1, r2]
0056fe5c  0c d0 4d e2 sub	sp, sp, #12
0056fe60  41 5e 8d e2 add	r5, sp, #1040
0056fe64  00 30 93 e5 ldr	r3, [r3]
0056fe68  04 50 85 e2 add	r5, r5, #4
0056fe6c  00 40 a0 e1 mov	r4, r0
0056fe70  05 00 a0 e1 mov	r0, r5
0056fe74  04 10 8d e5 str	r1, [sp, #0x4]
0056fe78  0c 20 8d e5 str	r2, [sp, #0xc]
0056fe7c  64 34 8d e5 str	r3, [sp, #0x464]
0056fe80  83 fd ff eb bl	0x56f494 <_ZN6glitch2io13SPakFileEntryC1Ev> @ imm = #-0x9f4
0056fe84  08 30 94 e5 ldr	r3, [r4, #0x8]
0056fe88  00 60 a0 e3 mov	r6, #0
0056fe8c  5c 64 8d e5 str	r6, [sp, #0x45c]
0056fe90  0c 60 84 e5 str	r6, [r4, #0xc]
0056fe94  10 60 84 e5 str	r6, [r4, #0x10]
0056fe98  14 60 84 e5 str	r6, [r4, #0x14]
0056fe9c  03 00 a0 e1 mov	r0, r3
0056fea0  0c 10 84 e2 add	r1, r4, #12
0056fea4  00 30 93 e5 ldr	r3, [r3]
0056fea8  0c 20 a0 e3 mov	r2, #12
0056feac  0f e0 a0 e1 mov	lr, pc
0056feb0  0c f0 93 e5 ldr	pc, [r3, #0xc]
0056feb4  dc 30 d4 e1 ldrsb	r3, [r4, #12]
0056feb8  50 00 53 e3 cmp	r3, #80
0056febc  0f 00 00 0a beq	0x56ff00 <_ZN6glitch2io10CPakReader15scanLocalHeaderEv+0xbc> @ imm = #0x3c
0056fec0  dd 30 d4 e1 ldrsb	r3, [r4, #13]
0056fec4  41 00 53 e3 cmp	r3, #65
0056fec8  0c 00 00 0a beq	0x56ff00 <_ZN6glitch2io10CPakReader15scanLocalHeaderEv+0xbc> @ imm = #0x30
0056fecc  05 00 a0 e1 mov	r0, r5
0056fed0  de fd ff eb bl	0x56f650 <_ZN6glitch2io13SPakFileEntryD1Ev> @ imm = #-0x888
0056fed4  04 20 9d e5 ldr	r2, [sp, #0x4]
0056fed8  0c 10 9d e5 ldr	r1, [sp, #0xc]
0056fedc  06 00 a0 e1 mov	r0, r6
0056fee0  01 30 92 e7 ldr	r3, [r2, r1]
0056fee4  64 24 9d e5 ldr	r2, [sp, #0x464]
0056fee8  00 30 93 e5 ldr	r3, [r3]
0056feec  03 00 52 e1 cmp	r2, r3
0056fef0  4a 00 00 1a bne	0x570020 <_ZN6glitch2io10CPakReader15scanLocalHeaderEv+0x1dc> @ imm = #0x128
0056fef4  6c d0 8d e2 add	sp, sp, #108
0056fef8  01 db 8d e2 add	sp, sp, #1024
0056fefc  f0 8f bd e8 pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
0056ff00  08 30 94 e5 ldr	r3, [r4, #0x8]
0056ff04  10 10 94 e5 ldr	r1, [r4, #0x10]
0056ff08  00 20 a0 e3 mov	r2, #0
0056ff0c  03 00 a0 e1 mov	r0, r3
0056ff10  00 30 93 e5 ldr	r3, [r3]
0056ff14  0f e0 a0 e1 mov	lr, pc
0056ff18  18 f0 93 e5 ldr	pc, [r3, #0x18]
0056ff1c  14 80 94 e5 ldr	r8, [r4, #0x14]
0056ff20  28 83 a0 e1 lsr	r8, r8, #6
0056ff24  00 00 58 e3 cmp	r8, #0
0056ff28  3a 00 00 da ble	0x570018 <_ZN6glitch2io10CPakReader15scanLocalHeaderEv+0x1d4> @ imm = #0xe8
0056ff2c  00 70 a0 e3 mov	r7, #0
0056ff30  18 60 8d e2 add	r6, sp, #24
0056ff34  4c 30 85 e2 add	r3, r5, #76
0056ff38  04 60 46 e2 sub	r6, r6, #4
0056ff3c  18 a0 84 e2 add	r10, r4, #24
0056ff40  07 90 a0 e1 mov	r9, r7
0056ff44  48 b0 85 e2 add	r11, r5, #72
0056ff48  08 30 8d e5 str	r3, [sp, #0x8]
0056ff4c  28 34 9d e5 ldr	r3, [sp, #0x428]
0056ff50  24 14 9d e5 ldr	r1, [sp, #0x424]
0056ff54  01 10 63 e0 rsb	r1, r3, r1
0056ff58  3a 00 51 e3 cmp	r1, #58
0056ff5c  3a 10 a0 33 movlo	r1, #58
0056ff60  05 00 53 e1 cmp	r3, r5
0056ff64  14 24 9d 15 ldrne	r2, [sp, #0x414]
0056ff68  01 10 81 e2 add	r1, r1, #1
0056ff6c  10 30 a0 03 moveq	r3, #16
0056ff70  02 30 63 10 rsbne	r3, r3, r2
0056ff74  03 00 51 e1 cmp	r1, r3
0056ff78  01 00 00 3a blo	0x56ff84 <_ZN6glitch2io10CPakReader15scanLocalHeaderEv+0x140> @ imm = #0x4
0056ff7c  05 00 a0 e1 mov	r0, r5
0056ff80  e7 17 fb eb bl	0x435f24 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE10_M_reserveEj> @ imm = #-0x13a064
0056ff84  08 30 94 e5 ldr	r3, [r4, #0x8]
0056ff88  06 10 a0 e1 mov	r1, r6
0056ff8c  38 20 a0 e3 mov	r2, #56
0056ff90  03 00 a0 e1 mov	r0, r3
0056ff94  00 30 93 e5 ldr	r3, [r3]
0056ff98  0f e0 a0 e1 mov	lr, pc
0056ff9c  0c f0 93 e5 ldr	pc, [r3, #0xc]
0056ffa0  06 00 a0 e1 mov	r0, r6
0056ffa4  4c 90 cd e5 strb	r9, [sp, #0x4c]
0056ffa8  a9 77 f6 eb bl	0x30de54 <strlen@plt>   @ imm = #-0x26215c
0056ffac  06 10 a0 e1 mov	r1, r6
0056ffb0  00 20 86 e0 add	r2, r6, r0
0056ffb4  05 00 a0 e1 mov	r0, r5
0056ffb8  f2 c2 f6 eb bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x24f438
0056ffbc  04 00 a0 e1 mov	r0, r4
0056ffc0  05 10 a0 e1 mov	r1, r5
0056ffc4  48 ff ff eb bl	0x56fcec <_ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE> @ imm = #-0x2e0
0056ffc8  08 30 94 e5 ldr	r3, [r4, #0x8]
0056ffcc  0b 10 a0 e1 mov	r1, r11
0056ffd0  04 20 a0 e3 mov	r2, #4
0056ffd4  03 00 a0 e1 mov	r0, r3
0056ffd8  00 30 93 e5 ldr	r3, [r3]
0056ffdc  0f e0 a0 e1 mov	lr, pc
0056ffe0  0c f0 93 e5 ldr	pc, [r3, #0xc]
0056ffe4  08 30 94 e5 ldr	r3, [r4, #0x8]
0056ffe8  04 20 a0 e3 mov	r2, #4
0056ffec  08 10 9d e5 ldr	r1, [sp, #0x8]
0056fff0  03 00 a0 e1 mov	r0, r3
0056fff4  00 30 93 e5 ldr	r3, [r3]
0056fff8  0f e0 a0 e1 mov	lr, pc
0056fffc  0c f0 93 e5 ldr	pc, [r3, #0xc]
00570000  01 70 87 e2 add	r7, r7, #1
00570004  0a 00 a0 e1 mov	r0, r10
00570008  05 10 a0 e1 mov	r1, r5
0057000c  f7 fd ff eb bl	0x56f7f0 <_ZNSt6vectorIN6glitch2io13SPakFileEntryENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS2_> @ imm = #-0x824
00570010  07 00 58 e1 cmp	r8, r7
00570014  cc ff ff 1a bne	0x56ff4c <_ZN6glitch2io10CPakReader15scanLocalHeaderEv+0x108> @ imm = #-0xd0
00570018  01 60 a0 e3 mov	r6, #1
0057001c  aa ff ff ea b	0x56fecc <_ZN6glitch2io10CPakReader15scanLocalHeaderEv+0x88> @ imm = #-0x158
00570020  ba 78 f6 eb bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x261d18
00570024  3c 4c 42 00 .word	0x00424c3c
00570028  ac 40 00 00 .word	0x000040ac
; FUNCTION 0x0057002c, size=152 (0x98), mode=arm
; symbol: _ZN6glitch2io10CPakReaderC1EPNS0_9IReadFileEbb
; demangled: glitch::io::CPakReader::CPakReader(glitch::io::IReadFile*, bool, bool)
; SHA-256: 26eae1a4c3775effe32b33116718ff04d8918f9a4421c4c634c684eaecaaee2e  file_offset=0x0057002c PT_LOAD=1
0057002c  88 c0 9f e5 ldr	r12, [pc, #0x88]        @ 0x5700bc <_ZN6glitch2io10CPakReaderC1EPNS0_9IReadFileEbb+0x90>
00570030  f0 41 2d e9 push	{r4, r5, r6, r7, r8, lr}
00570034  84 50 9f e5 ldr	r5, [pc, #0x84]         @ 0x5700c0 <_ZN6glitch2io10CPakReaderC1EPNS0_9IReadFileEbb+0x94>
00570038  0c c0 8f e0 add	r12, pc, r12
0057003c  00 60 a0 e3 mov	r6, #0
00570040  05 50 9c e7 ldr	r5, [r12, r5]
00570044  01 70 a0 e3 mov	r7, #1
00570048  00 00 51 e3 cmp	r1, #0
0057004c  08 50 85 e2 add	r5, r5, #8
00570050  00 40 a0 e1 mov	r4, r0
00570054  a0 00 80 e8 stm	r0, {r5, r7}
00570058  20 60 80 e5 str	r6, [r0, #0x20]
0057005c  24 20 c0 e5 strb	r2, [r0, #0x24]
00570060  25 30 c0 e5 strb	r3, [r0, #0x25]
00570064  08 10 80 e5 str	r1, [r0, #0x8]
00570068  18 60 80 e5 str	r6, [r0, #0x18]
0057006c  1c 60 80 e5 str	r6, [r0, #0x1c]
00570070  0f 00 00 0a beq	0x5700b4 <_ZN6glitch2io10CPakReaderC1EPNS0_9IReadFileEbb+0x88> @ imm = #0x3c
00570074  04 30 91 e5 ldr	r3, [r1, #0x4]
00570078  07 30 83 e0 add	r3, r3, r7
0057007c  04 30 81 e5 str	r3, [r1, #0x4]
00570080  6f ff ff eb bl	0x56fe44 <_ZN6glitch2io10CPakReader15scanLocalHeaderEv> @ imm = #-0x244
00570084  18 00 94 e5 ldr	r0, [r4, #0x18]
00570088  1c 30 94 e5 ldr	r3, [r4, #0x1c]
0057008c  03 30 60 e0 rsb	r3, r0, r3
00570090  43 32 a0 e1 asr	r3, r3, #4
00570094  83 10 83 e0 add	r1, r3, r3, lsl #1
00570098  01 12 81 e0 add	r1, r1, r1, lsl #4
0057009c  01 14 81 e0 add	r1, r1, r1, lsl #8
005700a0  01 18 81 e0 add	r1, r1, r1, lsl #16
005700a4  01 11 83 e0 add	r1, r3, r1, lsl #2
005700a8  07 00 51 e1 cmp	r1, r7
005700ac  00 00 00 9a bls	0x5700b4 <_ZN6glitch2io10CPakReaderC1EPNS0_9IReadFileEbb+0x88> @ imm = #0x0
005700b0  d5 fe ff eb bl	0x56fc0c <_ZN6glitch4core8heapsortINS_2io13SPakFileEntryEEEvPT_i> @ imm = #-0x4ac
005700b4  04 00 a0 e1 mov	r0, r4
005700b8  f0 81 bd e8 pop	{r4, r5, r6, r7, r8, pc}
005700bc  58 4a 42 00 .word	0x00424a58
005700c0  d8 1b 00 00 .word	0x00001bd8
; FUNCTION 0x005702b4, size=260 (0x104), mode=arm
; symbol: _ZN6glitch2io10CPakReader8findFileEPKc
; demangled: glitch::io::CPakReader::findFile(char const*)
; SHA-256: 5e17f4b0ad08096b75e3ee808c8d3da309413380f58682ce5d29686295eb1311  file_offset=0x005702b4 PT_LOAD=1
005702b4  f0 41 2d e9 push	{r4, r5, r6, r7, r8, lr}
005702b8  f0 40 9f e5 ldr	r4, [pc, #0xf0]         @ 0x5703b0 <_ZN6glitch2io10CPakReader8findFileEPKc+0xfc>
005702bc  f0 70 9f e5 ldr	r7, [pc, #0xf0]         @ 0x5703b4 <_ZN6glitch2io10CPakReader8findFileEPKc+0x100>
005702c0  58 d0 4d e2 sub	sp, sp, #88
005702c4  04 40 8f e0 add	r4, pc, r4
005702c8  07 30 94 e7 ldr	r3, [r4, r7]
005702cc  04 50 8d e2 add	r5, sp, #4
005702d0  01 80 a0 e1 mov	r8, r1
005702d4  00 30 93 e5 ldr	r3, [r3]
005702d8  00 60 a0 e1 mov	r6, r0
005702dc  05 00 a0 e1 mov	r0, r5
005702e0  54 30 8d e5 str	r3, [sp, #0x54]
005702e4  6a fc ff eb bl	0x56f494 <_ZN6glitch2io13SPakFileEntryC1Ev> @ imm = #-0xe58
005702e8  08 00 a0 e1 mov	r0, r8
005702ec  d8 76 f6 eb bl	0x30de54 <strlen@plt>   @ imm = #-0x2624a0
005702f0  08 10 a0 e1 mov	r1, r8
005702f4  00 20 88 e0 add	r2, r8, r0
005702f8  18 00 85 e2 add	r0, r5, #24
005702fc  21 c2 f6 eb bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x24f77c
00570300  24 30 d6 e5 ldrb	r3, [r6, #0x24]
00570304  00 00 53 e3 cmp	r3, #0
00570308  13 00 00 0a beq	0x57035c <_ZN6glitch2io10CPakReader8findFileEPKc+0xa8> @ imm = #0x4c
0057030c  30 20 9d e5 ldr	r2, [sp, #0x30]
00570310  2c 30 9d e5 ldr	r3, [sp, #0x2c]
00570314  03 00 52 e1 cmp	r2, r3
00570318  0f 00 00 0a beq	0x57035c <_ZN6glitch2io10CPakReader8findFileEPKc+0xa8> @ imm = #0x3c
0057031c  00 30 a0 e3 mov	r3, #0
00570320  03 10 d2 e7 ldrb	r1, [r2, r3]
00570324  03 20 82 e0 add	r2, r2, r3
00570328  01 30 83 e2 add	r3, r3, #1
0057032c  71 00 ef e6 uxtb	r0, r1
00570330  41 c0 40 e2 sub	r12, r0, #65
00570334  7c c0 ef e6 uxtb	r12, r12
00570338  19 00 5c e3 cmp	r12, #25
0057033c  20 10 80 92 addls	r1, r0, #32
00570340  71 10 ef 96 uxtbls	r1, r1
00570344  00 10 c2 e5 strb	r1, [r2]
00570348  30 20 9d e5 ldr	r2, [sp, #0x30]
0057034c  2c 10 9d e5 ldr	r1, [sp, #0x2c]
00570350  01 10 62 e0 rsb	r1, r2, r1
00570354  01 00 53 e1 cmp	r3, r1
00570358  f0 ff ff 3a blo	0x570320 <_ZN6glitch2io10CPakReader8findFileEPKc+0x6c> @ imm = #-0x40
0057035c  25 30 d6 e5 ldrb	r3, [r6, #0x25]
00570360  00 00 53 e3 cmp	r3, #0
00570364  02 00 00 0a beq	0x570374 <_ZN6glitch2io10CPakReader8findFileEPKc+0xc0> @ imm = #0x8
00570368  06 00 a0 e1 mov	r0, r6
0057036c  18 10 85 e2 add	r1, r5, #24
00570370  7c fc ff eb bl	0x56f568 <_ZN6glitch2io10CPakReader22deletePathFromFilenameERSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE> @ imm = #-0xe10
00570374  18 00 86 e2 add	r0, r6, #24
00570378  05 10 a0 e1 mov	r1, r5
0057037c  76 ff ff eb bl	0x57015c <_ZN6glitch4core13binary_searchINS_2io13SPakFileEntryENS0_10SAllocatorIS3_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKS9_> @ imm = #-0x228
00570380  00 60 a0 e1 mov	r6, r0
00570384  05 00 a0 e1 mov	r0, r5
00570388  b0 fc ff eb bl	0x56f650 <_ZN6glitch2io13SPakFileEntryD1Ev> @ imm = #-0xd40
0057038c  07 30 94 e7 ldr	r3, [r4, r7]
00570390  54 20 9d e5 ldr	r2, [sp, #0x54]
00570394  06 00 a0 e1 mov	r0, r6
00570398  00 30 93 e5 ldr	r3, [r3]
0057039c  03 00 52 e1 cmp	r2, r3
005703a0  01 00 00 1a bne	0x5703ac <_ZN6glitch2io10CPakReader8findFileEPKc+0xf8> @ imm = #0x4
005703a4  58 d0 8d e2 add	sp, sp, #88
005703a8  f0 81 bd e8 pop	{r4, r5, r6, r7, r8, pc}
005703ac  d7 77 f6 eb bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x2620a4
005703b0  cc 47 42 00 .word	0x004247cc
005703b4  ac 40 00 00 .word	0x000040ac
; FUNCTION 0x005703b8, size=44 (0x2c), mode=arm
; symbol: _ZN6glitch2io10CPakReader8openFileEPKc
; demangled: glitch::io::CPakReader::openFile(char const*)
; SHA-256: 003c72811527f45e3b71071ad57f0c8e5dd88ebf01a06a05a26fdc3bb2cbed8e  file_offset=0x005703b8 PT_LOAD=1
005703b8  10 40 2d e9 push	{r4, lr}
005703bc  00 40 a0 e1 mov	r4, r0
005703c0  bb ff ff eb bl	0x5702b4 <_ZN6glitch2io10CPakReader8findFileEPKc> @ imm = #-0x114
005703c4  01 00 70 e3 cmn	r0, #1
005703c8  00 10 a0 e1 mov	r1, r0
005703cc  02 00 00 0a beq	0x5703dc <_ZN6glitch2io10CPakReader8openFileEPKc+0x24> @ imm = #0x8
005703d0  04 00 a0 e1 mov	r0, r4
005703d4  10 40 bd e8 pop	{r4, lr}
005703d8  e9 fc ff ea b	0x56f784 <_ZN6glitch2io10CPakReader8openFileEi> @ imm = #-0xc5c
005703dc  00 00 a0 e3 mov	r0, #0
005703e0  10 80 bd e8 pop	{r4, pc}
; FUNCTION 0x005707b4, size=84 (0x54), mode=arm
; symbol: _ZN6glitch2io14createReadFileEPKc
; demangled: glitch::io::createReadFile(char const*)
; SHA-256: b353d74ff93a4ce64acc549e7156a7930e6966b8f7e0fbf6a55590b994b0fdcb  file_offset=0x005707b4 PT_LOAD=1
005707b4  70 40 2d e9 push	{r4, r5, r6, lr}
005707b8  00 10 a0 e3 mov	r1, #0
005707bc  00 50 a0 e1 mov	r5, r0
005707c0  30 00 a0 e3 mov	r0, #48
005707c4  78 0e ff eb bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x3c620
005707c8  05 10 a0 e1 mov	r1, r5
005707cc  00 40 a0 e1 mov	r4, r0
005707d0  00 20 a0 e3 mov	r2, #0
005707d4  d6 ff ff eb bl	0x570734 <_ZN6glitch2io9CReadFileC1EPKcb> @ imm = #-0xa8
005707d8  00 30 94 e5 ldr	r3, [r4]
005707dc  04 00 a0 e1 mov	r0, r4
005707e0  0f e0 a0 e1 mov	lr, pc
005707e4  3c f0 93 e5 ldr	pc, [r3, #0x3c]
005707e8  00 50 50 e2 subs	r5, r0, #0
005707ec  01 00 00 0a beq	0x5707f8 <_ZN6glitch2io14createReadFileEPKc+0x44> @ imm = #0x4
005707f0  04 00 a0 e1 mov	r0, r4
005707f4  70 80 bd e8 pop	{r4, r5, r6, pc}
005707f8  04 00 a0 e1 mov	r0, r4
005707fc  60 b3 f6 eb bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x253280
00570800  05 00 a0 e1 mov	r0, r5
00570804  70 80 bd e8 pop	{r4, r5, r6, pc}
; FUNCTION 0x00570874, size=128 (0x80), mode=arm
; symbol: _ZN6glitch2io9CReadFileC2EPKcb
; demangled: glitch::io::CReadFile::CReadFile(char const*, bool)
; SHA-256: e205783a64c5315c1ece4fa0d6ca115cdac9aed236721b55837cc298c0a6cc06  file_offset=0x00570874 PT_LOAD=1
00570874  70 30 9f e5 ldr	r3, [pc, #0x70]         @ 0x5708ec <_ZN6glitch2io9CReadFileC2EPKcb+0x78>
00570878  70 c0 9f e5 ldr	r12, [pc, #0x70]        @ 0x5708f0 <_ZN6glitch2io9CReadFileC2EPKcb+0x7c>
0057087c  70 40 2d e9 push	{r4, r5, r6, lr}
00570880  03 30 8f e0 add	r3, pc, r3
00570884  0c c0 93 e7 ldr	r12, [r3, r12]
00570888  00 40 a0 e1 mov	r4, r0
0057088c  08 d0 4d e2 sub	sp, sp, #8
00570890  00 50 a0 e3 mov	r5, #0
00570894  08 c0 8c e2 add	r12, r12, #8
00570898  01 00 a0 e3 mov	r0, #1
0057089c  04 00 84 e5 str	r0, [r4, #0x4]
005708a0  00 c0 84 e5 str	r12, [r4]
005708a4  02 60 a0 e1 mov	r6, r2
005708a8  0c 50 84 e5 str	r5, [r4, #0xc]
005708ac  04 20 8d e2 add	r2, sp, #4
005708b0  10 50 84 e5 str	r5, [r4, #0x10]
005708b4  14 00 84 e2 add	r0, r4, #20
005708b8  df d5 f6 eb bl	0x32603c <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEEC1EPKcRKS6_> @ imm = #-0x24a884
005708bc  2c 60 c4 e5 strb	r6, [r4, #0x2c]
005708c0  04 00 a0 e1 mov	r0, r4
005708c4  00 ff ff eb bl	0x5704cc <_ZN6glitch2io9CReadFile8openFileEv> @ imm = #-0x400
005708c8  2c 30 d4 e5 ldrb	r3, [r4, #0x2c]
005708cc  05 00 53 e1 cmp	r3, r5
005708d0  02 00 00 0a beq	0x5708e0 <_ZN6glitch2io9CReadFileC2EPKcb+0x6c> @ imm = #0x8
005708d4  10 30 94 e5 ldr	r3, [r4, #0x10]
005708d8  03 00 53 e3 cmp	r3, #3
005708dc  2c 50 c4 d5 strble	r5, [r4, #0x2c]
005708e0  04 00 a0 e1 mov	r0, r4
005708e4  08 d0 8d e2 add	sp, sp, #8
005708e8  70 80 bd e8 pop	{r4, r5, r6, pc}
005708ec  10 42 42 00 .word	0x00424210
005708f0  cc 3d 00 00 .word	0x00003dcc
; FUNCTION 0x005773c8, size=28 (0x1c), mode=arm
; symbol: _ZN6glitch2io14CUnzipReadFileD1Ev
; demangled: glitch::io::CUnzipReadFile::~CUnzipReadFile()
; SHA-256: 6b863d3e8873803ad0737a4fa143d5c581007819fc5427a2b6c5e7897753e24a  file_offset=0x005773c8 PT_LOAD=1
005773c8  10 40 2d e9 push	{r4, lr}
005773cc  00 40 a0 e1 mov	r4, r0
005773d0  e7 ff ff eb bl	0x577374 <_ZN6glitch2io14CUnzipReadFileD1Ev> @ imm = #-0x64
005773d4  04 00 a0 e1 mov	r0, r4
005773d8  b4 5b f6 eb bl	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x269130
005773dc  04 00 a0 e1 mov	r0, r4
005773e0  10 80 bd e8 pop	{r4, pc}
; FUNCTION 0x00577534, size=84 (0x54), mode=arm
; symbol: _ZN6glitch2io12CUnZipReaderD1Ev
; demangled: glitch::io::CUnZipReader::~CUnZipReader()
; SHA-256: 7f497f3d618896206c8004b96abb7534fc757e3724316394c52059ed65f9ba53  file_offset=0x00577534 PT_LOAD=1
00577534  44 30 9f e5 ldr	r3, [pc, #0x44]         @ 0x577580 <_ZN6glitch2io12CUnZipReaderD1Ev+0x4c>
00577538  44 20 9f e5 ldr	r2, [pc, #0x44]         @ 0x577584 <_ZN6glitch2io12CUnZipReaderD1Ev+0x50>
0057753c  10 40 2d e9 push	{r4, lr}
00577540  03 30 8f e0 add	r3, pc, r3
00577544  02 20 93 e7 ldr	r2, [r3, r2]
00577548  00 10 a0 e1 mov	r1, r0
0057754c  00 40 a0 e1 mov	r4, r0
00577550  08 20 82 e2 add	r2, r2, #8
00577554  24 20 81 e4 str	r2, [r1], #36
00577558  14 00 91 e5 ldr	r0, [r1, #0x14]
0057755c  01 00 50 e1 cmp	r0, r1
00577560  02 00 00 0a beq	0x577570 <_ZN6glitch2io12CUnZipReaderD1Ev+0x3c> @ imm = #0x8
00577564  00 00 50 e3 cmp	r0, #0
00577568  00 00 00 0a beq	0x577570 <_ZN6glitch2io12CUnZipReaderD1Ev+0x3c> @ imm = #0x0
0057756c  b7 63 f6 eb bl	0x310450 <_Z10GlitchFreePv> @ imm = #-0x267124
00577570  04 00 a0 e1 mov	r0, r4
00577574  dc ff ff eb bl	0x5774ec <_ZN6glitch2io10CZipReaderD2Ev> @ imm = #-0x90
00577578  04 00 a0 e1 mov	r0, r4
0057757c  10 80 bd e8 pop	{r4, pc}
00577580  50 d5 41 00 .word	0x0041d550
00577584  e4 18 00 00 .word	0x000018e4
; FUNCTION 0x005779cc, size=124 (0x7c), mode=arm
; symbol: _ZN6glitch2io14CUnzipReadFileC1ERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPKc
; demangled: glitch::io::CUnzipReadFile::CUnzipReadFile(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0>> const&, char const*)
; SHA-256: 76304689f275b8db0c5504e4404bb9ebcb83aa8bf78700ca15b5bfd46edb7c3d  file_offset=0x005779cc PT_LOAD=1
005779cc  f0 41 2d e9 push	{r4, r5, r6, r7, r8, lr}
005779d0  02 60 a0 e1 mov	r6, r2
005779d4  14 10 91 e5 ldr	r1, [r1, #0x14]
005779d8  00 20 a0 e3 mov	r2, #0
005779dc  5c 50 9f e5 ldr	r5, [pc, #0x5c]         @ 0x577a40 <_ZN6glitch2io14CUnzipReadFileC1ERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPKc+0x74>
005779e0  00 40 a0 e1 mov	r4, r0
005779e4  a2 e3 ff eb bl	0x570874 <_ZN6glitch2io9CReadFileC2EPKcb> @ imm = #-0x7178
005779e8  54 30 9f e5 ldr	r3, [pc, #0x54]         @ 0x577a44 <_ZN6glitch2io14CUnzipReadFileC1ERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPKc+0x78>
005779ec  05 50 8f e0 add	r5, pc, r5
005779f0  04 70 a0 e1 mov	r7, r4
005779f4  03 30 95 e7 ldr	r3, [r5, r3]
005779f8  10 10 a0 e3 mov	r1, #16
005779fc  08 30 83 e2 add	r3, r3, #8
00577a00  30 30 87 e4 str	r3, [r7], #48
00577a04  07 00 a0 e1 mov	r0, r7
00577a08  40 70 84 e5 str	r7, [r4, #0x40]
00577a0c  44 70 84 e5 str	r7, [r4, #0x44]
00577a10  e4 a3 f6 eb bl	0x3209a8 <_ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj> @ imm = #-0x257070
00577a14  40 30 94 e5 ldr	r3, [r4, #0x40]
00577a18  00 20 a0 e3 mov	r2, #0
00577a1c  06 00 a0 e1 mov	r0, r6
00577a20  00 20 c3 e5 strb	r2, [r3]
00577a24  0a 59 f6 eb bl	0x30de54 <strlen@plt>   @ imm = #-0x269bd8
00577a28  06 10 a0 e1 mov	r1, r6
00577a2c  00 20 86 e0 add	r2, r6, r0
00577a30  07 00 a0 e1 mov	r0, r7
00577a34  53 a4 f6 eb bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x256eb4
00577a38  04 00 a0 e1 mov	r0, r4
00577a3c  f0 81 bd e8 pop	{r4, r5, r6, r7, r8, pc}
00577a40  a4 d0 41 00 .word	0x0041d0a4
00577a44  94 3d 00 00 .word	0x00003d94
; FUNCTION 0x00576dc0, size=4 (0x4), mode=arm
; symbol: _ZN6glitch2io12CUnZipReader14buildDirectoryEv
; demangled: glitch::io::CUnZipReader::buildDirectory()
; SHA-256: 379bec29dccd0a93c94826144d7ef6e42fab64ef195a3b8313a16926f66f388f  file_offset=0x00576dc0 PT_LOAD=1
00576dc0  1e ff 2f e1 bx	lr
; FUNCTION 0x00576dc4, size=44 (0x2c), mode=arm
; symbol: _ZN6glitch2io12CUnZipReader8findFileEPKc
; demangled: glitch::io::CUnZipReader::findFile(char const*)
; SHA-256: fa7e0f46dd65e6dabec9bb401d6d76c2eecd8a9268364c052ad46ad9cd4ba1bd  file_offset=0x00576dc4 PT_LOAD=1
00576dc4  10 40 2d e9 push	{r4, lr}
00576dc8  00 30 90 e5 ldr	r3, [r0]
00576dcc  0f e0 a0 e1 mov	lr, pc
00576dd0  0c f0 93 e5 ldr	pc, [r3, #0xc]
00576dd4  00 00 50 e3 cmp	r0, #0
00576dd8  02 00 00 0a beq	0x576de8 <_ZN6glitch2io12CUnZipReader8findFileEPKc+0x24> @ imm = #0x8
00576ddc  e8 99 f6 eb bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x259860
00576de0  01 00 a0 e3 mov	r0, #1
00576de4  10 80 bd e8 pop	{r4, pc}
00576de8  00 00 e0 e3 mvn	r0, #0
00576dec  10 80 bd e8 pop	{r4, pc}
; FUNCTION 0x00577a48, size=264 (0x108), mode=arm
; symbol: _ZN6glitch2io12CUnZipReader8openFileEPKc
; demangled: glitch::io::CUnZipReader::openFile(char const*)
; SHA-256: f537a787ec665d16d848c1c83625d5eae0cc8a5b34e9bf0cd4ac4aea9be3f9ea  file_offset=0x00577a48 PT_LOAD=1
00577a48  f0 41 2d e9 push	{r4, r5, r6, r7, r8, lr}
00577a4c  f4 50 9f e5 ldr	r5, [pc, #0xf4]         @ 0x577b48 <_ZN6glitch2io12CUnZipReader8openFileEPKc+0x100>
00577a50  f4 80 9f e5 ldr	r8, [pc, #0xf4]         @ 0x577b4c <_ZN6glitch2io12CUnZipReader8openFileEPKc+0x104>
00577a54  20 d0 4d e2 sub	sp, sp, #32
00577a58  05 50 8f e0 add	r5, pc, r5
00577a5c  08 30 95 e7 ldr	r3, [r5, r8]
00577a60  04 40 8d e2 add	r4, sp, #4
00577a64  00 70 a0 e1 mov	r7, r0
00577a68  00 30 93 e5 ldr	r3, [r3]
00577a6c  01 60 a0 e1 mov	r6, r1
00577a70  04 00 a0 e1 mov	r0, r4
00577a74  10 10 a0 e3 mov	r1, #16
00577a78  1c 30 8d e5 str	r3, [sp, #0x1c]
00577a7c  14 40 8d e5 str	r4, [sp, #0x14]
00577a80  18 40 8d e5 str	r4, [sp, #0x18]
00577a84  c7 a3 f6 eb bl	0x3209a8 <_ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj> @ imm = #-0x2570e4
00577a88  24 30 87 e2 add	r3, r7, #36
00577a8c  03 00 54 e1 cmp	r4, r3
00577a90  14 30 9d e5 ldr	r3, [sp, #0x14]
00577a94  00 20 a0 e3 mov	r2, #0
00577a98  00 20 c3 e5 strb	r2, [r3]
00577a9c  03 00 00 0a beq	0x577ab0 <_ZN6glitch2io12CUnZipReader8openFileEPKc+0x68> @ imm = #0xc
00577aa0  34 20 97 e5 ldr	r2, [r7, #0x34]
00577aa4  04 00 a0 e1 mov	r0, r4
00577aa8  38 10 97 e5 ldr	r1, [r7, #0x38]
00577aac  35 a4 f6 eb bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x256f2c
00577ab0  06 00 a0 e1 mov	r0, r6
00577ab4  e6 58 f6 eb bl	0x30de54 <strlen@plt>   @ imm = #-0x269c68
00577ab8  06 10 a0 e1 mov	r1, r6
00577abc  00 20 86 e0 add	r2, r6, r0
00577ac0  04 00 a0 e1 mov	r0, r4
00577ac4  e0 a3 f6 eb bl	0x320a4c <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_appendEPKcS9_> @ imm = #-0x257080
00577ac8  00 10 a0 e3 mov	r1, #0
00577acc  48 00 a0 e3 mov	r0, #72
00577ad0  b5 f1 fe eb bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x4392c
00577ad4  06 20 a0 e1 mov	r2, r6
00577ad8  00 70 a0 e1 mov	r7, r0
00577adc  04 10 a0 e1 mov	r1, r4
00577ae0  b9 ff ff eb bl	0x5779cc <_ZN6glitch2io14CUnzipReadFileC1ERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPKc> @ imm = #-0x11c
00577ae4  00 30 97 e5 ldr	r3, [r7]
00577ae8  07 00 a0 e1 mov	r0, r7
00577aec  0f e0 a0 e1 mov	lr, pc
00577af0  3c f0 93 e5 ldr	pc, [r3, #0x3c]
00577af4  00 60 50 e2 subs	r6, r0, #0
00577af8  0d 00 00 0a beq	0x577b34 <_ZN6glitch2io12CUnZipReader8openFileEPKc+0xec> @ imm = #0x34
00577afc  18 00 9d e5 ldr	r0, [sp, #0x18]
00577b00  04 00 50 e1 cmp	r0, r4
00577b04  02 00 00 0a beq	0x577b14 <_ZN6glitch2io12CUnZipReader8openFileEPKc+0xcc> @ imm = #0x8
00577b08  00 00 50 e3 cmp	r0, #0
00577b0c  00 00 00 0a beq	0x577b14 <_ZN6glitch2io12CUnZipReader8openFileEPKc+0xcc> @ imm = #0x0
00577b10  4e 62 f6 eb bl	0x310450 <_Z10GlitchFreePv> @ imm = #-0x2676c8
00577b14  08 30 95 e7 ldr	r3, [r5, r8]
00577b18  1c 20 9d e5 ldr	r2, [sp, #0x1c]
00577b1c  07 00 a0 e1 mov	r0, r7
00577b20  00 30 93 e5 ldr	r3, [r3]
00577b24  03 00 52 e1 cmp	r2, r3
00577b28  05 00 00 1a bne	0x577b44 <_ZN6glitch2io12CUnZipReader8openFileEPKc+0xfc> @ imm = #0x14
00577b2c  20 d0 8d e2 add	sp, sp, #32
00577b30  f0 81 bd e8 pop	{r4, r5, r6, r7, r8, pc}
00577b34  07 00 a0 e1 mov	r0, r7
00577b38  91 96 f6 eb bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x25a5bc
00577b3c  06 70 a0 e1 mov	r7, r6
00577b40  ed ff ff ea b	0x577afc <_ZN6glitch2io12CUnZipReader8openFileEPKc+0xb4> @ imm = #-0x4c
00577b44  f1 59 f6 eb bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x26983c
00577b48  38 d0 41 00 .word	0x0041d038
00577b4c  ac 40 00 00 .word	0x000040ac
; FUNCTION 0x005780fc, size=184 (0xb8), mode=arm
; symbol: _ZN6glitch2io12CUnZipReaderC1EPNS0_11IFileSystemEPKcbb
; demangled: glitch::io::CUnZipReader::CUnZipReader(glitch::io::IFileSystem*, char const*, bool, bool)
; SHA-256: c1e33530dcfe7695f9c6b916dafdab523b7425b36a6abfd478122afd2b2c614a  file_offset=0x005780fc PT_LOAD=1
005780fc  f0 41 2d e9 push	{r4, r5, r6, r7, r8, lr}
00578100  02 60 a0 e1 mov	r6, r2
00578104  01 70 a0 e1 mov	r7, r1
00578108  03 20 a0 e1 mov	r2, r3
0057810c  00 10 a0 e3 mov	r1, #0
00578110  18 30 dd e5 ldrb	r3, [sp, #0x18]
00578114  8c 50 9f e5 ldr	r5, [pc, #0x8c]         @ 0x5781a8 <_ZN6glitch2io12CUnZipReaderC1EPNS0_11IFileSystemEPKcbb+0xac>
00578118  00 40 a0 e1 mov	r4, r0
0057811c  cb ff ff eb bl	0x578050 <_ZN6glitch2io10CZipReaderC2EPNS0_9IReadFileEbb> @ imm = #-0xd4
00578120  84 30 9f e5 ldr	r3, [pc, #0x84]         @ 0x5781ac <_ZN6glitch2io12CUnZipReaderC1EPNS0_11IFileSystemEPKcbb+0xb0>
00578124  05 50 8f e0 add	r5, pc, r5
00578128  24 80 84 e2 add	r8, r4, #36
0057812c  03 30 95 e7 ldr	r3, [r5, r3]
00578130  10 10 a0 e3 mov	r1, #16
00578134  08 00 a0 e1 mov	r0, r8
00578138  08 30 83 e2 add	r3, r3, #8
0057813c  00 30 84 e5 str	r3, [r4]
00578140  20 70 84 e5 str	r7, [r4, #0x20]
00578144  34 80 84 e5 str	r8, [r4, #0x34]
00578148  38 80 84 e5 str	r8, [r4, #0x38]
0057814c  15 a2 f6 eb bl	0x3209a8 <_ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj> @ imm = #-0x2577ac
00578150  34 30 94 e5 ldr	r3, [r4, #0x34]
00578154  00 20 a0 e3 mov	r2, #0
00578158  06 00 a0 e1 mov	r0, r6
0057815c  00 20 c3 e5 strb	r2, [r3]
00578160  3b 57 f6 eb bl	0x30de54 <strlen@plt>   @ imm = #-0x26a314
00578164  06 10 a0 e1 mov	r1, r6
00578168  00 20 86 e0 add	r2, r6, r0
0057816c  08 00 a0 e1 mov	r0, r8
00578170  84 a2 f6 eb bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x2575f0
00578174  34 30 94 e5 ldr	r3, [r4, #0x34]
00578178  d1 30 53 e1 ldrsb	r3, [r3, #-1]
0057817c  5c 00 53 e3 cmp	r3, #92
00578180  06 00 00 0a beq	0x5781a0 <_ZN6glitch2io12CUnZipReaderC1EPNS0_11IFileSystemEPKcbb+0xa4> @ imm = #0x18
00578184  2f 00 53 e3 cmp	r3, #47
00578188  04 00 00 0a beq	0x5781a0 <_ZN6glitch2io12CUnZipReaderC1EPNS0_11IFileSystemEPKcbb+0xa4> @ imm = #0x10
0057818c  1c 10 9f e5 ldr	r1, [pc, #0x1c]         @ 0x5781b0 <_ZN6glitch2io12CUnZipReaderC1EPNS0_11IFileSystemEPKcbb+0xb4>
00578190  08 00 a0 e1 mov	r0, r8
00578194  01 10 8f e0 add	r1, pc, r1
00578198  01 20 81 e2 add	r2, r1, #1
0057819c  2a a2 f6 eb bl	0x320a4c <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_appendEPKcS9_> @ imm = #-0x257758
005781a0  04 00 a0 e1 mov	r0, r4
005781a4  f0 81 bd e8 pop	{r4, r5, r6, r7, r8, pc}
005781a8  6c c9 41 00 .word	0x0041c96c
005781ac  e4 18 00 00 .word	0x000018e4
005781b0  c4 8a 34 00 .word	0x00348ac4

; DATA 0x00974340, size=116 (0x74), full vtable for glitch::io::CFileSystem
; SHA-256: dfaaf3b3344a14fefb2ccea25782c59002276b0e95a1b2ffe4246086f4884005  file_offset=0x00973340 PT_LOAD=2
; Address point is +8: slot +0x0c=createAndOpenFile, +0x18=addZip,
; +0x1c=addFolder, +0x20=addPak. Slot presence alone does not prove a caller.
00974340  00 00 00 00    .word 0x00000000
00974344  00 00 00 00    .word 0x00000000
00974348  44 cc 56 00    .word 0x0056cc44
0097434c  a8 cc 56 00    .word 0x0056cca8
00974350  cc d5 31 00    .word 0x0031d5cc
00974354  e0 d4 56 00    .word 0x0056d4e0
00974358  7c c5 56 00    .word 0x0056c57c
0097435c  70 c5 56 00    .word 0x0056c570
00974360  c0 d2 56 00    .word 0x0056d2c0
00974364  80 d1 56 00    .word 0x0056d180
00974368  70 ca 56 00    .word 0x0056ca70
0097436c  dc e6 56 00    .word 0x0056e6dc
00974370  60 ce 56 00    .word 0x0056ce60
00974374  14 c2 56 00    .word 0x0056c214
00974378  28 c5 56 00    .word 0x0056c528
0097437c  48 c3 56 00    .word 0x0056c348
00974380  b4 c6 56 00    .word 0x0056c6b4
00974384  40 c7 56 00    .word 0x0056c740
00974388  a4 c4 56 00    .word 0x0056c4a4
0097438c  38 df 56 00    .word 0x0056df38
00974390  7c df 34 00    .word 0x0034df7c
00974394  30 c2 56 00    .word 0x0056c230
00974398  80 c4 56 00    .word 0x0056c480
0097439c  4c c4 56 00    .word 0x0056c44c
009743a0  3c c4 56 00    .word 0x0056c43c
009743a4  78 c2 56 00    .word 0x0056c278
009743a8  14 c4 56 00    .word 0x0056c414
009743ac  ec c3 56 00    .word 0x0056c3ec
009743b0  78 cb 56 00    .word 0x0056cb78

; DATA 0x00974488, size=24 (0x18), vtable for glitch::io::CPakReader
; SHA-256: 7c6c5b668e4e736781be48da9a42dd55d9a52a1f5353dbfef82f201dc4e6165f  file_offset=0x00973488 PT_LOAD=2
00974488  00 00 00 00    .word 0x00000000
0097448c  00 00 00 00    .word 0x00000000
00974490  f4 f6 56 00    .word 0x0056f6f4
00974494  d4 f7 56 00    .word 0x0056f7d4
00974498  cc d5 31 00    .word 0x0031d5cc
0097449c  b8 03 57 00    .word 0x005703b8

; DATA 0x009747e0, size=24 (0x18), vtable for glitch::io::CUnZipReader
; SHA-256: c3eb16b0bca88be750ba3b544a57a8d199d561ef49dc1acd11d7d16d7fe49556  file_offset=0x009737e0 PT_LOAD=2
009747e0  00 00 00 00    .word 0x00000000
009747e4  00 00 00 00    .word 0x00000000
009747e8  34 75 57 00    .word 0x00577534
009747ec  88 75 57 00    .word 0x00577588
009747f0  cc d5 31 00    .word 0x0031d5cc
009747f4  48 7a 57 00    .word 0x00577a48
