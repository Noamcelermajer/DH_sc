; Focused native audio runtime trace from APK-matched ARM ELF.
; Annotated recovered listing; instruction bytes are checked against the ELF range.
; Source ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80

; EVIDENCE cursor_decode: VA 0x00872218, size 252, SHA-256 1b5c3b1c3b8d639640513de3e1986b2f88600a49837b1450525544ed32927973
; ASM_SOURCE vox_DecoderNativeCursor-d698012fa4b6-001.asm
; FUNCTION 0x00872218, declared_size=252, range_size=252, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursor6DecodeEPvi
; demangled: vox::DecoderNativeCursor::Decode(void*, int)
; decoder-mode: arm
00872218  70 40 2d e9                                      push {r4, r5, r6, lr}
0087221c  00 40 a0 e1                                      mov r4, r0
00872220  48 00 90 e5                                      ldr r0, [r0, #0x48]
00872224  01 50 a0 e1                                      mov r5, r1
00872228  02 60 a0 e1                                      mov r6, r2
0087222c  00 00 50 e3                                      cmp r0, #0
00872230  2e 00 00 0a                                      beq #0x8722f0
00872234  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00872238  01 00 53 e3                                      cmp r3, #1
0087223c  04 00 00 0a                                      beq #0x872254
00872240  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
00872244  60 30 94 e5                                      ldr r3, [r4, #0x60]
00872248  02 20 86 e0                                      add r2, r6, r2
0087224c  03 00 52 e1                                      cmp r2, r3
00872250  0c 00 00 da                                      ble #0x872288
00872254  50 10 94 e5                                      ldr r1, [r4, #0x50]
00872258  54 20 94 e5                                      ldr r2, [r4, #0x54]
0087225c  20 30 94 e5                                      ldr r3, [r4, #0x20]
00872260  54 10 84 e5                                      str r1, [r4, #0x54]
00872264  50 20 84 e5                                      str r2, [r4, #0x50]
00872268  f0 32 d3 e1                                      ldrsh r3, [r3, #0x20]
0087226c  11 00 53 e3                                      cmp r3, #0x11
00872270  25 00 00 0a                                      beq #0x87230c
00872274  51 56 00 eb                                      bl #0x887bc0
00872278  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0087227c  00 20 a0 e3                                      mov r2, #0
00872280  5c 20 84 e5                                      str r2, [r4, #0x5c]
00872284  58 30 84 e5                                      str r3, [r4, #0x58]
00872288  04 00 a0 e1                                      mov r0, r4
0087228c  b0 fd ff eb                                      bl #0x871954
00872290  00 10 50 e2                                      subs r1, r0, #0
00872294  16 00 00 ba                                      blt #0x8722f4
00872298  48 00 94 e5                                      ldr r0, [r4, #0x48]
0087229c  e6 4d 00 eb                                      bl #0x885a3c
008722a0  00 30 a0 e3                                      mov r3, #0
008722a4  64 30 84 e5                                      str r3, [r4, #0x64]
008722a8  05 10 a0 e1                                      mov r1, r5
008722ac  06 20 a0 e1                                      mov r2, r6
008722b0  48 00 94 e5                                      ldr r0, [r4, #0x48]
008722b4  58 4e 00 eb                                      bl #0x885c1c
008722b8  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
008722bc  00 00 53 e3                                      cmp r3, #0
008722c0  08 00 00 0a                                      beq #0x8722e8
008722c4  58 c0 94 e5                                      ldr ip, [r4, #0x58]
008722c8  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
008722cc  64 20 94 e5                                      ldr r2, [r4, #0x64]
008722d0  00 c0 8c e0                                      add ip, ip, r0
008722d4  00 10 81 e0                                      add r1, r1, r0
008722d8  00 20 82 e0                                      add r2, r2, r0
008722dc  58 c0 84 e5                                      str ip, [r4, #0x58]
008722e0  5c 10 84 e5                                      str r1, [r4, #0x5c]
008722e4  64 20 84 e5                                      str r2, [r4, #0x64]
008722e8  01 30 83 e2                                      add r3, r3, #1
008722ec  4c 30 84 e5                                      str r3, [r4, #0x4c]
008722f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
008722f4  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
008722f8  00 00 51 e3                                      cmp r1, #0
008722fc  e9 ff ff 1a                                      bne #0x8722a8
00872300  48 00 94 e5                                      ldr r0, [r4, #0x48]
00872304  cc 4d 00 eb                                      bl #0x885a3c
00872308  e6 ff ff ea                                      b #0x8722a8
0087230c  90 50 00 eb                                      bl #0x886554
00872310  d8 ff ff ea                                      b #0x872278


; EVIDENCE base_subdecoder_constructor: VA 0x00885d44, size 460, SHA-256 dadb33f4684686a4d6cc340ccc3a9756c83dee0df0caa54d98e26923139905aa
; ASM_SOURCE vox_VoxNativeSubDecoder-445e1a438638-001.asm
; FUNCTION 0x00885d44, declared_size=460, range_size=460, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoderC1EPNS_21StreamCursorInterfaceEPNS_12NativeChunksEPNS_6StatesEPNS_13AudioSegmentsEPSt6vectorIS9_IiNS_10SAllocatorIiLNS_10VoxMemHintE0EEEENSA_ISD_LSB_0EEEEPNS_15TransitionRulesEPS9_IS9_INS_16TransitionParamsENSA_ISJ_LSB_0EEEENSA_ISL_LSB_0EEEEPSt3mapISbIcSt11char_traitsIcENSA_IcLSB_0EEEEiNS_13StringCompareENSA_ISt4pairIKST_iELSB_0EEEEPNS_22NativePlaylistsManagerE
; demangled: vox::VoxNativeSubDecoder::VoxNativeSubDecoder(vox::StreamCursorInterface*, vox::NativeChunks*, vox::States*, vox::AudioSegments*, std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, vox::TransitionRules*, std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, int, vox::StringCompare, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >*, vox::NativePlaylistsManager*)
; decoder-mode: arm
00885d44  bc c1 9f e5                                      ldr ip, [pc, #0x1bc]
00885d48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00885d4c  b8 e1 9f e5                                      ldr lr, [pc, #0x1b8]
00885d50  0c c0 8f e0                                      add ip, pc, ip
00885d54  04 10 80 e5                                      str r1, [r0, #4]
00885d58  0e e0 9c e7                                      ldr lr, [ip, lr]
00885d5c  20 30 80 e5                                      str r3, [r0, #0x20]
00885d60  00 50 a0 e3                                      mov r5, #0
00885d64  08 e0 8e e2                                      add lr, lr, #8
00885d68  00 e0 80 e5                                      str lr, [r0]
00885d6c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00885d70  00 60 e0 e3                                      mvn r6, #0
00885d74  01 70 a0 e3                                      mov r7, #1
00885d78  18 30 80 e5                                      str r3, [r0, #0x18]
00885d7c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00885d80  00 40 a0 e1                                      mov r4, r0
00885d84  02 80 a0 e1                                      mov r8, r2
00885d88  1c 30 80 e5                                      str r3, [r0, #0x1c]
00885d8c  24 30 9d e5                                      ldr r3, [sp, #0x24]
00885d90  24 30 80 e5                                      str r3, [r0, #0x24]
00885d94  28 30 9d e5                                      ldr r3, [sp, #0x28]
00885d98  28 30 80 e5                                      str r3, [r0, #0x28]
00885d9c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00885da0  2c 30 80 e5                                      str r3, [r0, #0x2c]
00885da4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00885da8  b8 50 c0 e1                                      strh r5, [r0, #8]
00885dac  ba 50 c0 e1                                      strh r5, [r0, #0xa]
00885db0  30 30 80 e5                                      str r3, [r0, #0x30]
00885db4  0c 50 80 e5                                      str r5, [r0, #0xc]
00885db8  b0 51 c0 e1                                      strh r5, [r0, #0x10]
00885dbc  b2 51 c0 e1                                      strh r5, [r0, #0x12]
00885dc0  34 60 80 e5                                      str r6, [r0, #0x34]
00885dc4  38 60 80 e5                                      str r6, [r0, #0x38]
00885dc8  3c 60 80 e5                                      str r6, [r0, #0x3c]
00885dcc  40 60 80 e5                                      str r6, [r0, #0x40]
00885dd0  44 60 80 e5                                      str r6, [r0, #0x44]
00885dd4  48 60 80 e5                                      str r6, [r0, #0x48]
00885dd8  4c 70 c0 e5                                      strb r7, [r0, #0x4c]
00885ddc  50 00 80 e2                                      add r0, r0, #0x50
00885de0  93 ee ff eb                                      bl #0x881834
00885de4  64 00 84 e2                                      add r0, r4, #0x64
00885de8  91 ee ff eb                                      bl #0x881834
00885dec  78 00 84 e2                                      add r0, r4, #0x78
00885df0  8f ee ff eb                                      bl #0x881834
00885df4  02 30 a0 e3                                      mov r3, #2
00885df8  03 10 a0 e3                                      mov r1, #3
00885dfc  bc 30 84 e5                                      str r3, [r4, #0xbc]
00885e00  00 31 84 e5                                      str r3, [r4, #0x100]
00885e04  8c 60 84 e5                                      str r6, [r4, #0x8c]
00885e08  90 60 84 e5                                      str r6, [r4, #0x90]
00885e0c  94 50 84 e5                                      str r5, [r4, #0x94]
00885e10  98 60 84 e5                                      str r6, [r4, #0x98]
00885e14  a0 50 84 e5                                      str r5, [r4, #0xa0]
00885e18  a4 50 84 e5                                      str r5, [r4, #0xa4]
00885e1c  a8 50 84 e5                                      str r5, [r4, #0xa8]
00885e20  ac 50 84 e5                                      str r5, [r4, #0xac]
00885e24  b0 70 84 e5                                      str r7, [r4, #0xb0]
00885e28  b4 70 84 e5                                      str r7, [r4, #0xb4]
00885e2c  b8 50 84 e5                                      str r5, [r4, #0xb8]
00885e30  c0 50 84 e5                                      str r5, [r4, #0xc0]
00885e34  c4 50 84 e5                                      str r5, [r4, #0xc4]
00885e38  c8 50 84 e5                                      str r5, [r4, #0xc8]
00885e3c  cc 50 84 e5                                      str r5, [r4, #0xcc]
00885e40  d0 50 84 e5                                      str r5, [r4, #0xd0]
00885e44  d4 60 84 e5                                      str r6, [r4, #0xd4]
00885e48  d8 50 c4 e5                                      strb r5, [r4, #0xd8]
00885e4c  dc 60 84 e5                                      str r6, [r4, #0xdc]
00885e50  e4 50 84 e5                                      str r5, [r4, #0xe4]
00885e54  e8 50 84 e5                                      str r5, [r4, #0xe8]
00885e58  ec 50 84 e5                                      str r5, [r4, #0xec]
00885e5c  f0 50 84 e5                                      str r5, [r4, #0xf0]
00885e60  f4 70 84 e5                                      str r7, [r4, #0xf4]
00885e64  f8 70 84 e5                                      str r7, [r4, #0xf8]
00885e68  fc 50 84 e5                                      str r5, [r4, #0xfc]
00885e6c  04 51 84 e5                                      str r5, [r4, #0x104]
00885e70  08 51 84 e5                                      str r5, [r4, #0x108]
00885e74  0c 51 84 e5                                      str r5, [r4, #0x10c]
00885e78  10 51 84 e5                                      str r5, [r4, #0x110]
00885e7c  14 51 84 e5                                      str r5, [r4, #0x114]
00885e80  18 61 84 e5                                      str r6, [r4, #0x118]
00885e84  60 51 c4 e5                                      strb r5, [r4, #0x160]
00885e88  64 61 84 e5                                      str r6, [r4, #0x164]
00885e8c  68 51 84 e5                                      str r5, [r4, #0x168]
00885e90  24 71 84 e5                                      str r7, [r4, #0x124]
00885e94  e0 30 84 e5                                      str r3, [r4, #0xe0]
00885e98  9c 10 84 e5                                      str r1, [r4, #0x9c]
00885e9c  1c 51 c4 e5                                      strb r5, [r4, #0x11c]
00885ea0  20 61 84 e5                                      str r6, [r4, #0x120]
00885ea4  28 51 84 e5                                      str r5, [r4, #0x128]
00885ea8  2c 51 84 e5                                      str r5, [r4, #0x12c]
00885eac  30 51 84 e5                                      str r5, [r4, #0x130]
00885eb0  34 51 84 e5                                      str r5, [r4, #0x134]
00885eb4  38 71 84 e5                                      str r7, [r4, #0x138]
00885eb8  3c 71 84 e5                                      str r7, [r4, #0x13c]
00885ebc  40 51 84 e5                                      str r5, [r4, #0x140]
00885ec0  44 31 84 e5                                      str r3, [r4, #0x144]
00885ec4  48 51 84 e5                                      str r5, [r4, #0x148]
00885ec8  4c 51 84 e5                                      str r5, [r4, #0x14c]
00885ecc  50 51 84 e5                                      str r5, [r4, #0x150]
00885ed0  54 51 84 e5                                      str r5, [r4, #0x154]
00885ed4  58 51 84 e5                                      str r5, [r4, #0x158]
00885ed8  5c 61 84 e5                                      str r6, [r4, #0x15c]
00885edc  6c 71 c4 e5                                      strb r7, [r4, #0x16c]
00885ee0  20 30 98 e5                                      ldr r3, [r8, #0x20]
00885ee4  04 00 a0 e1                                      mov r0, r4
00885ee8  08 30 84 e5                                      str r3, [r4, #8]
00885eec  24 30 98 e5                                      ldr r3, [r8, #0x24]
00885ef0  0c 30 84 e5                                      str r3, [r4, #0xc]
00885ef4  28 30 98 e5                                      ldr r3, [r8, #0x28]
00885ef8  10 30 84 e5                                      str r3, [r4, #0x10]
00885efc  14 30 98 e5                                      ldr r3, [r8, #0x14]
00885f00  14 30 84 e5                                      str r3, [r4, #0x14]
00885f04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00885f08  40 ed 10 00 f4 0d 00 00                          .byte 0x40, 0xed, 0x10, 0x00, 0xf4, 0x0d, 0x00, 0x00


; EVIDENCE get_track_params: VA 0x00884438, size 48, SHA-256 ec6de21da1b7be592edf42fd23803e9973a0d8ac99048da88bcf5fa48047fcdd
; ASM_SOURCE vox_VoxNativeSubDecoder-445e1a438638-001.asm
; FUNCTION 0x00884438, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder14GetTrackParamsEv
; demangled: vox::VoxNativeSubDecoder::GetTrackParams()
; decoder-mode: arm
00884438  00 20 a0 e3                                      mov r2, #0
0088443c  00 20 80 e5                                      str r2, [r0]
00884440  04 20 80 e5                                      str r2, [r0, #4]
00884444  08 20 80 e5                                      str r2, [r0, #8]
00884448  0c 20 80 e5                                      str r2, [r0, #0xc]
0088444c  fa 20 d1 e1                                      ldrsh r2, [r1, #0xa]
00884450  00 20 80 e5                                      str r2, [r0]
00884454  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00884458  04 20 80 e5                                      str r2, [r0, #4]
0088445c  f2 21 d1 e1                                      ldrsh r2, [r1, #0x12]
00884460  08 20 80 e5                                      str r2, [r0, #8]
00884464  1e ff 2f e1                                      bx lr


; EVIDENCE mix_segment_in_buffer: VA 0x008844e8, size 588, SHA-256 06c53754c33dbe31993db95f6c292ae2b2c2010a26f8feed8e0cb30ab059df3b
; ASM_SOURCE vox_VoxNativeSubDecoder-445e1a438638-001.asm
; FUNCTION 0x008844e8, declared_size=588, range_size=588, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder18MixSegmentInBufferEPsiPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoder::MixSegmentInBuffer(short*, int, vox::SegmentState*)
; decoder-mode: arm
008844e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008844ec  38 62 9f e5                                      ldr r6, [pc, #0x238]
008844f0  38 b2 9f e5                                      ldr fp, [pc, #0x238]
008844f4  f2 c1 d0 e1                                      ldrsh ip, [r0, #0x12]
008844f8  fa 40 d0 e1                                      ldrsh r4, [r0, #0xa]
008844fc  06 60 8f e0                                      add r6, pc, r6
00884500  03 50 a0 e1                                      mov r5, r3
00884504  0b 30 96 e7                                      ldr r3, [r6, fp]
00884508  cc c1 a0 e1                                      asr ip, ip, #3
0088450c  14 d0 4d e2                                      sub sp, sp, #0x14
00884510  02 00 a0 e1                                      mov r0, r2
00884514  01 90 a0 e1                                      mov sb, r1
00884518  94 0c 01 e0                                      mul r1, r4, ip
0088451c  00 70 93 e5                                      ldr r7, [r3]
00884520  5f 27 ea eb                                      bl #0x30e2a4
00884524  28 80 95 e5                                      ldr r8, [r5, #0x28]
00884528  00 30 a0 e1                                      mov r3, r0
0088452c  38 a0 95 e5                                      ldr sl, [r5, #0x38]
00884530  08 20 60 e0                                      rsb r2, r0, r8
00884534  34 00 95 e5                                      ldr r0, [r5, #0x34]
00884538  00 00 52 e3                                      cmp r2, #0
0088453c  00 10 a0 b3                                      movlt r1, #0
00884540  28 20 85 e5                                      str r2, [r5, #0x28]
00884544  30 20 95 e5                                      ldr r2, [r5, #0x30]
00884548  04 00 8d e5                                      str r0, [sp, #4]
0088454c  28 10 85 b5                                      strlt r1, [r5, #0x28]
00884550  00 00 58 e3                                      cmp r8, #0
00884554  0e 00 00 da                                      ble #0x884594
00884558  03 00 58 e1                                      cmp r8, r3
0088455c  03 80 a0 a1                                      movge r8, r3
00884560  04 10 9d e5                                      ldr r1, [sp, #4]
00884564  94 08 00 e0                                      mul r0, r4, r8
00884568  00 00 51 e3                                      cmp r1, #0
0088456c  0c 80 8d e5                                      str r8, [sp, #0xc]
00884570  08 00 8d e5                                      str r0, [sp, #8]
00884574  54 00 00 ba                                      blt #0x8846cc
00884578  0b 10 96 e7                                      ldr r1, [r6, fp]
0088457c  08 00 9d e5                                      ldr r0, [sp, #8]
00884580  00 70 91 e5                                      ldr r7, [r1]
00884584  80 90 89 e0                                      add sb, sb, r0, lsl #1
00884588  00 71 87 e0                                      add r7, r7, r0, lsl #2
0088458c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00884590  03 30 61 e0                                      rsb r3, r1, r3
00884594  94 03 00 e0                                      mul r0, r4, r3
00884598  00 00 52 e3                                      cmp r2, #0
0088459c  08 00 8d e5                                      str r0, [sp, #8]
008845a0  92 04 0b e0                                      mul fp, r2, r4
008845a4  30 20 95 d5                                      ldrle r2, [r5, #0x30]
008845a8  21 00 00 da                                      ble #0x884634
008845ac  02 00 53 e1                                      cmp r3, r2
008845b0  0c 20 8d a5                                      strge r2, [sp, #0xc]
008845b4  3e 00 00 ba                                      blt #0x8846b4
008845b8  00 00 5b e3                                      cmp fp, #0
008845bc  14 00 00 da                                      ble #0x884614
008845c0  00 60 a0 e3                                      mov r6, #0
008845c4  06 80 a0 e1                                      mov r8, r6
008845c8  88 30 a0 e1                                      lsl r3, r8, #1
008845cc  f3 10 99 e1                                      ldrsh r1, [sb, r3]
008845d0  ca 37 a0 e1                                      asr r3, sl, #0xf
008845d4  06 20 97 e7                                      ldr r2, [r7, r6]
008845d8  91 03 03 e0                                      mul r3, r1, r3
008845dc  01 80 88 e2                                      add r8, r8, #1
008845e0  c3 37 82 e0                                      add r3, r2, r3, asr #15
008845e4  06 30 87 e7                                      str r3, [r7, r6]
008845e8  08 00 a0 e1                                      mov r0, r8
008845ec  04 10 a0 e1                                      mov r1, r4
008845f0  c3 28 ea eb                                      bl #0x30e904
008845f4  00 00 51 e3                                      cmp r1, #0
008845f8  04 10 9d 05                                      ldreq r1, [sp, #4]
008845fc  04 60 86 e2                                      add r6, r6, #4
00884600  01 a0 8a 00                                      addeq sl, sl, r1
00884604  0b 00 58 e1                                      cmp r8, fp
00884608  ee ff ff 1a                                      bne #0x8845c8
0088460c  0b 71 87 e0                                      add r7, r7, fp, lsl #2
00884610  8b 90 89 e0                                      add sb, sb, fp, lsl #1
00884614  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00884618  30 20 95 e5                                      ldr r2, [r5, #0x30]
0088461c  38 a0 85 e5                                      str sl, [r5, #0x38]
00884620  02 20 63 e0                                      rsb r2, r3, r2
00884624  00 00 52 e3                                      cmp r2, #0
00884628  30 20 85 e5                                      str r2, [r5, #0x30]
0088462c  00 20 a0 b3                                      movlt r2, #0
00884630  30 20 85 b5                                      strlt r2, [r5, #0x30]
00884634  00 00 52 e3                                      cmp r2, #0
00884638  17 00 00 1a                                      bne #0x88469c
0088463c  04 00 9d e5                                      ldr r0, [sp, #4]
00884640  28 20 85 e5                                      str r2, [r5, #0x28]
00884644  2c 20 85 e5                                      str r2, [r5, #0x2c]
00884648  00 00 50 e3                                      cmp r0, #0
0088464c  01 30 a0 b3                                      movlt r3, #1
00884650  30 20 85 e5                                      str r2, [r5, #0x30]
00884654  34 20 85 e5                                      str r2, [r5, #0x34]
00884658  38 20 85 e5                                      str r2, [r5, #0x38]
0088465c  24 30 85 b5                                      strlt r3, [r5, #0x24]
00884660  0d 00 00 ba                                      blt #0x88469c
00884664  08 10 9d e5                                      ldr r1, [sp, #8]
00884668  01 00 5b e1                                      cmp fp, r1
0088466c  0a 00 00 aa                                      bge #0x88469c
00884670  02 30 a0 e1                                      mov r3, r2
00884674  01 c0 a0 e1                                      mov ip, r1
00884678  f2 10 99 e1                                      ldrsh r1, [sb, r2]
0088467c  03 00 97 e7                                      ldr r0, [r7, r3]
00884680  01 b0 8b e2                                      add fp, fp, #1
00884684  0c 00 5b e1                                      cmp fp, ip
00884688  01 10 80 e0                                      add r1, r0, r1
0088468c  03 10 87 e7                                      str r1, [r7, r3]
00884690  02 20 82 e2                                      add r2, r2, #2
00884694  04 30 83 e2                                      add r3, r3, #4
00884698  f6 ff ff 1a                                      bne #0x884678
0088469c  04 30 95 e5                                      ldr r3, [r5, #4]
008846a0  03 00 53 e3                                      cmp r3, #3
008846a4  01 30 a0 03                                      moveq r3, #1
008846a8  24 30 85 05                                      streq r3, [r5, #0x24]
008846ac  14 d0 8d e2                                      add sp, sp, #0x14
008846b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008846b4  04 20 95 e5                                      ldr r2, [r5, #4]
008846b8  03 00 52 e3                                      cmp r2, #3
008846bc  13 00 00 0a                                      beq #0x884710
008846c0  0c 30 8d e5                                      str r3, [sp, #0xc]
008846c4  08 b0 9d e5                                      ldr fp, [sp, #8]
008846c8  ba ff ff ea                                      b #0x8845b8
008846cc  00 00 50 e3                                      cmp r0, #0
008846d0  ad ff ff da                                      ble #0x88458c
008846d4  00 10 a0 e3                                      mov r1, #0
008846d8  80 80 a0 e1                                      lsl r8, r0, #1
008846dc  01 00 a0 e1                                      mov r0, r1
008846e0  f1 c0 99 e1                                      ldrsh ip, [sb, r1]
008846e4  00 60 97 e7                                      ldr r6, [r7, r0]
008846e8  02 10 81 e2                                      add r1, r1, #2
008846ec  08 00 51 e1                                      cmp r1, r8
008846f0  0c c0 86 e0                                      add ip, r6, ip
008846f4  00 c0 87 e7                                      str ip, [r7, r0]
008846f8  04 00 80 e2                                      add r0, r0, #4
008846fc  f7 ff ff 1a                                      bne #0x8846e0
00884700  08 00 9d e5                                      ldr r0, [sp, #8]
00884704  01 90 89 e0                                      add sb, sb, r1
00884708  00 71 87 e0                                      add r7, r7, r0, lsl #2
0088470c  9e ff ff ea                                      b #0x88458c
00884710  00 00 6a e2                                      rsb r0, sl, #0
00884714  03 10 a0 e1                                      mov r1, r3
00884718  0c 30 8d e5                                      str r3, [sp, #0xc]
0088471c  e0 26 ea eb                                      bl #0x30e2a4
00884720  08 b0 9d e5                                      ldr fp, [sp, #8]
00884724  04 00 8d e5                                      str r0, [sp, #4]
00884728  a2 ff ff ea                                      b #0x8845b8
0088472c  94 05 11 00 a4 06 00 00                          .byte 0x94, 0x05, 0x11, 0x00, 0xa4, 0x06, 0x00, 0x00


; EVIDENCE update_old_segment_state: VA 0x008847e8, size 716, SHA-256 f960634867694e862f755a4ccc174527adf0dd737ddde22fdf3cab7ac854adde
; ASM_SOURCE vox_VoxNativeSubDecoder-445e1a438638-001.asm
; FUNCTION 0x008847e8, declared_size=716, range_size=716, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder21UpdateOldSegmentStateEPNS_14TransitionRuleE
; demangled: vox::VoxNativeSubDecoder::UpdateOldSegmentState(vox::TransitionRule*)
; decoder-mode: arm
008847e8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
008847ec  00 40 a0 e1                                      mov r4, r0
008847f0  01 50 a0 e1                                      mov r5, r1
008847f4  14 d0 4d e2                                      sub sp, sp, #0x14
008847f8  dc 00 80 e2                                      add r0, r0, #0xdc
008847fc  12 1e 84 e2                                      add r1, r4, #0x120
00884800  41 20 a0 e3                                      mov r2, #0x41
00884804  17 28 ea eb                                      bl #0x30e868
00884808  02 30 a0 e3                                      mov r3, #2
0088480c  00 00 55 e3                                      cmp r5, #0
00884810  e0 30 84 e5                                      str r3, [r4, #0xe0]
00884814  88 00 00 0a                                      beq #0x884a3c
00884818  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0088481c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00884820  08 a1 94 e5                                      ldr sl, [r4, #0x108]
00884824  fc 30 84 e5                                      str r3, [r4, #0xfc]
00884828  4d 28 ea eb                                      bl #0x30e964
0088482c  18 10 95 e5                                      ldr r1, [r5, #0x18]
00884830  00 60 a0 e1                                      mov r6, r0
00884834  4c 29 ea eb                                      bl #0x30ed6c
00884838  23 27 ea eb                                      bl #0x30e4cc
0088483c  00 00 50 e3                                      cmp r0, #0
00884840  08 01 84 e5                                      str r0, [r4, #0x108]
00884844  3e 00 00 da                                      ble #0x884944
00884848  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
0088484c  06 00 a0 e1                                      mov r0, r6
00884850  45 29 ea eb                                      bl #0x30ed6c
00884854  1c 27 ea eb                                      bl #0x30e4cc
00884858  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0088485c  dc 10 94 e5                                      ldr r1, [r4, #0xdc]
00884860  0c 80 a0 e3                                      mov r8, #0xc
00884864  00 30 93 e5                                      ldr r3, [r3]
00884868  00 70 a0 e1                                      mov r7, r0
0088486c  04 00 8d e2                                      add r0, sp, #4
00884870  98 31 21 e0                                      mla r1, r8, r1, r3
00884874  e0 b2 ff eb                                      bl #0x8713fc
00884878  04 60 9d e5                                      ldr r6, [sp, #4]
0088487c  04 30 95 e5                                      ldr r3, [r5, #4]
00884880  08 10 9d e5                                      ldr r1, [sp, #8]
00884884  00 00 53 e3                                      cmp r3, #0
00884888  01 10 66 e0                                      rsb r1, r6, r1
0088488c  41 11 a0 e1                                      asr r1, r1, #2
00884890  38 00 00 1a                                      bne #0x884978
00884894  f8 80 94 e5                                      ldr r8, [r4, #0xf8]
00884898  04 71 84 e5                                      str r7, [r4, #0x104]
0088489c  e8 30 94 e5                                      ldr r3, [r4, #0xe8]
008848a0  01 00 58 e3                                      cmp r8, #1
008848a4  00 80 a0 13                                      movne r8, #0
008848a8  00 00 57 e3                                      cmp r7, #0
008848ac  08 71 94 a5                                      ldrge r7, [r4, #0x108]
008848b0  3f 00 00 ba                                      blt #0x8849b4
008848b4  00 00 58 e3                                      cmp r8, #0
008848b8  0e 00 00 0a                                      beq #0x8848f8
008848bc  0c 20 95 e5                                      ldr r2, [r5, #0xc]
008848c0  01 00 52 e3                                      cmp r2, #1
008848c4  53 00 00 0a                                      beq #0x884a18
008848c8  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
008848cc  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
008848d0  0c 00 a0 e3                                      mov r0, #0xc
008848d4  00 10 91 e5                                      ldr r1, [r1]
008848d8  90 02 02 e0                                      mul r2, r0, r2
008848dc  02 20 91 e7                                      ldr r2, [r1, r2]
008848e0  08 20 92 e5                                      ldr r2, [r2, #8]
008848e4  01 30 63 e2                                      rsb r3, r3, #1
008848e8  02 30 83 e0                                      add r3, r3, r2
008848ec  07 00 53 e1                                      cmp r3, r7
008848f0  08 31 84 b5                                      strlt r3, [r4, #0x108]
008848f4  00 00 00 ba                                      blt #0x8848fc
008848f8  07 30 a0 e1                                      mov r3, r7
008848fc  00 00 5a e3                                      cmp sl, #0
00884900  58 01 94 c5                                      ldrgt r0, [r4, #0x158]
00884904  0c 31 84 e5                                      str r3, [r4, #0x10c]
00884908  01 31 a0 d3                                      movle r3, #0x40000000
0088490c  14 01 84 c5                                      strgt r0, [r4, #0x114]
00884910  14 31 84 d5                                      strle r3, [r4, #0x114]
00884914  00 00 60 c2                                      rsbgt r0, r0, #0
00884918  03 01 a0 d3                                      movle r0, #0xc0000000
0088491c  08 11 94 e5                                      ldr r1, [r4, #0x108]
00884920  5f 26 ea eb                                      bl #0x30e2a4
00884924  00 00 56 e3                                      cmp r6, #0
00884928  10 01 84 e5                                      str r0, [r4, #0x110]
0088492c  01 00 00 0a                                      beq #0x884938
00884930  06 00 a0 e1                                      mov r0, r6
00884934  c2 2e ea eb                                      bl #0x310444
00884938  00 00 58 e3                                      cmp r8, #0
0088493c  0b 00 00 0a                                      beq #0x884970
00884940  05 00 00 ea                                      b #0x88495c
00884944  00 30 a0 e3                                      mov r3, #0
00884948  14 31 84 e5                                      str r3, [r4, #0x114]
0088494c  04 31 84 e5                                      str r3, [r4, #0x104]
00884950  08 31 84 e5                                      str r3, [r4, #0x108]
00884954  0c 31 84 e5                                      str r3, [r4, #0x10c]
00884958  10 31 84 e5                                      str r3, [r4, #0x110]
0088495c  01 30 a0 e3                                      mov r3, #1
00884960  04 20 a0 e3                                      mov r2, #4
00884964  f8 30 84 e5                                      str r3, [r4, #0xf8]
00884968  00 21 84 e5                                      str r2, [r4, #0x100]
0088496c  f4 30 84 e5                                      str r3, [r4, #0xf4]
00884970  14 d0 8d e2                                      add sp, sp, #0x14
00884974  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00884978  05 00 53 e3                                      cmp r3, #5
0088497c  15 00 00 0a                                      beq #0x8849d8
00884980  06 00 53 e3                                      cmp r3, #6
00884984  42 00 00 0a                                      beq #0x884a94
00884988  04 00 53 e3                                      cmp r3, #4
0088498c  30 00 00 0a                                      beq #0x884a54
00884990  e8 00 94 e5                                      ldr r0, [r4, #0xe8]
00884994  00 30 a0 e3                                      mov r3, #0
00884998  03 00 60 e0                                      rsb r0, r0, r3
0088499c  07 70 80 e0                                      add r7, r0, r7
008849a0  00 00 57 e3                                      cmp r7, #0
008849a4  04 71 84 e5                                      str r7, [r4, #0x104]
008849a8  01 80 a0 e3                                      mov r8, #1
008849ac  08 71 94 a5                                      ldrge r7, [r4, #0x108]
008849b0  bf ff ff aa                                      bge #0x8848b4
008849b4  08 01 94 e5                                      ldr r0, [r4, #0x108]
008849b8  00 20 a0 e3                                      mov r2, #0
008849bc  04 21 84 e5                                      str r2, [r4, #0x104]
008849c0  00 70 87 e0                                      add r7, r7, r0
008849c4  02 00 57 e1                                      cmp r7, r2
008849c8  08 71 84 e5                                      str r7, [r4, #0x108]
008849cc  08 21 84 b5                                      strlt r2, [r4, #0x108]
008849d0  02 70 a0 b1                                      movlt r7, r2
008849d4  b6 ff ff ea                                      b #0x8848b4
008849d8  03 00 51 e3                                      cmp r1, #3
008849dc  e8 00 94 e5                                      ldr r0, [r4, #0xe8]
008849e0  0a 00 00 da                                      ble #0x884a10
008849e4  0c 30 96 e5                                      ldr r3, [r6, #0xc]
008849e8  03 00 50 e1                                      cmp r0, r3
008849ec  03 20 a0 a3                                      movge r2, #3
008849f0  03 00 00 aa                                      bge #0x884a04
008849f4  e7 ff ff ea                                      b #0x884998
008849f8  02 31 96 e7                                      ldr r3, [r6, r2, lsl #2]
008849fc  00 00 53 e1                                      cmp r3, r0
00884a00  e4 ff ff ca                                      bgt #0x884998
00884a04  01 20 82 e2                                      add r2, r2, #1
00884a08  01 00 52 e1                                      cmp r2, r1
00884a0c  f9 ff ff 1a                                      bne #0x8849f8
00884a10  00 30 a0 e3                                      mov r3, #0
00884a14  df ff ff ea                                      b #0x884998
00884a18  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00884a1c  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
00884a20  0c c0 a0 e3                                      mov ip, #0xc
00884a24  00 00 90 e5                                      ldr r0, [r0]
00884a28  9c 02 02 e0                                      mul r2, ip, r2
00884a2c  01 10 41 e2                                      sub r1, r1, #1
00884a30  02 20 90 e7                                      ldr r2, [r0, r2]
00884a34  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
00884a38  a9 ff ff ea                                      b #0x8848e4
00884a3c  14 51 84 e5                                      str r5, [r4, #0x114]
00884a40  04 51 84 e5                                      str r5, [r4, #0x104]
00884a44  08 51 84 e5                                      str r5, [r4, #0x108]
00884a48  0c 51 84 e5                                      str r5, [r4, #0x10c]
00884a4c  10 51 84 e5                                      str r5, [r4, #0x110]
00884a50  c1 ff ff ea                                      b #0x88495c
00884a54  00 00 51 e3                                      cmp r1, #0
00884a58  e8 00 94 e5                                      ldr r0, [r4, #0xe8]
00884a5c  eb ff ff da                                      ble #0x884a10
00884a60  00 30 96 e5                                      ldr r3, [r6]
00884a64  00 00 53 e1                                      cmp r3, r0
00884a68  00 20 a0 d3                                      movle r2, #0
00884a6c  03 00 00 da                                      ble #0x884a80
00884a70  c8 ff ff ea                                      b #0x884998
00884a74  02 31 96 e7                                      ldr r3, [r6, r2, lsl #2]
00884a78  00 00 53 e1                                      cmp r3, r0
00884a7c  c5 ff ff ca                                      bgt #0x884998
00884a80  01 20 82 e2                                      add r2, r2, #1
00884a84  01 00 52 e1                                      cmp r2, r1
00884a88  f9 ff ff 1a                                      bne #0x884a74
00884a8c  00 30 a0 e3                                      mov r3, #0
00884a90  c0 ff ff ea                                      b #0x884998
00884a94  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00884a98  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
00884a9c  e8 00 94 e5                                      ldr r0, [r4, #0xe8]
00884aa0  00 30 93 e5                                      ldr r3, [r3]
00884aa4  98 02 08 e0                                      mul r8, r8, r2
00884aa8  08 30 93 e7                                      ldr r3, [r3, r8]
00884aac  08 30 93 e5                                      ldr r3, [r3, #8]
00884ab0  b8 ff ff ea                                      b #0x884998


; EVIDENCE update_dying_segment_state: VA 0x00884ab4, size 272, SHA-256 0e13c18a9284ad915b121ee773a40d10d2bbf2bc43d902c49b28cb89eb28b25a
; ASM_SOURCE vox_VoxNativeSubDecoder-445e1a438638-001.asm
; FUNCTION 0x00884ab4, declared_size=272, range_size=272, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder23UpdateDyingSegmentStateEPNS_14TransitionRuleE
; demangled: vox::VoxNativeSubDecoder::UpdateDyingSegmentState(vox::TransitionRule*)
; decoder-mode: arm
00884ab4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00884ab8  41 20 a0 e3                                      mov r2, #0x41
00884abc  00 40 a0 e1                                      mov r4, r0
00884ac0  14 d0 4d e2                                      sub sp, sp, #0x14
00884ac4  01 50 a0 e1                                      mov r5, r1
00884ac8  dc 10 80 e2                                      add r1, r0, #0xdc
00884acc  98 00 80 e2                                      add r0, r0, #0x98
00884ad0  64 27 ea eb                                      bl #0x30e868
00884ad4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00884ad8  03 20 a0 e3                                      mov r2, #3
00884adc  9c 20 84 e5                                      str r2, [r4, #0x9c]
00884ae0  04 20 a0 e3                                      mov r2, #4
00884ae4  bc 20 84 e5                                      str r2, [r4, #0xbc]
00884ae8  00 30 93 e5                                      ldr r3, [r3]
00884aec  98 20 94 e5                                      ldr r2, [r4, #0x98]
00884af0  0c 10 a0 e3                                      mov r1, #0xc
00884af4  04 00 8d e2                                      add r0, sp, #4
00884af8  91 32 21 e0                                      mla r1, r1, r2, r3
00884afc  3e b2 ff eb                                      bl #0x8713fc
00884b00  08 31 94 e5                                      ldr r3, [r4, #0x108]
00884b04  c0 00 9d e9                                      ldmib sp, {r6, r7}
00884b08  00 00 53 e3                                      cmp r3, #0
00884b0c  01 31 a0 03                                      moveq r3, #0x40000000
00884b10  d0 30 84 05                                      streq r3, [r4, #0xd0]
00884b14  01 0c a0 03                                      moveq r0, #0x100
00884b18  c8 00 94 15                                      ldrne r0, [r4, #0xc8]
00884b1c  00 00 55 e3                                      cmp r5, #0
00884b20  04 00 00 0a                                      beq #0x884b38
00884b24  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00884b28  8d 27 ea eb                                      bl #0x30e964
00884b2c  18 10 95 e5                                      ldr r1, [r5, #0x18]
00884b30  8d 28 ea eb                                      bl #0x30ed6c
00884b34  64 26 ea eb                                      bl #0x30e4cc
00884b38  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
00884b3c  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00884b40  0c 10 a0 e3                                      mov r1, #0xc
00884b44  01 00 53 e3                                      cmp r3, #1
00884b48  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00884b4c  00 20 92 e5                                      ldr r2, [r2]
00884b50  07 70 66 00                                      rsbeq r7, r6, r7
00884b54  91 03 03 e0                                      mul r3, r1, r3
00884b58  47 71 a0 01                                      asreq r7, r7, #2
00884b5c  03 30 92 07                                      ldreq r3, [r2, r3]
00884b60  03 30 92 17                                      ldrne r3, [r2, r3]
00884b64  01 70 47 02                                      subeq r7, r7, #1
00884b68  07 21 93 07                                      ldreq r2, [r3, r7, lsl #2]
00884b6c  08 20 93 15                                      ldrne r2, [r3, #8]
00884b70  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
00884b74  01 30 63 e2                                      rsb r3, r3, #1
00884b78  02 30 83 e0                                      add r3, r3, r2
00884b7c  03 00 50 e1                                      cmp r0, r3
00884b80  c4 30 84 c5                                      strgt r3, [r4, #0xc4]
00884b84  c4 00 84 d5                                      strle r0, [r4, #0xc4]
00884b88  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
00884b8c  00 30 a0 d1                                      movle r3, r0
00884b90  c8 30 84 e5                                      str r3, [r4, #0xc8]
00884b94  00 00 51 e3                                      cmp r1, #0
00884b98  03 00 00 da                                      ble #0x884bac
00884b9c  d0 00 94 e5                                      ldr r0, [r4, #0xd0]
00884ba0  00 00 60 e2                                      rsb r0, r0, #0
00884ba4  be 25 ea eb                                      bl #0x30e2a4
00884ba8  cc 00 84 e5                                      str r0, [r4, #0xcc]
00884bac  00 00 56 e3                                      cmp r6, #0
00884bb0  01 00 00 0a                                      beq #0x884bbc
00884bb4  06 00 a0 e1                                      mov r0, r6
00884bb8  21 2e ea eb                                      bl #0x310444
00884bbc  14 d0 8d e2                                      add sp, sp, #0x14
00884bc0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}


; EVIDENCE update_current_segment_state: VA 0x00884bc4, size 832, SHA-256 5b7b91f96067725b758126874f2d598d518c415761508554cec8886f07211185
; ASM_SOURCE vox_VoxNativeSubDecoder-445e1a438638-001.asm
; FUNCTION 0x00884bc4, declared_size=832, range_size=832, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder25UpdateCurrentSegmentStateEPNS_14TransitionRuleEb
; demangled: vox::VoxNativeSubDecoder::UpdateCurrentSegmentState(vox::TransitionRule*, bool)
; decoder-mode: arm
00884bc4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00884bc8  78 60 90 e5                                      ldr r6, [r0, #0x78]
00884bcc  14 d0 4d e2                                      sub sp, sp, #0x14
00884bd0  00 40 a0 e1                                      mov r4, r0
00884bd4  01 00 76 e3                                      cmn r6, #1
00884bd8  01 50 a0 e1                                      mov r5, r1
00884bdc  02 70 a0 e1                                      mov r7, r2
00884be0  80 00 00 0a                                      beq #0x884de8
00884be4  7c 30 90 e5                                      ldr r3, [r0, #0x7c]
00884be8  01 00 53 e3                                      cmp r3, #1
00884bec  b3 00 00 0a                                      beq #0x884ec0
00884bf0  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00884bf4  0c 20 a0 e3                                      mov r2, #0xc
00884bf8  20 61 84 e5                                      str r6, [r4, #0x120]
00884bfc  00 30 90 e5                                      ldr r3, [r0]
00884c00  92 06 02 e0                                      mul r2, r2, r6
00884c04  80 e0 94 e5                                      ldr lr, [r4, #0x80]
00884c08  02 10 93 e7                                      ldr r1, [r3, r2]
00884c0c  68 c1 94 e5                                      ldr ip, [r4, #0x168]
00884c10  01 e0 5e e2                                      subs lr, lr, #1
00884c14  01 e0 a0 13                                      movne lr, #1
00884c18  0e 11 91 e7                                      ldr r1, [r1, lr, lsl #2]
00884c1c  88 30 94 e5                                      ldr r3, [r4, #0x88]
00884c20  84 e0 94 e5                                      ldr lr, [r4, #0x84]
00884c24  30 11 84 e5                                      str r1, [r4, #0x130]
00884c28  00 00 90 e5                                      ldr r0, [r0]
00884c2c  00 00 5c e3                                      cmp ip, #0
00884c30  00 10 6c b2                                      rsblt r1, ip, #0
00884c34  02 20 90 e7                                      ldr r2, [r0, r2]
00884c38  04 00 a0 e1                                      mov r0, r4
00884c3c  08 20 92 e5                                      ldr r2, [r2, #8]
00884c40  3c 31 84 e5                                      str r3, [r4, #0x13c]
00884c44  38 31 84 e5                                      str r3, [r4, #0x138]
00884c48  40 e1 84 e5                                      str lr, [r4, #0x140]
00884c4c  00 30 94 e5                                      ldr r3, [r4]
00884c50  34 21 84 e5                                      str r2, [r4, #0x134]
00884c54  2c 11 84 e5                                      str r1, [r4, #0x12c]
00884c58  0f e0 a0 e1                                      mov lr, pc
00884c5c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00884c60  03 30 a0 e3                                      mov r3, #3
00884c64  28 01 84 e5                                      str r0, [r4, #0x128]
00884c68  44 31 84 e5                                      str r3, [r4, #0x144]
00884c6c  f8 30 d4 e1                                      ldrsh r3, [r4, #8]
00884c70  11 00 53 e3                                      cmp r3, #0x11
00884c74  87 00 00 0a                                      beq #0x884e98
00884c78  00 00 55 e3                                      cmp r5, #0
00884c7c  61 00 00 0a                                      beq #0x884e08
00884c80  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00884c84  36 27 ea eb                                      bl #0x30e964
00884c88  10 10 95 e5                                      ldr r1, [r5, #0x10]
00884c8c  00 80 a0 e1                                      mov r8, r0
00884c90  35 28 ea eb                                      bl #0x30ed6c
00884c94  0c 26 ea eb                                      bl #0x30e4cc
00884c98  00 00 50 e3                                      cmp r0, #0
00884c9c  00 70 a0 e1                                      mov r7, r0
00884ca0  4c 01 84 e5                                      str r0, [r4, #0x14c]
00884ca4  5d 00 00 da                                      ble #0x884e20
00884ca8  04 30 95 e5                                      ldr r3, [r5, #4]
00884cac  00 00 53 e3                                      cmp r3, #0
00884cb0  11 00 00 0a                                      beq #0x884cfc
00884cb4  06 00 53 e3                                      cmp r3, #6
00884cb8  5f 00 00 0a                                      beq #0x884e3c
00884cbc  48 01 94 e5                                      ldr r0, [r4, #0x148]
00884cc0  00 60 a0 e3                                      mov r6, #0
00884cc4  00 00 50 e3                                      cmp r0, #0
00884cc8  22 00 00 ba                                      blt #0x884d58
00884ccc  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
00884cd0  01 00 53 e3                                      cmp r3, #1
00884cd4  29 00 00 0a                                      beq #0x884d80
00884cd8  4c 11 94 e5                                      ldr r1, [r4, #0x14c]
00884cdc  01 01 a0 e3                                      mov r0, #0x40000000
00884ce0  50 11 84 e5                                      str r1, [r4, #0x150]
00884ce4  6e 25 ea eb                                      bl #0x30e2a4
00884ce8  00 30 a0 e3                                      mov r3, #0
00884cec  58 31 84 e5                                      str r3, [r4, #0x158]
00884cf0  54 01 84 e5                                      str r0, [r4, #0x154]
00884cf4  14 d0 8d e2                                      add sp, sp, #0x14
00884cf8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00884cfc  10 10 95 e5                                      ldr r1, [r5, #0x10]
00884d00  14 00 95 e5                                      ldr r0, [r5, #0x14]
00884d04  a8 25 ea eb                                      bl #0x30e3ac
00884d08  00 10 a0 e1                                      mov r1, r0
00884d0c  08 00 a0 e1                                      mov r0, r8
00884d10  15 28 ea eb                                      bl #0x30ed6c
00884d14  ec 25 ea eb                                      bl #0x30e4cc
00884d18  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
00884d1c  48 01 84 e5                                      str r0, [r4, #0x148]
00884d20  00 00 53 e3                                      cmp r3, #0
00884d24  2c 61 94 15                                      ldrne r6, [r4, #0x12c]
00884d28  e5 ff ff 1a                                      bne #0x884cc4
00884d2c  80 20 94 e5                                      ldr r2, [r4, #0x80]
00884d30  00 00 52 e3                                      cmp r2, #0
00884d34  2c 30 94 05                                      ldreq r3, [r4, #0x2c]
00884d38  0c 20 a0 03                                      moveq r2, #0xc
00884d3c  92 06 06 00                                      muleq r6, r2, r6
00884d40  00 30 93 05                                      ldreq r3, [r3]
00884d44  03 60 a0 11                                      movne r6, r3
00884d48  06 30 93 07                                      ldreq r3, [r3, r6]
00884d4c  04 60 93 05                                      ldreq r6, [r3, #4]
00884d50  00 00 50 e3                                      cmp r0, #0
00884d54  dc ff ff aa                                      bge #0x884ccc
00884d58  4c 21 94 e5                                      ldr r2, [r4, #0x14c]
00884d5c  00 30 a0 e3                                      mov r3, #0
00884d60  48 31 84 e5                                      str r3, [r4, #0x148]
00884d64  02 00 80 e0                                      add r0, r0, r2
00884d68  03 00 50 e1                                      cmp r0, r3
00884d6c  4c 01 84 e5                                      str r0, [r4, #0x14c]
00884d70  4c 31 84 b5                                      strlt r3, [r4, #0x14c]
00884d74  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
00884d78  01 00 53 e3                                      cmp r3, #1
00884d7c  d5 ff ff 1a                                      bne #0x884cd8
00884d80  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00884d84  20 11 94 e5                                      ldr r1, [r4, #0x120]
00884d88  0c 70 a0 e3                                      mov r7, #0xc
00884d8c  00 30 93 e5                                      ldr r3, [r3]
00884d90  04 00 8d e2                                      add r0, sp, #4
00884d94  97 31 21 e0                                      mla r1, r7, r1, r3
00884d98  97 b1 ff eb                                      bl #0x8713fc
00884d9c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00884da0  05 00 9d e9                                      ldmib sp, {r0, r2}
00884da4  01 00 53 e3                                      cmp r3, #1
00884da8  4b 00 00 0a                                      beq #0x884edc
00884dac  20 21 94 e5                                      ldr r2, [r4, #0x120]
00884db0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00884db4  97 02 07 e0                                      mul r7, r7, r2
00884db8  00 30 93 e5                                      ldr r3, [r3]
00884dbc  07 30 93 e7                                      ldr r3, [r3, r7]
00884dc0  08 20 93 e5                                      ldr r2, [r3, #8]
00884dc4  4c 31 94 e5                                      ldr r3, [r4, #0x14c]
00884dc8  01 60 66 e2                                      rsb r6, r6, #1
00884dcc  02 60 86 e0                                      add r6, r6, r2
00884dd0  03 00 56 e1                                      cmp r6, r3
00884dd4  4c 61 84 b5                                      strlt r6, [r4, #0x14c]
00884dd8  00 00 50 e3                                      cmp r0, #0
00884ddc  bd ff ff 0a                                      beq #0x884cd8
00884de0  97 2d ea eb                                      bl #0x310444
00884de4  bb ff ff ea                                      b #0x884cd8
00884de8  01 30 a0 e3                                      mov r3, #1
00884dec  04 20 a0 e3                                      mov r2, #4
00884df0  00 00 55 e3                                      cmp r5, #0
00884df4  3c 31 80 e5                                      str r3, [r0, #0x13c]
00884df8  44 21 80 e5                                      str r2, [r0, #0x144]
00884dfc  38 31 80 e5                                      str r3, [r0, #0x138]
00884e00  64 61 80 e5                                      str r6, [r0, #0x164]
00884e04  9d ff ff 1a                                      bne #0x884c80
00884e08  58 51 84 e5                                      str r5, [r4, #0x158]
00884e0c  48 51 84 e5                                      str r5, [r4, #0x148]
00884e10  4c 51 84 e5                                      str r5, [r4, #0x14c]
00884e14  50 51 84 e5                                      str r5, [r4, #0x150]
00884e18  54 51 84 e5                                      str r5, [r4, #0x154]
00884e1c  b4 ff ff ea                                      b #0x884cf4
00884e20  00 30 a0 e3                                      mov r3, #0
00884e24  58 31 84 e5                                      str r3, [r4, #0x158]
00884e28  48 31 84 e5                                      str r3, [r4, #0x148]
00884e2c  4c 31 84 e5                                      str r3, [r4, #0x14c]
00884e30  50 31 84 e5                                      str r3, [r4, #0x150]
00884e34  54 31 84 e5                                      str r3, [r4, #0x154]
00884e38  ad ff ff ea                                      b #0x884cf4
00884e3c  7c a0 94 e5                                      ldr sl, [r4, #0x7c]
00884e40  00 00 5a e3                                      cmp sl, #0
00884e44  9c ff ff 1a                                      bne #0x884cbc
00884e48  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00884e4c  0c 20 a0 e3                                      mov r2, #0xc
00884e50  92 06 06 e0                                      mul r6, r2, r6
00884e54  00 30 93 e5                                      ldr r3, [r3]
00884e58  14 10 95 e5                                      ldr r1, [r5, #0x14]
00884e5c  08 00 a0 e1                                      mov r0, r8
00884e60  06 30 93 e7                                      ldr r3, [r3, r6]
00884e64  04 60 93 e5                                      ldr r6, [r3, #4]
00884e68  bf 27 ea eb                                      bl #0x30ed6c
00884e6c  96 25 ea eb                                      bl #0x30e4cc
00884e70  80 30 94 e5                                      ldr r3, [r4, #0x80]
00884e74  01 00 53 e3                                      cmp r3, #1
00884e78  68 31 94 e5                                      ldr r3, [r4, #0x168]
00884e7c  06 00 80 00                                      addeq r0, r0, r6
00884e80  00 00 67 00                                      rsbeq r0, r7, r0
00884e84  00 00 67 10                                      rsbne r0, r7, r0
00884e88  03 00 80 e0                                      add r0, r0, r3
00884e8c  0a 60 a0 01                                      moveq r6, sl
00884e90  48 01 84 e5                                      str r0, [r4, #0x148]
00884e94  8a ff ff ea                                      b #0x884cc4
00884e98  00 00 57 e3                                      cmp r7, #0
00884e9c  75 ff ff 0a                                      beq #0x884c78
00884ea0  00 30 94 e5                                      ldr r3, [r4]
00884ea4  04 00 a0 e1                                      mov r0, r4
00884ea8  0f e0 a0 e1                                      mov lr, pc
00884eac  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00884eb0  00 30 a0 e3                                      mov r3, #0
00884eb4  5c 01 84 e5                                      str r0, [r4, #0x15c]
00884eb8  60 31 c4 e5                                      strb r3, [r4, #0x160]
00884ebc  6d ff ff ea                                      b #0x884c78
00884ec0  20 61 80 e5                                      str r6, [r0, #0x120]
00884ec4  00 30 90 e5                                      ldr r3, [r0]
00884ec8  2c 11 90 e5                                      ldr r1, [r0, #0x12c]
00884ecc  0f e0 a0 e1                                      mov lr, pc
00884ed0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00884ed4  28 01 84 e5                                      str r0, [r4, #0x128]
00884ed8  63 ff ff ea                                      b #0x884c6c
00884edc  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00884ee0  20 11 94 e5                                      ldr r1, [r4, #0x120]
00884ee4  02 20 60 e0                                      rsb r2, r0, r2
00884ee8  00 30 93 e5                                      ldr r3, [r3]
00884eec  97 01 07 e0                                      mul r7, r7, r1
00884ef0  42 21 a0 e1                                      asr r2, r2, #2
00884ef4  07 30 93 e7                                      ldr r3, [r3, r7]
00884ef8  01 20 42 e2                                      sub r2, r2, #1
00884efc  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
00884f00  af ff ff ea                                      b #0x884dc4


; EVIDENCE native_state_set: VA 0x00884f3c, size 304, SHA-256 b682291630d8f133a0f0447f57ae20556eada6ee9d056551dd58c4062c2ddf42
; ASM_SOURCE vox_VoxNativeSubDecoder-445e1a438638-001.asm
; FUNCTION 0x00884f3c, declared_size=304, range_size=304, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder8SetStateEPNS_21NativeSubDecoderStateE
; demangled: vox::VoxNativeSubDecoder::SetState(vox::NativeSubDecoderState*)
; decoder-mode: arm
00884f3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00884f40  00 40 a0 e1                                      mov r4, r0
00884f44  01 50 a0 e1                                      mov r5, r1
00884f48  30 00 90 e5                                      ldr r0, [r0, #0x30]
00884f4c  04 10 91 e5                                      ldr r1, [r1, #4]
00884f50  67 f5 ff eb                                      bl #0x8824f4
00884f54  08 30 95 e5                                      ldr r3, [r5, #8]
00884f58  41 60 a0 e3                                      mov r6, #0x41
00884f5c  6c 10 85 e2                                      add r1, r5, #0x6c
00884f60  34 30 84 e5                                      str r3, [r4, #0x34]
00884f64  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00884f68  06 20 a0 e1                                      mov r2, r6
00884f6c  98 00 84 e2                                      add r0, r4, #0x98
00884f70  38 30 84 e5                                      str r3, [r4, #0x38]
00884f74  10 30 95 e5                                      ldr r3, [r5, #0x10]
00884f78  3c 30 84 e5                                      str r3, [r4, #0x3c]
00884f7c  14 30 95 e5                                      ldr r3, [r5, #0x14]
00884f80  40 30 84 e5                                      str r3, [r4, #0x40]
00884f84  18 30 95 e5                                      ldr r3, [r5, #0x18]
00884f88  44 30 84 e5                                      str r3, [r4, #0x44]
00884f8c  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00884f90  48 30 84 e5                                      str r3, [r4, #0x48]
00884f94  20 30 d5 e5                                      ldrb r3, [r5, #0x20]
00884f98  4c 30 c4 e5                                      strb r3, [r4, #0x4c]
00884f9c  24 30 95 e5                                      ldr r3, [r5, #0x24]
00884fa0  50 30 84 e5                                      str r3, [r4, #0x50]
00884fa4  28 30 95 e5                                      ldr r3, [r5, #0x28]
00884fa8  54 30 84 e5                                      str r3, [r4, #0x54]
00884fac  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
00884fb0  58 30 84 e5                                      str r3, [r4, #0x58]
00884fb4  30 30 95 e5                                      ldr r3, [r5, #0x30]
00884fb8  5c 30 84 e5                                      str r3, [r4, #0x5c]
00884fbc  34 30 95 e5                                      ldr r3, [r5, #0x34]
00884fc0  60 30 84 e5                                      str r3, [r4, #0x60]
00884fc4  38 30 95 e5                                      ldr r3, [r5, #0x38]
00884fc8  64 30 84 e5                                      str r3, [r4, #0x64]
00884fcc  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
00884fd0  68 30 84 e5                                      str r3, [r4, #0x68]
00884fd4  40 30 95 e5                                      ldr r3, [r5, #0x40]
00884fd8  6c 30 84 e5                                      str r3, [r4, #0x6c]
00884fdc  44 30 95 e5                                      ldr r3, [r5, #0x44]
00884fe0  70 30 84 e5                                      str r3, [r4, #0x70]
00884fe4  48 30 95 e5                                      ldr r3, [r5, #0x48]
00884fe8  74 30 84 e5                                      str r3, [r4, #0x74]
00884fec  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00884ff0  78 30 84 e5                                      str r3, [r4, #0x78]
00884ff4  50 30 95 e5                                      ldr r3, [r5, #0x50]
00884ff8  7c 30 84 e5                                      str r3, [r4, #0x7c]
00884ffc  54 30 95 e5                                      ldr r3, [r5, #0x54]
00885000  80 30 84 e5                                      str r3, [r4, #0x80]
00885004  58 30 95 e5                                      ldr r3, [r5, #0x58]
00885008  84 30 84 e5                                      str r3, [r4, #0x84]
0088500c  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
00885010  88 30 84 e5                                      str r3, [r4, #0x88]
00885014  60 30 95 e5                                      ldr r3, [r5, #0x60]
00885018  8c 30 84 e5                                      str r3, [r4, #0x8c]
0088501c  64 30 95 e5                                      ldr r3, [r5, #0x64]
00885020  90 30 84 e5                                      str r3, [r4, #0x90]
00885024  68 30 95 e5                                      ldr r3, [r5, #0x68]
00885028  94 30 84 e5                                      str r3, [r4, #0x94]
0088502c  0d 26 ea eb                                      bl #0x30e868
00885030  b0 10 85 e2                                      add r1, r5, #0xb0
00885034  06 20 a0 e1                                      mov r2, r6
00885038  dc 00 84 e2                                      add r0, r4, #0xdc
0088503c  09 26 ea eb                                      bl #0x30e868
00885040  06 20 a0 e1                                      mov r2, r6
00885044  12 0e 84 e2                                      add r0, r4, #0x120
00885048  f4 10 85 e2                                      add r1, r5, #0xf4
0088504c  05 26 ea eb                                      bl #0x30e868
00885050  38 31 95 e5                                      ldr r3, [r5, #0x138]
00885054  64 31 84 e5                                      str r3, [r4, #0x164]
00885058  3c 31 95 e5                                      ldr r3, [r5, #0x13c]
0088505c  68 31 84 e5                                      str r3, [r4, #0x168]
00885060  40 31 d5 e5                                      ldrb r3, [r5, #0x140]
00885064  6c 31 c4 e5                                      strb r3, [r4, #0x16c]
00885068  70 80 bd e8                                      pop {r4, r5, r6, pc}


; EVIDENCE native_state_get: VA 0x0088506c, size 304, SHA-256 89344cafdf10dcd2cd6f391c202920f387ffe5d2c9d0eb72e5b4ea01fc7cdbc6
; ASM_SOURCE vox_VoxNativeSubDecoder-445e1a438638-001.asm
; FUNCTION 0x0088506c, declared_size=304, range_size=304, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder8GetStateEPNS_21NativeSubDecoderStateE
; demangled: vox::VoxNativeSubDecoder::GetState(vox::NativeSubDecoderState*)
; decoder-mode: arm
0088506c  70 40 2d e9                                      push {r4, r5, r6, lr}
00885070  00 50 a0 e1                                      mov r5, r0
00885074  01 40 a0 e1                                      mov r4, r1
00885078  04 00 91 e5                                      ldr r0, [r1, #4]
0088507c  30 10 95 e5                                      ldr r1, [r5, #0x30]
00885080  1b f5 ff eb                                      bl #0x8824f4
00885084  34 30 95 e5                                      ldr r3, [r5, #0x34]
00885088  41 60 a0 e3                                      mov r6, #0x41
0088508c  98 10 85 e2                                      add r1, r5, #0x98
00885090  08 30 84 e5                                      str r3, [r4, #8]
00885094  38 30 95 e5                                      ldr r3, [r5, #0x38]
00885098  06 20 a0 e1                                      mov r2, r6
0088509c  6c 00 84 e2                                      add r0, r4, #0x6c
008850a0  0c 30 84 e5                                      str r3, [r4, #0xc]
008850a4  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
008850a8  10 30 84 e5                                      str r3, [r4, #0x10]
008850ac  40 30 95 e5                                      ldr r3, [r5, #0x40]
008850b0  14 30 84 e5                                      str r3, [r4, #0x14]
008850b4  44 30 95 e5                                      ldr r3, [r5, #0x44]
008850b8  18 30 84 e5                                      str r3, [r4, #0x18]
008850bc  48 30 95 e5                                      ldr r3, [r5, #0x48]
008850c0  1c 30 84 e5                                      str r3, [r4, #0x1c]
008850c4  4c 30 d5 e5                                      ldrb r3, [r5, #0x4c]
008850c8  20 30 c4 e5                                      strb r3, [r4, #0x20]
008850cc  50 30 95 e5                                      ldr r3, [r5, #0x50]
008850d0  24 30 84 e5                                      str r3, [r4, #0x24]
008850d4  54 30 95 e5                                      ldr r3, [r5, #0x54]
008850d8  28 30 84 e5                                      str r3, [r4, #0x28]
008850dc  58 30 95 e5                                      ldr r3, [r5, #0x58]
008850e0  2c 30 84 e5                                      str r3, [r4, #0x2c]
008850e4  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
008850e8  30 30 84 e5                                      str r3, [r4, #0x30]
008850ec  60 30 95 e5                                      ldr r3, [r5, #0x60]
008850f0  34 30 84 e5                                      str r3, [r4, #0x34]
008850f4  64 30 95 e5                                      ldr r3, [r5, #0x64]
008850f8  38 30 84 e5                                      str r3, [r4, #0x38]
008850fc  68 30 95 e5                                      ldr r3, [r5, #0x68]
00885100  3c 30 84 e5                                      str r3, [r4, #0x3c]
00885104  6c 30 95 e5                                      ldr r3, [r5, #0x6c]
00885108  40 30 84 e5                                      str r3, [r4, #0x40]
0088510c  70 30 95 e5                                      ldr r3, [r5, #0x70]
00885110  44 30 84 e5                                      str r3, [r4, #0x44]
00885114  74 30 95 e5                                      ldr r3, [r5, #0x74]
00885118  48 30 84 e5                                      str r3, [r4, #0x48]
0088511c  78 30 95 e5                                      ldr r3, [r5, #0x78]
00885120  4c 30 84 e5                                      str r3, [r4, #0x4c]
00885124  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
00885128  50 30 84 e5                                      str r3, [r4, #0x50]
0088512c  80 30 95 e5                                      ldr r3, [r5, #0x80]
00885130  54 30 84 e5                                      str r3, [r4, #0x54]
00885134  84 30 95 e5                                      ldr r3, [r5, #0x84]
00885138  58 30 84 e5                                      str r3, [r4, #0x58]
0088513c  88 30 95 e5                                      ldr r3, [r5, #0x88]
00885140  5c 30 84 e5                                      str r3, [r4, #0x5c]
00885144  8c 30 95 e5                                      ldr r3, [r5, #0x8c]
00885148  60 30 84 e5                                      str r3, [r4, #0x60]
0088514c  90 30 95 e5                                      ldr r3, [r5, #0x90]
00885150  64 30 84 e5                                      str r3, [r4, #0x64]
00885154  94 30 95 e5                                      ldr r3, [r5, #0x94]
00885158  68 30 84 e5                                      str r3, [r4, #0x68]
0088515c  c1 25 ea eb                                      bl #0x30e868
00885160  dc 10 85 e2                                      add r1, r5, #0xdc
00885164  06 20 a0 e1                                      mov r2, r6
00885168  b0 00 84 e2                                      add r0, r4, #0xb0
0088516c  bd 25 ea eb                                      bl #0x30e868
00885170  06 20 a0 e1                                      mov r2, r6
00885174  f4 00 84 e2                                      add r0, r4, #0xf4
00885178  12 1e 85 e2                                      add r1, r5, #0x120
0088517c  b9 25 ea eb                                      bl #0x30e868
00885180  64 31 95 e5                                      ldr r3, [r5, #0x164]
00885184  38 31 84 e5                                      str r3, [r4, #0x138]
00885188  68 31 95 e5                                      ldr r3, [r5, #0x168]
0088518c  3c 31 84 e5                                      str r3, [r4, #0x13c]
00885190  6c 31 d5 e5                                      ldrb r3, [r5, #0x16c]
00885194  40 31 c4 e5                                      strb r3, [r4, #0x140]
00885198  70 80 bd e8                                      pop {r4, r5, r6, pc}


; EVIDENCE apply_transition_rule: VA 0x008855e8, size 344, SHA-256 0fffcb23c9d24fc7f30cb820337c48a605dbb4937ff22af7f6079593a1aa7914
; ASM_SOURCE vox_VoxNativeSubDecoder-445e1a438638-001.asm
; FUNCTION 0x008855e8, declared_size=344, range_size=344, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE
; demangled: vox::VoxNativeSubDecoder::ApplyTransitionRule(vox::TransitionRule*)
; decoder-mode: arm
008855e8  70 40 2d e9                                      push {r4, r5, r6, lr}
008855ec  01 50 a0 e1                                      mov r5, r1
008855f0  00 40 a0 e1                                      mov r4, r0
008855f4  6f fb ff eb                                      bl #0x8843b8
008855f8  00 30 95 e5                                      ldr r3, [r5]
008855fc  01 00 53 e3                                      cmp r3, #1
00885600  14 00 00 0a                                      beq #0x885658
00885604  4c 30 d4 e5                                      ldrb r3, [r4, #0x4c]
00885608  00 00 53 e3                                      cmp r3, #0
0088560c  3c 00 00 1a                                      bne #0x885704
00885610  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885614  48 10 94 e5                                      ldr r1, [r4, #0x48]
00885618  00 20 a0 e3                                      mov r2, #0
0088561c  00 30 e0 e3                                      mvn r3, #0
00885620  98 f3 ff eb                                      bl #0x882488
00885624  00 60 a0 e1                                      mov r6, r0
00885628  00 00 56 e3                                      cmp r6, #0
0088562c  31 00 00 0a                                      beq #0x8856f8
00885630  78 c0 84 e2                                      add ip, r4, #0x78
00885634  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
00885638  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0088563c  00 30 96 e5                                      ldr r3, [r6]
00885640  00 30 8c e5                                      str r3, [ip]
00885644  00 30 95 e5                                      ldr r3, [r5]
00885648  7c 30 84 e5                                      str r3, [r4, #0x7c]
0088564c  08 30 95 e5                                      ldr r3, [r5, #8]
00885650  80 30 84 e5                                      str r3, [r4, #0x80]
00885654  70 80 bd e8                                      pop {r4, r5, r6, pc}
00885658  02 00 50 e3                                      cmp r0, #2
0088565c  2e 00 00 0a                                      beq #0x88571c
00885660  44 30 94 e5                                      ldr r3, [r4, #0x44]
00885664  40 10 94 e5                                      ldr r1, [r4, #0x40]
00885668  01 00 53 e1                                      cmp r3, r1
0088566c  2f 00 00 0a                                      beq #0x885730
00885670  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885674  48 20 94 e5                                      ldr r2, [r4, #0x48]
00885678  63 f5 ff eb                                      bl #0x882c0c
0088567c  04 00 a0 e1                                      mov r0, r4
00885680  ac ff ff eb                                      bl #0x885538
00885684  01 20 a0 e3                                      mov r2, #1
00885688  00 30 e0 e3                                      mvn r3, #0
0088568c  48 10 94 e5                                      ldr r1, [r4, #0x48]
00885690  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885694  7b f3 ff eb                                      bl #0x882488
00885698  00 60 a0 e1                                      mov r6, r0
0088569c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
008856a0  af 24 ea eb                                      bl #0x30e964
008856a4  18 10 95 e5                                      ldr r1, [r5, #0x18]
008856a8  af 25 ea eb                                      bl #0x30ed6c
008856ac  86 23 ea eb                                      bl #0x30e4cc
008856b0  00 00 50 e3                                      cmp r0, #0
008856b4  db ff ff ca                                      bgt #0x885628
008856b8  00 31 94 e5                                      ldr r3, [r4, #0x100]
008856bc  02 00 53 e3                                      cmp r3, #2
008856c0  94 30 94 c5                                      ldrgt r3, [r4, #0x94]
008856c4  00 20 a0 c3                                      movgt r2, #0
008856c8  00 21 84 c5                                      strgt r2, [r4, #0x100]
008856cc  01 30 43 c2                                      subgt r3, r3, #1
008856d0  94 30 84 c5                                      strgt r3, [r4, #0x94]
008856d4  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
008856d8  02 00 53 e3                                      cmp r3, #2
008856dc  d1 ff ff da                                      ble #0x885628
008856e0  94 30 94 e5                                      ldr r3, [r4, #0x94]
008856e4  00 20 a0 e3                                      mov r2, #0
008856e8  bc 20 84 e5                                      str r2, [r4, #0xbc]
008856ec  01 30 43 e2                                      sub r3, r3, #1
008856f0  94 30 84 e5                                      str r3, [r4, #0x94]
008856f4  cb ff ff ea                                      b #0x885628
008856f8  00 30 e0 e3                                      mvn r3, #0
008856fc  78 30 84 e5                                      str r3, [r4, #0x78]
00885700  70 80 bd e8                                      pop {r4, r5, r6, pc}
00885704  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885708  48 10 94 e5                                      ldr r1, [r4, #0x48]
0088570c  70 f3 ff eb                                      bl #0x8824d4
00885710  00 30 a0 e3                                      mov r3, #0
00885714  4c 30 c4 e5                                      strb r3, [r4, #0x4c]
00885718  bc ff ff ea                                      b #0x885610
0088571c  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885720  44 10 94 e5                                      ldr r1, [r4, #0x44]
00885724  48 20 94 e5                                      ldr r2, [r4, #0x48]
00885728  37 f5 ff eb                                      bl #0x882c0c
0088572c  d4 ff ff ea                                      b #0x885684
00885730  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885734  6b f3 ff eb                                      bl #0x8824e8
00885738  40 10 94 e5                                      ldr r1, [r4, #0x40]
0088573c  cb ff ff ea                                      b #0x885670


; EVIDENCE update_segment_states: VA 0x00885740, size 580, SHA-256 c8ce27e9b649e0a64ae6b939422bc3b767614f9327b7325886d0f8b78cc0c804
; ASM_SOURCE vox_VoxNativeSubDecoder-445e1a438638-001.asm
; FUNCTION 0x00885740, declared_size=580, range_size=580, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv
; demangled: vox::VoxNativeSubDecoder::UpdateSegmentsStates()
; decoder-mode: arm
00885740  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00885744  20 10 90 e5                                      ldr r1, [r0, #0x20]
00885748  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
0088574c  38 20 90 e5                                      ldr r2, [r0, #0x38]
00885750  04 10 91 e5                                      ldr r1, [r1, #4]
00885754  00 40 a0 e1                                      mov r4, r0
00885758  02 00 53 e1                                      cmp r3, r2
0088575c  03 51 91 e7                                      ldr r5, [r1, r3, lsl #2]
00885760  0f 00 00 0a                                      beq #0x8857a4
00885764  00 00 52 e3                                      cmp r2, #0
00885768  0d 00 00 ba                                      blt #0x8857a4
0088576c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00885770  90 20 90 e5                                      ldr r2, [r0, #0x90]
00885774  24 60 a0 e3                                      mov r6, #0x24
00885778  04 30 93 e5                                      ldr r3, [r3, #4]
0088577c  78 70 80 e2                                      add r7, r0, #0x78
00885780  96 32 26 e0                                      mla r6, r6, r2, r3
00885784  06 10 a0 e1                                      mov r1, r6
00885788  96 ff ff eb                                      bl #0x8855e8
0088578c  78 30 94 e5                                      ldr r3, [r4, #0x78]
00885790  00 00 53 e3                                      cmp r3, #0
00885794  14 00 00 aa                                      bge #0x8857ec
00885798  01 00 73 e3                                      cmn r3, #1
0088579c  30 00 00 1a                                      bne #0x885864
008857a0  50 00 00 ea                                      b #0x8858e8
008857a4  30 00 94 e5                                      ldr r0, [r4, #0x30]
008857a8  05 10 a0 e1                                      mov r1, r5
008857ac  00 20 a0 e3                                      mov r2, #0
008857b0  00 30 e0 e3                                      mvn r3, #0
008857b4  33 f3 ff eb                                      bl #0x882488
008857b8  00 c0 50 e2                                      subs ip, r0, #0
008857bc  45 00 00 0a                                      beq #0x8858d8
008857c0  78 70 84 e2                                      add r7, r4, #0x78
008857c4  07 60 a0 e1                                      mov r6, r7
008857c8  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
008857cc  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
008857d0  00 20 9c e5                                      ldr r2, [ip]
008857d4  06 30 a0 e1                                      mov r3, r6
008857d8  00 60 a0 e3                                      mov r6, #0
008857dc  00 20 83 e5                                      str r2, [r3]
008857e0  78 30 94 e5                                      ldr r3, [r4, #0x78]
008857e4  00 00 53 e3                                      cmp r3, #0
008857e8  ea ff ff ba                                      blt #0x885798
008857ec  04 00 a0 e1                                      mov r0, r4
008857f0  06 10 a0 e1                                      mov r1, r6
008857f4  1d fb ff eb                                      bl #0x884470
008857f8  00 80 50 e2                                      subs r8, r0, #0
008857fc  94 30 94 05                                      ldreq r3, [r4, #0x94]
00885800  04 00 00 0a                                      beq #0x885818
00885804  94 30 94 e5                                      ldr r3, [r4, #0x94]
00885808  02 00 53 e3                                      cmp r3, #2
0088580c  2a 00 00 ca                                      bgt #0x8858bc
00885810  01 30 83 e2                                      add r3, r3, #1
00885814  94 30 84 e5                                      str r3, [r4, #0x94]
00885818  02 00 53 e3                                      cmp r3, #2
0088581c  26 00 00 ca                                      bgt #0x8858bc
00885820  02 00 00 1a                                      bne #0x885830
00885824  04 00 a0 e1                                      mov r0, r4
00885828  06 10 a0 e1                                      mov r1, r6
0088582c  ed fb ff eb                                      bl #0x8847e8
00885830  06 10 a0 e1                                      mov r1, r6
00885834  08 20 a0 e1                                      mov r2, r8
00885838  04 00 a0 e1                                      mov r0, r4
0088583c  e0 fc ff eb                                      bl #0x884bc4
00885840  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
00885844  00 00 53 e3                                      cmp r3, #0
00885848  01 30 a0 13                                      movne r3, #1
0088584c  60 31 c4 15                                      strbne r3, [r4, #0x160]
00885850  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
00885854  01 00 53 e3                                      cmp r3, #1
00885858  27 00 00 0a                                      beq #0x8858fc
0088585c  00 30 e0 e3                                      mvn r3, #0
00885860  64 31 84 e5                                      str r3, [r4, #0x164]
00885864  38 00 94 e5                                      ldr r0, [r4, #0x38]
00885868  44 20 94 e5                                      ldr r2, [r4, #0x44]
0088586c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00885870  48 30 94 e5                                      ldr r3, [r4, #0x48]
00885874  34 00 84 e5                                      str r0, [r4, #0x34]
00885878  38 10 84 e5                                      str r1, [r4, #0x38]
0088587c  40 20 84 e5                                      str r2, [r4, #0x40]
00885880  44 30 84 e5                                      str r3, [r4, #0x44]
00885884  50 50 84 e2                                      add r5, r4, #0x50
00885888  64 c0 84 e2                                      add ip, r4, #0x64
0088588c  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00885890  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
00885894  00 30 9c e5                                      ldr r3, [ip]
00885898  64 60 84 e2                                      add r6, r4, #0x64
0088589c  00 30 85 e5                                      str r3, [r5]
008858a0  0f 00 b7 e8                                      ldm r7!, {r0, r1, r2, r3}
008858a4  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
008858a8  00 30 97 e5                                      ldr r3, [r7]
008858ac  00 30 8c e5                                      str r3, [ip]
008858b0  90 30 94 e5                                      ldr r3, [r4, #0x90]
008858b4  8c 30 84 e5                                      str r3, [r4, #0x8c]
008858b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008858bc  04 00 a0 e1                                      mov r0, r4
008858c0  06 10 a0 e1                                      mov r1, r6
008858c4  7a fc ff eb                                      bl #0x884ab4
008858c8  04 00 a0 e1                                      mov r0, r4
008858cc  06 10 a0 e1                                      mov r1, r6
008858d0  c4 fb ff eb                                      bl #0x8847e8
008858d4  d5 ff ff ea                                      b #0x885830
008858d8  04 70 a0 e1                                      mov r7, r4
008858dc  00 30 e0 e3                                      mvn r3, #0
008858e0  78 30 a7 e5                                      str r3, [r7, #0x78]!
008858e4  0c 60 a0 e1                                      mov r6, ip
008858e8  06 10 a0 e1                                      mov r1, r6
008858ec  04 00 a0 e1                                      mov r0, r4
008858f0  00 20 a0 e3                                      mov r2, #0
008858f4  b2 fc ff eb                                      bl #0x884bc4
008858f8  d9 ff ff ea                                      b #0x885864
008858fc  05 10 a0 e1                                      mov r1, r5
00885900  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885904  ef f2 ff eb                                      bl #0x8824c8
00885908  00 00 50 e3                                      cmp r0, #0
0088590c  d2 ff ff 0a                                      beq #0x88585c
00885910  08 30 90 e5                                      ldr r3, [r0, #8]
00885914  01 00 53 e3                                      cmp r3, #1
00885918  0b 00 00 0a                                      beq #0x88594c
0088591c  84 30 94 e5                                      ldr r3, [r4, #0x84]
00885920  01 00 53 e3                                      cmp r3, #1
00885924  ce ff ff 1a                                      bne #0x885864
00885928  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0088592c  20 31 94 e5                                      ldr r3, [r4, #0x120]
00885930  0c 10 a0 e3                                      mov r1, #0xc
00885934  00 20 92 e5                                      ldr r2, [r2]
00885938  91 03 03 e0                                      mul r3, r1, r3
0088593c  03 30 92 e7                                      ldr r3, [r2, r3]
00885940  08 30 93 e5                                      ldr r3, [r3, #8]
00885944  64 31 84 e5                                      str r3, [r4, #0x164]
00885948  c5 ff ff ea                                      b #0x885864
0088594c  00 10 90 e5                                      ldr r1, [r0]
00885950  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00885954  20 01 94 e5                                      ldr r0, [r4, #0x120]
00885958  0c 20 a0 e3                                      mov r2, #0xc
0088595c  00 30 93 e5                                      ldr r3, [r3]
00885960  92 01 01 e0                                      mul r1, r2, r1
00885964  92 00 02 e0                                      mul r2, r2, r0
00885968  01 10 93 e7                                      ldr r1, [r3, r1]
0088596c  02 20 93 e7                                      ldr r2, [r3, r2]
00885970  04 30 91 e5                                      ldr r3, [r1, #4]
00885974  08 20 92 e5                                      ldr r2, [r2, #8]
00885978  02 30 63 e0                                      rsb r3, r3, r2
0088597c  64 31 84 e5                                      str r3, [r4, #0x164]
00885980  b7 ff ff ea                                      b #0x885864


; EVIDENCE interpret_transition_rule: VA 0x00885984, size 184, SHA-256 18f9dae9063ef0066e83ff615af64c128a58a42a8f15429c69947e0e5f203114
; ASM_SOURCE vox_VoxNativeSubDecoder-445e1a438638-001.asm
; FUNCTION 0x00885984, declared_size=184, range_size=184, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder23InterpretTransitionRuleEi
; demangled: vox::VoxNativeSubDecoder::InterpretTransitionRule(int)
; decoder-mode: arm
00885984  10 40 2d e9                                      push {r4, lr}
00885988  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0088598c  24 20 a0 e3                                      mov r2, #0x24
00885990  00 40 a0 e1                                      mov r4, r0
00885994  04 30 93 e5                                      ldr r3, [r3, #4]
00885998  92 31 23 e0                                      mla r3, r2, r1, r3
0088599c  04 30 93 e5                                      ldr r3, [r3, #4]
008859a0  00 00 53 e3                                      cmp r3, #0
008859a4  14 00 00 0a                                      beq #0x8859fc
008859a8  20 30 90 e5                                      ldr r3, [r0, #0x20]
008859ac  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
008859b0  30 00 90 e5                                      ldr r0, [r0, #0x30]
008859b4  04 30 93 e5                                      ldr r3, [r3, #4]
008859b8  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
008859bc  c1 f2 ff eb                                      bl #0x8824c8
008859c0  00 00 50 e3                                      cmp r0, #0
008859c4  0b 00 00 0a                                      beq #0x8859f8
008859c8  08 30 90 e5                                      ldr r3, [r0, #8]
008859cc  01 00 53 e3                                      cmp r3, #1
008859d0  0b 00 00 0a                                      beq #0x885a04
008859d4  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
008859d8  20 31 94 e5                                      ldr r3, [r4, #0x120]
008859dc  0c 10 a0 e3                                      mov r1, #0xc
008859e0  00 20 92 e5                                      ldr r2, [r2]
008859e4  91 03 03 e0                                      mul r3, r1, r3
008859e8  03 30 92 e7                                      ldr r3, [r2, r3]
008859ec  08 30 93 e5                                      ldr r3, [r3, #8]
008859f0  64 31 84 e5                                      str r3, [r4, #0x164]
008859f4  10 80 bd e8                                      pop {r4, pc}
008859f8  04 00 a0 e1                                      mov r0, r4
008859fc  10 40 bd e8                                      pop {r4, lr}
00885a00  4e ff ff ea                                      b #0x885740
00885a04  00 10 90 e5                                      ldr r1, [r0]
00885a08  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00885a0c  20 01 94 e5                                      ldr r0, [r4, #0x120]
00885a10  0c 20 a0 e3                                      mov r2, #0xc
00885a14  00 30 93 e5                                      ldr r3, [r3]
00885a18  92 01 01 e0                                      mul r1, r2, r1
00885a1c  92 00 02 e0                                      mul r2, r2, r0
00885a20  01 10 93 e7                                      ldr r1, [r3, r1]
00885a24  02 20 93 e7                                      ldr r2, [r3, r2]
00885a28  04 30 91 e5                                      ldr r3, [r1, #4]
00885a2c  08 20 92 e5                                      ldr r2, [r2, #8]
00885a30  02 30 63 e0                                      rsb r3, r3, r2
00885a34  64 31 84 e5                                      str r3, [r4, #0x164]
00885a38  10 80 bd e8                                      pop {r4, pc}


; EVIDENCE base_subdecoder_decode: VA 0x00885c1c, size 296, SHA-256 a3de1e57db993e85cc4f46c895e5e1670be2a01c19c217ea6d8cbdbfa1cac579
; ASM_SOURCE vox_VoxNativeSubDecoder-445e1a438638-001.asm
; FUNCTION 0x00885c1c, declared_size=296, range_size=296, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder6DecodeEPvi
; demangled: vox::VoxNativeSubDecoder::Decode(void*, int)
; decoder-mode: arm
00885c1c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00885c20  f2 81 d0 e1                                      ldrsh r8, [r0, #0x12]
00885c24  fa 30 d0 e1                                      ldrsh r3, [r0, #0xa]
00885c28  00 40 a0 e1                                      mov r4, r0
00885c2c  c8 81 a0 e1                                      asr r8, r8, #3
00885c30  93 08 08 e0                                      mul r8, r3, r8
00885c34  01 a0 a0 e1                                      mov sl, r1
00885c38  02 00 a0 e1                                      mov r0, r2
00885c3c  08 10 a0 e1                                      mov r1, r8
00885c40  02 60 a0 e1                                      mov r6, r2
00885c44  2e 23 ea eb                                      bl #0x30e904
00885c48  64 71 94 e5                                      ldr r7, [r4, #0x164]
00885c4c  06 60 61 e0                                      rsb r6, r1, r6
00885c50  00 00 57 e3                                      cmp r7, #0
00885c54  06 00 00 ba                                      blt #0x885c74
00885c58  08 10 a0 e1                                      mov r1, r8
00885c5c  06 00 a0 e1                                      mov r0, r6
00885c60  8f 21 ea eb                                      bl #0x30e2a4
00885c64  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
00885c68  03 00 80 e0                                      add r0, r0, r3
00885c6c  00 00 57 e1                                      cmp r7, r0
00885c70  1f 00 00 da                                      ble #0x885cf4
00885c74  94 30 94 e5                                      ldr r3, [r4, #0x94]
00885c78  01 00 53 e3                                      cmp r3, #1
00885c7c  0f 00 00 da                                      ble #0x885cc0
00885c80  0a 10 a0 e1                                      mov r1, sl
00885c84  06 20 a0 e1                                      mov r2, r6
00885c88  04 00 a0 e1                                      mov r0, r4
00885c8c  71 fd ff eb                                      bl #0x885258
00885c90  00 50 a0 e1                                      mov r5, r0
00885c94  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
00885c98  01 00 53 e3                                      cmp r3, #1
00885c9c  1e 00 00 da                                      ble #0x885d1c
00885ca0  00 31 94 e5                                      ldr r3, [r4, #0x100]
00885ca4  01 00 53 e3                                      cmp r3, #1
00885ca8  21 00 00 da                                      ble #0x885d34
00885cac  44 31 94 e5                                      ldr r3, [r4, #0x144]
00885cb0  01 00 53 e3                                      cmp r3, #1
00885cb4  13 00 00 da                                      ble #0x885d08
00885cb8  05 00 a0 e1                                      mov r0, r5
00885cbc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00885cc0  f3 ff ff 1a                                      bne #0x885c94
00885cc4  50 31 94 e5                                      ldr r3, [r4, #0x150]
00885cc8  00 00 53 e3                                      cmp r3, #0
00885ccc  eb ff ff ca                                      bgt #0x885c80
00885cd0  04 30 a0 e1                                      mov r3, r4
00885cd4  20 c1 93 e4                                      ldr ip, [r3], #0x120
00885cd8  0a 10 a0 e1                                      mov r1, sl
00885cdc  06 20 a0 e1                                      mov r2, r6
00885ce0  04 00 a0 e1                                      mov r0, r4
00885ce4  0f e0 a0 e1                                      mov lr, pc
00885ce8  18 f0 9c e5                                      ldr pc, [ip, #0x18]
00885cec  00 50 a0 e1                                      mov r5, r0
00885cf0  e7 ff ff ea                                      b #0x885c94
00885cf4  07 70 63 e0                                      rsb r7, r3, r7
00885cf8  68 71 84 e5                                      str r7, [r4, #0x168]
00885cfc  04 00 a0 e1                                      mov r0, r4
00885d00  8e fe ff eb                                      bl #0x885740
00885d04  da ff ff ea                                      b #0x885c74
00885d08  04 00 a0 e1                                      mov r0, r4
00885d0c  12 1e 84 e2                                      add r1, r4, #0x120
00885d10  87 fa ff eb                                      bl #0x884734
00885d14  05 00 a0 e1                                      mov r0, r5
00885d18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00885d1c  04 00 a0 e1                                      mov r0, r4
00885d20  98 10 84 e2                                      add r1, r4, #0x98
00885d24  82 fa ff eb                                      bl #0x884734
00885d28  00 31 94 e5                                      ldr r3, [r4, #0x100]
00885d2c  01 00 53 e3                                      cmp r3, #1
00885d30  dd ff ff ca                                      bgt #0x885cac
00885d34  04 00 a0 e1                                      mov r0, r4
00885d38  dc 10 84 e2                                      add r1, r4, #0xdc
00885d3c  7c fa ff eb                                      bl #0x884734
00885d40  d9 ff ff ea                                      b #0x885cac


; EVIDENCE ima_state_set: VA 0x008864f8, size 92, SHA-256 5951ef2bb1c2f3e51b5f9285bff795e2d3bfe19d3a2d34136013319565954f25
; ASM_SOURCE vox_VoxNativeSubDecoderIMAADPCM-4f783647ca7a-001.asm
; FUNCTION 0x008864f8, declared_size=92, range_size=92, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM8SetStateEPNS_29NativeSubDecoderIMAADPCMStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::SetState(vox::NativeSubDecoderIMAADPCMState*)
; decoder-mode: arm
008864f8  70 40 2d e9                                      push {r4, r5, r6, lr}
008864fc  01 50 a0 e1                                      mov r5, r1
00886500  00 40 a0 e1                                      mov r4, r0
00886504  8c fa ff eb                                      bl #0x884f3c
00886508  44 31 95 e5                                      ldr r3, [r5, #0x144]
0088650c  bc 20 94 e5                                      ldr r2, [r4, #0xbc]
00886510  90 31 84 e5                                      str r3, [r4, #0x190]
00886514  48 31 95 e5                                      ldr r3, [r5, #0x148]
00886518  03 00 52 e3                                      cmp r2, #3
0088651c  94 31 84 e5                                      str r3, [r4, #0x194]
00886520  4c 31 95 e5                                      ldr r3, [r5, #0x14c]
00886524  98 31 84 e5                                      str r3, [r4, #0x198]
00886528  01 30 a0 03                                      moveq r3, #1
0088652c  d8 30 c4 05                                      strbeq r3, [r4, #0xd8]
00886530  00 31 94 e5                                      ldr r3, [r4, #0x100]
00886534  03 00 53 e3                                      cmp r3, #3
00886538  01 30 a0 03                                      moveq r3, #1
0088653c  1c 31 c4 05                                      strbeq r3, [r4, #0x11c]
00886540  44 31 94 e5                                      ldr r3, [r4, #0x144]
00886544  03 00 53 e3                                      cmp r3, #3
00886548  01 30 a0 03                                      moveq r3, #1
0088654c  60 31 c4 05                                      strbeq r3, [r4, #0x160]
00886550  70 80 bd e8                                      pop {r4, r5, r6, pc}


; EVIDENCE ima_state_get: VA 0x00886554, size 44, SHA-256 c7d15f6e875986f2c9750f365c491d0e4363048a2f1887fa0e21aad51a4b41b0
; ASM_SOURCE vox_VoxNativeSubDecoderIMAADPCM-4f783647ca7a-001.asm
; FUNCTION 0x00886554, declared_size=44, range_size=44, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM8GetStateEPNS_29NativeSubDecoderIMAADPCMStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::GetState(vox::NativeSubDecoderIMAADPCMState*)
; decoder-mode: arm
00886554  70 40 2d e9                                      push {r4, r5, r6, lr}
00886558  00 50 a0 e1                                      mov r5, r0
0088655c  01 40 a0 e1                                      mov r4, r1
00886560  c1 fa ff eb                                      bl #0x88506c
00886564  90 31 95 e5                                      ldr r3, [r5, #0x190]
00886568  44 31 84 e5                                      str r3, [r4, #0x144]
0088656c  94 31 95 e5                                      ldr r3, [r5, #0x194]
00886570  48 31 84 e5                                      str r3, [r4, #0x148]
00886574  98 31 95 e5                                      ldr r3, [r5, #0x198]
00886578  4c 31 84 e5                                      str r3, [r4, #0x14c]
0088657c  70 80 bd e8                                      pop {r4, r5, r6, pc}


; EVIDENCE ima_subdecoder_constructor: VA 0x00886bfc, size 448, SHA-256 81c7255013e9645e4da1eaf793a78ddf3834b3c251cfa2eb4a7b7031f2e75121
; ASM_SOURCE vox_VoxNativeSubDecoderIMAADPCM-4f783647ca7a-001.asm
; FUNCTION 0x00886bfc, declared_size=448, range_size=448, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCMC1EPNS_21StreamCursorInterfaceEPNS_12NativeChunksEPNS_6StatesEPNS_13AudioSegmentsEPSt6vectorIS9_IiNS_10SAllocatorIiLNS_10VoxMemHintE0EEEENSA_ISD_LSB_0EEEEPNS_15TransitionRulesEPS9_IS9_INS_16TransitionParamsENSA_ISJ_LSB_0EEEENSA_ISL_LSB_0EEEEPSt3mapISbIcSt11char_traitsIcENSA_IcLSB_0EEEEiNS_13StringCompareENSA_ISt4pairIKST_iELSB_0EEEEPNS_22NativePlaylistsManagerE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::VoxNativeSubDecoderIMAADPCM(vox::StreamCursorInterface*, vox::NativeChunks*, vox::States*, vox::AudioSegments*, std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, vox::TransitionRules*, std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, int, vox::StringCompare, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >*, vox::NativePlaylistsManager*)
; decoder-mode: arm
00886bfc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00886c00  18 d0 4d e2                                      sub sp, sp, #0x18
00886c04  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00886c08  a4 51 9f e5                                      ldr r5, [pc, #0x1a4]
00886c0c  00 40 a0 e1                                      mov r4, r0
00886c10  00 c0 8d e5                                      str ip, [sp]
00886c14  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00886c18  02 60 a0 e1                                      mov r6, r2
00886c1c  05 50 8f e0                                      add r5, pc, r5
00886c20  04 c0 8d e5                                      str ip, [sp, #4]
00886c24  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00886c28  00 70 a0 e3                                      mov r7, #0
00886c2c  1a 8e 84 e2                                      add r8, r4, #0x1a0
00886c30  08 c0 8d e5                                      str ip, [sp, #8]
00886c34  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00886c38  0c c0 8d e5                                      str ip, [sp, #0xc]
00886c3c  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00886c40  10 c0 8d e5                                      str ip, [sp, #0x10]
00886c44  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00886c48  14 c0 8d e5                                      str ip, [sp, #0x14]
00886c4c  af fc ff eb                                      bl #0x885f10
00886c50  60 31 9f e5                                      ldr r3, [pc, #0x160]
00886c54  74 71 84 e5                                      str r7, [r4, #0x174]
00886c58  9c 71 84 e5                                      str r7, [r4, #0x19c]
00886c5c  03 30 95 e7                                      ldr r3, [r5, r3]
00886c60  08 30 83 e2                                      add r3, r3, #8
00886c64  00 30 84 e5                                      str r3, [r4]
00886c68  07 00 88 e0                                      add r0, r8, r7
00886c6c  04 70 87 e2                                      add r7, r7, #4
00886c70  f5 3c 00 eb                                      bl #0x89604c
00886c74  20 00 57 e3                                      cmp r7, #0x20
00886c78  fa ff ff 1a                                      bne #0x886c68
00886c7c  20 30 96 e5                                      ldr r3, [r6, #0x20]
00886c80  0c 00 a0 e3                                      mov r0, #0xc
00886c84  08 30 84 e5                                      str r3, [r4, #8]
00886c88  24 30 96 e5                                      ldr r3, [r6, #0x24]
00886c8c  0c 30 84 e5                                      str r3, [r4, #0xc]
00886c90  28 60 96 e5                                      ldr r6, [r6, #0x28]
00886c94  10 60 84 e5                                      str r6, [r4, #0x10]
00886c98  16 26 ea eb                                      bl #0x3104f8
00886c9c  76 60 bf e6                                      sxth r6, r6
00886ca0  74 01 84 e5                                      str r0, [r4, #0x174]
00886ca4  06 00 a0 e1                                      mov r0, r6
00886ca8  12 26 ea eb                                      bl #0x3104f8
00886cac  74 71 94 e5                                      ldr r7, [r4, #0x174]
00886cb0  9c 01 84 e5                                      str r0, [r4, #0x19c]
00886cb4  00 00 57 e3                                      cmp r7, #0
00886cb8  34 00 00 0a                                      beq #0x886d90
00886cbc  00 00 50 e3                                      cmp r0, #0
00886cc0  32 00 00 0a                                      beq #0x886d90
00886cc4  06 51 a0 e1                                      lsl r5, r6, #2
00886cc8  05 00 a0 e1                                      mov r0, r5
00886ccc  09 26 ea eb                                      bl #0x3104f8
00886cd0  00 00 87 e5                                      str r0, [r7]
00886cd4  05 00 a0 e1                                      mov r0, r5
00886cd8  74 71 94 e5                                      ldr r7, [r4, #0x174]
00886cdc  05 26 ea eb                                      bl #0x3104f8
00886ce0  04 00 87 e5                                      str r0, [r7, #4]
00886ce4  05 00 a0 e1                                      mov r0, r5
00886ce8  74 51 94 e5                                      ldr r5, [r4, #0x174]
00886cec  01 26 ea eb                                      bl #0x3104f8
00886cf0  08 00 85 e5                                      str r0, [r5, #8]
00886cf4  74 31 94 e5                                      ldr r3, [r4, #0x174]
00886cf8  00 20 93 e5                                      ldr r2, [r3]
00886cfc  00 00 52 e3                                      cmp r2, #0
00886d00  22 00 00 0a                                      beq #0x886d90
00886d04  04 20 93 e5                                      ldr r2, [r3, #4]
00886d08  00 00 52 e3                                      cmp r2, #0
00886d0c  1f 00 00 0a                                      beq #0x886d90
00886d10  08 30 93 e5                                      ldr r3, [r3, #8]
00886d14  00 00 53 e3                                      cmp r3, #0
00886d18  1c 00 00 0a                                      beq #0x886d90
00886d1c  ba 30 d4 e1                                      ldrh r3, [r4, #0xa]
00886d20  00 50 a0 e3                                      mov r5, #0
00886d24  78 51 84 e5                                      str r5, [r4, #0x178]
00886d28  05 00 53 e1                                      cmp r3, r5
00886d2c  7c 51 84 e5                                      str r5, [r4, #0x17c]
00886d30  80 51 84 e5                                      str r5, [r4, #0x180]
00886d34  84 51 84 e5                                      str r5, [r4, #0x184]
00886d38  88 51 84 e5                                      str r5, [r4, #0x188]
00886d3c  8c 51 84 e5                                      str r5, [r4, #0x18c]
00886d40  90 51 84 e5                                      str r5, [r4, #0x190]
00886d44  94 51 84 e5                                      str r5, [r4, #0x194]
00886d48  98 51 84 e5                                      str r5, [r4, #0x198]
00886d4c  10 00 00 0a                                      beq #0x886d94
00886d50  73 30 bf e6                                      sxth r3, r3
00886d54  03 10 a0 e1                                      mov r1, r3
00886d58  03 31 46 e0                                      sub r3, r6, r3, lsl #2
00886d5c  83 00 a0 e1                                      lsl r0, r3, #1
00886d60  4f 1d ea eb                                      bl #0x30e2a4
00886d64  fa 30 d4 e1                                      ldrsh r3, [r4, #0xa]
00886d68  01 00 80 e2                                      add r0, r0, #1
00886d6c  70 01 84 e5                                      str r0, [r4, #0x170]
00886d70  08 00 53 e3                                      cmp r3, #8
00886d74  0b 00 00 da                                      ble #0x886da8
00886d78  b2 51 c4 e1                                      strh r5, [r4, #0x12]
00886d7c  b8 50 c4 e1                                      strh r5, [r4, #8]
00886d80  ba 50 c4 e1                                      strh r5, [r4, #0xa]
00886d84  0c 50 84 e5                                      str r5, [r4, #0xc]
00886d88  b0 51 c4 e1                                      strh r5, [r4, #0x10]
00886d8c  05 00 00 ea                                      b #0x886da8
00886d90  00 30 a0 e3                                      mov r3, #0
00886d94  b2 31 c4 e1                                      strh r3, [r4, #0x12]
00886d98  b8 30 c4 e1                                      strh r3, [r4, #8]
00886d9c  ba 30 c4 e1                                      strh r3, [r4, #0xa]
00886da0  0c 30 84 e5                                      str r3, [r4, #0xc]
00886da4  b0 31 c4 e1                                      strh r3, [r4, #0x10]
00886da8  04 00 a0 e1                                      mov r0, r4
00886dac  18 d0 8d e2                                      add sp, sp, #0x18
00886db0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00886db4  74 de 10 00 b4 10 00 00                          .byte 0x74, 0xde, 0x10, 0x00, 0xb4, 0x10, 0x00, 0x00


; EVIDENCE ima_decode_block: VA 0x00887068, size 1020, SHA-256 35db31f76e36891a2d3e3055848f65ce83e0d8d40948410798b096cd5ebdaebe
; ASM_SOURCE vox_VoxNativeSubDecoderIMAADPCM-4f783647ca7a-001.asm
; FUNCTION 0x00887068, declared_size=1020, range_size=1020, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM11DecodeBlockEPvPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::DecodeBlock(void*, vox::SegmentState*)
; decoder-mode: arm
00887068  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088706c  64 d0 4d e2                                      sub sp, sp, #0x64
00887070  2c 00 8d e5                                      str r0, [sp, #0x2c]
00887074  38 20 8d e5                                      str r2, [sp, #0x38]
00887078  18 20 90 e5                                      ldr r2, [r0, #0x18]
0088707c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00887080  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
00887084  04 c0 92 e5                                      ldr ip, [r2, #4]
00887088  00 30 90 e5                                      ldr r3, [r0]
0088708c  18 20 a0 e3                                      mov r2, #0x18
00887090  08 50 90 e5                                      ldr r5, [r0, #8]
00887094  92 03 02 e0                                      mul r2, r2, r3
00887098  04 30 98 e5                                      ldr r3, [r8, #4]
0088709c  02 40 9c e7                                      ldr r4, [ip, r2]
008870a0  02 20 8c e0                                      add r2, ip, r2
008870a4  08 c0 92 e5                                      ldr ip, [r2, #8]
008870a8  14 e0 98 e5                                      ldr lr, [r8, #0x14]
008870ac  03 00 a0 e1                                      mov r0, r3
008870b0  04 40 85 e0                                      add r4, r5, r4
008870b4  00 30 93 e5                                      ldr r3, [r3]
008870b8  3c c0 8d e5                                      str ip, [sp, #0x3c]
008870bc  0e 40 84 e0                                      add r4, r4, lr
008870c0  01 70 a0 e1                                      mov r7, r1
008870c4  ba 60 d8 e1                                      ldrh r6, [r8, #0xa]
008870c8  04 50 92 e5                                      ldr r5, [r2, #4]
008870cc  0f e0 a0 e1                                      mov lr, pc
008870d0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008870d4  7c 13 9f e5                                      ldr r1, [pc, #0x37c]
008870d8  00 00 54 e1                                      cmp r4, r0
008870dc  01 10 8f e0                                      add r1, pc, r1
008870e0  28 10 8d e5                                      str r1, [sp, #0x28]
008870e4  06 00 00 0a                                      beq #0x887104
008870e8  04 30 98 e5                                      ldr r3, [r8, #4]
008870ec  04 10 a0 e1                                      mov r1, r4
008870f0  00 20 a0 e3                                      mov r2, #0
008870f4  03 00 a0 e1                                      mov r0, r3
008870f8  00 30 93 e5                                      ldr r3, [r3]
008870fc  0f e0 a0 e1                                      mov lr, pc
00887100  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00887104  38 20 9d e5                                      ldr r2, [sp, #0x38]
00887108  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
0088710c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00887110  08 10 92 e5                                      ldr r1, [r2, #8]
00887114  f0 21 d8 e1                                      ldrsh r2, [r8, #0x10]
00887118  9c 41 93 e5                                      ldr r4, [r3, #0x19c]
0088711c  04 30 93 e5                                      ldr r3, [r3, #4]
00887120  05 50 61 e0                                      rsb r5, r1, r5
00887124  05 00 52 e1                                      cmp r2, r5
00887128  05 20 a0 21                                      movhs r2, r5
0088712c  03 00 a0 e1                                      mov r0, r3
00887130  04 10 a0 e1                                      mov r1, r4
00887134  00 30 93 e5                                      ldr r3, [r3]
00887138  0f e0 a0 e1                                      mov lr, pc
0088713c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00887140  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00887144  76 60 bf e6                                      sxth r6, r6
00887148  08 30 9c e5                                      ldr r3, [ip, #8]
0088714c  20 60 8d e5                                      str r6, [sp, #0x20]
00887150  00 30 83 e0                                      add r3, r3, r0
00887154  08 30 8c e5                                      str r3, [ip, #8]
00887158  b0 10 d4 e1                                      ldrh r1, [r4]
0088715c  1a 3e a0 e3                                      mov r3, #0x1a0
00887160  b3 10 88 e1                                      strh r1, [r8, r3]
00887164  20 20 9d e5                                      ldr r2, [sp, #0x20]
00887168  b2 c0 d4 e1                                      ldrh ip, [r4, #2]
0088716c  a2 31 00 e3                                      movw r3, #0x1a2
00887170  01 00 52 e3                                      cmp r2, #1
00887174  b3 c0 88 e1                                      strh ip, [r8, r3]
00887178  ae 00 00 da                                      ble #0x887438
0088717c  02 61 a0 e1                                      lsl r6, r2, #2
00887180  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00887184  04 50 44 e2                                      sub r5, r4, #4
00887188  06 50 85 e0                                      add r5, r5, r6
0088718c  04 30 a0 e1                                      mov r3, r4
00887190  69 cf a0 e3                                      mov ip, #0x1a4
00887194  a6 11 00 e3                                      movw r1, #0x1a6
00887198  b4 80 d3 e1                                      ldrh r8, [r3, #4]
0088719c  bc 80 82 e1                                      strh r8, [r2, ip]
008871a0  b6 80 d3 e1                                      ldrh r8, [r3, #6]
008871a4  04 30 83 e2                                      add r3, r3, #4
008871a8  05 00 53 e1                                      cmp r3, r5
008871ac  b1 80 82 e1                                      strh r8, [r2, r1]
008871b0  04 20 82 e2                                      add r2, r2, #4
008871b4  f7 ff ff 1a                                      bne #0x887198
008871b8  60 10 8d e2                                      add r1, sp, #0x60
008871bc  20 70 21 e5                                      str r7, [r1, #-0x20]!
008871c0  08 30 41 e2                                      sub r3, r1, #8
008871c4  06 60 83 e0                                      add r6, r3, r6
008871c8  07 20 a0 e1                                      mov r2, r7
008871cc  01 30 a0 e1                                      mov r3, r1
008871d0  00 00 00 ea                                      b #0x8871d8
008871d4  04 30 83 e2                                      add r3, r3, #4
008871d8  02 20 82 e2                                      add r2, r2, #2
008871dc  06 00 53 e1                                      cmp r3, r6
008871e0  04 20 83 e5                                      str r2, [r3, #4]
008871e4  fa ff ff 1a                                      bne #0x8871d4
008871e8  20 20 9d e5                                      ldr r2, [sp, #0x20]
008871ec  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
008871f0  00 30 a0 e3                                      mov r3, #0
008871f4  82 60 a0 e1                                      lsl r6, r2, #1
008871f8  02 c1 a0 e1                                      lsl ip, r2, #2
008871fc  03 50 87 e0                                      add r5, r7, r3
00887200  1a 5e 85 e2                                      add r5, r5, #0x1a0
00887204  03 20 91 e7                                      ldr r2, [r1, r3]
00887208  b0 50 d5 e1                                      ldrh r5, [r5]
0088720c  b6 50 82 e0                                      strh r5, [r2], r6
00887210  03 20 81 e7                                      str r2, [r1, r3]
00887214  04 30 83 e2                                      add r3, r3, #4
00887218  0c 00 53 e1                                      cmp r3, ip
0088721c  f6 ff ff 1a                                      bne #0x8871fc
00887220  00 00 6c e0                                      rsb r0, ip, r0
00887224  00 00 50 e3                                      cmp r0, #0
00887228  01 30 a0 d3                                      movle r3, #1
0088722c  30 00 8d e5                                      str r0, [sp, #0x30]
00887230  24 30 8d d5                                      strle r3, [sp, #0x24]
00887234  74 00 00 da                                      ble #0x88740c
00887238  0c c0 84 e0                                      add ip, r4, ip
0088723c  10 c0 8d e5                                      str ip, [sp, #0x10]
00887240  20 80 9d e5                                      ldr r8, [sp, #0x20]
00887244  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00887248  02 31 a0 e3                                      mov r3, #0x80000000
0088724c  43 38 a0 e1                                      asr r3, r3, #0x10
00887250  08 82 a0 e1                                      lsl r8, r8, #4
00887254  01 00 a0 e3                                      mov r0, #1
00887258  00 10 a0 e3                                      mov r1, #0
0088725c  0c 21 a0 e1                                      lsl r2, ip, #2
00887260  04 30 8d e5                                      str r3, [sp, #4]
00887264  18 80 8d e5                                      str r8, [sp, #0x18]
00887268  8c a0 a0 e1                                      lsl sl, ip, #1
0088726c  24 00 8d e5                                      str r0, [sp, #0x24]
00887270  1c 10 8d e5                                      str r1, [sp, #0x1c]
00887274  34 20 8d e5                                      str r2, [sp, #0x34]
00887278  20 10 9d e5                                      ldr r1, [sp, #0x20]
0088727c  00 00 51 e3                                      cmp r1, #0
00887280  5a 00 00 da                                      ble #0x8873f0
00887284  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
00887288  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0088728c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00887290  10 00 9d e5                                      ldr r0, [sp, #0x10]
00887294  03 80 9c e7                                      ldr r8, [ip, r3]
00887298  c0 31 9f e5                                      ldr r3, [pc, #0x1c0]
0088729c  10 90 9d e5                                      ldr sb, [sp, #0x10]
008872a0  01 01 80 e0                                      add r0, r0, r1, lsl #2
008872a4  03 70 9c e7                                      ldr r7, [ip, r3]
008872a8  1a be 82 e2                                      add fp, r2, #0x1a0
008872ac  00 10 a0 e3                                      mov r1, #0
008872b0  40 20 8d e2                                      add r2, sp, #0x40
008872b4  14 00 8d e5                                      str r0, [sp, #0x14]
008872b8  00 10 8d e5                                      str r1, [sp]
008872bc  0c 20 8d e5                                      str r2, [sp, #0xc]
008872c0  02 60 d9 e5                                      ldrb r6, [sb, #2]
008872c4  01 10 d9 e5                                      ldrb r1, [sb, #1]
008872c8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
008872cc  00 30 9d e5                                      ldr r3, [sp]
008872d0  06 68 a0 e1                                      lsl r6, r6, #0x10
008872d4  01 64 86 e0                                      add r6, r6, r1, lsl #8
008872d8  00 00 9d e5                                      ldr r0, [sp]
008872dc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
008872e0  03 20 dc e7                                      ldrb r2, [ip, r3]
008872e4  03 30 d9 e5                                      ldrb r3, [sb, #3]
008872e8  00 00 91 e7                                      ldr r0, [r1, r0]
008872ec  02 60 86 e0                                      add r6, r6, r2
008872f0  03 6c 86 e0                                      add r6, r6, r3, lsl #24
008872f4  08 00 8d e5                                      str r0, [sp, #8]
008872f8  f0 40 db e1                                      ldrsh r4, [fp]
008872fc  02 00 db e5                                      ldrb r0, [fp, #2]
00887300  0f 30 06 e2                                      and r3, r6, #0xf
00887304  08 50 9d e5                                      ldr r5, [sp, #8]
00887308  00 c0 a0 e3                                      mov ip, #0
0088730c  13 00 00 ea                                      b #0x887360
00887310  04 40 62 e0                                      rsb r4, r2, r4
00887314  04 20 9d e5                                      ldr r2, [sp, #4]
00887318  02 00 54 e1                                      cmp r4, r2
0088731c  02 40 a0 b1                                      movlt r4, r2
00887320  03 30 d7 e7                                      ldrb r3, [r7, r3]
00887324  03 00 80 e0                                      add r0, r0, r3
00887328  70 00 ef e6                                      uxtb r0, r0
0088732c  80 00 10 e3                                      tst r0, #0x80
00887330  00 00 a0 13                                      movne r0, #0
00887334  01 00 00 1a                                      bne #0x887340
00887338  58 00 50 e3                                      cmp r0, #0x58
0088733c  58 00 a0 23                                      movhs r0, #0x58
00887340  01 c0 8c e2                                      add ip, ip, #1
00887344  74 30 ff e6                                      uxth r3, r4
00887348  08 00 5c e3                                      cmp ip, #8
0088734c  b0 30 c5 e1                                      strh r3, [r5]
00887350  12 00 00 0a                                      beq #0x8873a0
00887354  46 62 a0 e1                                      asr r6, r6, #4
00887358  0a 50 85 e0                                      add r5, r5, sl
0088735c  0f 30 06 e2                                      and r3, r6, #0xf
00887360  80 20 a0 e1                                      lsl r2, r0, #1
00887364  f2 10 98 e1                                      ldrsh r1, [r8, r2]
00887368  04 00 13 e3                                      tst r3, #4
0088736c  c1 21 a0 e1                                      asr r2, r1, #3
00887370  01 20 82 10                                      addne r2, r2, r1
00887374  02 00 13 e3                                      tst r3, #2
00887378  c1 20 82 10                                      addne r2, r2, r1, asr #1
0088737c  01 00 13 e3                                      tst r3, #1
00887380  41 21 82 10                                      addne r2, r2, r1, asr #2
00887384  08 00 13 e3                                      tst r3, #8
00887388  e0 ff ff 1a                                      bne #0x887310
0088738c  04 40 82 e0                                      add r4, r2, r4
00887390  ff 1f 07 e3                                      movw r1, #0x7fff
00887394  01 00 54 e1                                      cmp r4, r1
00887398  01 40 a0 a1                                      movge r4, r1
0088739c  df ff ff ea                                      b #0x887320
008873a0  08 c0 9d e5                                      ldr ip, [sp, #8]
008873a4  18 10 9d e5                                      ldr r1, [sp, #0x18]
008873a8  04 90 89 e2                                      add sb, sb, #4
008873ac  01 20 8c e0                                      add r2, ip, r1
008873b0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
008873b4  b0 30 cb e1                                      strh r3, [fp]
008873b8  02 00 cb e5                                      strb r0, [fp, #2]
008873bc  00 00 9d e5                                      ldr r0, [sp]
008873c0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
008873c4  0c 00 59 e1                                      cmp sb, ip
008873c8  04 b0 8b e2                                      add fp, fp, #4
008873cc  00 20 81 e7                                      str r2, [r1, r0]
008873d0  04 00 80 e2                                      add r0, r0, #4
008873d4  00 00 8d e5                                      str r0, [sp]
008873d8  b8 ff ff 1a                                      bne #0x8872c0
008873dc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
008873e0  34 30 9d e5                                      ldr r3, [sp, #0x34]
008873e4  10 90 8d e5                                      str sb, [sp, #0x10]
008873e8  03 20 82 e0                                      add r2, r2, r3
008873ec  1c 20 8d e5                                      str r2, [sp, #0x1c]
008873f0  24 00 9d e5                                      ldr r0, [sp, #0x24]
008873f4  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
008873f8  30 c0 9d e5                                      ldr ip, [sp, #0x30]
008873fc  08 00 80 e2                                      add r0, r0, #8
00887400  24 00 8d e5                                      str r0, [sp, #0x24]
00887404  0c 00 58 e1                                      cmp r8, ip
00887408  9a ff ff ba                                      blt #0x887278
0088740c  38 80 9d e5                                      ldr r8, [sp, #0x38]
00887410  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00887414  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00887418  0c 30 98 e5                                      ldr r3, [r8, #0xc]
0088741c  03 20 8c e0                                      add r2, ip, r3
00887420  02 00 50 e1                                      cmp r0, r2
00887424  00 30 63 30                                      rsblo r3, r3, r0
00887428  24 30 8d 35                                      strlo r3, [sp, #0x24]
0088742c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00887430  64 d0 8d e2                                      add sp, sp, #0x64
00887434  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00887438  20 10 9d e5                                      ldr r1, [sp, #0x20]
0088743c  40 70 8d e5                                      str r7, [sp, #0x40]
00887440  00 00 51 e3                                      cmp r1, #0
00887444  40 10 8d c2                                      addgt r1, sp, #0x40
00887448  66 ff ff ca                                      bgt #0x8871e8
0088744c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00887450  01 c1 a0 e1                                      lsl ip, r1, #2
00887454  71 ff ff ea                                      b #0x887220
00887458  b4 d9 10 00 94 38 00 00 60 21 00 00              .byte 0xb4, 0xd9, 0x10, 0x00, 0x94, 0x38, 0x00, 0x00, 0x60, 0x21, 0x00, 0x00


; EVIDENCE ima_seek: VA 0x00887464, size 224, SHA-256 2b529930fb7fede9ce0d74cc46768f3d6cb8f2d03787bb84de0f9a3e8aeb728c
; ASM_SOURCE vox_VoxNativeSubDecoderIMAADPCM-4f783647ca7a-001.asm
; FUNCTION 0x00887464, declared_size=224, range_size=224, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM4SeekEiPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::Seek(int, vox::SegmentState*)
; decoder-mode: arm
00887464  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00887468  18 30 90 e5                                      ldr r3, [r0, #0x18]
0088746c  00 70 92 e5                                      ldr r7, [r2]
00887470  02 50 a0 e1                                      mov r5, r2
00887474  04 30 93 e5                                      ldr r3, [r3, #4]
00887478  18 20 a0 e3                                      mov r2, #0x18
0088747c  00 60 51 e2                                      subs r6, r1, #0
00887480  92 37 23 e0                                      mla r3, r2, r7, r3
00887484  10 60 95 b5                                      ldrlt r6, [r5, #0x10]
00887488  08 30 93 e5                                      ldr r3, [r3, #8]
0088748c  00 40 a0 e1                                      mov r4, r0
00887490  3c 80 95 e5                                      ldr r8, [r5, #0x3c]
00887494  03 00 56 e1                                      cmp r6, r3
00887498  00 70 e0 c3                                      mvngt r7, #0
0088749c  01 00 00 da                                      ble #0x8874a8
008874a0  07 00 a0 e1                                      mov r0, r7
008874a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008874a8  70 11 90 e5                                      ldr r1, [r0, #0x170]
008874ac  06 00 a0 e1                                      mov r0, r6
008874b0  e5 1d ea eb                                      bl #0x30ec4c
008874b4  f0 c1 d4 e1                                      ldrsh ip, [r4, #0x10]
008874b8  18 30 a0 e3                                      mov r3, #0x18
008874bc  93 07 07 e0                                      mul r7, r3, r7
008874c0  9c 00 0c e0                                      mul ip, ip, r0
008874c4  00 a0 a0 e1                                      mov sl, r0
008874c8  08 c0 85 e5                                      str ip, [r5, #8]
008874cc  18 10 94 e5                                      ldr r1, [r4, #0x18]
008874d0  14 e0 94 e5                                      ldr lr, [r4, #0x14]
008874d4  04 30 94 e5                                      ldr r3, [r4, #4]
008874d8  04 10 91 e5                                      ldr r1, [r1, #4]
008874dc  00 20 a0 e3                                      mov r2, #0
008874e0  03 00 a0 e1                                      mov r0, r3
008874e4  07 10 91 e7                                      ldr r1, [r1, r7]
008874e8  00 30 93 e5                                      ldr r3, [r3]
008874ec  01 10 8e e0                                      add r1, lr, r1
008874f0  0c 10 81 e0                                      add r1, r1, ip
008874f4  0f e0 a0 e1                                      mov lr, pc
008874f8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008874fc  00 70 50 e2                                      subs r7, r0, #0
00887500  e6 ff ff 1a                                      bne #0x8874a0
00887504  70 11 94 e5                                      ldr r1, [r4, #0x170]
00887508  08 31 84 e0                                      add r3, r4, r8, lsl #2
0088750c  05 20 a0 e1                                      mov r2, r5
00887510  91 0a 0a e0                                      mul sl, r1, sl
00887514  04 00 a0 e1                                      mov r0, r4
00887518  06 60 6a e0                                      rsb r6, sl, r6
0088751c  0a a0 86 e0                                      add sl, r6, sl
00887520  84 61 83 e5                                      str r6, [r3, #0x184]
00887524  0c a0 85 e5                                      str sl, [r5, #0xc]
00887528  74 31 94 e5                                      ldr r3, [r4, #0x174]
0088752c  08 11 93 e7                                      ldr r1, [r3, r8, lsl #2]
00887530  cc fe ff eb                                      bl #0x887068
00887534  5e 80 88 e2                                      add r8, r8, #0x5e
00887538  08 01 84 e7                                      str r0, [r4, r8, lsl #2]
0088753c  07 00 a0 e1                                      mov r0, r7
00887540  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}


; EVIDENCE ima_set_decode_buffer: VA 0x00887544, size 116, SHA-256 38ff814104263b47a1757ab9741552de37e61e00e5180883287862e500c56e23
; ASM_SOURCE vox_VoxNativeSubDecoderIMAADPCM-4f783647ca7a-001.asm
; FUNCTION 0x00887544, declared_size=116, range_size=116, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM34SetDecodingBufferToSegmentPositionEPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::SetDecodingBufferToSegmentPosition(vox::SegmentState*)
; decoder-mode: arm
00887544  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00887548  0c 60 91 e5                                      ldr r6, [r1, #0xc]
0088754c  70 81 90 e5                                      ldr r8, [r0, #0x170]
00887550  00 50 a0 e1                                      mov r5, r0
00887554  3c 70 91 e5                                      ldr r7, [r1, #0x3c]
00887558  01 40 a0 e1                                      mov r4, r1
0088755c  06 00 a0 e1                                      mov r0, r6
00887560  08 10 a0 e1                                      mov r1, r8
00887564  b8 1d ea eb                                      bl #0x30ec4c
00887568  98 00 00 e0                                      mul r0, r8, r0
0088756c  0c 00 84 e5                                      str r0, [r4, #0xc]
00887570  70 11 95 e5                                      ldr r1, [r5, #0x170]
00887574  b4 1d ea eb                                      bl #0x30ec4c
00887578  f0 31 d5 e1                                      ldrsh r3, [r5, #0x10]
0088757c  04 20 a0 e1                                      mov r2, r4
00887580  93 00 03 e0                                      mul r3, r3, r0
00887584  05 00 a0 e1                                      mov r0, r5
00887588  08 30 84 e5                                      str r3, [r4, #8]
0088758c  74 31 95 e5                                      ldr r3, [r5, #0x174]
00887590  07 11 93 e7                                      ldr r1, [r3, r7, lsl #2]
00887594  b3 fe ff eb                                      bl #0x887068
00887598  5e 30 87 e2                                      add r3, r7, #0x5e
0088759c  03 01 85 e7                                      str r0, [r5, r3, lsl #2]
008875a0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
008875a4  07 51 85 e0                                      add r5, r5, r7, lsl #2
008875a8  06 30 63 e0                                      rsb r3, r3, r6
008875ac  84 31 85 e5                                      str r3, [r5, #0x184]
008875b0  0c 60 84 e5                                      str r6, [r4, #0xc]
008875b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}


; EVIDENCE ima_decode_segment: VA 0x008875b8, size 680, SHA-256 b69a840232fde9b9ab43e96b647fdb086f2c43e5cf43ccafe98ff561a2b67c64
; ASM_SOURCE vox_VoxNativeSubDecoderIMAADPCM-4f783647ca7a-001.asm
; FUNCTION 0x008875b8, declared_size=680, range_size=680, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::DecodeSegment(void*, int, vox::SegmentState*)
; decoder-mode: arm
008875b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008875bc  00 40 a0 e1                                      mov r4, r0
008875c0  f2 01 d0 e1                                      ldrsh r0, [r0, #0x12]
008875c4  fa 50 d4 e1                                      ldrsh r5, [r4, #0xa]
008875c8  0c d0 4d e2                                      sub sp, sp, #0xc
008875cc  04 10 8d e5                                      str r1, [sp, #4]
008875d0  c0 11 a0 e1                                      asr r1, r0, #3
008875d4  95 01 01 e0                                      mul r1, r5, r1
008875d8  02 00 a0 e1                                      mov r0, r2
008875dc  03 60 a0 e1                                      mov r6, r3
008875e0  2f 1b ea eb                                      bl #0x30e2a4
008875e4  00 00 50 e3                                      cmp r0, #0
008875e8  00 00 8d e5                                      str r0, [sp]
008875ec  3c 90 96 e5                                      ldr sb, [r6, #0x3c]
008875f0  00 00 a0 d3                                      movle r0, #0
008875f4  60 00 00 da                                      ble #0x88777c
008875f8  09 a1 84 e0                                      add sl, r4, sb, lsl #2
008875fc  09 b1 a0 e1                                      lsl fp, sb, #2
00887600  61 af 8a e2                                      add sl, sl, #0x184
00887604  00 80 9d e5                                      ldr r8, [sp]
00887608  5e 90 89 e2                                      add sb, sb, #0x5e
0088760c  3e 00 00 ea                                      b #0x88770c
00887610  09 01 94 e7                                      ldr r0, [r4, sb, lsl #2]
00887614  00 30 9a e5                                      ldr r3, [sl]
00887618  00 00 53 e1                                      cmp r3, r0
0088761c  48 00 00 0a                                      beq #0x887744
00887620  00 00 50 e3                                      cmp r0, #0
00887624  50 00 00 0a                                      beq #0x88776c
00887628  14 70 96 e5                                      ldr r7, [r6, #0x14]
0088762c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00887630  00 10 9a e5                                      ldr r1, [sl]
00887634  01 70 87 e2                                      add r7, r7, #1
00887638  07 70 63 e0                                      rsb r7, r3, r7
0088763c  74 31 94 e5                                      ldr r3, [r4, #0x174]
00887640  00 20 9d e5                                      ldr r2, [sp]
00887644  00 00 61 e0                                      rsb r0, r1, r0
00887648  0b 30 93 e7                                      ldr r3, [r3, fp]
0088764c  95 01 01 e0                                      mul r1, r5, r1
00887650  07 00 58 e1                                      cmp r8, r7
00887654  08 70 a0 b1                                      movlt r7, r8
00887658  07 70 a0 a1                                      movge r7, r7
0088765c  00 00 57 e1                                      cmp r7, r0
00887660  00 70 a0 a1                                      movge r7, r0
00887664  02 00 68 e0                                      rsb r0, r8, r2
00887668  81 10 83 e0                                      add r1, r3, r1, lsl #1
0088766c  95 07 02 e0                                      mul r2, r5, r7
00887670  04 30 9d e5                                      ldr r3, [sp, #4]
00887674  95 00 00 e0                                      mul r0, r5, r0
00887678  82 20 a0 e1                                      lsl r2, r2, #1
0088767c  80 00 83 e0                                      add r0, r3, r0, lsl #1
00887680  78 1c ea eb                                      bl #0x30e868
00887684  00 30 9a e5                                      ldr r3, [sl]
00887688  08 80 67 e0                                      rsb r8, r7, r8
0088768c  03 30 87 e0                                      add r3, r7, r3
00887690  00 30 8a e5                                      str r3, [sl]
00887694  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00887698  14 30 96 e5                                      ldr r3, [r6, #0x14]
0088769c  02 70 87 e0                                      add r7, r7, r2
008876a0  03 00 57 e1                                      cmp r7, r3
008876a4  0c 70 86 e5                                      str r7, [r6, #0xc]
008876a8  15 00 00 9a                                      bls #0x887704
008876ac  18 20 96 e5                                      ldr r2, [r6, #0x18]
008876b0  a2 00 b0 e1                                      lsrs r0, r2, #1
008876b4  1c 30 96 05                                      ldreq r3, [r6, #0x1c]
008876b8  02 00 00 0a                                      beq #0x8876c8
008876bc  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
008876c0  03 00 52 e1                                      cmp r2, r3
008876c4  49 00 00 0a                                      beq #0x8877f0
008876c8  01 30 43 e2                                      sub r3, r3, #1
008876cc  00 00 53 e3                                      cmp r3, #0
008876d0  1c 30 86 e5                                      str r3, [r6, #0x1c]
008876d4  05 00 00 1a                                      bne #0x8876f0
008876d8  20 30 96 e5                                      ldr r3, [r6, #0x20]
008876dc  01 00 53 e3                                      cmp r3, #1
008876e0  4b 00 00 0a                                      beq #0x887814
008876e4  04 30 96 e5                                      ldr r3, [r6, #4]
008876e8  01 00 53 e3                                      cmp r3, #1
008876ec  58 00 00 0a                                      beq #0x887854
008876f0  24 30 96 e5                                      ldr r3, [r6, #0x24]
008876f4  03 00 53 e3                                      cmp r3, #3
008876f8  29 00 00 0a                                      beq #0x8877a4
008876fc  04 00 53 e3                                      cmp r3, #4
00887700  35 00 00 0a                                      beq #0x8877dc
00887704  00 00 58 e3                                      cmp r8, #0
00887708  30 00 00 da                                      ble #0x8877d0
0088770c  40 30 d6 e5                                      ldrb r3, [r6, #0x40]
00887710  00 00 53 e3                                      cmp r3, #0
00887714  bd ff ff 0a                                      beq #0x887610
00887718  00 30 94 e5                                      ldr r3, [r4]
0088771c  04 00 a0 e1                                      mov r0, r4
00887720  06 10 a0 e1                                      mov r1, r6
00887724  0f e0 a0 e1                                      mov lr, pc
00887728  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0088772c  00 00 a0 e3                                      mov r0, #0
00887730  40 00 c6 e5                                      strb r0, [r6, #0x40]
00887734  09 01 94 e7                                      ldr r0, [r4, sb, lsl #2]
00887738  00 30 9a e5                                      ldr r3, [sl]
0088773c  00 00 53 e1                                      cmp r3, r0
00887740  b6 ff ff 1a                                      bne #0x887620
00887744  74 31 94 e5                                      ldr r3, [r4, #0x174]
00887748  06 20 a0 e1                                      mov r2, r6
0088774c  04 00 a0 e1                                      mov r0, r4
00887750  0b 10 93 e7                                      ldr r1, [r3, fp]
00887754  43 fe ff eb                                      bl #0x887068
00887758  00 20 a0 e3                                      mov r2, #0
0088775c  00 00 50 e3                                      cmp r0, #0
00887760  09 01 84 e7                                      str r0, [r4, sb, lsl #2]
00887764  00 20 8a e5                                      str r2, [sl]
00887768  ae ff ff 1a                                      bne #0x887628
0088776c  01 30 a0 e3                                      mov r3, #1
00887770  24 30 86 e5                                      str r3, [r6, #0x24]
00887774  00 30 9d e5                                      ldr r3, [sp]
00887778  03 00 68 e0                                      rsb r0, r8, r3
0088777c  04 30 96 e5                                      ldr r3, [r6, #4]
00887780  03 00 53 e3                                      cmp r3, #3
00887784  01 30 a0 03                                      moveq r3, #1
00887788  24 30 86 05                                      streq r3, [r6, #0x24]
0088778c  f2 31 d4 e1                                      ldrsh r3, [r4, #0x12]
00887790  c3 31 a0 e1                                      asr r3, r3, #3
00887794  95 03 05 e0                                      mul r5, r5, r3
00887798  90 05 00 e0                                      mul r0, r0, r5
0088779c  0c d0 8d e2                                      add sp, sp, #0xc
008877a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008877a4  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
008877a8  00 00 53 e3                                      cmp r3, #0
008877ac  d4 ff ff 0a                                      beq #0x887704
008877b0  00 30 94 e5                                      ldr r3, [r4]
008877b4  04 00 a0 e1                                      mov r0, r4
008877b8  00 10 e0 e3                                      mvn r1, #0
008877bc  06 20 a0 e1                                      mov r2, r6
008877c0  0f e0 a0 e1                                      mov lr, pc
008877c4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
008877c8  00 00 58 e3                                      cmp r8, #0
008877cc  ce ff ff ca                                      bgt #0x88770c
008877d0  00 20 9d e5                                      ldr r2, [sp]
008877d4  02 00 68 e0                                      rsb r0, r8, r2
008877d8  e7 ff ff ea                                      b #0x88777c
008877dc  0c 20 96 e5                                      ldr r2, [r6, #0xc]
008877e0  14 30 96 e5                                      ldr r3, [r6, #0x14]
008877e4  03 00 52 e1                                      cmp r2, r3
008877e8  c5 ff ff 9a                                      bls #0x887704
008877ec  de ff ff ea                                      b #0x88776c
008877f0  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
008877f4  00 20 96 e5                                      ldr r2, [r6]
008877f8  0c 00 a0 e3                                      mov r0, #0xc
008877fc  00 10 91 e5                                      ldr r1, [r1]
00887800  90 02 02 e0                                      mul r2, r0, r2
00887804  02 20 91 e7                                      ldr r2, [r1, r2]
00887808  04 20 92 e5                                      ldr r2, [r2, #4]
0088780c  10 20 86 e5                                      str r2, [r6, #0x10]
00887810  ac ff ff ea                                      b #0x8876c8
00887814  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00887818  00 30 96 e5                                      ldr r3, [r6]
0088781c  00 10 92 e5                                      ldr r1, [r2]
00887820  0c 20 a0 e3                                      mov r2, #0xc
00887824  92 03 03 e0                                      mul r3, r2, r3
00887828  03 20 81 e0                                      add r2, r1, r3
0088782c  04 20 92 e5                                      ldr r2, [r2, #4]
00887830  03 30 91 e7                                      ldr r3, [r1, r3]
00887834  02 20 63 e0                                      rsb r2, r3, r2
00887838  42 21 a0 e1                                      asr r2, r2, #2
0088783c  01 20 42 e2                                      sub r2, r2, #1
00887840  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00887844  14 30 86 e5                                      str r3, [r6, #0x14]
00887848  04 30 96 e5                                      ldr r3, [r6, #4]
0088784c  01 00 53 e3                                      cmp r3, #1
00887850  a6 ff ff 1a                                      bne #0x8876f0
00887854  04 00 a0 e1                                      mov r0, r4
00887858  b8 f7 ff eb                                      bl #0x885740
0088785c  a3 ff ff ea                                      b #0x8876f0


; EVIDENCE pcm_bytes_per_sample_offset: VA 0x00887b2c, size 12, SHA-256 efa1f2ac212ab085b311f7225569a52f3ffd0673c5c357628f5fd42b7944170f
; ASM_SOURCE vox_VoxNativeSubDecoderPCM-c15fea579db3-001.asm
; FUNCTION 0x00887b2c, declared_size=12, range_size=12, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM31GetBytePositionFromSampleOffsetEj
; demangled: vox::VoxNativeSubDecoderPCM::GetBytePositionFromSampleOffset(unsigned int)
; decoder-mode: arm
00887b2c  f0 01 d0 e1                                      ldrsh r0, [r0, #0x10]
00887b30  90 01 00 e0                                      mul r0, r0, r1
00887b34  1e ff 2f e1                                      bx lr


; EVIDENCE pcm_seek: VA 0x00887b38, size 128, SHA-256 56f6261b110cbdcf40e87886eb8596cd0a0040f8d9f4c0ec57cbf0dccdbd5bc4
; ASM_SOURCE vox_VoxNativeSubDecoderPCM-c15fea579db3-001.asm
; FUNCTION 0x00887b38, declared_size=128, range_size=128, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM4SeekEiPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderPCM::Seek(int, vox::SegmentState*)
; decoder-mode: arm
00887b38  70 40 2d e9                                      push {r4, r5, r6, lr}
00887b3c  00 40 51 e2                                      subs r4, r1, #0
00887b40  02 50 a0 e1                                      mov r5, r2
00887b44  10 40 92 b5                                      ldrlt r4, [r2, #0x10]
00887b48  00 30 95 e5                                      ldr r3, [r5]
00887b4c  18 20 90 e5                                      ldr r2, [r0, #0x18]
00887b50  18 10 a0 e3                                      mov r1, #0x18
00887b54  91 03 03 e0                                      mul r3, r1, r3
00887b58  04 20 92 e5                                      ldr r2, [r2, #4]
00887b5c  b0 61 d0 e1                                      ldrh r6, [r0, #0x10]
00887b60  03 10 82 e0                                      add r1, r2, r3
00887b64  08 10 91 e5                                      ldr r1, [r1, #8]
00887b68  01 00 54 e1                                      cmp r4, r1
00887b6c  01 00 00 da                                      ble #0x887b78
00887b70  00 00 e0 e3                                      mvn r0, #0
00887b74  70 80 bd e8                                      pop {r4, r5, r6, pc}
00887b78  03 20 92 e7                                      ldr r2, [r2, r3]
00887b7c  14 10 90 e5                                      ldr r1, [r0, #0x14]
00887b80  76 60 bf e6                                      sxth r6, r6
00887b84  96 04 06 e0                                      mul r6, r6, r4
00887b88  04 30 90 e5                                      ldr r3, [r0, #4]
00887b8c  02 10 81 e0                                      add r1, r1, r2
00887b90  06 10 81 e0                                      add r1, r1, r6
00887b94  03 00 a0 e1                                      mov r0, r3
00887b98  00 20 a0 e3                                      mov r2, #0
00887b9c  00 30 93 e5                                      ldr r3, [r3]
00887ba0  0f e0 a0 e1                                      mov lr, pc
00887ba4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00887ba8  00 00 50 e3                                      cmp r0, #0
00887bac  0c 40 85 05                                      streq r4, [r5, #0xc]
00887bb0  08 60 85 05                                      streq r6, [r5, #8]
00887bb4  70 80 bd e8                                      pop {r4, r5, r6, pc}


; EVIDENCE pcm_decode_segment: VA 0x00888050, size 604, SHA-256 d4ecd59deda4c5eee3a2b033e9bb13e086b83801bff32b2bacdbed99bd0c485c
; ASM_SOURCE vox_VoxNativeSubDecoderPCM-c15fea579db3-001.asm
; FUNCTION 0x00888050, declared_size=604, range_size=604, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderPCM::DecodeSegment(void*, int, vox::SegmentState*)
; decoder-mode: arm
00888050  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00888054  00 40 a0 e1                                      mov r4, r0
00888058  18 00 90 e5                                      ldr r0, [r0, #0x18]
0088805c  03 50 a0 e1                                      mov r5, r3
00888060  00 30 93 e5                                      ldr r3, [r3]
00888064  04 c0 90 e5                                      ldr ip, [r0, #4]
00888068  18 00 a0 e3                                      mov r0, #0x18
0088806c  90 03 00 e0                                      mul r0, r0, r3
00888070  08 60 95 e5                                      ldr r6, [r5, #8]
00888074  00 e0 9c e7                                      ldr lr, [ip, r0]
00888078  04 30 94 e5                                      ldr r3, [r4, #4]
0088807c  14 c0 94 e5                                      ldr ip, [r4, #0x14]
00888080  0e 60 86 e0                                      add r6, r6, lr
00888084  03 00 a0 e1                                      mov r0, r3
00888088  00 30 93 e5                                      ldr r3, [r3]
0088808c  0c 60 86 e0                                      add r6, r6, ip
00888090  01 90 a0 e1                                      mov sb, r1
00888094  02 80 a0 e1                                      mov r8, r2
00888098  b0 a1 d4 e1                                      ldrh sl, [r4, #0x10]
0088809c  14 70 95 e5                                      ldr r7, [r5, #0x14]
008880a0  0f e0 a0 e1                                      mov lr, pc
008880a4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008880a8  00 00 56 e1                                      cmp r6, r0
008880ac  06 00 00 0a                                      beq #0x8880cc
008880b0  04 30 94 e5                                      ldr r3, [r4, #4]
008880b4  06 10 a0 e1                                      mov r1, r6
008880b8  00 20 a0 e3                                      mov r2, #0
008880bc  03 00 a0 e1                                      mov r0, r3
008880c0  00 30 93 e5                                      ldr r3, [r3]
008880c4  0f e0 a0 e1                                      mov lr, pc
008880c8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008880cc  00 00 58 e3                                      cmp r8, #0
008880d0  00 60 a0 d3                                      movle r6, #0
008880d4  42 00 00 da                                      ble #0x8881e4
008880d8  7a a0 bf e6                                      sxth sl, sl
008880dc  97 aa 27 e0                                      mla r7, r7, sl, sl
008880e0  00 60 a0 e3                                      mov r6, #0
008880e4  0c b0 a0 e3                                      mov fp, #0xc
008880e8  2b 00 00 ea                                      b #0x88819c
008880ec  04 30 94 e5                                      ldr r3, [r4, #4]
008880f0  06 10 89 e0                                      add r1, sb, r6
008880f4  03 00 a0 e1                                      mov r0, r3
008880f8  00 30 93 e5                                      ldr r3, [r3]
008880fc  0f e0 a0 e1                                      mov lr, pc
00888100  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00888104  08 20 95 e5                                      ldr r2, [r5, #8]
00888108  00 30 a0 e1                                      mov r3, r0
0088810c  00 00 53 e3                                      cmp r3, #0
00888110  00 20 82 e0                                      add r2, r2, r0
00888114  08 20 85 e5                                      str r2, [r5, #8]
00888118  2f 00 00 0a                                      beq #0x8881dc
0088811c  08 00 95 e5                                      ldr r0, [r5, #8]
00888120  0a 10 a0 e1                                      mov r1, sl
00888124  03 60 86 e0                                      add r6, r6, r3
00888128  c7 1a ea eb                                      bl #0x30ec4c
0088812c  14 30 95 e5                                      ldr r3, [r5, #0x14]
00888130  0c 00 85 e5                                      str r0, [r5, #0xc]
00888134  03 00 50 e1                                      cmp r0, r3
00888138  15 00 00 9a                                      bls #0x888194
0088813c  18 20 95 e5                                      ldr r2, [r5, #0x18]
00888140  a2 30 b0 e1                                      lsrs r3, r2, #1
00888144  1c 30 95 05                                      ldreq r3, [r5, #0x1c]
00888148  02 00 00 0a                                      beq #0x888158
0088814c  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00888150  03 00 52 e1                                      cmp r2, r3
00888154  37 00 00 0a                                      beq #0x888238
00888158  01 30 43 e2                                      sub r3, r3, #1
0088815c  00 00 53 e3                                      cmp r3, #0
00888160  1c 30 85 e5                                      str r3, [r5, #0x1c]
00888164  05 00 00 1a                                      bne #0x888180
00888168  20 30 95 e5                                      ldr r3, [r5, #0x20]
0088816c  01 00 53 e3                                      cmp r3, #1
00888170  38 00 00 0a                                      beq #0x888258
00888174  04 30 95 e5                                      ldr r3, [r5, #4]
00888178  01 00 53 e3                                      cmp r3, #1
0088817c  45 00 00 0a                                      beq #0x888298
00888180  24 30 95 e5                                      ldr r3, [r5, #0x24]
00888184  03 00 53 e3                                      cmp r3, #3
00888188  1b 00 00 0a                                      beq #0x8881fc
0088818c  04 00 53 e3                                      cmp r3, #4
00888190  23 00 00 0a                                      beq #0x888224
00888194  06 00 58 e1                                      cmp r8, r6
00888198  11 00 00 da                                      ble #0x8881e4
0088819c  08 10 95 e5                                      ldr r1, [r5, #8]
008881a0  08 20 66 e0                                      rsb r2, r6, r8
008881a4  01 30 82 e0                                      add r3, r2, r1
008881a8  07 00 53 e1                                      cmp r3, r7
008881ac  ce ff ff 9a                                      bls #0x8880ec
008881b0  04 30 94 e5                                      ldr r3, [r4, #4]
008881b4  07 20 61 e0                                      rsb r2, r1, r7
008881b8  06 10 89 e0                                      add r1, sb, r6
008881bc  03 00 a0 e1                                      mov r0, r3
008881c0  00 30 93 e5                                      ldr r3, [r3]
008881c4  0f e0 a0 e1                                      mov lr, pc
008881c8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008881cc  00 30 a0 e1                                      mov r3, r0
008881d0  00 00 53 e3                                      cmp r3, #0
008881d4  08 70 85 e5                                      str r7, [r5, #8]
008881d8  cf ff ff 1a                                      bne #0x88811c
008881dc  01 30 a0 e3                                      mov r3, #1
008881e0  24 30 85 e5                                      str r3, [r5, #0x24]
008881e4  04 30 95 e5                                      ldr r3, [r5, #4]
008881e8  06 00 a0 e1                                      mov r0, r6
008881ec  03 00 53 e3                                      cmp r3, #3
008881f0  01 30 a0 03                                      moveq r3, #1
008881f4  24 30 85 05                                      streq r3, [r5, #0x24]
008881f8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
008881fc  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00888200  00 00 53 e3                                      cmp r3, #0
00888204  e2 ff ff 0a                                      beq #0x888194
00888208  00 30 94 e5                                      ldr r3, [r4]
0088820c  04 00 a0 e1                                      mov r0, r4
00888210  00 10 e0 e3                                      mvn r1, #0
00888214  05 20 a0 e1                                      mov r2, r5
00888218  0f e0 a0 e1                                      mov lr, pc
0088821c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00888220  db ff ff ea                                      b #0x888194
00888224  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00888228  14 30 95 e5                                      ldr r3, [r5, #0x14]
0088822c  03 00 52 e1                                      cmp r2, r3
00888230  d7 ff ff 9a                                      bls #0x888194
00888234  e8 ff ff ea                                      b #0x8881dc
00888238  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0088823c  00 20 95 e5                                      ldr r2, [r5]
00888240  00 10 91 e5                                      ldr r1, [r1]
00888244  9b 02 02 e0                                      mul r2, fp, r2
00888248  02 20 91 e7                                      ldr r2, [r1, r2]
0088824c  04 20 92 e5                                      ldr r2, [r2, #4]
00888250  10 20 85 e5                                      str r2, [r5, #0x10]
00888254  bf ff ff ea                                      b #0x888158
00888258  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0088825c  00 30 95 e5                                      ldr r3, [r5]
00888260  00 20 92 e5                                      ldr r2, [r2]
00888264  9b 03 03 e0                                      mul r3, fp, r3
00888268  03 10 82 e0                                      add r1, r2, r3
0088826c  03 30 92 e7                                      ldr r3, [r2, r3]
00888270  04 20 91 e5                                      ldr r2, [r1, #4]
00888274  02 20 63 e0                                      rsb r2, r3, r2
00888278  42 21 a0 e1                                      asr r2, r2, #2
0088827c  01 20 42 e2                                      sub r2, r2, #1
00888280  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00888284  93 aa 27 e0                                      mla r7, r3, sl, sl
00888288  14 30 85 e5                                      str r3, [r5, #0x14]
0088828c  04 30 95 e5                                      ldr r3, [r5, #4]
00888290  01 00 53 e3                                      cmp r3, #1
00888294  b9 ff ff 1a                                      bne #0x888180
00888298  04 00 a0 e1                                      mov r0, r4
0088829c  27 f5 ff eb                                      bl #0x885740
008882a0  14 70 95 e5                                      ldr r7, [r5, #0x14]
008882a4  97 aa 27 e0                                      mla r7, r7, sl, sl
008882a8  b4 ff ff ea                                      b #0x888180

