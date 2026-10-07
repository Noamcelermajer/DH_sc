; PACKAGE FUNCTION vox_file_adapter_sync
; ELF VA 0x0086f558, range_size=72, SHA-256=60fffc084b28bc52d4b51dd50cbb5327978e27b1cc717bbce27c412b552ea824
; Original assembly source vox_VoxUtils-47de2598a2aa-001.asm
; Source symbol vox::VoxUtils::LoadDataSourceFromFile(char const*, int, int)
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
0086f558  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0086f55c  14 d0 4d e2                                      sub sp, sp, #0x14
0086f560  00 40 a0 e1                                      mov r4, r0
0086f564  01 70 a0 e1                                      mov r7, r1
0086f568  02 60 a0 e1                                      mov r6, r2
0086f56c  03 50 a0 e1                                      mov r5, r3
0086f570  6e cd ff eb                                      bl #0x862b30
0086f574  00 c0 a0 e3                                      mov ip, #0
0086f578  00 10 a0 e1                                      mov r1, r0
0086f57c  07 30 a0 e1                                      mov r3, r7
0086f580  04 00 a0 e1                                      mov r0, r4
0086f584  01 20 a0 e3                                      mov r2, #1
0086f588  40 10 8d e8                                      stm sp, {r6, ip}
0086f58c  08 50 8d e5                                      str r5, [sp, #8]
0086f590  92 cc ff eb                                      bl #0x8627e0
0086f594  04 00 a0 e1                                      mov r0, r4
0086f598  14 d0 8d e2                                      add sp, sp, #0x14
0086f59c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; PACKAGE FUNCTION vox_file_adapter_flags
; ELF VA 0x0086f5fc, range_size=180, SHA-256=76b90e27c6a91a0288da805df2a614edcb4468d4f43bab18b8b0303eb4d254d2
; Original assembly source vox_VoxUtils-47de2598a2aa-001.asm
; Source symbol vox::VoxUtils::LoadDataSourceFromFileEx(char const*, int, vox::VoxSourceLoadingFlags, int)
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
0086f5fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086f600  03 70 a0 e1                                      mov r7, r3
0086f604  10 d0 4d e2                                      sub sp, sp, #0x10
0086f608  00 40 a0 e1                                      mov r4, r0
0086f60c  01 80 a0 e1                                      mov r8, r1
0086f610  02 60 a0 e1                                      mov r6, r2
0086f614  28 50 9d e5                                      ldr r5, [sp, #0x28]
0086f618  44 cd ff eb                                      bl #0x862b30
0086f61c  01 08 17 e3                                      tst r7, #0x10000
0086f620  0b 00 00 1a                                      bne #0x86f654
0086f624  01 00 17 e3                                      tst r7, #1
0086f628  14 00 00 1a                                      bne #0x86f680
0086f62c  02 00 57 e3                                      cmp r7, #2
0086f630  18 00 00 0a                                      beq #0x86f698
0086f634  08 10 a0 e1                                      mov r1, r8
0086f638  06 20 a0 e1                                      mov r2, r6
0086f63c  05 30 a0 e1                                      mov r3, r5
0086f640  04 00 a0 e1                                      mov r0, r4
0086f644  c3 ff ff eb                                      bl #0x86f558
0086f648  04 00 a0 e1                                      mov r0, r4
0086f64c  10 d0 8d e2                                      add sp, sp, #0x10
0086f650  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0086f654  77 70 ff e6                                      uxth r7, r7
0086f658  00 10 a0 e1                                      mov r1, r0
0086f65c  00 c0 a0 e3                                      mov ip, #0
0086f660  08 30 a0 e1                                      mov r3, r8
0086f664  04 00 a0 e1                                      mov r0, r4
0086f668  01 20 a0 e3                                      mov r2, #1
0086f66c  40 10 8d e8                                      stm sp, {r6, ip}
0086f670  08 50 8d e5                                      str r5, [sp, #8]
0086f674  0c 70 8d e5                                      str r7, [sp, #0xc]
0086f678  38 cc ff eb                                      bl #0x862760
0086f67c  f1 ff ff ea                                      b #0x86f648
0086f680  08 10 a0 e1                                      mov r1, r8
0086f684  06 20 a0 e1                                      mov r2, r6
0086f688  05 30 a0 e1                                      mov r3, r5
0086f68c  04 00 a0 e1                                      mov r0, r4
0086f690  47 ff ff eb                                      bl #0x86f3b4
0086f694  eb ff ff ea                                      b #0x86f648
0086f698  08 10 a0 e1                                      mov r1, r8
0086f69c  06 20 a0 e1                                      mov r2, r6
0086f6a0  05 30 a0 e1                                      mov r3, r5
0086f6a4  04 00 a0 e1                                      mov r0, r4
0086f6a8  bc ff ff eb                                      bl #0x86f5a0
0086f6ac  e5 ff ff ea                                      b #0x86f648

; PACKAGE FUNCTION vox_auto_detect_decoder
; ELF VA 0x0086f6b0, range_size=560, SHA-256=74684b3dd20ec2faff7b78234c3b2725e8be4c05ccc009e54aa41df827ed8794
; Original assembly source vox_VoxUtils-47de2598a2aa-001.asm
; Source symbol vox::VoxUtils::LoadDataSourceFromFileAutoDetectDecoder(char const*, int)
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
0086f6b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086f6b4  08 42 9f e5                                      ldr r4, [pc, #0x208]
0086f6b8  08 72 9f e5                                      ldr r7, [pc, #0x208]
0086f6bc  24 d0 4d e2                                      sub sp, sp, #0x24
0086f6c0  04 40 8f e0                                      add r4, pc, r4
0086f6c4  07 30 94 e7                                      ldr r3, [r4, r7]
0086f6c8  00 a0 51 e2                                      subs sl, r1, #0
0086f6cc  00 50 a0 e1                                      mov r5, r0
0086f6d0  00 30 93 e5                                      ldr r3, [r3]
0086f6d4  02 90 a0 e1                                      mov sb, r2
0086f6d8  1c 30 8d e5                                      str r3, [sp, #0x1c]
0086f6dc  56 00 00 0a                                      beq #0x86f83c
0086f6e0  0a 00 a0 e1                                      mov r0, sl
0086f6e4  2e 10 a0 e3                                      mov r1, #0x2e
0086f6e8  4d 7b ea eb                                      bl #0x30e424
0086f6ec  00 00 50 e3                                      cmp r0, #0
0086f6f0  5f 00 00 0a                                      beq #0x86f874
0086f6f4  01 80 80 e2                                      add r8, r0, #1
0086f6f8  04 60 8d e2                                      add r6, sp, #4
0086f6fc  06 00 a0 e1                                      mov r0, r6
0086f700  08 10 a0 e1                                      mov r1, r8
0086f704  0d 20 a0 e1                                      mov r2, sp
0086f708  0a ff ff eb                                      bl #0x86f338
0086f70c  00 b0 a0 e3                                      mov fp, #0
0086f710  08 00 00 ea                                      b #0x86f738
0086f714  18 20 9d e5                                      ldr r2, [sp, #0x18]
0086f718  0b 30 d2 e7                                      ldrb r3, [r2, fp]
0086f71c  0b 20 82 e0                                      add r2, r2, fp
0086f720  01 b0 8b e2                                      add fp, fp, #1
0086f724  73 10 af e6                                      sxtb r1, r3
0086f728  60 00 51 e3                                      cmp r1, #0x60
0086f72c  20 30 83 d2                                      addle r3, r3, #0x20
0086f730  73 30 ef d6                                      uxtble r3, r3
0086f734  00 30 c2 e5                                      strb r3, [r2]
0086f738  08 00 a0 e1                                      mov r0, r8
0086f73c  c4 79 ea eb                                      bl #0x30de54
0086f740  00 00 5b e1                                      cmp fp, r0
0086f744  f2 ff ff 3a                                      blo #0x86f714
0086f748  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
0086f74c  06 00 a0 e1                                      mov r0, r6
0086f750  01 10 8f e0                                      add r1, pc, r1
0086f754  04 ff ff eb                                      bl #0x86f36c
0086f758  00 00 50 e3                                      cmp r0, #0
0086f75c  12 00 00 0a                                      beq #0x86f7ac
0086f760  0a 10 a0 e1                                      mov r1, sl
0086f764  09 30 a0 e1                                      mov r3, sb
0086f768  05 00 a0 e1                                      mov r0, r5
0086f76c  01 20 a0 e3                                      mov r2, #1
0086f770  78 ff ff eb                                      bl #0x86f558
0086f774  18 00 9d e5                                      ldr r0, [sp, #0x18]
0086f778  06 00 50 e1                                      cmp r0, r6
0086f77c  02 00 00 0a                                      beq #0x86f78c
0086f780  00 00 50 e3                                      cmp r0, #0
0086f784  00 00 00 0a                                      beq #0x86f78c
0086f788  2d 83 ea eb                                      bl #0x310444
0086f78c  07 30 94 e7                                      ldr r3, [r4, r7]
0086f790  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0086f794  05 00 a0 e1                                      mov r0, r5
0086f798  00 30 93 e5                                      ldr r3, [r3]
0086f79c  03 00 52 e1                                      cmp r2, r3
0086f7a0  46 00 00 1a                                      bne #0x86f8c0
0086f7a4  24 d0 8d e2                                      add sp, sp, #0x24
0086f7a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0086f7ac  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
0086f7b0  06 00 a0 e1                                      mov r0, r6
0086f7b4  01 10 8f e0                                      add r1, pc, r1
0086f7b8  eb fe ff eb                                      bl #0x86f36c
0086f7bc  00 00 50 e3                                      cmp r0, #0
0086f7c0  0b 00 00 1a                                      bne #0x86f7f4
0086f7c4  08 11 9f e5                                      ldr r1, [pc, #0x108]
0086f7c8  06 00 a0 e1                                      mov r0, r6
0086f7cc  01 10 8f e0                                      add r1, pc, r1
0086f7d0  e5 fe ff eb                                      bl #0x86f36c
0086f7d4  00 00 50 e3                                      cmp r0, #0
0086f7d8  0b 00 00 0a                                      beq #0x86f80c
0086f7dc  0a 10 a0 e1                                      mov r1, sl
0086f7e0  09 30 a0 e1                                      mov r3, sb
0086f7e4  05 00 a0 e1                                      mov r0, r5
0086f7e8  03 20 a0 e3                                      mov r2, #3
0086f7ec  59 ff ff eb                                      bl #0x86f558
0086f7f0  df ff ff ea                                      b #0x86f774
0086f7f4  0a 10 a0 e1                                      mov r1, sl
0086f7f8  09 30 a0 e1                                      mov r3, sb
0086f7fc  05 00 a0 e1                                      mov r0, r5
0086f800  02 20 a0 e3                                      mov r2, #2
0086f804  53 ff ff eb                                      bl #0x86f558
0086f808  d9 ff ff ea                                      b #0x86f774
0086f80c  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
0086f810  06 00 a0 e1                                      mov r0, r6
0086f814  01 10 8f e0                                      add r1, pc, r1
0086f818  d3 fe ff eb                                      bl #0x86f36c
0086f81c  00 00 50 e3                                      cmp r0, #0
0086f820  20 00 00 1a                                      bne #0x86f8a8
0086f824  18 00 9d e5                                      ldr r0, [sp, #0x18]
0086f828  06 00 50 e1                                      cmp r0, r6
0086f82c  02 00 00 0a                                      beq #0x86f83c
0086f830  00 00 50 e3                                      cmp r0, #0
0086f834  00 00 00 0a                                      beq #0x86f83c
0086f838  01 83 ea eb                                      bl #0x310444
0086f83c  98 20 9f e5                                      ldr r2, [pc, #0x98]
0086f840  00 30 a0 e3                                      mov r3, #0
0086f844  00 00 e0 e3                                      mvn r0, #0
0086f848  02 20 94 e7                                      ldr r2, [r4, r2]
0086f84c  00 10 e0 e3                                      mvn r1, #0
0086f850  f8 00 c5 e1                                      strd r0, r1, [r5, #8]
0086f854  08 20 82 e2                                      add r2, r2, #8
0086f858  20 30 85 e5                                      str r3, [r5, #0x20]
0086f85c  00 20 85 e5                                      str r2, [r5]
0086f860  10 30 85 e5                                      str r3, [r5, #0x10]
0086f864  14 30 85 e5                                      str r3, [r5, #0x14]
0086f868  18 30 85 e5                                      str r3, [r5, #0x18]
0086f86c  1c 30 85 e5                                      str r3, [r5, #0x1c]
0086f870  c5 ff ff ea                                      b #0x86f78c
0086f874  60 30 9f e5                                      ldr r3, [pc, #0x60]
0086f878  00 80 e0 e3                                      mvn r8, #0
0086f87c  00 90 e0 e3                                      mvn sb, #0
0086f880  03 30 94 e7                                      ldr r3, [r4, r3]
0086f884  f8 80 c5 e1                                      strd r8, sb, [r5, #8]
0086f888  08 30 83 e2                                      add r3, r3, #8
0086f88c  20 00 85 e5                                      str r0, [r5, #0x20]
0086f890  10 00 85 e5                                      str r0, [r5, #0x10]
0086f894  00 30 85 e5                                      str r3, [r5]
0086f898  14 00 85 e5                                      str r0, [r5, #0x14]
0086f89c  18 00 85 e5                                      str r0, [r5, #0x18]
0086f8a0  1c 00 85 e5                                      str r0, [r5, #0x1c]
0086f8a4  b8 ff ff ea                                      b #0x86f78c
0086f8a8  0a 10 a0 e1                                      mov r1, sl
0086f8ac  09 30 a0 e1                                      mov r3, sb
0086f8b0  05 00 a0 e1                                      mov r0, r5
0086f8b4  04 20 a0 e3                                      mov r2, #4
0086f8b8  26 ff ff eb                                      bl #0x86f558
0086f8bc  ac ff ff ea                                      b #0x86f774
0086f8c0  92 7a ea eb                                      bl #0x30e310
0086f8c4  d0 53 12 00 ac 40 00 00 a8 17 0a 00 4c 17 0a 00  .byte 0xd0, 0x53, 0x12, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa8, 0x17, 0x0a, 0x00, 0x4c, 0x17, 0x0a, 0x00
0086f8d4  3c 17 0a 00 fc 16 0a 00 a4 19 00 00              .byte 0x3c, 0x17, 0x0a, 0x00, 0xfc, 0x16, 0x0a, 0x00, 0xa4, 0x19, 0x00, 0x00

; PACKAGE FUNCTION vox_auto_detect_decoder_flags
; ELF VA 0x0086f8e0, range_size=588, SHA-256=07715d06cfb121b1037a4e8e69ec47e9d4c0d62e121ce008d15df735ee5f491f
; Original assembly source vox_VoxUtils-47de2598a2aa-001.asm
; Source symbol vox::VoxUtils::LoadDataSourceFromFileAutoDetectDecoderEx(char const*, int, vox::VoxSourceLoadingFlags, vox::DataHandleUserData*)
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
0086f8e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086f8e4  24 42 9f e5                                      ldr r4, [pc, #0x224]
0086f8e8  24 72 9f e5                                      ldr r7, [pc, #0x224]
0086f8ec  00 80 51 e2                                      subs r8, r1, #0
0086f8f0  04 40 8f e0                                      add r4, pc, r4
0086f8f4  07 10 94 e7                                      ldr r1, [r4, r7]
0086f8f8  02 b0 a0 e1                                      mov fp, r2
0086f8fc  34 d0 4d e2                                      sub sp, sp, #0x34
0086f900  00 20 91 e5                                      ldr r2, [r1]
0086f904  00 50 a0 e1                                      mov r5, r0
0086f908  03 90 a0 e1                                      mov sb, r3
0086f90c  2c 20 8d e5                                      str r2, [sp, #0x2c]
0086f910  5b 00 00 0a                                      beq #0x86fa84
0086f914  08 00 a0 e1                                      mov r0, r8
0086f918  2e 10 a0 e3                                      mov r1, #0x2e
0086f91c  c0 7a ea eb                                      bl #0x30e424
0086f920  00 00 50 e3                                      cmp r0, #0
0086f924  64 00 00 0a                                      beq #0x86fabc
0086f928  01 a0 80 e2                                      add sl, r0, #1
0086f92c  14 60 8d e2                                      add r6, sp, #0x14
0086f930  06 00 a0 e1                                      mov r0, r6
0086f934  0a 10 a0 e1                                      mov r1, sl
0086f938  10 20 8d e2                                      add r2, sp, #0x10
0086f93c  7d fe ff eb                                      bl #0x86f338
0086f940  00 30 a0 e3                                      mov r3, #0
0086f944  08 00 00 ea                                      b #0x86f96c
0086f948  28 10 9d e5                                      ldr r1, [sp, #0x28]
0086f94c  03 20 d1 e7                                      ldrb r2, [r1, r3]
0086f950  03 10 81 e0                                      add r1, r1, r3
0086f954  01 30 83 e2                                      add r3, r3, #1
0086f958  72 00 af e6                                      sxtb r0, r2
0086f95c  60 00 50 e3                                      cmp r0, #0x60
0086f960  20 20 82 d2                                      addle r2, r2, #0x20
0086f964  72 20 ef d6                                      uxtble r2, r2
0086f968  00 20 c1 e5                                      strb r2, [r1]
0086f96c  0a 00 a0 e1                                      mov r0, sl
0086f970  0c 30 8d e5                                      str r3, [sp, #0xc]
0086f974  36 79 ea eb                                      bl #0x30de54
0086f978  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086f97c  00 00 53 e1                                      cmp r3, r0
0086f980  f0 ff ff 3a                                      blo #0x86f948
0086f984  8c 11 9f e5                                      ldr r1, [pc, #0x18c]
0086f988  06 00 a0 e1                                      mov r0, r6
0086f98c  01 10 8f e0                                      add r1, pc, r1
0086f990  75 fe ff eb                                      bl #0x86f36c
0086f994  00 00 50 e3                                      cmp r0, #0
0086f998  13 00 00 0a                                      beq #0x86f9ec
0086f99c  08 10 a0 e1                                      mov r1, r8
0086f9a0  09 30 a0 e1                                      mov r3, sb
0086f9a4  05 00 a0 e1                                      mov r0, r5
0086f9a8  01 20 a0 e3                                      mov r2, #1
0086f9ac  00 b0 8d e5                                      str fp, [sp]
0086f9b0  11 ff ff eb                                      bl #0x86f5fc
0086f9b4  28 00 9d e5                                      ldr r0, [sp, #0x28]
0086f9b8  06 00 50 e1                                      cmp r0, r6
0086f9bc  02 00 00 0a                                      beq #0x86f9cc
0086f9c0  00 00 50 e3                                      cmp r0, #0
0086f9c4  00 00 00 0a                                      beq #0x86f9cc
0086f9c8  9d 82 ea eb                                      bl #0x310444
0086f9cc  07 30 94 e7                                      ldr r3, [r4, r7]
0086f9d0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0086f9d4  05 00 a0 e1                                      mov r0, r5
0086f9d8  00 30 93 e5                                      ldr r3, [r3]
0086f9dc  03 00 52 e1                                      cmp r2, r3
0086f9e0  49 00 00 1a                                      bne #0x86fb0c
0086f9e4  34 d0 8d e2                                      add sp, sp, #0x34
0086f9e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0086f9ec  28 11 9f e5                                      ldr r1, [pc, #0x128]
0086f9f0  06 00 a0 e1                                      mov r0, r6
0086f9f4  01 10 8f e0                                      add r1, pc, r1
0086f9f8  5b fe ff eb                                      bl #0x86f36c
0086f9fc  00 00 50 e3                                      cmp r0, #0
0086fa00  0c 00 00 1a                                      bne #0x86fa38
0086fa04  14 11 9f e5                                      ldr r1, [pc, #0x114]
0086fa08  06 00 a0 e1                                      mov r0, r6
0086fa0c  01 10 8f e0                                      add r1, pc, r1
0086fa10  55 fe ff eb                                      bl #0x86f36c
0086fa14  00 00 50 e3                                      cmp r0, #0
0086fa18  0d 00 00 0a                                      beq #0x86fa54
0086fa1c  08 10 a0 e1                                      mov r1, r8
0086fa20  09 30 a0 e1                                      mov r3, sb
0086fa24  05 00 a0 e1                                      mov r0, r5
0086fa28  03 20 a0 e3                                      mov r2, #3
0086fa2c  00 b0 8d e5                                      str fp, [sp]
0086fa30  f1 fe ff eb                                      bl #0x86f5fc
0086fa34  de ff ff ea                                      b #0x86f9b4
0086fa38  08 10 a0 e1                                      mov r1, r8
0086fa3c  09 30 a0 e1                                      mov r3, sb
0086fa40  05 00 a0 e1                                      mov r0, r5
0086fa44  02 20 a0 e3                                      mov r2, #2
0086fa48  00 b0 8d e5                                      str fp, [sp]
0086fa4c  ea fe ff eb                                      bl #0x86f5fc
0086fa50  d7 ff ff ea                                      b #0x86f9b4
0086fa54  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
0086fa58  06 00 a0 e1                                      mov r0, r6
0086fa5c  01 10 8f e0                                      add r1, pc, r1
0086fa60  41 fe ff eb                                      bl #0x86f36c
0086fa64  00 00 50 e3                                      cmp r0, #0
0086fa68  20 00 00 1a                                      bne #0x86faf0
0086fa6c  28 00 9d e5                                      ldr r0, [sp, #0x28]
0086fa70  06 00 50 e1                                      cmp r0, r6
0086fa74  02 00 00 0a                                      beq #0x86fa84
0086fa78  00 00 50 e3                                      cmp r0, #0
0086fa7c  00 00 00 0a                                      beq #0x86fa84
0086fa80  6f 82 ea eb                                      bl #0x310444
0086fa84  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
0086fa88  00 30 a0 e3                                      mov r3, #0
0086fa8c  00 00 e0 e3                                      mvn r0, #0
0086fa90  02 20 94 e7                                      ldr r2, [r4, r2]
0086fa94  00 10 e0 e3                                      mvn r1, #0
0086fa98  f8 00 c5 e1                                      strd r0, r1, [r5, #8]
0086fa9c  08 20 82 e2                                      add r2, r2, #8
0086faa0  20 30 85 e5                                      str r3, [r5, #0x20]
0086faa4  00 20 85 e5                                      str r2, [r5]
0086faa8  10 30 85 e5                                      str r3, [r5, #0x10]
0086faac  14 30 85 e5                                      str r3, [r5, #0x14]
0086fab0  18 30 85 e5                                      str r3, [r5, #0x18]
0086fab4  1c 30 85 e5                                      str r3, [r5, #0x1c]
0086fab8  c3 ff ff ea                                      b #0x86f9cc
0086fabc  64 30 9f e5                                      ldr r3, [pc, #0x64]
0086fac0  00 80 e0 e3                                      mvn r8, #0
0086fac4  00 90 e0 e3                                      mvn sb, #0
0086fac8  03 30 94 e7                                      ldr r3, [r4, r3]
0086facc  f8 80 c5 e1                                      strd r8, sb, [r5, #8]
0086fad0  08 30 83 e2                                      add r3, r3, #8
0086fad4  20 00 85 e5                                      str r0, [r5, #0x20]
0086fad8  10 00 85 e5                                      str r0, [r5, #0x10]
0086fadc  00 30 85 e5                                      str r3, [r5]
0086fae0  14 00 85 e5                                      str r0, [r5, #0x14]
0086fae4  18 00 85 e5                                      str r0, [r5, #0x18]
0086fae8  1c 00 85 e5                                      str r0, [r5, #0x1c]
0086faec  b6 ff ff ea                                      b #0x86f9cc
0086faf0  08 10 a0 e1                                      mov r1, r8
0086faf4  09 30 a0 e1                                      mov r3, sb
0086faf8  05 00 a0 e1                                      mov r0, r5
0086fafc  04 20 a0 e3                                      mov r2, #4
0086fb00  00 b0 8d e5                                      str fp, [sp]
0086fb04  bc fe ff eb                                      bl #0x86f5fc
0086fb08  a9 ff ff ea                                      b #0x86f9b4
0086fb0c  ff 79 ea eb                                      bl #0x30e310
0086fb10  a0 51 12 00 ac 40 00 00 6c 15 0a 00 0c 15 0a 00  .byte 0xa0, 0x51, 0x12, 0x00, 0xac, 0x40, 0x00, 0x00, 0x6c, 0x15, 0x0a, 0x00, 0x0c, 0x15, 0x0a, 0x00
0086fb20  fc 14 0a 00 b4 14 0a 00 a4 19 00 00              .byte 0xfc, 0x14, 0x0a, 0x00, 0xb4, 0x14, 0x0a, 0x00, 0xa4, 0x19, 0x00, 0x00

; PACKAGE FUNCTION engine_load_source_async
; ELF VA 0x0086aee8, range_size=604, SHA-256=a5359574fb3f38e4155149ee30e9b8c8dd60c7d79ddbb9ec3e5bb58d52266247
; Original assembly source vox_VoxEngineInternal-87edcdaf697c-001.asm
; Source symbol vox::VoxEngineInternal::LoadDataSourceAsync(int, void*, int, void*, int, vox::VoxSourceLoadingFlags)
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
0086aee8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0086aeec  40 72 9f e5                                      ldr r7, [pc, #0x240]
0086aef0  40 d0 4d e2                                      sub sp, sp, #0x40
0086aef4  00 00 52 e3                                      cmp r2, #0
0086aef8  07 70 8f e0                                      add r7, pc, r7
0086aefc  00 80 a0 e1                                      mov r8, r0
0086af00  01 50 a0 e1                                      mov r5, r1
0086af04  60 40 9d e5                                      ldr r4, [sp, #0x60]
0086af08  13 00 00 ba                                      blt #0x86af5c
0086af0c  c4 14 91 e5                                      ldr r1, [r1, #0x4c4]
0086af10  01 00 52 e1                                      cmp r2, r1
0086af14  10 00 00 aa                                      bge #0x86af5c
0086af18  02 21 85 e0                                      add r2, r5, r2, lsl #2
0086af1c  44 24 92 e5                                      ldr r2, [r2, #0x444]
0086af20  00 00 52 e3                                      cmp r2, #0
0086af24  0c 00 00 0a                                      beq #0x86af5c
0086af28  03 00 a0 e1                                      mov r0, r3
0086af2c  32 ff 2f e1                                      blx r2
0086af30  00 a0 50 e2                                      subs sl, r0, #0
0086af34  08 00 00 0a                                      beq #0x86af5c
0086af38  00 00 54 e3                                      cmp r4, #0
0086af3c  02 00 00 ba                                      blt #0x86af4c
0086af40  48 35 95 e5                                      ldr r3, [r5, #0x548]
0086af44  03 00 54 e1                                      cmp r4, r3
0086af48  0f 00 00 ba                                      blt #0x86af8c
0086af4c  0a 00 a0 e1                                      mov r0, sl
0086af50  c5 e1 ff eb                                      bl #0x86366c
0086af54  0a 00 a0 e1                                      mov r0, sl
0086af58  39 95 ea eb                                      bl #0x310444
0086af5c  00 10 a0 e3                                      mov r1, #0
0086af60  08 00 a0 e1                                      mov r0, r8
0086af64  00 20 e0 e3                                      mvn r2, #0
0086af68  00 30 e0 e3                                      mvn r3, #0
0086af6c  0c 10 8d e5                                      str r1, [sp, #0xc]
0086af70  00 10 8d e5                                      str r1, [sp]
0086af74  04 10 8d e5                                      str r1, [sp, #4]
0086af78  08 10 8d e5                                      str r1, [sp, #8]
0086af7c  74 f7 ff eb                                      bl #0x868d54
0086af80  08 00 a0 e1                                      mov r0, r8
0086af84  40 d0 8d e2                                      add sp, sp, #0x40
0086af88  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0086af8c  13 4e 84 e2                                      add r4, r4, #0x130
0086af90  02 40 84 e2                                      add r4, r4, #2
0086af94  04 31 95 e7                                      ldr r3, [r5, r4, lsl #2]
0086af98  00 00 53 e3                                      cmp r3, #0
0086af9c  ea ff ff 0a                                      beq #0x86af4c
0086afa0  64 00 9d e5                                      ldr r0, [sp, #0x64]
0086afa4  33 ff 2f e1                                      blx r3
0086afa8  00 90 50 e2                                      subs sb, r0, #0
0086afac  e6 ff ff 0a                                      beq #0x86af4c
0086afb0  05 00 a0 e1                                      mov r0, r5
0086afb4  d6 f8 ff eb                                      bl #0x869314
0086afb8  00 20 a0 e1                                      mov r2, r0
0086afbc  01 30 a0 e1                                      mov r3, r1
0086afc0  60 00 a0 e3                                      mov r0, #0x60
0086afc4  00 10 a0 e3                                      mov r1, #0
0086afc8  14 20 8d e5                                      str r2, [sp, #0x14]
0086afcc  10 30 8d e5                                      str r3, [sp, #0x10]
0086afd0  9c 95 ea eb                                      bl #0x310648
0086afd4  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
0086afd8  14 20 9d e5                                      ldr r2, [sp, #0x14]
0086afdc  10 30 9d e5                                      ldr r3, [sp, #0x10]
0086afe0  01 10 97 e7                                      ldr r1, [r7, r1]
0086afe4  00 40 a0 e1                                      mov r4, r0
0086afe8  00 60 a0 e3                                      mov r6, #0
0086afec  08 10 81 e2                                      add r1, r1, #8
0086aff0  f8 20 c0 e1                                      strd r2, r3, [r0, #8]
0086aff4  10 60 80 e5                                      str r6, [r0, #0x10]
0086aff8  00 10 84 e5                                      str r1, [r4]
0086affc  18 00 80 e2                                      add r0, r0, #0x18
0086b000  72 a1 00 eb                                      bl #0x8935d0
0086b004  30 31 9f e5                                      ldr r3, [pc, #0x130]
0086b008  bc 06 dd e1                                      ldrh r0, [sp, #0x6c]
0086b00c  40 20 84 e2                                      add r2, r4, #0x40
0086b010  03 30 97 e7                                      ldr r3, [r7, r3]
0086b014  00 10 e0 e3                                      mvn r1, #0
0086b018  08 30 83 e2                                      add r3, r3, #8
0086b01c  00 30 84 e5                                      str r3, [r4]
0086b020  68 30 9d e5                                      ldr r3, [sp, #0x68]
0086b024  38 a0 84 e5                                      str sl, [r4, #0x38]
0086b028  44 20 84 e5                                      str r2, [r4, #0x44]
0086b02c  1c 30 84 e5                                      str r3, [r4, #0x1c]
0086b030  03 30 a0 e3                                      mov r3, #3
0086b034  48 10 84 e5                                      str r1, [r4, #0x48]
0086b038  50 30 84 e5                                      str r3, [r4, #0x50]
0086b03c  54 00 84 e5                                      str r0, [r4, #0x54]
0086b040  24 10 84 e5                                      str r1, [r4, #0x24]
0086b044  40 20 84 e5                                      str r2, [r4, #0x40]
0086b048  3c 90 84 e5                                      str sb, [r4, #0x3c]
0086b04c  20 60 84 e5                                      str r6, [r4, #0x20]
0086b050  28 60 84 e5                                      str r6, [r4, #0x28]
0086b054  2c 60 84 e5                                      str r6, [r4, #0x2c]
0086b058  30 60 84 e5                                      str r6, [r4, #0x30]
0086b05c  34 60 84 e5                                      str r6, [r4, #0x34]
0086b060  4c 60 c4 e5                                      strb r6, [r4, #0x4c]
0086b064  4d 60 c4 e5                                      strb r6, [r4, #0x4d]
0086b068  58 00 84 e2                                      add r0, r4, #0x58
0086b06c  57 a1 00 eb                                      bl #0x8935d0
0086b070  d8 20 c4 e1                                      ldrd r2, r3, [r4, #8]
0086b074  90 15 95 e5                                      ldr r1, [r5, #0x590]
0086b078  c0 00 9f e5                                      ldr r0, [pc, #0xc0]
0086b07c  18 a0 8d e2                                      add sl, sp, #0x18
0086b080  14 10 84 e5                                      str r1, [r4, #0x14]
0086b084  90 15 95 e5                                      ldr r1, [r5, #0x590]
0086b088  00 e0 97 e7                                      ldr lr, [r7, r0]
0086b08c  60 70 85 e2                                      add r7, r5, #0x60
0086b090  55 0f 81 e2                                      add r0, r1, #0x154
0086b094  00 c1 95 e7                                      ldr ip, [r5, r0, lsl #2]
0086b098  0a 00 a0 e1                                      mov r0, sl
0086b09c  00 e0 8d e5                                      str lr, [sp]
0086b0a0  08 c0 8d e5                                      str ip, [sp, #8]
0086b0a4  0c 10 8d e5                                      str r1, [sp, #0xc]
0086b0a8  04 40 8d e5                                      str r4, [sp, #4]
0086b0ac  28 f7 ff eb                                      bl #0x868d54
0086b0b0  90 35 95 e5                                      ldr r3, [r5, #0x590]
0086b0b4  07 00 a0 e1                                      mov r0, r7
0086b0b8  01 30 83 e2                                      add r3, r3, #1
0086b0bc  0f 30 03 e2                                      and r3, r3, #0xf
0086b0c0  90 35 85 e5                                      str r3, [r5, #0x590]
0086b0c4  f8 a0 00 eb                                      bl #0x8934ac
0086b0c8  04 10 a0 e1                                      mov r1, r4
0086b0cc  28 00 85 e2                                      add r0, r5, #0x28
0086b0d0  07 e6 ff eb                                      bl #0x8648f4
0086b0d4  07 00 a0 e1                                      mov r0, r7
0086b0d8  74 70 85 e2                                      add r7, r5, #0x74
0086b0dc  e7 a0 00 eb                                      bl #0x893480
0086b0e0  07 00 a0 e1                                      mov r0, r7
0086b0e4  e4 a0 00 eb                                      bl #0x89347c
0086b0e8  01 30 a0 e3                                      mov r3, #1
0086b0ec  06 10 a0 e1                                      mov r1, r6
0086b0f0  4c 30 c4 e5                                      strb r3, [r4, #0x4c]
0086b0f4  0c 00 a0 e3                                      mov r0, #0xc
0086b0f8  52 95 ea eb                                      bl #0x310648
0086b0fc  08 40 80 e5                                      str r4, [r0, #8]
0086b100  70 30 95 e5                                      ldr r3, [r5, #0x70]
0086b104  6c 20 85 e2                                      add r2, r5, #0x6c
0086b108  0c 00 80 e8                                      stm r0, {r2, r3}
0086b10c  00 00 83 e5                                      str r0, [r3]
0086b110  70 00 85 e5                                      str r0, [r5, #0x70]
0086b114  07 00 a0 e1                                      mov r0, r7
0086b118  d6 a0 00 eb                                      bl #0x893478
0086b11c  08 00 a0 e1                                      mov r0, r8
0086b120  0a 10 a0 e1                                      mov r1, sl
0086b124  54 f7 ff eb                                      bl #0x868e7c
0086b128  0a 00 a0 e1                                      mov r0, sl
0086b12c  bd fe ff eb                                      bl #0x86ac28
0086b130  92 ff ff ea                                      b #0x86af80
0086b134  98 9b 12 00 34 47 00 00 f0 17 00 00 98 38 00 00  .byte 0x98, 0x9b, 0x12, 0x00, 0x34, 0x47, 0x00, 0x00, 0xf0, 0x17, 0x00, 0x00, 0x98, 0x38, 0x00, 0x00

; PACKAGE FUNCTION engine_load_source_sync
; ELF VA 0x0086b144, range_size=732, SHA-256=b2a23c2be622b7c15acb48530c93798f75d7856f370231af3820a992f46c4da2
; Original assembly source vox_VoxEngineInternal-87edcdaf697c-001.asm
; Source symbol vox::VoxEngineInternal::LoadDataSource(int, void*, int, void*, int)
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
0086b144  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086b148  c0 62 9f e5                                      ldr r6, [pc, #0x2c0]
0086b14c  54 d0 4d e2                                      sub sp, sp, #0x54
0086b150  00 00 52 e3                                      cmp r2, #0
0086b154  06 60 8f e0                                      add r6, pc, r6
0086b158  00 70 a0 e1                                      mov r7, r0
0086b15c  01 40 a0 e1                                      mov r4, r1
0086b160  78 50 9d e5                                      ldr r5, [sp, #0x78]
0086b164  13 00 00 ba                                      blt #0x86b1b8
0086b168  c4 14 91 e5                                      ldr r1, [r1, #0x4c4]
0086b16c  01 00 52 e1                                      cmp r2, r1
0086b170  10 00 00 aa                                      bge #0x86b1b8
0086b174  02 21 84 e0                                      add r2, r4, r2, lsl #2
0086b178  44 24 92 e5                                      ldr r2, [r2, #0x444]
0086b17c  00 00 52 e3                                      cmp r2, #0
0086b180  0c 00 00 0a                                      beq #0x86b1b8
0086b184  03 00 a0 e1                                      mov r0, r3
0086b188  32 ff 2f e1                                      blx r2
0086b18c  00 80 50 e2                                      subs r8, r0, #0
0086b190  08 00 00 0a                                      beq #0x86b1b8
0086b194  00 00 55 e3                                      cmp r5, #0
0086b198  02 00 00 ba                                      blt #0x86b1a8
0086b19c  48 35 94 e5                                      ldr r3, [r4, #0x548]
0086b1a0  03 00 55 e1                                      cmp r5, r3
0086b1a4  0f 00 00 ba                                      blt #0x86b1e8
0086b1a8  08 00 a0 e1                                      mov r0, r8
0086b1ac  2e e1 ff eb                                      bl #0x86366c
0086b1b0  08 00 a0 e1                                      mov r0, r8
0086b1b4  a2 94 ea eb                                      bl #0x310444
0086b1b8  00 10 a0 e3                                      mov r1, #0
0086b1bc  07 00 a0 e1                                      mov r0, r7
0086b1c0  00 20 e0 e3                                      mvn r2, #0
0086b1c4  00 30 e0 e3                                      mvn r3, #0
0086b1c8  0c 10 8d e5                                      str r1, [sp, #0xc]
0086b1cc  00 10 8d e5                                      str r1, [sp]
0086b1d0  04 10 8d e5                                      str r1, [sp, #4]
0086b1d4  08 10 8d e5                                      str r1, [sp, #8]
0086b1d8  dd f6 ff eb                                      bl #0x868d54
0086b1dc  07 00 a0 e1                                      mov r0, r7
0086b1e0  54 d0 8d e2                                      add sp, sp, #0x54
0086b1e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0086b1e8  13 5e 85 e2                                      add r5, r5, #0x130
0086b1ec  02 50 85 e2                                      add r5, r5, #2
0086b1f0  05 31 94 e7                                      ldr r3, [r4, r5, lsl #2]
0086b1f4  00 00 53 e3                                      cmp r3, #0
0086b1f8  ea ff ff 0a                                      beq #0x86b1a8
0086b1fc  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0086b200  33 ff 2f e1                                      blx r3
0086b204  00 a0 50 e2                                      subs sl, r0, #0
0086b208  e6 ff ff 0a                                      beq #0x86b1a8
0086b20c  00 30 98 e5                                      ldr r3, [r8]
0086b210  08 00 a0 e1                                      mov r0, r8
0086b214  0f e0 a0 e1                                      mov lr, pc
0086b218  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086b21c  00 90 50 e2                                      subs sb, r0, #0
0086b220  6f 00 00 0a                                      beq #0x86b3e4
0086b224  00 30 9a e5                                      ldr r3, [sl]
0086b228  0a 00 a0 e1                                      mov r0, sl
0086b22c  09 10 a0 e1                                      mov r1, sb
0086b230  0f e0 a0 e1                                      mov lr, pc
0086b234  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0086b238  00 30 50 e2                                      subs r3, r0, #0
0086b23c  63 00 00 0a                                      beq #0x86b3d0
0086b240  10 c0 93 e5                                      ldr ip, [r3, #0x10]
0086b244  04 b0 93 e5                                      ldr fp, [r3, #4]
0086b248  00 20 9a e5                                      ldr r2, [sl]
0086b24c  14 c0 8d e5                                      str ip, [sp, #0x14]
0086b250  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0086b254  03 10 a0 e1                                      mov r1, r3
0086b258  0a 00 a0 e1                                      mov r0, sl
0086b25c  18 c0 8d e5                                      str ip, [sp, #0x18]
0086b260  08 30 93 e5                                      ldr r3, [r3, #8]
0086b264  1c 30 8d e5                                      str r3, [sp, #0x1c]
0086b268  0f e0 a0 e1                                      mov lr, pc
0086b26c  14 f0 92 e5                                      ldr pc, [r2, #0x14]
0086b270  00 00 5b e3                                      cmp fp, #0
0086b274  55 00 00 da                                      ble #0x86b3d0
0086b278  04 00 a0 e1                                      mov r0, r4
0086b27c  24 f8 ff eb                                      bl #0x869314
0086b280  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
0086b284  00 10 a0 e3                                      mov r1, #0
0086b288  60 00 a0 e3                                      mov r0, #0x60
0086b28c  ed 94 ea eb                                      bl #0x310648
0086b290  7c 21 9f e5                                      ldr r2, [pc, #0x17c]
0086b294  00 50 a0 e1                                      mov r5, r0
0086b298  00 30 a0 e3                                      mov r3, #0
0086b29c  02 20 96 e7                                      ldr r2, [r6, r2]
0086b2a0  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
0086b2a4  10 30 85 e5                                      str r3, [r5, #0x10]
0086b2a8  08 20 82 e2                                      add r2, r2, #8
0086b2ac  f8 00 c5 e1                                      strd r0, r1, [r5, #8]
0086b2b0  00 20 85 e5                                      str r2, [r5]
0086b2b4  18 00 85 e2                                      add r0, r5, #0x18
0086b2b8  10 30 8d e5                                      str r3, [sp, #0x10]
0086b2bc  c3 a0 00 eb                                      bl #0x8935d0
0086b2c0  80 c0 9d e5                                      ldr ip, [sp, #0x80]
0086b2c4  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
0086b2c8  40 10 85 e2                                      add r1, r5, #0x40
0086b2cc  1c c0 85 e5                                      str ip, [r5, #0x1c]
0086b2d0  02 20 96 e7                                      ldr r2, [r6, r2]
0086b2d4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0086b2d8  00 00 e0 e3                                      mvn r0, #0
0086b2dc  08 20 82 e2                                      add r2, r2, #8
0086b2e0  34 c0 85 e5                                      str ip, [r5, #0x34]
0086b2e4  00 20 85 e5                                      str r2, [r5]
0086b2e8  18 20 9d e5                                      ldr r2, [sp, #0x18]
0086b2ec  30 20 85 e5                                      str r2, [r5, #0x30]
0086b2f0  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0086b2f4  44 10 85 e5                                      str r1, [r5, #0x44]
0086b2f8  48 00 85 e5                                      str r0, [r5, #0x48]
0086b2fc  2c c0 85 e5                                      str ip, [r5, #0x2c]
0086b300  28 b0 85 e5                                      str fp, [r5, #0x28]
0086b304  10 30 9d e5                                      ldr r3, [sp, #0x10]
0086b308  24 00 85 e5                                      str r0, [r5, #0x24]
0086b30c  40 10 85 e5                                      str r1, [r5, #0x40]
0086b310  50 30 85 e5                                      str r3, [r5, #0x50]
0086b314  20 30 85 e5                                      str r3, [r5, #0x20]
0086b318  4c 30 c5 e5                                      strb r3, [r5, #0x4c]
0086b31c  4d 30 c5 e5                                      strb r3, [r5, #0x4d]
0086b320  38 80 85 e5                                      str r8, [r5, #0x38]
0086b324  3c a0 85 e5                                      str sl, [r5, #0x3c]
0086b328  58 00 85 e2                                      add r0, r5, #0x58
0086b32c  a7 a0 00 eb                                      bl #0x8935d0
0086b330  09 10 a0 e1                                      mov r1, sb
0086b334  00 30 98 e5                                      ldr r3, [r8]
0086b338  08 00 a0 e1                                      mov r0, r8
0086b33c  0f e0 a0 e1                                      mov lr, pc
0086b340  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086b344  00 00 55 e3                                      cmp r5, #0
0086b348  25 00 00 0a                                      beq #0x86b3e4
0086b34c  90 35 94 e5                                      ldr r3, [r4, #0x590]
0086b350  28 80 8d e2                                      add r8, sp, #0x28
0086b354  14 30 85 e5                                      str r3, [r5, #0x14]
0086b358  90 15 94 e5                                      ldr r1, [r4, #0x590]
0086b35c  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0086b360  55 0f 81 e2                                      add r0, r1, #0x154
0086b364  00 c1 94 e7                                      ldr ip, [r4, r0, lsl #2]
0086b368  03 e0 96 e7                                      ldr lr, [r6, r3]
0086b36c  08 00 a0 e1                                      mov r0, r8
0086b370  d8 20 c5 e1                                      ldrd r2, r3, [r5, #8]
0086b374  00 e0 8d e5                                      str lr, [sp]
0086b378  08 c0 8d e5                                      str ip, [sp, #8]
0086b37c  0c 10 8d e5                                      str r1, [sp, #0xc]
0086b380  04 50 8d e5                                      str r5, [sp, #4]
0086b384  72 f6 ff eb                                      bl #0x868d54
0086b388  90 35 94 e5                                      ldr r3, [r4, #0x590]
0086b38c  60 60 84 e2                                      add r6, r4, #0x60
0086b390  06 00 a0 e1                                      mov r0, r6
0086b394  01 30 83 e2                                      add r3, r3, #1
0086b398  0f 30 03 e2                                      and r3, r3, #0xf
0086b39c  90 35 84 e5                                      str r3, [r4, #0x590]
0086b3a0  41 a0 00 eb                                      bl #0x8934ac
0086b3a4  05 10 a0 e1                                      mov r1, r5
0086b3a8  28 00 84 e2                                      add r0, r4, #0x28
0086b3ac  50 e5 ff eb                                      bl #0x8648f4
0086b3b0  06 00 a0 e1                                      mov r0, r6
0086b3b4  31 a0 00 eb                                      bl #0x893480
0086b3b8  07 00 a0 e1                                      mov r0, r7
0086b3bc  08 10 a0 e1                                      mov r1, r8
0086b3c0  ad f6 ff eb                                      bl #0x868e7c
0086b3c4  08 00 a0 e1                                      mov r0, r8
0086b3c8  16 fe ff eb                                      bl #0x86ac28
0086b3cc  82 ff ff ea                                      b #0x86b1dc
0086b3d0  09 10 a0 e1                                      mov r1, sb
0086b3d4  00 30 98 e5                                      ldr r3, [r8]
0086b3d8  08 00 a0 e1                                      mov r0, r8
0086b3dc  0f e0 a0 e1                                      mov lr, pc
0086b3e0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086b3e4  08 00 a0 e1                                      mov r0, r8
0086b3e8  9f e0 ff eb                                      bl #0x86366c
0086b3ec  08 00 a0 e1                                      mov r0, r8
0086b3f0  13 94 ea eb                                      bl #0x310444
0086b3f4  00 30 9a e5                                      ldr r3, [sl]
0086b3f8  0a 00 a0 e1                                      mov r0, sl
0086b3fc  0f e0 a0 e1                                      mov lr, pc
0086b400  00 f0 93 e5                                      ldr pc, [r3]
0086b404  0a 00 a0 e1                                      mov r0, sl
0086b408  0d 94 ea eb                                      bl #0x310444
0086b40c  69 ff ff ea                                      b #0x86b1b8
0086b410  3c 99 12 00 34 47 00 00 f0 17 00 00 98 38 00 00  .byte 0x3c, 0x99, 0x12, 0x00, 0x34, 0x47, 0x00, 0x00, 0xf0, 0x17, 0x00, 0x00, 0x98, 0x38, 0x00, 0x00

; PACKAGE FUNCTION callback_source_upload_data
; ELF VA 0x00890d40, range_size=204, SHA-256=20481fe8db6cd69ef1ad4aa090864247db5f1af4e3f7da1fe9834c7d8f915167
; Original assembly source vox_DriverCallbackSourceInterface-530254aaed21-001.asm
; Source symbol vox::DriverCallbackSourceInterface::UploadData(void*, int)
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
00890d40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00890d44  08 50 80 e2                                      add r5, r0, #8
00890d48  00 40 a0 e1                                      mov r4, r0
00890d4c  05 00 a0 e1                                      mov r0, r5
00890d50  02 60 a0 e1                                      mov r6, r2
00890d54  01 70 a0 e1                                      mov r7, r1
00890d58  c7 09 00 eb                                      bl #0x89347c
00890d5c  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890d60  01 00 73 e3                                      cmn r3, #1
00890d64  00 00 56 13                                      cmpne r6, #0
00890d68  00 20 a0 c3                                      movgt r2, #0
00890d6c  01 20 a0 d3                                      movle r2, #1
00890d70  22 00 00 da                                      ble #0x890e00
00890d74  48 10 94 e5                                      ldr r1, [r4, #0x48]
00890d78  18 30 a0 e3                                      mov r3, #0x18
00890d7c  60 00 94 e5                                      ldr r0, [r4, #0x60]
00890d80  93 01 01 e0                                      mul r1, r3, r1
00890d84  01 c0 80 e0                                      add ip, r0, r1
00890d88  14 c0 dc e5                                      ldrb ip, [ip, #0x14]
00890d8c  00 00 5c e3                                      cmp ip, #0
00890d90  1a 00 00 0a                                      beq #0x890e00
00890d94  01 70 80 e7                                      str r7, [r0, r1]
00890d98  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890d9c  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890da0  93 10 21 e0                                      mla r1, r3, r0, r1
00890da4  04 60 81 e5                                      str r6, [r1, #4]
00890da8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890dac  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890db0  93 10 21 e0                                      mla r1, r3, r0, r1
00890db4  08 60 81 e5                                      str r6, [r1, #8]
00890db8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890dbc  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890dc0  93 10 21 e0                                      mla r1, r3, r0, r1
00890dc4  14 20 c1 e5                                      strb r2, [r1, #0x14]
00890dc8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890dcc  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890dd0  93 10 21 e0                                      mla r1, r3, r0, r1
00890dd4  0c 20 81 e5                                      str r2, [r1, #0xc]
00890dd8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890ddc  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890de0  93 10 23 e0                                      mla r3, r3, r0, r1
00890de4  10 20 83 e5                                      str r2, [r3, #0x10]
00890de8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890dec  44 10 94 e5                                      ldr r1, [r4, #0x44]
00890df0  01 00 80 e2                                      add r0, r0, #1
00890df4  48 00 84 e5                                      str r0, [r4, #0x48]
00890df8  c1 f6 e9 eb                                      bl #0x30e904
00890dfc  48 10 84 e5                                      str r1, [r4, #0x48]
00890e00  05 00 a0 e1                                      mov r0, r5
00890e04  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00890e08  9a 09 00 ea                                      b #0x893478

; PACKAGE FUNCTION callback_source_need_data
; ELF VA 0x00890e0c, range_size=128, SHA-256=f02f8db79c9f380943fb6fbd6d3125fa35bbb3ec6499de8ea801c095293ab837
; Original assembly source vox_DriverCallbackSourceInterface-530254aaed21-001.asm
; Source symbol vox::DriverCallbackSourceInterface::NeedData()
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
00890e0c  70 40 2d e9                                      push {r4, r5, r6, lr}
00890e10  08 50 80 e2                                      add r5, r0, #8
00890e14  00 40 a0 e1                                      mov r4, r0
00890e18  05 00 a0 e1                                      mov r0, r5
00890e1c  96 09 00 eb                                      bl #0x89347c
00890e20  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890e24  01 00 73 e3                                      cmn r3, #1
00890e28  0a 00 00 0a                                      beq #0x890e58
00890e2c  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890e30  64 30 94 e5                                      ldr r3, [r4, #0x64]
00890e34  03 30 61 e0                                      rsb r3, r1, r3
00890e38  c3 31 a0 e1                                      asr r3, r3, #3
00890e3c  03 21 83 e0                                      add r2, r3, r3, lsl #2
00890e40  02 22 82 e0                                      add r2, r2, r2, lsl #4
00890e44  02 24 82 e0                                      add r2, r2, r2, lsl #8
00890e48  02 28 82 e0                                      add r2, r2, r2, lsl #16
00890e4c  82 30 83 e0                                      add r3, r3, r2, lsl #1
00890e50  00 00 53 e3                                      cmp r3, #0
00890e54  04 00 00 1a                                      bne #0x890e6c
00890e58  05 00 a0 e1                                      mov r0, r5
00890e5c  00 40 a0 e3                                      mov r4, #0
00890e60  84 09 00 eb                                      bl #0x893478
00890e64  04 00 a0 e1                                      mov r0, r4
00890e68  70 80 bd e8                                      pop {r4, r5, r6, pc}
00890e6c  48 30 94 e5                                      ldr r3, [r4, #0x48]
00890e70  18 20 a0 e3                                      mov r2, #0x18
00890e74  05 00 a0 e1                                      mov r0, r5
00890e78  92 13 21 e0                                      mla r1, r2, r3, r1
00890e7c  14 40 d1 e5                                      ldrb r4, [r1, #0x14]
00890e80  7c 09 00 eb                                      bl #0x893478
00890e84  04 00 a0 e1                                      mov r0, r4
00890e88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; PACKAGE FUNCTION callback_source_get_work_data
; ELF VA 0x008915c0, range_size=672, SHA-256=1c4932db192e394de943b3921e0dfadc1326c4df4fce90fe3dec85aba7869c57
; Original assembly source vox_DriverCallbackSourceInterface-530254aaed21-001.asm
; Source symbol vox::DriverCallbackSourceInterface::GetWorkData(unsigned char*, int, int)
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
008915c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008915c4  00 40 a0 e1                                      mov r4, r0
008915c8  60 c0 94 e5                                      ldr ip, [r4, #0x60]
008915cc  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
008915d0  1c d0 4d e2                                      sub sp, sp, #0x1c
008915d4  18 60 a0 e3                                      mov r6, #0x18
008915d8  04 10 8d e5                                      str r1, [sp, #4]
008915dc  96 c0 21 e0                                      mla r1, r6, r0, ip
008915e0  08 20 8d e5                                      str r2, [sp, #8]
008915e4  14 20 d1 e5                                      ldrb r2, [r1, #0x14]
008915e8  03 90 a0 e1                                      mov sb, r3
008915ec  00 00 52 e3                                      cmp r2, #0
008915f0  00 00 a0 13                                      movne r0, #0
008915f4  08 00 8d 15                                      strne r0, [sp, #8]
008915f8  30 00 00 1a                                      bne #0x8916c0
008915fc  08 10 9d e5                                      ldr r1, [sp, #8]
00891600  00 00 51 e3                                      cmp r1, #0
00891604  08 20 8d d5                                      strle r2, [sp, #8]
00891608  28 00 00 da                                      ble #0x8916b0
0089160c  08 50 9d e5                                      ldr r5, [sp, #8]
00891610  00 10 a0 e1                                      mov r1, r0
00891614  96 01 0e e0                                      mul lr, r6, r1
00891618  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0089161c  0e 30 8c e0                                      add r3, ip, lr
00891620  10 10 93 e5                                      ldr r1, [r3, #0x10]
00891624  08 80 9d e5                                      ldr r8, [sp, #8]
00891628  04 70 93 e5                                      ldr r7, [r3, #4]
0089162c  91 02 01 e0                                      mul r1, r1, r2
00891630  08 a0 65 e0                                      rsb sl, r5, r8
00891634  04 80 9d e5                                      ldr r8, [sp, #4]
00891638  07 70 61 e0                                      rsb r7, r1, r7
0089163c  05 00 57 e1                                      cmp r7, r5
00891640  0a 00 88 e0                                      add r0, r8, sl
00891644  07 20 a0 e1                                      mov r2, r7
00891648  18 80 a0 e3                                      mov r8, #0x18
0089164c  1e 00 00 da                                      ble #0x8916cc
00891650  00 30 93 e5                                      ldr r3, [r3]
00891654  05 20 a0 e1                                      mov r2, r5
00891658  01 10 83 e0                                      add r1, r3, r1
0089165c  81 f4 e9 eb                                      bl #0x30e868
00891660  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891664  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00891668  98 32 22 e0                                      mla r2, r8, r2, r3
0089166c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00891670  09 90 83 e0                                      add sb, r3, sb
00891674  0c 90 82 e5                                      str sb, [r2, #0xc]
00891678  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0089167c  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891680  98 32 23 e0                                      mla r3, r8, r2, r3
00891684  10 20 93 e5                                      ldr r2, [r3, #0x10]
00891688  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0089168c  41 27 82 e0                                      add r2, r2, r1, asr #14
00891690  10 20 83 e5                                      str r2, [r3, #0x10]
00891694  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891698  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0089169c  98 32 28 e0                                      mla r8, r8, r2, r3
008916a0  0c 30 98 e5                                      ldr r3, [r8, #0xc]
008916a4  03 39 a0 e1                                      lsl r3, r3, #0x12
008916a8  23 39 a0 e1                                      lsr r3, r3, #0x12
008916ac  0c 30 88 e5                                      str r3, [r8, #0xc]
008916b0  58 30 94 e5                                      ldr r3, [r4, #0x58]
008916b4  08 10 9d e5                                      ldr r1, [sp, #8]
008916b8  01 30 83 e0                                      add r3, r3, r1
008916bc  58 30 84 e5                                      str r3, [r4, #0x58]
008916c0  08 00 9d e5                                      ldr r0, [sp, #8]
008916c4  1c d0 8d e2                                      add sp, sp, #0x1c
008916c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008916cc  0e 30 9c e7                                      ldr r3, [ip, lr]
008916d0  05 50 67 e0                                      rsb r5, r7, r5
008916d4  01 10 83 e0                                      add r1, r3, r1
008916d8  62 f4 e9 eb                                      bl #0x30e868
008916dc  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
008916e0  60 30 94 e5                                      ldr r3, [r4, #0x60]
008916e4  96 32 23 e0                                      mla r3, r6, r2, r3
008916e8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008916ec  09 90 82 e0                                      add sb, r2, sb
008916f0  0c 90 83 e5                                      str sb, [r3, #0xc]
008916f4  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
008916f8  60 30 94 e5                                      ldr r3, [r4, #0x60]
008916fc  96 32 23 e0                                      mla r3, r6, r2, r3
00891700  10 20 93 e5                                      ldr r2, [r3, #0x10]
00891704  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00891708  41 27 82 e0                                      add r2, r2, r1, asr #14
0089170c  10 20 83 e5                                      str r2, [r3, #0x10]
00891710  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891714  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00891718  96 32 22 e0                                      mla r2, r6, r2, r3
0089171c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00891720  03 39 a0 e1                                      lsl r3, r3, #0x12
00891724  23 39 a0 e1                                      lsr r3, r3, #0x12
00891728  0c 30 82 e5                                      str r3, [r2, #0xc]
0089172c  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891730  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00891734  0c 30 8d e5                                      str r3, [sp, #0xc]
00891738  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
0089173c  96 32 2b e0                                      mla fp, r6, r2, r3
00891740  10 00 8d e5                                      str r0, [sp, #0x10]
00891744  00 10 a0 e1                                      mov r1, r0
00891748  04 00 9b e5                                      ldr r0, [fp, #4]
0089174c  10 90 9b e5                                      ldr sb, [fp, #0x10]
00891750  00 20 8d e5                                      str r2, [sp]
00891754  d2 f2 e9 eb                                      bl #0x30e2a4
00891758  0c 10 9b e5                                      ldr r1, [fp, #0xc]
0089175c  00 00 59 e1                                      cmp sb, r0
00891760  00 30 a0 e1                                      mov r3, r0
00891764  14 10 8d e5                                      str r1, [sp, #0x14]
00891768  00 20 9d e5                                      ldr r2, [sp]
0089176c  26 00 00 3a                                      blo #0x89180c
00891770  01 00 a0 e3                                      mov r0, #1
00891774  14 00 cb e5                                      strb r0, [fp, #0x14]
00891778  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0089177c  44 10 94 e5                                      ldr r1, [r4, #0x44]
00891780  01 00 80 e2                                      add r0, r0, #1
00891784  4c 00 84 e5                                      str r0, [r4, #0x4c]
00891788  00 30 8d e5                                      str r3, [sp]
0089178c  5c f4 e9 eb                                      bl #0x30e904
00891790  4c 10 84 e5                                      str r1, [r4, #0x4c]
00891794  00 30 9d e5                                      ldr r3, [sp]
00891798  60 c0 94 e5                                      ldr ip, [r4, #0x60]
0089179c  09 90 63 e0                                      rsb sb, r3, sb
008917a0  96 c1 22 e0                                      mla r2, r6, r1, ip
008917a4  14 30 9d e5                                      ldr r3, [sp, #0x14]
008917a8  09 97 83 e0                                      add sb, r3, sb, lsl #14
008917ac  14 30 d2 e5                                      ldrb r3, [r2, #0x14]
008917b0  00 00 53 e3                                      cmp r3, #0
008917b4  10 00 00 1a                                      bne #0x8917fc
008917b8  00 00 55 e3                                      cmp r5, #0
008917bc  94 ff ff ca                                      bgt #0x891614
008917c0  08 00 9d e5                                      ldr r0, [sp, #8]
008917c4  00 00 65 e0                                      rsb r0, r5, r0
008917c8  08 00 8d e5                                      str r0, [sp, #8]
008917cc  b7 ff ff ea                                      b #0x8916b0
008917d0  00 00 55 e3                                      cmp r5, #0
008917d4  08 00 00 da                                      ble #0x8917fc
008917d8  04 20 9d e5                                      ldr r2, [sp, #4]
008917dc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008917e0  0a 00 87 e0                                      add r0, r7, sl
008917e4  00 00 82 e0                                      add r0, r2, r0
008917e8  01 10 93 e7                                      ldr r1, [r3, r1]
008917ec  10 20 9d e5                                      ldr r2, [sp, #0x10]
008917f0  1c f4 e9 eb                                      bl #0x30e868
008917f4  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
008917f8  05 50 63 e0                                      rsb r5, r3, r5
008917fc  08 80 9d e5                                      ldr r8, [sp, #8]
00891800  08 80 65 e0                                      rsb r8, r5, r8
00891804  08 80 8d e5                                      str r8, [sp, #8]
00891808  a8 ff ff ea                                      b #0x8916b0
0089180c  01 00 82 e2                                      add r0, r2, #1
00891810  44 10 94 e5                                      ldr r1, [r4, #0x44]
00891814  3a f4 e9 eb                                      bl #0x30e904
00891818  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0089181c  98 01 01 e0                                      mul r1, r8, r1
00891820  01 30 82 e0                                      add r3, r2, r1
00891824  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
00891828  00 00 53 e3                                      cmp r3, #0
0089182c  e7 ff ff 0a                                      beq #0x8917d0
00891830  01 30 a0 e3                                      mov r3, #1
00891834  14 30 cb e5                                      strb r3, [fp, #0x14]
00891838  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0089183c  08 30 9d e5                                      ldr r3, [sp, #8]
00891840  44 10 94 e5                                      ldr r1, [r4, #0x44]
00891844  01 00 80 e2                                      add r0, r0, #1
00891848  03 30 65 e0                                      rsb r3, r5, r3
0089184c  08 30 8d e5                                      str r3, [sp, #8]
00891850  4c 00 84 e5                                      str r0, [r4, #0x4c]
00891854  2a f4 e9 eb                                      bl #0x30e904
00891858  4c 10 84 e5                                      str r1, [r4, #0x4c]
0089185c  93 ff ff ea                                      b #0x8916b0

; PACKAGE FUNCTION callback_source_fill_stereo16
; ELF VA 0x00891860, range_size=800, SHA-256=c5f6abcf3d58f02d2925392cf7340de81f57d97cb5c146604329f73e1aa74c43
; Original assembly source vox_DriverCallbackSourceInterface-530254aaed21-001.asm
; Source symbol vox::DriverCallbackSourceInterface::FillBufferStereo16(int*, int)
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
00891860  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00891864  50 30 90 e5                                      ldr r3, [r0, #0x50]
00891868  1c d0 4d e2                                      sub sp, sp, #0x1c
0089186c  00 50 a0 e1                                      mov r5, r0
00891870  01 00 53 e3                                      cmp r3, #1
00891874  01 40 a0 e1                                      mov r4, r1
00891878  02 70 a0 e1                                      mov r7, r2
0089187c  01 00 00 0a                                      beq #0x891888
00891880  1c d0 8d e2                                      add sp, sp, #0x1c
00891884  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00891888  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
0089188c  60 20 90 e5                                      ldr r2, [r0, #0x60]
00891890  18 10 a0 e3                                      mov r1, #0x18
00891894  91 23 23 e0                                      mla r3, r1, r3, r2
00891898  14 a0 d3 e5                                      ldrb sl, [r3, #0x14]
0089189c  00 00 5a e3                                      cmp sl, #0
008918a0  f6 ff ff 1a                                      bne #0x891880
008918a4  40 90 90 e5                                      ldr sb, [r0, #0x40]
008918a8  0c 60 93 e5                                      ldr r6, [r3, #0xc]
008918ac  99 07 09 e0                                      mul sb, sb, r7
008918b0  49 b7 a0 e1                                      asr fp, sb, #0xe
008918b4  03 b0 8b e2                                      add fp, fp, #3
008918b8  0b b1 a0 e1                                      lsl fp, fp, #2
008918bc  0b 00 a0 e1                                      mov r0, fp
008918c0  08 fb ff eb                                      bl #0x8904e8
008918c4  00 30 90 e5                                      ldr r3, [r0]
008918c8  00 80 a0 e1                                      mov r8, r0
008918cc  00 00 53 e3                                      cmp r3, #0
008918d0  00 30 e0 03                                      mvneq r3, #0
008918d4  50 30 85 05                                      streq r3, [r5, #0x50]
008918d8  e8 ff ff 0a                                      beq #0x891880
008918dc  04 10 90 e5                                      ldr r1, [r0, #4]
008918e0  0b 20 a0 e1                                      mov r2, fp
008918e4  09 30 a0 e1                                      mov r3, sb
008918e8  05 00 a0 e1                                      mov r0, r5
008918ec  33 ff ff eb                                      bl #0x8915c0
008918f0  00 00 50 e3                                      cmp r0, #0
008918f4  03 30 80 e2                                      add r3, r0, #3
008918f8  03 00 a0 b1                                      movlt r0, r3
008918fc  40 01 a0 e1                                      asr r0, r0, #2
00891900  40 10 95 e5                                      ldr r1, [r5, #0x40]
00891904  00 07 a0 e1                                      lsl r0, r0, #0xe
00891908  65 f2 e9 eb                                      bl #0x30e2a4
0089190c  00 00 57 e1                                      cmp r7, r0
00891910  04 80 98 e5                                      ldr r8, [r8, #4]
00891914  87 00 00 ca                                      bgt #0x891b38
00891918  20 30 95 e5                                      ldr r3, [r5, #0x20]
0089191c  0a b0 a0 e1                                      mov fp, sl
00891920  01 90 87 e2                                      add sb, r7, #1
00891924  08 70 8d e5                                      str r7, [sp, #8]
00891928  14 a0 8d e5                                      str sl, [sp, #0x14]
0089192c  03 00 59 e1                                      cmp sb, r3
00891930  0c 90 8d b5                                      strlt sb, [sp, #0xc]
00891934  02 00 00 ba                                      blt #0x891944
00891938  07 00 53 e1                                      cmp r3, r7
0089193c  07 30 a0 a1                                      movge r3, r7
00891940  0c 30 8d e5                                      str r3, [sp, #0xc]
00891944  24 30 d5 e5                                      ldrb r3, [r5, #0x24]
00891948  2c a0 95 e5                                      ldr sl, [r5, #0x2c]
0089194c  00 00 53 e3                                      cmp r3, #0
00891950  73 00 00 0a                                      beq #0x891b24
00891954  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00891958  00 00 52 e3                                      cmp r2, #0
0089195c  00 30 a0 d3                                      movle r3, #0
00891960  10 30 8d d5                                      strle r3, [sp, #0x10]
00891964  06 00 00 da                                      ble #0x891984
00891968  28 00 95 e5                                      ldr r0, [r5, #0x28]
0089196c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00891970  00 00 6a e0                                      rsb r0, sl, r0
00891974  4a f2 e9 eb                                      bl #0x30e2a4
00891978  10 00 8d e5                                      str r0, [sp, #0x10]
0089197c  00 30 50 e2                                      subs r3, r0, #0
00891980  01 30 a0 13                                      movne r3, #1
00891984  0b b0 93 e1                                      orrs fp, r3, fp
00891988  3d 00 00 0a                                      beq #0x891a84
0089198c  08 30 9d e5                                      ldr r3, [sp, #8]
00891990  00 00 53 e3                                      cmp r3, #0
00891994  37 00 00 da                                      ble #0x891a78
00891998  00 70 a0 e3                                      mov r7, #0
0089199c  04 50 8d e5                                      str r5, [sp, #4]
008919a0  2a 00 00 ea                                      b #0x891a50
008919a4  46 17 a0 e1                                      asr r1, r6, #0xe
008919a8  0c b0 9d e5                                      ldr fp, [sp, #0xc]
008919ac  01 20 81 e2                                      add r2, r1, #1
008919b0  01 c1 a0 e1                                      lsl ip, r1, #2
008919b4  02 01 a0 e1                                      lsl r0, r2, #2
008919b8  fc c0 98 e1                                      ldrsh ip, [r8, ip]
008919bc  f0 00 98 e1                                      ldrsh r0, [r8, r0]
008919c0  0b 00 57 e1                                      cmp r7, fp
008919c4  00 50 a0 a3                                      movge r5, #0
008919c8  01 50 a0 b3                                      movlt r5, #1
008919cc  06 39 a0 e1                                      lsl r3, r6, #0x12
008919d0  09 00 57 e1                                      cmp r7, sb
008919d4  01 50 85 a3                                      orrge r5, r5, #1
008919d8  00 00 55 e3                                      cmp r5, #0
008919dc  23 39 a0 e1                                      lsr r3, r3, #0x12
008919e0  00 00 6c e0                                      rsb r0, ip, r0
008919e4  10 50 9d 15                                      ldrne r5, [sp, #0x10]
008919e8  93 00 00 e0                                      mul r0, r3, r0
008919ec  05 a0 8a 10                                      addne sl, sl, r5
008919f0  40 07 8c e0                                      add r0, ip, r0, asr #14
008919f4  00 50 94 e5                                      ldr r5, [r4]
008919f8  90 0a 00 e0                                      mul r0, r0, sl
008919fc  08 b0 9d e5                                      ldr fp, [sp, #8]
00891a00  40 07 85 e0                                      add r0, r5, r0, asr #14
00891a04  00 00 84 e5                                      str r0, [r4]
00891a08  01 11 88 e0                                      add r1, r8, r1, lsl #2
00891a0c  02 21 88 e0                                      add r2, r8, r2, lsl #2
00891a10  f2 10 d1 e1                                      ldrsh r1, [r1, #2]
00891a14  f2 20 d2 e1                                      ldrsh r2, [r2, #2]
00891a18  01 70 87 e2                                      add r7, r7, #1
00891a1c  0b 00 57 e1                                      cmp r7, fp
00891a20  02 20 61 e0                                      rsb r2, r1, r2
00891a24  93 02 03 e0                                      mul r3, r3, r2
00891a28  04 20 94 e5                                      ldr r2, [r4, #4]
00891a2c  43 37 81 e0                                      add r3, r1, r3, asr #14
00891a30  93 0a 03 e0                                      mul r3, r3, sl
00891a34  43 37 82 e0                                      add r3, r2, r3, asr #14
00891a38  04 30 84 e5                                      str r3, [r4, #4]
00891a3c  0c 00 00 0a                                      beq #0x891a74
00891a40  04 50 9d e5                                      ldr r5, [sp, #4]
00891a44  08 40 84 e2                                      add r4, r4, #8
00891a48  40 30 95 e5                                      ldr r3, [r5, #0x40]
00891a4c  03 60 86 e0                                      add r6, r6, r3
00891a50  09 00 57 e1                                      cmp r7, sb
00891a54  d2 ff ff 1a                                      bne #0x8919a4
00891a58  0a 00 a0 e1                                      mov r0, sl
00891a5c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00891a60  0f f2 e9 eb                                      bl #0x30e2a4
00891a64  c0 5f 20 e0                                      eor r5, r0, r0, asr #31
00891a68  c0 5f 65 e0                                      rsb r5, r5, r0, asr #31
00891a6c  10 50 8d e5                                      str r5, [sp, #0x10]
00891a70  cb ff ff ea                                      b #0x8919a4
00891a74  04 50 9d e5                                      ldr r5, [sp, #4]
00891a78  28 a0 95 e5                                      ldr sl, [r5, #0x28]
00891a7c  2c a0 85 e5                                      str sl, [r5, #0x2c]
00891a80  7e ff ff ea                                      b #0x891880
00891a84  00 00 5a e3                                      cmp sl, #0
00891a88  fb ff ff 0a                                      beq #0x891a7c
00891a8c  08 20 9d e5                                      ldr r2, [sp, #8]
00891a90  00 00 52 e3                                      cmp r2, #0
00891a94  f8 ff ff da                                      ble #0x891a7c
00891a98  02 90 a0 e1                                      mov sb, r2
00891a9c  46 27 a0 e1                                      asr r2, r6, #0xe
00891aa0  01 10 82 e2                                      add r1, r2, #1
00891aa4  01 31 a0 e1                                      lsl r3, r1, #2
00891aa8  02 01 a0 e1                                      lsl r0, r2, #2
00891aac  f0 00 98 e1                                      ldrsh r0, [r8, r0]
00891ab0  f3 70 98 e1                                      ldrsh r7, [r8, r3]
00891ab4  06 39 a0 e1                                      lsl r3, r6, #0x12
00891ab8  00 c0 94 e5                                      ldr ip, [r4]
00891abc  23 39 a0 e1                                      lsr r3, r3, #0x12
00891ac0  07 70 60 e0                                      rsb r7, r0, r7
00891ac4  93 07 07 e0                                      mul r7, r3, r7
00891ac8  01 11 88 e0                                      add r1, r8, r1, lsl #2
00891acc  47 07 80 e0                                      add r0, r0, r7, asr #14
00891ad0  9a 00 00 e0                                      mul r0, sl, r0
00891ad4  02 21 88 e0                                      add r2, r8, r2, lsl #2
00891ad8  40 07 8c e0                                      add r0, ip, r0, asr #14
00891adc  00 00 84 e5                                      str r0, [r4]
00891ae0  f2 20 d2 e1                                      ldrsh r2, [r2, #2]
00891ae4  f2 00 d1 e1                                      ldrsh r0, [r1, #2]
00891ae8  04 10 94 e5                                      ldr r1, [r4, #4]
00891aec  01 b0 8b e2                                      add fp, fp, #1
00891af0  00 00 62 e0                                      rsb r0, r2, r0
00891af4  93 00 03 e0                                      mul r3, r3, r0
00891af8  09 00 5b e1                                      cmp fp, sb
00891afc  43 27 82 e0                                      add r2, r2, r3, asr #14
00891b00  9a 02 02 e0                                      mul r2, sl, r2
00891b04  42 27 81 e0                                      add r2, r1, r2, asr #14
00891b08  04 20 84 e5                                      str r2, [r4, #4]
00891b0c  40 30 95 e5                                      ldr r3, [r5, #0x40]
00891b10  08 40 84 e2                                      add r4, r4, #8
00891b14  03 60 86 e0                                      add r6, r6, r3
00891b18  df ff ff 1a                                      bne #0x891a9c
00891b1c  2c a0 85 e5                                      str sl, [r5, #0x2c]
00891b20  56 ff ff ea                                      b #0x891880
00891b24  01 20 a0 e3                                      mov r2, #1
00891b28  28 a0 95 e5                                      ldr sl, [r5, #0x28]
00891b2c  24 20 c5 e5                                      strb r2, [r5, #0x24]
00891b30  10 30 8d e5                                      str r3, [sp, #0x10]
00891b34  92 ff ff ea                                      b #0x891984
00891b38  20 20 95 e5                                      ldr r2, [r5, #0x20]
00891b3c  01 00 40 e2                                      sub r0, r0, #1
00891b40  08 00 8d e5                                      str r0, [sp, #8]
00891b44  02 90 50 e0                                      subs sb, r0, r2
00891b48  14 20 8d e5                                      str r2, [sp, #0x14]
00891b4c  04 00 00 4a                                      bmi #0x891b64
00891b50  14 30 9d e5                                      ldr r3, [sp, #0x14]
00891b54  00 00 53 e3                                      cmp r3, #0
00891b58  00 b0 a0 d3                                      movle fp, #0
00891b5c  01 b0 a0 c3                                      movgt fp, #1
00891b60  71 ff ff ea                                      b #0x89192c
00891b64  02 30 a0 e1                                      mov r3, r2
00891b68  00 00 50 e3                                      cmp r0, #0
00891b6c  00 b0 a0 d3                                      movle fp, #0
00891b70  01 b0 a0 c3                                      movgt fp, #1
00891b74  0a 90 a0 e1                                      mov sb, sl
00891b78  14 00 8d e5                                      str r0, [sp, #0x14]
00891b7c  6a ff ff ea                                      b #0x89192c

; PACKAGE FUNCTION callback_mixer_fill_buffer
; ELF VA 0x00890548, range_size=344, SHA-256=364158e08c2be052a7273e3888037cc55065f80d6632e0293c333f49191ffa68
; Original assembly source vox_DriverCallbackInterface-c5e710cbfcc1-001.asm
; Source symbol vox::DriverCallbackInterface::_FillBuffer(short*, int)
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
00890548  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0089054c  18 e0 90 e5                                      ldr lr, [r0, #0x18]
00890550  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
00890554  30 d0 4d e2                                      sub sp, sp, #0x30
00890558  00 70 a0 e1                                      mov r7, r0
0089055c  20 00 90 e5                                      ldr r0, [r0, #0x20]
00890560  24 30 8d e2                                      add r3, sp, #0x24
00890564  20 e0 8d e5                                      str lr, [sp, #0x20]
00890568  04 c0 83 e4                                      str ip, [r3], #4
0089056c  00 00 83 e5                                      str r0, [r3]
00890570  34 e0 87 e2                                      add lr, r7, #0x34
00890574  0d 80 a0 e1                                      mov r8, sp
00890578  02 50 a0 e1                                      mov r5, r2
0089057c  01 a0 a0 e1                                      mov sl, r1
00890580  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00890584  0f 00 a8 e8                                      stm r8!, {r0, r1, r2, r3}
00890588  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0089058c  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
00890590  00 41 9f e5                                      ldr r4, [pc, #0x100]
00890594  00 61 9f e5                                      ldr r6, [pc, #0x100]
00890598  24 c0 87 e2                                      add ip, r7, #0x24
0089059c  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
008905a0  04 40 8f e0                                      add r4, pc, r4
008905a4  fb fe ff eb                                      bl #0x890198
008905a8  06 20 94 e7                                      ldr r2, [r4, r6]
008905ac  85 90 a0 e1                                      lsl sb, r5, #1
008905b0  00 30 92 e5                                      ldr r3, [r2]
008905b4  03 00 55 e1                                      cmp r5, r3
008905b8  0c 00 00 da                                      ble #0x8905f0
008905bc  04 00 92 e5                                      ldr r0, [r2, #4]
008905c0  00 00 50 e3                                      cmp r0, #0
008905c4  00 00 00 0a                                      beq #0x8905cc
008905c8  9d ff e9 eb                                      bl #0x310444
008905cc  09 01 a0 e1                                      lsl r0, sb, #2
008905d0  c8 ff e9 eb                                      bl #0x3104f8
008905d4  06 30 94 e7                                      ldr r3, [r4, r6]
008905d8  00 00 50 e3                                      cmp r0, #0
008905dc  04 00 83 e5                                      str r0, [r3, #4]
008905e0  00 50 83 15                                      strne r5, [r3]
008905e4  00 00 83 05                                      streq r0, [r3]
008905e8  05 30 a0 11                                      movne r3, r5
008905ec  27 00 00 0a                                      beq #0x890690
008905f0  00 00 53 e3                                      cmp r3, #0
008905f4  25 00 00 da                                      ble #0x890690
008905f8  06 30 94 e7                                      ldr r3, [r4, r6]
008905fc  00 10 a0 e3                                      mov r1, #0
00890600  09 21 a0 e1                                      lsl r2, sb, #2
00890604  04 00 93 e5                                      ldr r0, [r3, #4]
00890608  94 f7 e9 eb                                      bl #0x30e460
0089060c  10 80 b7 e5                                      ldr r8, [r7, #0x10]!
00890610  08 00 00 ea                                      b #0x890638
00890614  08 30 98 e5                                      ldr r3, [r8, #8]
00890618  06 10 94 e7                                      ldr r1, [r4, r6]
0089061c  05 20 a0 e1                                      mov r2, r5
00890620  03 00 a0 e1                                      mov r0, r3
00890624  04 10 91 e5                                      ldr r1, [r1, #4]
00890628  00 30 93 e5                                      ldr r3, [r3]
0089062c  0f e0 a0 e1                                      mov lr, pc
00890630  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00890634  00 80 98 e5                                      ldr r8, [r8]
00890638  07 00 58 e1                                      cmp r8, r7
0089063c  f4 ff ff 1a                                      bne #0x890614
00890640  06 30 94 e7                                      ldr r3, [r4, r6]
00890644  00 00 59 e3                                      cmp sb, #0
00890648  04 00 93 e5                                      ldr r0, [r3, #4]
0089064c  0f 00 00 da                                      ble #0x890690
00890650  89 90 a0 e1                                      lsl sb, sb, #1
00890654  00 30 a0 e3                                      mov r3, #0
00890658  ff cf 0f e3                                      movw ip, #0xffff
0089065c  ff 4f 07 e3                                      movw r4, #0x7fff
00890660  83 20 90 e7                                      ldr r2, [r0, r3, lsl #1]
00890664  02 19 82 e2                                      add r1, r2, #0x8000
00890668  0c 00 51 e1                                      cmp r1, ip
0089066c  b3 20 8a 91                                      strhls r2, [sl, r3]
00890670  03 00 00 9a                                      bls #0x890684
00890674  00 00 52 e3                                      cmp r2, #0
00890678  04 20 a0 a1                                      movge r2, r4
0089067c  02 29 a0 b3                                      movlt r2, #0x8000
00890680  b3 20 8a e1                                      strh r2, [sl, r3]
00890684  02 30 83 e2                                      add r3, r3, #2
00890688  09 00 53 e1                                      cmp r3, sb
0089068c  f3 ff ff 1a                                      bne #0x890660
00890690  30 d0 8d e2                                      add sp, sp, #0x30
00890694  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00890698  f0 44 10 00 74 28 00 00                          .byte 0xf0, 0x44, 0x10, 0x00, 0x74, 0x28, 0x00, 0x00

; PACKAGE FUNCTION driver_android_init_audio_track
; ELF VA 0x0088f660, range_size=832, SHA-256=c40bcc143dcbba6f8d202276c10d4a40b6c3a9fa86ea44e66b0a4e3f23d0b518
; Original assembly source vox_DriverAndroid-34a0f8ecbdd8-001.asm
; Source symbol vox::DriverAndroid::_InitAT(void*)
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
0088f660  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
0088f664  00 50 a0 e1                                      mov r5, r0
0088f668  14 d0 4d e2                                      sub sp, sp, #0x14
0088f66c  bc 42 9f e5                                      ldr r4, [pc, #0x2bc]
0088f670  44 0c 0a e3                                      movw r0, #0xac44
0088f674  03 03 00 eb                                      bl #0x890288
0088f678  b4 32 9f e5                                      ldr r3, [pc, #0x2b4]
0088f67c  04 40 8f e0                                      add r4, pc, r4
0088f680  03 30 94 e7                                      ldr r3, [r4, r3]
0088f684  00 30 93 e5                                      ldr r3, [r3]
0088f688  00 00 53 e3                                      cmp r3, #0
0088f68c  4a 00 00 0a                                      beq #0x88f7bc
0088f690  10 10 8d e2                                      add r1, sp, #0x10
0088f694  00 20 a0 e3                                      mov r2, #0
0088f698  04 20 21 e5                                      str r2, [r1, #-4]!
0088f69c  01 28 a0 e3                                      mov r2, #0x10000
0088f6a0  03 00 a0 e1                                      mov r0, r3
0088f6a4  02 20 82 e2                                      add r2, r2, #2
0088f6a8  00 30 93 e5                                      ldr r3, [r3]
0088f6ac  0f e0 a0 e1                                      mov lr, pc
0088f6b0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0088f6b4  7c 32 9f e5                                      ldr r3, [pc, #0x27c]
0088f6b8  03 60 94 e7                                      ldr r6, [r4, r3]
0088f6bc  00 10 96 e5                                      ldr r1, [r6]
0088f6c0  00 00 51 e3                                      cmp r1, #0
0088f6c4  3e 00 00 0a                                      beq #0x88f7c4
0088f6c8  6c 72 9f e5                                      ldr r7, [pc, #0x26c]
0088f6cc  07 30 94 e7                                      ldr r3, [r4, r7]
0088f6d0  0c c0 a0 e3                                      mov ip, #0xc
0088f6d4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f6d8  00 20 93 e5                                      ldr r2, [r3]
0088f6dc  44 3c 0a e3                                      movw r3, #0xac44
0088f6e0  00 c0 8d e5                                      str ip, [sp]
0088f6e4  02 c0 a0 e3                                      mov ip, #2
0088f6e8  04 c0 8d e5                                      str ip, [sp, #4]
0088f6ec  11 fe ff eb                                      bl #0x88ef38
0088f6f0  03 30 80 e2                                      add r3, r0, #3
0088f6f4  00 00 50 e3                                      cmp r0, #0
0088f6f8  03 00 a0 b1                                      movlt r0, r3
0088f6fc  40 01 a0 e1                                      asr r0, r0, #2
0088f700  01 0b 50 e3                                      cmp r0, #0x400
0088f704  01 3b a0 e3                                      mov r3, #0x400
0088f708  5c 30 85 e5                                      str r3, [r5, #0x5c]
0088f70c  58 00 85 e5                                      str r0, [r5, #0x58]
0088f710  03 00 a0 a1                                      movge r0, r3
0088f714  24 32 9f e5                                      ldr r3, [pc, #0x224]
0088f718  5c 00 85 b5                                      strlt r0, [r5, #0x5c]
0088f71c  00 80 a0 e3                                      mov r8, #0
0088f720  03 60 94 e7                                      ldr r6, [r4, r3]
0088f724  81 fd e9 eb                                      bl #0x30ed30
0088f728  80 38 08 e3                                      movw r3, #0x8880
0088f72c  00 20 a0 e3                                      mov r2, #0
0088f730  e5 30 44 e3                                      movt r3, #0x40e5
0088f734  01 fb e9 eb                                      bl #0x30e340
0088f738  04 32 9f e5                                      ldr r3, [pc, #0x204]
0088f73c  f0 00 c6 e1                                      strd r0, r1, [r6]
0088f740  03 70 94 e7                                      ldr r7, [r4, r3]
0088f744  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
0088f748  58 00 95 e5                                      ldr r0, [r5, #0x58]
0088f74c  00 90 a0 e3                                      mov sb, #0
0088f750  03 60 94 e7                                      ldr r6, [r4, r3]
0088f754  75 fd e9 eb                                      bl #0x30ed30
0088f758  80 38 08 e3                                      movw r3, #0x8880
0088f75c  00 20 a0 e3                                      mov r2, #0
0088f760  e5 30 44 e3                                      movt r3, #0x40e5
0088f764  f5 fa e9 eb                                      bl #0x30e340
0088f768  d0 20 c7 e1                                      ldrd r2, r3, [r7]
0088f76c  d0 fc e9 eb                                      bl #0x30eab4
0088f770  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
0088f774  02 11 81 e2                                      add r1, r1, #0x80000000
0088f778  01 e0 a0 e3                                      mov lr, #1
0088f77c  03 20 94 e7                                      ldr r2, [r4, r3]
0088f780  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
0088f784  04 10 86 e5                                      str r1, [r6, #4]
0088f788  f0 80 c2 e1                                      strd r8, sb, [r2]
0088f78c  03 c0 94 e7                                      ldr ip, [r4, r3]
0088f790  bc 21 9f e5                                      ldr r2, [pc, #0x1bc]
0088f794  00 30 a0 e3                                      mov r3, #0
0088f798  00 00 86 e5                                      str r0, [r6]
0088f79c  03 10 a0 e1                                      mov r1, r3
0088f7a0  54 e0 85 e5                                      str lr, [r5, #0x54]
0088f7a4  02 20 94 e7                                      ldr r2, [r4, r2]
0088f7a8  00 e0 cc e5                                      strb lr, [ip]
0088f7ac  68 00 85 e2                                      add r0, r5, #0x68
0088f7b0  60 30 c5 e5                                      strb r3, [r5, #0x60]
0088f7b4  05 30 a0 e1                                      mov r3, r5
0088f7b8  08 fa e9 eb                                      bl #0x30dfe0
0088f7bc  14 d0 8d e2                                      add sp, sp, #0x14
0088f7c0  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
0088f7c4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088f7c8  88 11 9f e5                                      ldr r1, [pc, #0x188]
0088f7cc  03 00 a0 e1                                      mov r0, r3
0088f7d0  01 10 8f e0                                      add r1, pc, r1
0088f7d4  00 30 93 e5                                      ldr r3, [r3]
0088f7d8  0f e0 a0 e1                                      mov lr, pc
0088f7dc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0088f7e0  00 00 50 e3                                      cmp r0, #0
0088f7e4  00 00 86 e5                                      str r0, [r6]
0088f7e8  f3 ff ff 0a                                      beq #0x88f7bc
0088f7ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088f7f0  00 10 a0 e1                                      mov r1, r0
0088f7f4  40 71 9f e5                                      ldr r7, [pc, #0x140]
0088f7f8  03 00 a0 e1                                      mov r0, r3
0088f7fc  00 30 93 e5                                      ldr r3, [r3]
0088f800  0f e0 a0 e1                                      mov lr, pc
0088f804  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0088f808  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
0088f80c  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
0088f810  00 c0 a0 e1                                      mov ip, r0
0088f814  00 10 a0 e1                                      mov r1, r0
0088f818  02 20 8f e0                                      add r2, pc, r2
0088f81c  03 30 8f e0                                      add r3, pc, r3
0088f820  00 c0 86 e5                                      str ip, [r6]
0088f824  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f828  52 fd ff eb                                      bl #0x88ed78
0088f82c  30 31 9f e5                                      ldr r3, [pc, #0x130]
0088f830  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0088f834  2c 21 9f e5                                      ldr r2, [pc, #0x12c]
0088f838  03 30 94 e7                                      ldr r3, [r4, r3]
0088f83c  00 10 96 e5                                      ldr r1, [r6]
0088f840  02 20 8f e0                                      add r2, pc, r2
0088f844  00 00 83 e5                                      str r0, [r3]
0088f848  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0088f84c  0c 00 a0 e1                                      mov r0, ip
0088f850  00 c0 9c e5                                      ldr ip, [ip]
0088f854  03 30 8f e0                                      add r3, pc, r3
0088f858  0f e0 a0 e1                                      mov lr, pc
0088f85c  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0088f860  08 81 9f e5                                      ldr r8, [pc, #0x108]
0088f864  07 30 94 e7                                      ldr r3, [r4, r7]
0088f868  04 21 9f e5                                      ldr r2, [pc, #0x104]
0088f86c  08 80 8f e0                                      add r8, pc, r8
0088f870  00 00 83 e5                                      str r0, [r3]
0088f874  02 20 8f e0                                      add r2, pc, r2
0088f878  00 10 96 e5                                      ldr r1, [r6]
0088f87c  08 30 a0 e1                                      mov r3, r8
0088f880  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f884  3b fd ff eb                                      bl #0x88ed78
0088f888  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
0088f88c  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
0088f890  00 10 96 e5                                      ldr r1, [r6]
0088f894  03 c0 94 e7                                      ldr ip, [r4, r3]
0088f898  02 20 8f e0                                      add r2, pc, r2
0088f89c  08 30 a0 e1                                      mov r3, r8
0088f8a0  00 00 8c e5                                      str r0, [ip]
0088f8a4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f8a8  32 fd ff eb                                      bl #0x88ed78
0088f8ac  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0088f8b0  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
0088f8b4  00 10 96 e5                                      ldr r1, [r6]
0088f8b8  03 c0 94 e7                                      ldr ip, [r4, r3]
0088f8bc  02 20 8f e0                                      add r2, pc, r2
0088f8c0  08 30 a0 e1                                      mov r3, r8
0088f8c4  00 00 8c e5                                      str r0, [ip]
0088f8c8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f8cc  29 fd ff eb                                      bl #0x88ed78
0088f8d0  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
0088f8d4  08 30 a0 e1                                      mov r3, r8
0088f8d8  00 10 96 e5                                      ldr r1, [r6]
0088f8dc  02 c0 94 e7                                      ldr ip, [r4, r2]
0088f8e0  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0088f8e4  00 00 8c e5                                      str r0, [ip]
0088f8e8  02 20 8f e0                                      add r2, pc, r2
0088f8ec  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f8f0  20 fd ff eb                                      bl #0x88ed78
0088f8f4  94 30 9f e5                                      ldr r3, [pc, #0x94]
0088f8f8  94 20 9f e5                                      ldr r2, [pc, #0x94]
0088f8fc  03 10 94 e7                                      ldr r1, [r4, r3]
0088f900  90 30 9f e5                                      ldr r3, [pc, #0x90]
0088f904  02 20 8f e0                                      add r2, pc, r2
0088f908  00 00 81 e5                                      str r0, [r1]
0088f90c  03 30 8f e0                                      add r3, pc, r3
0088f910  00 10 96 e5                                      ldr r1, [r6]
0088f914  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f918  16 fd ff eb                                      bl #0x88ed78
0088f91c  78 30 9f e5                                      ldr r3, [pc, #0x78]
0088f920  00 10 96 e5                                      ldr r1, [r6]
0088f924  03 30 94 e7                                      ldr r3, [r4, r3]
0088f928  00 00 83 e5                                      str r0, [r3]
0088f92c  66 ff ff ea                                      b #0x88f6cc
0088f930  14 54 10 00 f8 4a 00 00 14 43 00 00 7c 35 00 00  .byte 0x14, 0x54, 0x10, 0x00, 0xf8, 0x4a, 0x00, 0x00, 0x14, 0x43, 0x00, 0x00, 0x7c, 0x35, 0x00, 0x00
0088f940  10 07 00 00 58 14 00 00 90 07 00 00 b4 43 00 00  .byte 0x10, 0x07, 0x00, 0x00, 0x58, 0x14, 0x00, 0x00, 0x90, 0x07, 0x00, 0x00, 0xb4, 0x43, 0x00, 0x00
0088f950  f4 07 00 00 9c 3a 00 00 b0 21 08 00 88 21 08 00  .byte 0xf4, 0x07, 0x00, 0x00, 0x9c, 0x3a, 0x00, 0x00, 0xb0, 0x21, 0x08, 0x00, 0x88, 0x21, 0x08, 0x00
0088f960  8c 21 08 00 d8 11 00 00 78 21 08 00 7c 21 08 00  .byte 0x8c, 0x21, 0x08, 0x00, 0xd8, 0x11, 0x00, 0x00, 0x78, 0x21, 0x08, 0x00, 0x7c, 0x21, 0x08, 0x00
0088f970  c4 de 04 00 44 9b 07 00 a8 46 00 00 40 21 08 00  .byte 0xc4, 0xde, 0x04, 0x00, 0x44, 0x9b, 0x07, 0x00, 0xa8, 0x46, 0x00, 0x00, 0x40, 0x21, 0x08, 0x00
0088f980  a4 0a 00 00 04 9b 07 00 c8 2b 00 00 f0 52 03 00  .byte 0xa4, 0x0a, 0x00, 0x00, 0x04, 0x9b, 0x07, 0x00, 0xc8, 0x2b, 0x00, 0x00, 0xf0, 0x52, 0x03, 0x00
0088f990  f0 19 00 00 dc 20 08 00 dc 20 08 00 c4 21 00 00  .byte 0xf0, 0x19, 0x00, 0x00, 0xdc, 0x20, 0x08, 0x00, 0xdc, 0x20, 0x08, 0x00, 0xc4, 0x21, 0x00, 0x00

; PACKAGE FUNCTION driver_android_audio_callback
; ELF VA 0x0088f14c, range_size=476, SHA-256=6b657d01ba0d183f72b0cffc2278ede0a7c8920d85a45ac21f5df871f47929e9
; Original assembly source vox_DriverAndroid-34a0f8ecbdd8-001.asm
; Source symbol vox::DriverAndroid::DoCallbackAT(_jarray*&)
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
0088f14c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0088f150  ac 41 9f e5                                      ldr r4, [pc, #0x1ac]
0088f154  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
0088f158  18 d0 4d e2                                      sub sp, sp, #0x18
0088f15c  04 40 8f e0                                      add r4, pc, r4
0088f160  03 20 94 e7                                      ldr r2, [r4, r3]
0088f164  00 50 a0 e3                                      mov r5, #0
0088f168  18 30 8d e2                                      add r3, sp, #0x18
0088f16c  00 c0 92 e5                                      ldr ip, [r2]
0088f170  04 50 23 e5                                      str r5, [r3, #-4]!
0088f174  01 28 a0 e3                                      mov r2, #0x10000
0088f178  01 60 a0 e1                                      mov r6, r1
0088f17c  02 20 82 e2                                      add r2, r2, #2
0088f180  03 10 a0 e1                                      mov r1, r3
0088f184  00 70 a0 e1                                      mov r7, r0
0088f188  00 30 9c e5                                      ldr r3, [ip]
0088f18c  0c 00 a0 e1                                      mov r0, ip
0088f190  0f e0 a0 e1                                      mov lr, pc
0088f194  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0088f198  14 30 9d e5                                      ldr r3, [sp, #0x14]
0088f19c  00 10 96 e5                                      ldr r1, [r6]
0088f1a0  05 20 a0 e1                                      mov r2, r5
0088f1a4  03 00 a0 e1                                      mov r0, r3
0088f1a8  00 30 93 e5                                      ldr r3, [r3]
0088f1ac  0f e0 a0 e1                                      mov lr, pc
0088f1b0  78 f3 93 e5                                      ldr pc, [r3, #0x378]
0088f1b4  00 80 50 e2                                      subs r8, r0, #0
0088f1b8  48 00 00 0a                                      beq #0x88f2e0
0088f1bc  5c 90 97 e5                                      ldr sb, [r7, #0x5c]
0088f1c0  04 a0 87 e2                                      add sl, r7, #4
0088f1c4  0a 00 a0 e1                                      mov r0, sl
0088f1c8  ab 10 00 eb                                      bl #0x89347c
0088f1cc  09 20 a0 e1                                      mov r2, sb
0088f1d0  08 10 a0 e1                                      mov r1, r8
0088f1d4  07 00 a0 e1                                      mov r0, r7
0088f1d8  da 04 00 eb                                      bl #0x890548
0088f1dc  0a 00 a0 e1                                      mov r0, sl
0088f1e0  a4 10 00 eb                                      bl #0x893478
0088f1e4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0088f1e8  00 10 96 e5                                      ldr r1, [r6]
0088f1ec  05 30 a0 e1                                      mov r3, r5
0088f1f0  0c 00 a0 e1                                      mov r0, ip
0088f1f4  08 20 a0 e1                                      mov r2, r8
0088f1f8  00 c0 9c e5                                      ldr ip, [ip]
0088f1fc  0f e0 a0 e1                                      mov lr, pc
0088f200  7c f3 9c e5                                      ldr pc, [ip, #0x37c]
0088f204  00 31 9f e5                                      ldr r3, [pc, #0x100]
0088f208  00 c0 96 e5                                      ldr ip, [r6]
0088f20c  64 10 97 e5                                      ldr r1, [r7, #0x64]
0088f210  03 20 94 e7                                      ldr r2, [r4, r3]
0088f214  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0088f218  09 91 a0 e1                                      lsl sb, sb, #2
0088f21c  00 20 92 e5                                      ldr r2, [r2]
0088f220  03 30 94 e7                                      ldr r3, [r4, r3]
0088f224  14 00 9d e5                                      ldr r0, [sp, #0x14]
0088f228  00 30 93 e5                                      ldr r3, [r3]
0088f22c  00 c0 8d e5                                      str ip, [sp]
0088f230  20 02 8d e9                                      stmib sp, {r5, sb}
0088f234  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
0088f238  30 ff ff eb                                      bl #0x88ef00
0088f23c  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
0088f240  05 60 94 e7                                      ldr r6, [r4, r5]
0088f244  03 30 94 e7                                      ldr r3, [r4, r3]
0088f248  d0 00 c6 e1                                      ldrd r0, r1, [r6]
0088f24c  d0 20 c3 e1                                      ldrd r2, r3, [r3]
0088f250  3b fe e9 eb                                      bl #0x30eb44
0088f254  f0 00 c6 e1                                      strd r0, r1, [r6]
0088f258  bc 60 9f e5                                      ldr r6, [pc, #0xbc]
0088f25c  06 60 8f e0                                      add r6, pc, r6
0088f260  00 30 d6 e5                                      ldrb r3, [r6]
0088f264  00 00 53 e3                                      cmp r3, #0
0088f268  1e 00 00 1a                                      bne #0x88f2e8
0088f26c  ac 80 9f e5                                      ldr r8, [pc, #0xac]
0088f270  05 30 94 e7                                      ldr r3, [r4, r5]
0088f274  d0 60 c3 e1                                      ldrd r6, r7, [r3]
0088f278  5d 4e ff eb                                      bl #0x862bf4
0088f27c  08 30 94 e7                                      ldr r3, [r4, r8]
0088f280  d0 20 c3 e1                                      ldrd r2, r3, [r3]
0088f284  a8 fc e9 eb                                      bl #0x30e52c
0088f288  00 20 a0 e1                                      mov r2, r0
0088f28c  01 30 a0 e1                                      mov r3, r1
0088f290  06 00 a0 e1                                      mov r0, r6
0088f294  07 10 a0 e1                                      mov r1, r7
0088f298  a3 fc e9 eb                                      bl #0x30e52c
0088f29c  80 30 9f e5                                      ldr r3, [pc, #0x80]
0088f2a0  03 30 94 e7                                      ldr r3, [r4, r3]
0088f2a4  d0 20 c3 e1                                      ldrd r2, r3, [r3]
0088f2a8  ec fa e9 eb                                      bl #0x30de60
0088f2ac  00 00 50 e3                                      cmp r0, #0
0088f2b0  08 00 00 0a                                      beq #0x88f2d8
0088f2b4  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0088f2b8  80 34 08 e3                                      movw r3, #0x8480
0088f2bc  00 20 a0 e3                                      mov r2, #0
0088f2c0  01 10 94 e7                                      ldr r1, [r4, r1]
0088f2c4  2e 31 44 e3                                      movt r3, #0x412e
0088f2c8  d0 00 c1 e1                                      ldrd r0, r1, [r1]
0088f2cc  f8 fd e9 eb                                      bl #0x30eab4
0088f2d0  be fd e9 eb                                      bl #0x30e9d0
0088f2d4  69 fd e9 eb                                      bl #0x30e880
0088f2d8  18 d0 8d e2                                      add sp, sp, #0x18
0088f2dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0088f2e0  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
0088f2e4  db ff ff ea                                      b #0x88f258
0088f2e8  41 4e ff eb                                      bl #0x862bf4
0088f2ec  2c 80 9f e5                                      ldr r8, [pc, #0x2c]
0088f2f0  00 30 a0 e3                                      mov r3, #0
0088f2f4  00 30 c6 e5                                      strb r3, [r6]
0088f2f8  08 30 94 e7                                      ldr r3, [r4, r8]
0088f2fc  f0 00 c3 e1                                      strd r0, r1, [r3]
0088f300  da ff ff ea                                      b #0x88f270
0088f304  34 59 10 00 f8 4a 00 00 14 43 00 00 c4 21 00 00  .byte 0x34, 0x59, 0x10, 0x00, 0xf8, 0x4a, 0x00, 0x00, 0x14, 0x43, 0x00, 0x00, 0xc4, 0x21, 0x00, 0x00
0088f314  b4 43 00 00 10 07 00 00 ec ef 10 00 88 07 00 00  .byte 0xb4, 0x43, 0x00, 0x00, 0x10, 0x07, 0x00, 0x00, 0xec, 0xef, 0x10, 0x00, 0x88, 0x07, 0x00, 0x00
0088f324  90 07 00 00                                      .byte 0x90, 0x07, 0x00, 0x00

; PACKAGE FUNCTION driver_android_update_audio_thread
; ELF VA 0x0088f328, range_size=628, SHA-256=e0654d26aaa865f7b296f54289445ef81175d6d2645b6775de0073d34ec1e9c6
; Original assembly source vox_DriverAndroid-34a0f8ecbdd8-001.asm
; Source symbol vox::DriverAndroid::UpdateThreadedAT(void*)
; PT_LOAD VA 0x0..0x955130 maps to file offset 0x0+VA
0088f328  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088f32c  40 52 9f e5                                      ldr r5, [pc, #0x240]
0088f330  00 40 50 e2                                      subs r4, r0, #0
0088f334  2c d0 4d e2                                      sub sp, sp, #0x2c
0088f338  05 50 8f e0                                      add r5, pc, r5
0088f33c  81 00 00 0a                                      beq #0x88f548
0088f340  30 b2 9f e5                                      ldr fp, [pc, #0x230]
0088f344  00 60 a0 e3                                      mov r6, #0
0088f348  28 80 8d e2                                      add r8, sp, #0x28
0088f34c  04 90 84 e2                                      add sb, r4, #4
0088f350  09 00 a0 e1                                      mov r0, sb
0088f354  08 60 28 e5                                      str r6, [r8, #-8]!
0088f358  24 60 8d e5                                      str r6, [sp, #0x24]
0088f35c  46 10 00 eb                                      bl #0x89347c
0088f360  0b 70 95 e7                                      ldr r7, [r5, fp]
0088f364  08 10 a0 e1                                      mov r1, r8
0088f368  06 20 a0 e1                                      mov r2, r6
0088f36c  00 30 97 e5                                      ldr r3, [r7]
0088f370  03 00 a0 e1                                      mov r0, r3
0088f374  00 30 93 e5                                      ldr r3, [r3]
0088f378  0f e0 a0 e1                                      mov lr, pc
0088f37c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0088f380  20 30 9d e5                                      ldr r3, [sp, #0x20]
0088f384  06 00 53 e1                                      cmp r3, r6
0088f388  6c 00 00 0a                                      beq #0x88f540
0088f38c  03 00 a0 e1                                      mov r0, r3
0088f390  02 10 a0 e3                                      mov r1, #2
0088f394  00 30 93 e5                                      ldr r3, [r3]
0088f398  0f e0 a0 e1                                      mov lr, pc
0088f39c  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0088f3a0  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
0088f3a4  44 2c 0a e3                                      movw r2, #0xac44
0088f3a8  00 20 8d e5                                      str r2, [sp]
0088f3ac  1c 30 8d e5                                      str r3, [sp, #0x1c]
0088f3b0  03 60 95 e7                                      ldr r6, [r5, r3]
0088f3b4  0c 20 a0 e3                                      mov r2, #0xc
0088f3b8  c0 31 9f e5                                      ldr r3, [pc, #0x1c0]
0088f3bc  04 20 8d e5                                      str r2, [sp, #4]
0088f3c0  02 20 a0 e3                                      mov r2, #2
0088f3c4  08 20 8d e5                                      str r2, [sp, #8]
0088f3c8  58 c0 94 e5                                      ldr ip, [r4, #0x58]
0088f3cc  03 30 95 e7                                      ldr r3, [r5, r3]
0088f3d0  00 10 96 e5                                      ldr r1, [r6]
0088f3d4  0c c1 a0 e1                                      lsl ip, ip, #2
0088f3d8  00 20 93 e5                                      ldr r2, [r3]
0088f3dc  20 00 9d e5                                      ldr r0, [sp, #0x20]
0088f3e0  01 80 a0 e3                                      mov r8, #1
0088f3e4  03 30 a0 e3                                      mov r3, #3
0088f3e8  0c c0 8d e5                                      str ip, [sp, #0xc]
0088f3ec  10 80 8d e5                                      str r8, [sp, #0x10]
0088f3f0  a7 fe ff eb                                      bl #0x88ee94
0088f3f4  00 00 50 e3                                      cmp r0, #0
0088f3f8  64 00 84 e5                                      str r0, [r4, #0x64]
0088f3fc  56 00 00 0a                                      beq #0x88f55c
0088f400  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
0088f404  00 10 a0 e1                                      mov r1, r0
0088f408  00 20 96 e5                                      ldr r2, [r6]
0088f40c  03 30 95 e7                                      ldr r3, [r5, r3]
0088f410  20 00 9d e5                                      ldr r0, [sp, #0x20]
0088f414  00 30 93 e5                                      ldr r3, [r3]
0088f418  aa fe ff eb                                      bl #0x88eec8
0088f41c  20 30 9d e5                                      ldr r3, [sp, #0x20]
0088f420  58 10 94 e5                                      ldr r1, [r4, #0x58]
0088f424  03 00 a0 e1                                      mov r0, r3
0088f428  01 11 a0 e1                                      lsl r1, r1, #2
0088f42c  00 30 93 e5                                      ldr r3, [r3]
0088f430  0f e0 a0 e1                                      mov lr, pc
0088f434  c0 f2 93 e5                                      ldr pc, [r3, #0x2c0]
0088f438  00 00 50 e3                                      cmp r0, #0
0088f43c  24 00 8d e5                                      str r0, [sp, #0x24]
0088f440  45 00 00 0a                                      beq #0x88f55c
0088f444  08 80 c4 e5                                      strb r8, [r4, #8]
0088f448  09 00 a0 e1                                      mov r0, sb
0088f44c  09 10 00 eb                                      bl #0x893478
0088f450  e7 4d ff eb                                      bl #0x862bf4
0088f454  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
0088f458  2c 21 9f e5                                      ldr r2, [pc, #0x12c]
0088f45c  2c a1 9f e5                                      ldr sl, [pc, #0x12c]
0088f460  03 30 95 e7                                      ldr r3, [r5, r3]
0088f464  02 80 95 e7                                      ldr r8, [r5, r2]
0088f468  24 70 8d e2                                      add r7, sp, #0x24
0088f46c  f0 00 c3 e1                                      strd r0, r1, [r3]
0088f470  00 60 d8 e5                                      ldrb r6, [r8]
0088f474  04 00 a0 e1                                      mov r0, r4
0088f478  07 10 a0 e1                                      mov r1, r7
0088f47c  00 00 56 e3                                      cmp r6, #0
0088f480  0f 00 00 0a                                      beq #0x88f4c4
0088f484  60 c0 d4 e5                                      ldrb ip, [r4, #0x60]
0088f488  80 34 08 e3                                      movw r3, #0x8480
0088f48c  00 20 a0 e3                                      mov r2, #0
0088f490  00 00 5c e3                                      cmp ip, #0
0088f494  2e 31 44 e3                                      movt r3, #0x412e
0088f498  2d 00 00 0a                                      beq #0x88f554
0088f49c  0a 10 95 e7                                      ldr r1, [r5, sl]
0088f4a0  d0 00 c1 e1                                      ldrd r0, r1, [r1]
0088f4a4  82 fd e9 eb                                      bl #0x30eab4
0088f4a8  5d fd e9 eb                                      bl #0x30ea24
0088f4ac  f3 fc e9 eb                                      bl #0x30e880
0088f4b0  00 60 d8 e5                                      ldrb r6, [r8]
0088f4b4  04 00 a0 e1                                      mov r0, r4
0088f4b8  07 10 a0 e1                                      mov r1, r7
0088f4bc  00 00 56 e3                                      cmp r6, #0
0088f4c0  ef ff ff 1a                                      bne #0x88f484
0088f4c4  09 00 a0 e1                                      mov r0, sb
0088f4c8  08 60 c4 e5                                      strb r6, [r4, #8]
0088f4cc  ea 0f 00 eb                                      bl #0x89347c
0088f4d0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0088f4d4  20 00 9d e5                                      ldr r0, [sp, #0x20]
0088f4d8  64 10 94 e5                                      ldr r1, [r4, #0x64]
0088f4dc  03 70 95 e7                                      ldr r7, [r5, r3]
0088f4e0  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0088f4e4  00 20 97 e5                                      ldr r2, [r7]
0088f4e8  03 30 95 e7                                      ldr r3, [r5, r3]
0088f4ec  00 30 93 e5                                      ldr r3, [r3]
0088f4f0  74 fe ff eb                                      bl #0x88eec8
0088f4f4  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0088f4f8  00 20 97 e5                                      ldr r2, [r7]
0088f4fc  64 10 94 e5                                      ldr r1, [r4, #0x64]
0088f500  03 30 95 e7                                      ldr r3, [r5, r3]
0088f504  20 00 9d e5                                      ldr r0, [sp, #0x20]
0088f508  00 30 93 e5                                      ldr r3, [r3]
0088f50c  6d fe ff eb                                      bl #0x88eec8
0088f510  20 30 9d e5                                      ldr r3, [sp, #0x20]
0088f514  06 10 a0 e1                                      mov r1, r6
0088f518  03 00 a0 e1                                      mov r0, r3
0088f51c  00 30 93 e5                                      ldr r3, [r3]
0088f520  0f e0 a0 e1                                      mov lr, pc
0088f524  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0088f528  0b 30 95 e7                                      ldr r3, [r5, fp]
0088f52c  00 30 93 e5                                      ldr r3, [r3]
0088f530  03 00 a0 e1                                      mov r0, r3
0088f534  00 30 93 e5                                      ldr r3, [r3]
0088f538  0f e0 a0 e1                                      mov lr, pc
0088f53c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0088f540  09 00 a0 e1                                      mov r0, sb
0088f544  cb 0f 00 eb                                      bl #0x893478
0088f548  00 00 a0 e3                                      mov r0, #0
0088f54c  2c d0 8d e2                                      add sp, sp, #0x2c
0088f550  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088f554  fc fe ff eb                                      bl #0x88f14c
0088f558  c4 ff ff ea                                      b #0x88f470
0088f55c  00 30 97 e5                                      ldr r3, [r7]
0088f560  03 00 a0 e1                                      mov r0, r3
0088f564  00 30 93 e5                                      ldr r3, [r3]
0088f568  0f e0 a0 e1                                      mov lr, pc
0088f56c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0088f570  f2 ff ff ea                                      b #0x88f540
0088f574  58 57 10 00 f8 4a 00 00 14 43 00 00 d8 11 00 00  .byte 0x58, 0x57, 0x10, 0x00, 0xf8, 0x4a, 0x00, 0x00, 0x14, 0x43, 0x00, 0x00, 0xd8, 0x11, 0x00, 0x00
0088f584  a8 46 00 00 88 07 00 00 f4 07 00 00 10 07 00 00  .byte 0xa8, 0x46, 0x00, 0x00, 0x88, 0x07, 0x00, 0x00, 0xf4, 0x07, 0x00, 0x00, 0x10, 0x07, 0x00, 0x00
0088f594  c8 2b 00 00 f0 19 00 00                          .byte 0xc8, 0x2b, 0x00, 0x00, 0xf0, 0x19, 0x00, 0x00

; DATA RANGE audio_extension_literals VA 0x009117c0, size=24, SHA-256=71c7bd1eae508aee99475f2ab10e7180d2bf91cb649aec4133aab8c54fed7b56
; .byte 0x2e, 0x77, 0x61, 0x76, 0x00, 0x00, 0x00, 0x00, 0x2e, 0x6d, 0x70, 0x63, 0x00, 0x00, 0x00, 0x00, 0x2e, 0x6f, 0x67, 0x67, 0x00, 0x00, 0x00, 0x00  ; b'.wav\x00\x00\x00\x00.mpc\x00\x00\x00\x00.ogg\x00\x00\x00\x00'
