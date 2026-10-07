; Evidence: exact lib/armeabi-v7a/libDungeonHunter2.so from the supplied APK.
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; PT_LOAD: p_vaddr=0, p_offset=0, p_filesz=0x955130; file_offset equals ELF VA.
; Each listing spans the complete declared ARM function symbol range; data words are retained.

; texture_manager_default_loaders: glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)
; VA=0x005eaed8, size=0x45c, file_offset=0x005eaed8, SHA-256=9946d559e2573fc4f4443c5dcd5bbcd695f545d825b0a3f275b171a5cb4a86b9
005eaed8  30 40 2d e9  push	{r4, r5, lr}
005eaedc  2c d0 4d e2  sub	sp, sp, #44
005eaee0  00 40 a0 e1  mov	r4, r0
005eaee4  01 50 a0 e1  mov	r5, r1
005eaee8  47 f5 ff eb  bl	0x5e840c <_ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEEC2Ev> @ imm = #-0x2ae4
005eaeec  28 50 84 e5  str	r5, [r4, #0x28]
005eaef0  d4 30 95 e5  ldr	r3, [r5, #0xd4]
005eaef4  30 50 84 e2  add	r5, r4, #48
005eaef8  34 30 93 e5  ldr	r3, [r3, #0x34]
005eaefc  00 00 53 e3  cmp	r3, #0
005eaf00  2c 30 84 e5  str	r3, [r4, #0x2c]
005eaf04  04 20 93 15  ldrne	r2, [r3, #0x4]
005eaf08  01 20 82 12  addne	r2, r2, #1
005eaf0c  04 20 83 15  strne	r2, [r3, #0x4]
005eaf10  00 30 a0 e3  mov	r3, #0
005eaf14  43 20 a0 e3  mov	r2, #67
005eaf18  64 30 84 e5  str	r3, [r4, #0x64]
005eaf1c  30 30 84 e5  str	r3, [r4, #0x30]
005eaf20  34 30 84 e5  str	r3, [r4, #0x34]
005eaf24  38 30 84 e5  str	r3, [r4, #0x38]
005eaf28  3c 30 84 e5  str	r3, [r4, #0x3c]
005eaf2c  40 30 84 e5  str	r3, [r4, #0x40]
005eaf30  44 30 84 e5  str	r3, [r4, #0x44]
005eaf34  68 30 84 e5  str	r3, [r4, #0x68]
005eaf38  6c 30 84 e5  str	r3, [r4, #0x6c]
005eaf3c  70 30 84 e5  str	r3, [r4, #0x70]
005eaf40  48 30 84 e5  str	r3, [r4, #0x48]
005eaf44  4c 30 84 e5  str	r3, [r4, #0x4c]
005eaf48  50 30 84 e5  str	r3, [r4, #0x50]
005eaf4c  54 30 84 e5  str	r3, [r4, #0x54]
005eaf50  58 30 84 e5  str	r3, [r4, #0x58]
005eaf54  5c 30 84 e5  str	r3, [r4, #0x5c]
005eaf58  60 30 84 e5  str	r3, [r4, #0x60]
005eaf5c  74 20 84 e5  str	r2, [r4, #0x74]
005eaf60  46 61 00 eb  bl	0x603480 <_ZN6glitch5video20createImageLoaderBMPEv> @ imm = #0x18518
005eaf64  00 00 50 e3  cmp	r0, #0
005eaf68  24 00 8d e5  str	r0, [sp, #0x24]
005eaf6c  04 30 90 15  ldrne	r3, [r0, #0x4]
005eaf70  01 30 83 12  addne	r3, r3, #1
005eaf74  04 30 80 15  strne	r3, [r0, #0x4]
005eaf78  34 10 94 e5  ldr	r1, [r4, #0x34]
005eaf7c  38 30 94 e5  ldr	r3, [r4, #0x38]
005eaf80  03 00 51 e1  cmp	r1, r3
005eaf84  e6 00 00 0a  beq	0x5eb324 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x44c> @ imm = #0x398
005eaf88  24 30 9d e5  ldr	r3, [sp, #0x24]
005eaf8c  00 00 53 e3  cmp	r3, #0
005eaf90  00 30 81 e5  str	r3, [r1]
005eaf94  04 20 93 15  ldrne	r2, [r3, #0x4]
005eaf98  01 20 82 12  addne	r2, r2, #1
005eaf9c  04 20 83 15  strne	r2, [r3, #0x4]
005eafa0  34 30 94 e5  ldr	r3, [r4, #0x34]
005eafa4  04 30 83 e2  add	r3, r3, #4
005eafa8  34 30 84 e5  str	r3, [r4, #0x34]
005eafac  24 00 9d e5  ldr	r0, [sp, #0x24]
005eafb0  00 00 50 e3  cmp	r0, #0
005eafb4  00 00 00 0a  beq	0x5eafbc <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0xe4> @ imm = #0x0
005eafb8  71 c9 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2cda3c
005eafbc  ff 66 00 eb  bl	0x604bc0 <_ZN6glitch5video20createImageLoaderJPGEv> @ imm = #0x19bfc
005eafc0  00 00 50 e3  cmp	r0, #0
005eafc4  20 00 8d e5  str	r0, [sp, #0x20]
005eafc8  04 30 90 15  ldrne	r3, [r0, #0x4]
005eafcc  01 30 83 12  addne	r3, r3, #1
005eafd0  04 30 80 15  strne	r3, [r0, #0x4]
005eafd4  34 10 94 e5  ldr	r1, [r4, #0x34]
005eafd8  38 30 94 e5  ldr	r3, [r4, #0x38]
005eafdc  03 00 51 e1  cmp	r1, r3
005eafe0  bb 00 00 0a  beq	0x5eb2d4 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x3fc> @ imm = #0x2ec
005eafe4  20 30 9d e5  ldr	r3, [sp, #0x20]
005eafe8  00 00 53 e3  cmp	r3, #0
005eafec  00 30 81 e5  str	r3, [r1]
005eaff0  04 20 93 15  ldrne	r2, [r3, #0x4]
005eaff4  01 20 82 12  addne	r2, r2, #1
005eaff8  04 20 83 15  strne	r2, [r3, #0x4]
005eaffc  34 30 94 e5  ldr	r3, [r4, #0x34]
005eb000  04 30 83 e2  add	r3, r3, #4
005eb004  34 30 84 e5  str	r3, [r4, #0x34]
005eb008  20 00 9d e5  ldr	r0, [sp, #0x20]
005eb00c  00 00 50 e3  cmp	r0, #0
005eb010  00 00 00 0a  beq	0x5eb018 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x140> @ imm = #0x0
005eb014  5a c9 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2cda98
005eb018  c3 6c 00 eb  bl	0x60632c <_ZN6glitch5video20createImageLoaderTGAEv> @ imm = #0x1b30c
005eb01c  00 00 50 e3  cmp	r0, #0
005eb020  1c 00 8d e5  str	r0, [sp, #0x1c]
005eb024  04 30 90 15  ldrne	r3, [r0, #0x4]
005eb028  01 30 83 12  addne	r3, r3, #1
005eb02c  04 30 80 15  strne	r3, [r0, #0x4]
005eb030  34 10 94 e5  ldr	r1, [r4, #0x34]
005eb034  38 30 94 e5  ldr	r3, [r4, #0x38]
005eb038  03 00 51 e1  cmp	r1, r3
005eb03c  a0 00 00 0a  beq	0x5eb2c4 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x3ec> @ imm = #0x280
005eb040  1c 30 9d e5  ldr	r3, [sp, #0x1c]
005eb044  00 00 53 e3  cmp	r3, #0
005eb048  00 30 81 e5  str	r3, [r1]
005eb04c  04 20 93 15  ldrne	r2, [r3, #0x4]
005eb050  01 20 82 12  addne	r2, r2, #1
005eb054  04 20 83 15  strne	r2, [r3, #0x4]
005eb058  34 30 94 e5  ldr	r3, [r4, #0x34]
005eb05c  04 30 83 e2  add	r3, r3, #4
005eb060  34 30 84 e5  str	r3, [r4, #0x34]
005eb064  1c 00 9d e5  ldr	r0, [sp, #0x1c]
005eb068  00 00 50 e3  cmp	r0, #0
005eb06c  00 00 00 0a  beq	0x5eb074 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x19c> @ imm = #0x0
005eb070  43 c9 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2cdaf4
005eb074  52 5f 00 eb  bl	0x602dc4 <_ZN6glitch5video20createImageLoaderATCEv> @ imm = #0x17d48
005eb078  00 00 50 e3  cmp	r0, #0
005eb07c  18 00 8d e5  str	r0, [sp, #0x18]
005eb080  04 30 90 15  ldrne	r3, [r0, #0x4]
005eb084  01 30 83 12  addne	r3, r3, #1
005eb088  04 30 80 15  strne	r3, [r0, #0x4]
005eb08c  34 10 94 e5  ldr	r1, [r4, #0x34]
005eb090  38 30 94 e5  ldr	r3, [r4, #0x38]
005eb094  03 00 51 e1  cmp	r1, r3
005eb098  95 00 00 0a  beq	0x5eb2f4 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x41c> @ imm = #0x254
005eb09c  18 30 9d e5  ldr	r3, [sp, #0x18]
005eb0a0  00 00 53 e3  cmp	r3, #0
005eb0a4  00 30 81 e5  str	r3, [r1]
005eb0a8  04 20 93 15  ldrne	r2, [r3, #0x4]
005eb0ac  01 20 82 12  addne	r2, r2, #1
005eb0b0  04 20 83 15  strne	r2, [r3, #0x4]
005eb0b4  34 30 94 e5  ldr	r3, [r4, #0x34]
005eb0b8  04 30 83 e2  add	r3, r3, #4
005eb0bc  34 30 84 e5  str	r3, [r4, #0x34]
005eb0c0  18 00 9d e5  ldr	r0, [sp, #0x18]
005eb0c4  00 00 50 e3  cmp	r0, #0
005eb0c8  00 00 00 0a  beq	0x5eb0d0 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x1f8> @ imm = #0x0
005eb0cc  2c c9 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2cdb50
005eb0d0  cd 67 00 eb  bl	0x60500c <_ZN6glitch5video20createImageLoaderPNGEv> @ imm = #0x19f34
005eb0d4  00 00 50 e3  cmp	r0, #0
005eb0d8  14 00 8d e5  str	r0, [sp, #0x14]
005eb0dc  04 30 90 15  ldrne	r3, [r0, #0x4]
005eb0e0  01 30 83 12  addne	r3, r3, #1
005eb0e4  04 30 80 15  strne	r3, [r0, #0x4]
005eb0e8  34 10 94 e5  ldr	r1, [r4, #0x34]
005eb0ec  38 30 94 e5  ldr	r3, [r4, #0x38]
005eb0f0  03 00 51 e1  cmp	r1, r3
005eb0f4  82 00 00 0a  beq	0x5eb304 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x42c> @ imm = #0x208
005eb0f8  14 30 9d e5  ldr	r3, [sp, #0x14]
005eb0fc  00 00 53 e3  cmp	r3, #0
005eb100  00 30 81 e5  str	r3, [r1]
005eb104  04 20 93 15  ldrne	r2, [r3, #0x4]
005eb108  01 20 82 12  addne	r2, r2, #1
005eb10c  04 20 83 15  strne	r2, [r3, #0x4]
005eb110  34 30 94 e5  ldr	r3, [r4, #0x34]
005eb114  04 30 83 e2  add	r3, r3, #4
005eb118  34 30 84 e5  str	r3, [r4, #0x34]
005eb11c  14 00 9d e5  ldr	r0, [sp, #0x14]
005eb120  00 00 50 e3  cmp	r0, #0
005eb124  00 00 00 0a  beq	0x5eb12c <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x254> @ imm = #0x0
005eb128  15 c9 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2cdbac
005eb12c  84 64 00 eb  bl	0x604344 <_ZN6glitch5video20createImageLoaderDDSEv> @ imm = #0x19210
005eb130  00 00 50 e3  cmp	r0, #0
005eb134  10 00 8d e5  str	r0, [sp, #0x10]
005eb138  04 30 90 15  ldrne	r3, [r0, #0x4]
005eb13c  01 30 83 12  addne	r3, r3, #1
005eb140  04 30 80 15  strne	r3, [r0, #0x4]
005eb144  34 10 94 e5  ldr	r1, [r4, #0x34]
005eb148  38 30 94 e5  ldr	r3, [r4, #0x38]
005eb14c  03 00 51 e1  cmp	r1, r3
005eb150  6f 00 00 0a  beq	0x5eb314 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x43c> @ imm = #0x1bc
005eb154  10 30 9d e5  ldr	r3, [sp, #0x10]
005eb158  00 00 53 e3  cmp	r3, #0
005eb15c  00 30 81 e5  str	r3, [r1]
005eb160  04 20 93 15  ldrne	r2, [r3, #0x4]
005eb164  01 20 82 12  addne	r2, r2, #1
005eb168  04 20 83 15  strne	r2, [r3, #0x4]
005eb16c  34 30 94 e5  ldr	r3, [r4, #0x34]
005eb170  04 30 83 e2  add	r3, r3, #4
005eb174  34 30 84 e5  str	r3, [r4, #0x34]
005eb178  10 00 9d e5  ldr	r0, [sp, #0x10]
005eb17c  00 00 50 e3  cmp	r0, #0
005eb180  00 00 00 0a  beq	0x5eb188 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x2b0> @ imm = #0x0
005eb184  fe c8 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2cdc08
005eb188  8c 69 00 eb  bl	0x6057c0 <_ZN6glitch5video20createImageLoaderPVREv> @ imm = #0x1a630
005eb18c  00 00 50 e3  cmp	r0, #0
005eb190  0c 00 8d e5  str	r0, [sp, #0xc]
005eb194  04 30 90 15  ldrne	r3, [r0, #0x4]
005eb198  01 30 83 12  addne	r3, r3, #1
005eb19c  04 30 80 15  strne	r3, [r0, #0x4]
005eb1a0  34 10 94 e5  ldr	r1, [r4, #0x34]
005eb1a4  38 30 94 e5  ldr	r3, [r4, #0x38]
005eb1a8  03 00 51 e1  cmp	r1, r3
005eb1ac  4c 00 00 0a  beq	0x5eb2e4 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x40c> @ imm = #0x130
005eb1b0  0c 30 9d e5  ldr	r3, [sp, #0xc]
005eb1b4  00 00 53 e3  cmp	r3, #0
005eb1b8  00 30 81 e5  str	r3, [r1]
005eb1bc  04 20 93 15  ldrne	r2, [r3, #0x4]
005eb1c0  01 20 82 12  addne	r2, r2, #1
005eb1c4  04 20 83 15  strne	r2, [r3, #0x4]
005eb1c8  34 30 94 e5  ldr	r3, [r4, #0x34]
005eb1cc  04 30 83 e2  add	r3, r3, #4
005eb1d0  34 30 84 e5  str	r3, [r4, #0x34]
005eb1d4  0c 00 9d e5  ldr	r0, [sp, #0xc]
005eb1d8  00 00 50 e3  cmp	r0, #0
005eb1dc  00 00 00 0a  beq	0x5eb1e4 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x30c> @ imm = #0x0
005eb1e0  e7 c8 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2cdc64
005eb1e4  c9 6e 00 eb  bl	0x606d10 <_ZN6glitch5video20createImageWriterJPGEv> @ imm = #0x1bb24
005eb1e8  40 10 94 e5  ldr	r1, [r4, #0x40]
005eb1ec  44 30 94 e5  ldr	r3, [r4, #0x44]
005eb1f0  3c 50 84 e2  add	r5, r4, #60
005eb1f4  08 00 8d e5  str	r0, [sp, #0x8]
005eb1f8  03 00 51 e1  cmp	r1, r3
005eb1fc  1a 00 00 0a  beq	0x5eb26c <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x394> @ imm = #0x68
005eb200  00 00 81 e5  str	r0, [r1]
005eb204  40 30 94 e5  ldr	r3, [r4, #0x40]
005eb208  04 30 83 e2  add	r3, r3, #4
005eb20c  40 30 84 e5  str	r3, [r4, #0x40]
005eb210  05 71 00 eb  bl	0x60762c <_ZN6glitch5video20createImageWriterTGAEv> @ imm = #0x1c414
005eb214  40 10 94 e5  ldr	r1, [r4, #0x40]
005eb218  44 30 94 e5  ldr	r3, [r4, #0x44]
005eb21c  04 00 8d e5  str	r0, [sp, #0x4]
005eb220  03 00 51 e1  cmp	r1, r3
005eb224  19 00 00 0a  beq	0x5eb290 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x3b8> @ imm = #0x64
005eb228  00 00 81 e5  str	r0, [r1]
005eb22c  40 30 94 e5  ldr	r3, [r4, #0x40]
005eb230  04 30 83 e2  add	r3, r3, #4
005eb234  40 30 84 e5  str	r3, [r4, #0x40]
005eb238  20 70 00 eb  bl	0x6072c0 <_ZN6glitch5video20createImageWriterPNGEv> @ imm = #0x1c080
005eb23c  40 10 94 e5  ldr	r1, [r4, #0x40]
005eb240  44 30 94 e5  ldr	r3, [r4, #0x44]
005eb244  00 00 8d e5  str	r0, [sp]
005eb248  03 00 51 e1  cmp	r1, r3
005eb24c  18 00 00 0a  beq	0x5eb2b4 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x3dc> @ imm = #0x60
005eb250  00 00 81 e5  str	r0, [r1]
005eb254  40 30 94 e5  ldr	r3, [r4, #0x40]
005eb258  04 30 83 e2  add	r3, r3, #4
005eb25c  40 30 84 e5  str	r3, [r4, #0x40]
005eb260  04 00 a0 e1  mov	r0, r4
005eb264  2c d0 8d e2  add	sp, sp, #44
005eb268  30 80 bd e8  pop	{r4, r5, pc}
005eb26c  05 00 a0 e1  mov	r0, r5
005eb270  08 20 8d e2  add	r2, sp, #8
005eb274  c5 fd ff eb  bl	0x5ea990 <_ZNSt6vectorIPN6glitch5video12IImageWriterENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS3_RKS3_RKSt11__true_typejb.clone.4> @ imm = #-0x8ec
005eb278  eb 70 00 eb  bl	0x60762c <_ZN6glitch5video20createImageWriterTGAEv> @ imm = #0x1c3ac
005eb27c  40 10 94 e5  ldr	r1, [r4, #0x40]
005eb280  44 30 94 e5  ldr	r3, [r4, #0x44]
005eb284  04 00 8d e5  str	r0, [sp, #0x4]
005eb288  03 00 51 e1  cmp	r1, r3
005eb28c  e5 ff ff 1a  bne	0x5eb228 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x350> @ imm = #-0x6c
005eb290  05 00 a0 e1  mov	r0, r5
005eb294  04 20 8d e2  add	r2, sp, #4
005eb298  bc fd ff eb  bl	0x5ea990 <_ZNSt6vectorIPN6glitch5video12IImageWriterENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS3_RKS3_RKSt11__true_typejb.clone.4> @ imm = #-0x910
005eb29c  07 70 00 eb  bl	0x6072c0 <_ZN6glitch5video20createImageWriterPNGEv> @ imm = #0x1c01c
005eb2a0  40 10 94 e5  ldr	r1, [r4, #0x40]
005eb2a4  44 30 94 e5  ldr	r3, [r4, #0x44]
005eb2a8  00 00 8d e5  str	r0, [sp]
005eb2ac  03 00 51 e1  cmp	r1, r3
005eb2b0  e6 ff ff 1a  bne	0x5eb250 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x378> @ imm = #-0x68
005eb2b4  05 00 a0 e1  mov	r0, r5
005eb2b8  0d 20 a0 e1  mov	r2, sp
005eb2bc  b3 fd ff eb  bl	0x5ea990 <_ZNSt6vectorIPN6glitch5video12IImageWriterENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS3_RKS3_RKSt11__true_typejb.clone.4> @ imm = #-0x934
005eb2c0  e6 ff ff ea  b	0x5eb260 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x388> @ imm = #-0x68
005eb2c4  05 00 a0 e1  mov	r0, r5
005eb2c8  1c 20 8d e2  add	r2, sp, #28
005eb2cc  42 f7 ff eb  bl	0x5e8fdc <_ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video12IImageLoaderEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.5> @ imm = #-0x22f8
005eb2d0  63 ff ff ea  b	0x5eb064 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x18c> @ imm = #-0x274
005eb2d4  05 00 a0 e1  mov	r0, r5
005eb2d8  20 20 8d e2  add	r2, sp, #32
005eb2dc  3e f7 ff eb  bl	0x5e8fdc <_ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video12IImageLoaderEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.5> @ imm = #-0x2308
005eb2e0  48 ff ff ea  b	0x5eb008 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x130> @ imm = #-0x2e0
005eb2e4  05 00 a0 e1  mov	r0, r5
005eb2e8  0c 20 8d e2  add	r2, sp, #12
005eb2ec  3a f7 ff eb  bl	0x5e8fdc <_ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video12IImageLoaderEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.5> @ imm = #-0x2318
005eb2f0  b7 ff ff ea  b	0x5eb1d4 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x2fc> @ imm = #-0x124
005eb2f4  05 00 a0 e1  mov	r0, r5
005eb2f8  18 20 8d e2  add	r2, sp, #24
005eb2fc  36 f7 ff eb  bl	0x5e8fdc <_ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video12IImageLoaderEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.5> @ imm = #-0x2328
005eb300  6e ff ff ea  b	0x5eb0c0 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x1e8> @ imm = #-0x248
005eb304  05 00 a0 e1  mov	r0, r5
005eb308  14 20 8d e2  add	r2, sp, #20
005eb30c  32 f7 ff eb  bl	0x5e8fdc <_ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video12IImageLoaderEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.5> @ imm = #-0x2338
005eb310  81 ff ff ea  b	0x5eb11c <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x244> @ imm = #-0x1fc
005eb314  05 00 a0 e1  mov	r0, r5
005eb318  10 20 8d e2  add	r2, sp, #16
005eb31c  2e f7 ff eb  bl	0x5e8fdc <_ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video12IImageLoaderEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.5> @ imm = #-0x2348
005eb320  94 ff ff ea  b	0x5eb178 <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0x2a0> @ imm = #-0x1b0
005eb324  05 00 a0 e1  mov	r0, r5
005eb328  24 20 8d e2  add	r2, sp, #36
005eb32c  2a f7 ff eb  bl	0x5e8fdc <_ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video12IImageLoaderEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.5> @ imm = #-0x2358
005eb330  1d ff ff ea  b	0x5eafac <_ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE+0xd4> @ imm = #-0x38c

; loader_selection: glitch::video::CTextureManager::getImageLoader(glitch::io::IReadFile*) const
; VA=0x005e8144, size=0x11c, file_offset=0x005e8144, SHA-256=1dc678331e1264fc6776fb40bc0990b8f4372da74b2b9e959257592726b1cdec
005e8144  f0 47 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, lr}
005e8148  00 40 52 e2  subs	r4, r2, #0
005e814c  00 90 a0 e1  mov	r9, r0
005e8150  01 a0 a0 e1  mov	r10, r1
005e8154  24 00 00 0a  beq	0x5e81ec <_ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE+0xa8> @ imm = #0x90
005e8158  00 30 94 e5  ldr	r3, [r4]
005e815c  04 00 a0 e1  mov	r0, r4
005e8160  0f e0 a0 e1  mov	lr, pc
005e8164  24 f0 93 e5  ldr	pc, [r3, #0x24]
005e8168  30 50 9a e5  ldr	r5, [r10, #0x30]
005e816c  34 70 9a e5  ldr	r7, [r10, #0x34]
005e8170  00 80 a0 e1  mov	r8, r0
005e8174  07 00 55 e1  cmp	r5, r7
005e8178  03 00 00 1a  bne	0x5e818c <_ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE+0x48> @ imm = #0xc
005e817c  1a 00 00 ea  b	0x5e81ec <_ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE+0xa8> @ imm = #0x68
005e8180  04 50 85 e2  add	r5, r5, #4
005e8184  07 00 55 e1  cmp	r5, r7
005e8188  1b 00 00 0a  beq	0x5e81fc <_ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE+0xb8> @ imm = #0x6c
005e818c  00 30 95 e5  ldr	r3, [r5]
005e8190  04 10 a0 e1  mov	r1, r4
005e8194  03 00 a0 e1  mov	r0, r3
005e8198  00 30 93 e5  ldr	r3, [r3]
005e819c  0f e0 a0 e1  mov	lr, pc
005e81a0  10 f0 93 e5  ldr	pc, [r3, #0x10]
005e81a4  00 30 94 e5  ldr	r3, [r4]
005e81a8  00 60 a0 e1  mov	r6, r0
005e81ac  08 10 a0 e1  mov	r1, r8
005e81b0  04 00 a0 e1  mov	r0, r4
005e81b4  00 20 a0 e3  mov	r2, #0
005e81b8  0f e0 a0 e1  mov	lr, pc
005e81bc  18 f0 93 e5  ldr	pc, [r3, #0x18]
005e81c0  00 00 56 e3  cmp	r6, #0
005e81c4  ed ff ff 0a  beq	0x5e8180 <_ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE+0x3c> @ imm = #-0x4c
005e81c8  00 30 95 e5  ldr	r3, [r5]
005e81cc  00 00 53 e3  cmp	r3, #0
005e81d0  00 30 89 e5  str	r3, [r9]
005e81d4  02 00 00 0a  beq	0x5e81e4 <_ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE+0xa0> @ imm = #0x8
005e81d8  04 20 93 e5  ldr	r2, [r3, #0x4]
005e81dc  01 20 82 e2  add	r2, r2, #1
005e81e0  04 20 83 e5  str	r2, [r3, #0x4]
005e81e4  09 00 a0 e1  mov	r0, r9
005e81e8  f0 87 bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, pc}
005e81ec  00 30 a0 e3  mov	r3, #0
005e81f0  00 30 89 e5  str	r3, [r9]
005e81f4  09 00 a0 e1  mov	r0, r9
005e81f8  f0 87 bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, pc}
005e81fc  34 70 9a e5  ldr	r7, [r10, #0x34]
005e8200  30 50 9a e5  ldr	r5, [r10, #0x30]
005e8204  07 00 55 e1  cmp	r5, r7
005e8208  03 00 00 1a  bne	0x5e821c <_ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE+0xd8> @ imm = #0xc
005e820c  f6 ff ff ea  b	0x5e81ec <_ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE+0xa8> @ imm = #-0x28
005e8210  04 50 85 e2  add	r5, r5, #4
005e8214  07 00 55 e1  cmp	r5, r7
005e8218  f3 ff ff 0a  beq	0x5e81ec <_ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE+0xa8> @ imm = #-0x34
005e821c  00 80 95 e5  ldr	r8, [r5]
005e8220  00 30 94 e5  ldr	r3, [r4]
005e8224  04 00 a0 e1  mov	r0, r4
005e8228  00 20 98 e5  ldr	r2, [r8]
005e822c  0c 60 92 e5  ldr	r6, [r2, #0xc]
005e8230  0f e0 a0 e1  mov	lr, pc
005e8234  28 f0 93 e5  ldr	pc, [r3, #0x28]
005e8238  00 10 a0 e1  mov	r1, r0
005e823c  08 00 a0 e1  mov	r0, r8
005e8240  36 ff 2f e1  blx	r6
005e8244  00 00 50 e3  cmp	r0, #0
005e8248  f0 ff ff 0a  beq	0x5e8210 <_ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE+0xcc> @ imm = #-0x40
005e824c  00 30 95 e5  ldr	r3, [r5]
005e8250  00 00 53 e3  cmp	r3, #0
005e8254  00 30 89 e5  str	r3, [r9]
005e8258  de ff ff 1a  bne	0x5e81d8 <_ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE+0x94> @ imm = #-0x88
005e825c  e0 ff ff ea  b	0x5e81e4 <_ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE+0xa0> @ imm = #-0x80

; texture_load_orchestration: glitch::video::CTextureManager::loadTextureFromFile(glitch::io::IReadFile*, char const*, glitch::video::E_PIXEL_FORMAT&, bool)
; VA=0x005ecba4, size=0x390, file_offset=0x005ecba4, SHA-256=a9e7f7832a24494797f70dfa627227c1794bacdc63f1934279211fcc50f55577
005ecba4  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
005ecba8  74 c0 91 e5  ldr	r12, [r1, #0x74]
005ecbac  3c d0 4d e2  sub	sp, sp, #60
005ecbb0  00 40 a0 e3  mov	r4, #0
005ecbb4  01 c0 8c e3  orr	r12, r12, #1
005ecbb8  74 c0 81 e5  str	r12, [r1, #0x74]
005ecbbc  00 60 a0 e1  mov	r6, r0
005ecbc0  30 00 8d e2  add	r0, sp, #48
005ecbc4  03 80 a0 e1  mov	r8, r3
005ecbc8  01 50 a0 e1  mov	r5, r1
005ecbcc  34 40 8d e5  str	r4, [sp, #0x34]
005ecbd0  02 70 a0 e1  mov	r7, r2
005ecbd4  60 b0 9d e5  ldr	r11, [sp, #0x60]
005ecbd8  59 ed ff eb  bl	0x5e8144 <_ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE> @ imm = #-0x4a9c
005ecbdc  30 30 9d e5  ldr	r3, [sp, #0x30]
005ecbe0  04 00 53 e1  cmp	r3, r4
005ecbe4  81 00 00 0a  beq	0x5ecdf0 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x24c> @ imm = #0x204
005ecbe8  03 00 a0 e1  mov	r0, r3
005ecbec  00 30 93 e5  ldr	r3, [r3]
005ecbf0  0f e0 a0 e1  mov	lr, pc
005ecbf4  18 f0 93 e5  ldr	pc, [r3, #0x18]
005ecbf8  00 a0 50 e2  subs	r10, r0, #0
005ecbfc  5e 00 00 0a  beq	0x5ecd7c <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x1d8> @ imm = #0x178
005ecc00  30 30 9d e5  ldr	r3, [sp, #0x30]
005ecc04  01 20 a0 e3  mov	r2, #1
005ecc08  0c 10 a0 e3  mov	r1, #12
005ecc0c  0c 10 8d e5  str	r1, [sp, #0xc]
005ecc10  20 20 8d e5  str	r2, [sp, #0x20]
005ecc14  26 40 cd e5  strb	r4, [sp, #0x26]
005ecc18  08 40 8d e5  str	r4, [sp, #0x8]
005ecc1c  10 40 8d e5  str	r4, [sp, #0x10]
005ecc20  14 40 8d e5  str	r4, [sp, #0x14]
005ecc24  18 20 8d e5  str	r2, [sp, #0x18]
005ecc28  1c 20 8d e5  str	r2, [sp, #0x1c]
005ecc2c  24 40 cd e5  strb	r4, [sp, #0x24]
005ecc30  25 40 cd e5  strb	r4, [sp, #0x25]
005ecc34  08 40 8d e2  add	r4, sp, #8
005ecc38  03 00 a0 e1  mov	r0, r3
005ecc3c  07 10 a0 e1  mov	r1, r7
005ecc40  00 30 93 e5  ldr	r3, [r3]
005ecc44  04 20 a0 e1  mov	r2, r4
005ecc48  0f e0 a0 e1  mov	lr, pc
005ecc4c  1c f0 93 e5  ldr	pc, [r3, #0x1c]
005ecc50  00 a0 50 e2  subs	r10, r0, #0
005ecc54  96 00 00 0a  beq	0x5eceb4 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x310> @ imm = #0x258
005ecc58  0c 30 9d e5  ldr	r3, [sp, #0xc]
005ecc5c  24 a0 dd e5  ldrb	r10, [sp, #0x24]
005ecc60  00 30 8b e5  str	r3, [r11]
005ecc64  28 10 95 e5  ldr	r1, [r5, #0x28]
005ecc68  00 00 5a e3  cmp	r10, #0
005ecc6c  74 30 95 15  ldrne	r3, [r5, #0x74]
005ecc70  88 20 91 e5  ldr	r2, [r1, #0x88]
005ecc74  74 30 95 05  ldreq	r3, [r5, #0x74]
005ecc78  53 93 e0 17  ubfxne	r9, r3, #0x6, #0x1
005ecc7c  0a 90 a0 01  moveq	r9, r10
005ecc80  10 00 12 e3  tst	r2, #16
005ecc84  09 20 a0 01  moveq	r2, r9
005ecc88  01 20 a0 13  movne	r2, #1
005ecc8c  20 00 13 e3  tst	r3, #32
005ecc90  03 30 a0 13  movne	r3, #3
005ecc94  24 20 cd e5  strb	r2, [sp, #0x24]
005ecc98  14 30 8d 15  strne	r3, [sp, #0x14]
005ecc9c  64 00 00 0a  beq	0x5ece34 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x290> @ imm = #0x190
005ecca0  08 20 a0 e1  mov	r2, r8
005ecca4  2c 00 8d e2  add	r0, sp, #44
005ecca8  04 30 a0 e1  mov	r3, r4
005eccac  51 f6 fe eb  bl	0x5aa5f8 <_ZN6glitch5video12IVideoDriver13createTextureEPKcRKNS0_12STextureDescE> @ imm = #-0x426bc
005eccb0  2c 30 9d e5  ldr	r3, [sp, #0x2c]
005eccb4  00 00 53 e3  cmp	r3, #0
005eccb8  04 20 93 15  ldrne	r2, [r3, #0x4]
005eccbc  01 20 82 12  addne	r2, r2, #1
005eccc0  04 20 83 15  strne	r2, [r3, #0x4]
005eccc4  34 00 9d e5  ldr	r0, [sp, #0x34]
005eccc8  34 30 8d e5  str	r3, [sp, #0x34]
005ecccc  00 00 50 e3  cmp	r0, #0
005eccd0  00 00 00 0a  beq	0x5eccd8 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x134> @ imm = #0x0
005eccd4  2a c2 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2cf758
005eccd8  2c 00 9d e5  ldr	r0, [sp, #0x2c]
005eccdc  00 00 50 e3  cmp	r0, #0
005ecce0  00 00 00 0a  beq	0x5ecce8 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x144> @ imm = #0x0
005ecce4  26 c2 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2cf768
005ecce8  34 00 9d e5  ldr	r0, [sp, #0x34]
005eccec  24 a0 cd e5  strb	r10, [sp, #0x24]
005eccf0  00 00 50 e3  cmp	r0, #0
005eccf4  00 00 86 05  streq	r0, [r6]
005eccf8  42 00 00 0a  beq	0x5ece08 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x264> @ imm = #0x108
005eccfc  01 30 29 e2  eor	r3, r9, #1
005ecd00  00 10 a0 e3  mov	r1, #0
005ecd04  01 20 a0 e3  mov	r2, #1
005ecd08  99 44 00 eb  bl	0x5fdf74 <_ZN6glitch5video8ITexture7setDataEPvbb> @ imm = #0x11264
005ecd0c  28 80 95 e5  ldr	r8, [r5, #0x28]
005ecd10  9c 30 98 e5  ldr	r3, [r8, #0x9c]
005ecd14  02 0a 13 e3  tst	r3, #8192
005ecd18  49 00 00 1a  bne	0x5ece44 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x2a0> @ imm = #0x124
005ecd1c  30 20 9d e5  ldr	r2, [sp, #0x30]
005ecd20  04 30 a0 e1  mov	r3, r4
005ecd24  07 10 a0 e1  mov	r1, r7
005ecd28  02 00 a0 e1  mov	r0, r2
005ecd2c  00 c0 92 e5  ldr	r12, [r2]
005ecd30  34 20 8d e2  add	r2, sp, #52
005ecd34  0f e0 a0 e1  mov	lr, pc
005ecd38  20 f0 9c e5  ldr	pc, [r12, #0x20]
005ecd3c  00 40 50 e2  subs	r4, r0, #0
005ecd40  6e 00 00 0a  beq	0x5ecf00 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x35c> @ imm = #0x1b8
005ecd44  34 00 9d e5  ldr	r0, [sp, #0x34]
005ecd48  3f 30 d0 e5  ldrb	r3, [r0, #0x3f]
005ecd4c  08 00 13 e3  tst	r3, #8
005ecd50  62 00 00 0a  beq	0x5ecee0 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x33c> @ imm = #0x188
005ecd54  2c 30 90 e5  ldr	r3, [r0, #0x2c]
005ecd58  00 00 53 e3  cmp	r3, #0
005ecd5c  24 00 00 0a  beq	0x5ecdf4 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x250> @ imm = #0x90
005ecd60  74 30 95 e5  ldr	r3, [r5, #0x74]
005ecd64  01 00 13 e3  tst	r3, #1
005ecd68  21 00 00 1a  bne	0x5ecdf4 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x250> @ imm = #0x84
005ecd6c  01 10 a0 e3  mov	r1, #1
005ecd70  49 44 00 eb  bl	0x5fde9c <_ZN6glitch5video8ITexture4bindEb> @ imm = #0x11124
005ecd74  34 00 9d e5  ldr	r0, [sp, #0x34]
005ecd78  1d 00 00 ea  b	0x5ecdf4 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x250> @ imm = #0x74
005ecd7c  30 30 9d e5  ldr	r3, [sp, #0x30]
005ecd80  08 90 8d e2  add	r9, sp, #8
005ecd84  07 20 a0 e1  mov	r2, r7
005ecd88  03 10 a0 e1  mov	r1, r3
005ecd8c  09 00 a0 e1  mov	r0, r9
005ecd90  00 30 93 e5  ldr	r3, [r3]
005ecd94  0f e0 a0 e1  mov	lr, pc
005ecd98  14 f0 93 e5  ldr	pc, [r3, #0x14]
005ecd9c  08 30 9d e5  ldr	r3, [sp, #0x8]
005ecda0  00 00 53 e3  cmp	r3, #0
005ecda4  11 00 00 0a  beq	0x5ecdf0 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x24c> @ imm = #0x44
005ecda8  20 30 93 e5  ldr	r3, [r3, #0x20]
005ecdac  28 40 8d e2  add	r4, sp, #40
005ecdb0  08 20 a0 e1  mov	r2, r8
005ecdb4  00 30 8b e5  str	r3, [r11]
005ecdb8  05 10 a0 e1  mov	r1, r5
005ecdbc  09 30 a0 e1  mov	r3, r9
005ecdc0  04 00 a0 e1  mov	r0, r4
005ecdc4  00 a0 8d e5  str	r10, [sp]
005ecdc8  a4 fd ff eb  bl	0x5ec460 <_ZN6glitch5video15CTextureManager22createTextureFromImageEPKcRKN5boost13intrusive_ptrINS0_6CImageEEENS0_16E_TEXTURE_LAYOUTE> @ imm = #-0x970
005ecdcc  04 10 a0 e1  mov	r1, r4
005ecdd0  34 00 8d e2  add	r0, sp, #52
005ecdd4  07 60 f6 eb  bl	0x384df8 <_ZN5boost13intrusive_ptrIN6glitch5video8ITextureEEaSERKS4_> @ imm = #-0x267fe4
005ecdd8  04 00 a0 e1  mov	r0, r4
005ecddc  92 a9 f8 eb  bl	0x41742c <_ZN5boost13intrusive_ptrIN6glitch5video8ITextureEED1Ev> @ imm = #-0x1d59b8
005ecde0  08 00 9d e5  ldr	r0, [sp, #0x8]
005ecde4  00 00 50 e3  cmp	r0, #0
005ecde8  00 00 00 0a  beq	0x5ecdf0 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x24c> @ imm = #0x0
005ecdec  e4 c1 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2cf870
005ecdf0  34 00 9d e5  ldr	r0, [sp, #0x34]
005ecdf4  00 00 50 e3  cmp	r0, #0
005ecdf8  00 00 86 e5  str	r0, [r6]
005ecdfc  04 30 90 15  ldrne	r3, [r0, #0x4]
005ece00  01 30 83 12  addne	r3, r3, #1
005ece04  04 30 80 15  strne	r3, [r0, #0x4]
005ece08  30 00 9d e5  ldr	r0, [sp, #0x30]
005ece0c  00 00 50 e3  cmp	r0, #0
005ece10  00 00 00 0a  beq	0x5ece18 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x274> @ imm = #0x0
005ece14  da c1 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2cf898
005ece18  34 00 9d e5  ldr	r0, [sp, #0x34]
005ece1c  00 00 50 e3  cmp	r0, #0
005ece20  00 00 00 0a  beq	0x5ece28 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x284> @ imm = #0x0
005ece24  d6 c1 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2cf8a8
005ece28  06 00 a0 e1  mov	r0, r6
005ece2c  3c d0 8d e2  add	sp, sp, #60
005ece30  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
005ece34  10 00 13 e3  tst	r3, #16
005ece38  01 30 a0 13  movne	r3, #1
005ece3c  14 30 8d 15  strne	r3, [sp, #0x14]
005ece40  96 ff ff ea  b	0x5ecca0 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0xfc> @ imm = #-0x1a8
005ece44  74 20 95 e5  ldr	r2, [r5, #0x74]
005ece48  02 00 12 e3  tst	r2, #2
005ece4c  b2 ff ff 0a  beq	0x5ecd1c <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x178> @ imm = #-0x138
005ece50  01 20 12 e2  ands	r2, r2, #1
005ece54  b0 ff ff 1a  bne	0x5ecd1c <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x178> @ imm = #-0x140
005ece58  88 a0 98 e5  ldr	r10, [r8, #0x88]
005ece5c  02 aa 1a e2  ands	r10, r10, #8192
005ece60  05 00 00 0a  beq	0x5ece7c <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x2d8> @ imm = #0x14
005ece64  00 30 98 e5  ldr	r3, [r8]
005ece68  08 00 a0 e1  mov	r0, r8
005ece6c  02 1a a0 e3  mov	r1, #8192
005ece70  0f e0 a0 e1  mov	lr, pc
005ece74  a0 f0 93 e5  ldr	pc, [r3, #0xa0]
005ece78  01 a0 a0 e3  mov	r10, #1
005ece7c  34 00 9d e5  ldr	r0, [sp, #0x34]
005ece80  00 10 a0 e3  mov	r1, #0
005ece84  04 44 00 eb  bl	0x5fde9c <_ZN6glitch5video8ITexture4bindEb> @ imm = #0x11010
005ece88  88 30 98 e5  ldr	r3, [r8, #0x88]
005ece8c  d3 36 e0 e7  ubfx	r3, r3, #0xd, #0x1
005ece90  03 00 5a e1  cmp	r10, r3
005ece94  a0 ff ff 0a  beq	0x5ecd1c <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x178> @ imm = #-0x180
005ece98  08 00 a0 e1  mov	r0, r8
005ece9c  0a 20 a0 e1  mov	r2, r10
005ecea0  00 30 98 e5  ldr	r3, [r8]
005ecea4  02 1a a0 e3  mov	r1, #8192
005ecea8  0f e0 a0 e1  mov	lr, pc
005eceac  a0 f0 93 e5  ldr	pc, [r3, #0xa0]
005eceb0  99 ff ff ea  b	0x5ecd1c <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x178> @ imm = #-0x19c
005eceb4  00 30 97 e5  ldr	r3, [r7]
005eceb8  07 00 a0 e1  mov	r0, r7
005ecebc  0f e0 a0 e1  mov	lr, pc
005ecec0  28 f0 93 e5  ldr	pc, [r3, #0x28]
005ecec4  60 10 9f e5  ldr	r1, [pc, #0x60]         @ 0x5ecf2c <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x388>
005ecec8  00 20 a0 e1  mov	r2, r0
005ececc  03 00 a0 e3  mov	r0, #3
005eced0  01 10 8f e0  add	r1, pc, r1
005eced4  56 78 00 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x1e158
005eced8  00 a0 86 e5  str	r10, [r6]
005ecedc  c9 ff ff ea  b	0x5ece08 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x264> @ imm = #-0xdc
005ecee0  74 30 95 e5  ldr	r3, [r5, #0x74]
005ecee4  02 00 13 e3  tst	r3, #2
005ecee8  c1 ff ff 0a  beq	0x5ecdf4 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x250> @ imm = #-0xfc
005eceec  01 30 23 e2  eor	r3, r3, #1
005ecef0  01 10 03 e2  and	r1, r3, #1
005ecef4  e8 43 00 eb  bl	0x5fde9c <_ZN6glitch5video8ITexture4bindEb> @ imm = #0x10fa0
005ecef8  34 00 9d e5  ldr	r0, [sp, #0x34]
005ecefc  bc ff ff ea  b	0x5ecdf4 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x250> @ imm = #-0x110
005ecf00  00 30 97 e5  ldr	r3, [r7]
005ecf04  07 00 a0 e1  mov	r0, r7
005ecf08  0f e0 a0 e1  mov	lr, pc
005ecf0c  28 f0 93 e5  ldr	pc, [r3, #0x28]
005ecf10  18 10 9f e5  ldr	r1, [pc, #0x18]         @ 0x5ecf30 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x38c>
005ecf14  00 20 a0 e1  mov	r2, r0
005ecf18  03 00 a0 e3  mov	r0, #3
005ecf1c  01 10 8f e0  add	r1, pc, r1
005ecf20  43 78 00 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x1e10c
005ecf24  00 40 86 e5  str	r4, [r6]
005ecf28  b6 ff ff ea  b	0x5ece08 <_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb+0x264> @ imm = #-0x128
005ecf2c  c0 66 2f 00  .word	0x002f66c0
005ecf30  94 66 2f 00  .word	0x002f6694

; image_loader_default_texture_interface: glitch::video::IImageLoader::hasTextureLoadInterface()
; VA=0x00602c84, size=0x8, file_offset=0x00602c84, SHA-256=6dcd5e75586fe6683156c0d559d4827b73bd48d501fa5781a1c6099aacd7c877
00602c84  00 00 a0 e3  mov	r0, #0
00602c88  1e ff 2f e1  bx	lr

; atc_texture_interface: glitch::video::CImageLoaderATC::hasTextureLoadInterface()
; VA=0x00602c9c, size=0x8, file_offset=0x00602c9c, SHA-256=007f34a6c3441b0240da53f253e513b959105da2d8803255e1856aa48f48db47
00602c9c  01 00 a0 e3  mov	r0, #1
00602ca0  1e ff 2f e1  bx	lr

; atc_signature_probe: glitch::video::CImageLoaderATC::isALoadableFileFormat(glitch::io::IReadFile*) const
; VA=0x00602cc4, size=0xb0, file_offset=0x00602cc4, SHA-256=6d3550d2d0125f697d9ae2f8495ce734e29e40bdfcf78bc504b1a00025ae1898
00602cc4  30 40 2d e9  push	{r4, r5, lr}
00602cc8  00 40 51 e2  subs	r4, r1, #0
00602ccc  0c d0 4d e2  sub	sp, sp, #12
00602cd0  05 00 00 0a  beq	0x602cec <_ZNK6glitch5video15CImageLoaderATC21isALoadableFileFormatEPNS_2io9IReadFileE+0x28> @ imm = #0x14
00602cd4  00 30 94 e5  ldr	r3, [r4]
00602cd8  04 00 a0 e1  mov	r0, r4
00602cdc  0f e0 a0 e1  mov	lr, pc
00602ce0  20 f0 93 e5  ldr	pc, [r3, #0x20]
00602ce4  07 00 50 e3  cmp	r0, #7
00602ce8  02 00 00 8a  bhi	0x602cf8 <_ZNK6glitch5video15CImageLoaderATC21isALoadableFileFormatEPNS_2io9IReadFileE+0x34> @ imm = #0x8
00602cec  00 00 a0 e3  mov	r0, #0
00602cf0  0c d0 8d e2  add	sp, sp, #12
00602cf4  30 80 bd e8  pop	{r4, r5, pc}
00602cf8  08 50 8d e2  add	r5, sp, #8
00602cfc  00 30 a0 e3  mov	r3, #0
00602d00  b2 30 65 e1  strh	r3, [r5, #-2]!
00602d04  00 30 94 e5  ldr	r3, [r4]
00602d08  04 10 a0 e3  mov	r1, #4
00602d0c  00 20 a0 e3  mov	r2, #0
00602d10  04 00 a0 e1  mov	r0, r4
00602d14  0f e0 a0 e1  mov	lr, pc
00602d18  18 f0 93 e5  ldr	pc, [r3, #0x18]
00602d1c  00 30 94 e5  ldr	r3, [r4]
00602d20  05 10 a0 e1  mov	r1, r5
00602d24  01 20 a0 e3  mov	r2, #1
00602d28  04 00 a0 e1  mov	r0, r4
00602d2c  0f e0 a0 e1  mov	lr, pc
00602d30  0c f0 93 e5  ldr	pc, [r3, #0xc]
00602d34  04 00 a0 e1  mov	r0, r4
00602d38  00 30 94 e5  ldr	r3, [r4]
00602d3c  05 10 a0 e1  mov	r1, r5
00602d40  01 20 a0 e3  mov	r2, #1
00602d44  b6 40 dd e1  ldrh	r4, [sp, #6]
00602d48  0f e0 a0 e1  mov	lr, pc
00602d4c  0c f0 93 e5  ldr	pc, [r3, #0xc]
00602d50  b6 00 dd e1  ldrh	r0, [sp, #6]
00602d54  00 04 84 e1  orr	r0, r4, r0, lsl #8
00602d58  73 0c 80 e2  add	r0, r0, #29440
00602d5c  6e 00 80 e2  add	r0, r0, #110
00602d60  70 00 ff e6  uxth	r0, r0
00602d64  01 00 50 e3  cmp	r0, #1
00602d68  00 00 a0 83  movhi	r0, #0
00602d6c  01 00 a0 93  movls	r0, #1
00602d70  de ff ff ea  b	0x602cf0 <_ZNK6glitch5video15CImageLoaderATC21isALoadableFileFormatEPNS_2io9IReadFileE+0x2c> @ imm = #-0x88

; atc_header: glitch::video::CImageLoaderATC::loadTextureHeader(glitch::io::IReadFile*, glitch::video::STextureDesc&) const
; VA=0x00602e34, size=0x1b0, file_offset=0x00602e34, SHA-256=f7547eb0aef346b890368137d28b7a1cb361e753d74de9535a86921973fcec92
00602e34  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
00602e38  01 40 a0 e1  mov	r4, r1
00602e3c  14 d0 4d e2  sub	sp, sp, #20
00602e40  00 10 a0 e3  mov	r1, #0
00602e44  0c 60 8d e2  add	r6, sp, #12
00602e48  00 30 94 e5  ldr	r3, [r4]
00602e4c  02 50 a0 e1  mov	r5, r2
00602e50  04 00 a0 e1  mov	r0, r4
00602e54  01 20 a0 e1  mov	r2, r1
00602e58  0f e0 a0 e1  mov	lr, pc
00602e5c  18 f0 93 e5  ldr	pc, [r3, #0x18]
00602e60  06 10 a0 e1  mov	r1, r6
00602e64  02 20 a0 e3  mov	r2, #2
00602e68  00 30 94 e5  ldr	r3, [r4]
00602e6c  04 00 a0 e1  mov	r0, r4
00602e70  0f e0 a0 e1  mov	lr, pc
00602e74  0c f0 93 e5  ldr	pc, [r3, #0xc]
00602e78  06 10 a0 e1  mov	r1, r6
00602e7c  02 20 a0 e3  mov	r2, #2
00602e80  00 30 94 e5  ldr	r3, [r4]
00602e84  04 00 a0 e1  mov	r0, r4
00602e88  0c b0 dd e5  ldrb	r11, [sp, #0xc]
00602e8c  0d 90 dd e5  ldrb	r9, [sp, #0xd]
00602e90  0f e0 a0 e1  mov	lr, pc
00602e94  0c f0 93 e5  ldr	pc, [r3, #0xc]
00602e98  0c c0 dd e5  ldrb	r12, [sp, #0xc]
00602e9c  00 30 94 e5  ldr	r3, [r4]
00602ea0  06 10 a0 e1  mov	r1, r6
00602ea4  04 c0 8d e5  str	r12, [sp, #0x4]
00602ea8  0d c0 dd e5  ldrb	r12, [sp, #0xd]
00602eac  02 20 a0 e3  mov	r2, #2
00602eb0  04 00 a0 e1  mov	r0, r4
00602eb4  00 c0 8d e5  str	r12, [sp]
00602eb8  0f e0 a0 e1  mov	lr, pc
00602ebc  0c f0 93 e5  ldr	pc, [r3, #0xc]
00602ec0  06 10 a0 e1  mov	r1, r6
00602ec4  02 20 a0 e3  mov	r2, #2
00602ec8  00 30 94 e5  ldr	r3, [r4]
00602ecc  04 00 a0 e1  mov	r0, r4
00602ed0  0c a0 dd e5  ldrb	r10, [sp, #0xc]
00602ed4  0d 80 dd e5  ldrb	r8, [sp, #0xd]
00602ed8  0f e0 a0 e1  mov	lr, pc
00602edc  0c f0 93 e5  ldr	pc, [r3, #0xc]
00602ee0  06 10 a0 e1  mov	r1, r6
00602ee4  04 20 a0 e3  mov	r2, #4
00602ee8  00 30 94 e5  ldr	r3, [r4]
00602eec  04 00 a0 e1  mov	r0, r4
00602ef0  0f e0 a0 e1  mov	lr, pc
00602ef4  0c f0 93 e5  ldr	pc, [r3, #0xc]
00602ef8  0e 60 dd e5  ldrb	r6, [sp, #0xe]
00602efc  0d 10 dd e5  ldrb	r1, [sp, #0xd]
00602f00  0c 20 dd e5  ldrb	r2, [sp, #0xc]
00602f04  0f 30 dd e5  ldrb	r3, [sp, #0xf]
00602f08  06 68 a0 e1  lsl	r6, r6, #16
00602f0c  01 64 86 e1  orr	r6, r6, r1, lsl #8
00602f10  02 60 86 e1  orr	r6, r6, r2
00602f14  03 6c 86 e1  orr	r6, r6, r3, lsl #24
00602f18  00 10 a0 e3  mov	r1, #0
00602f1c  06 00 a0 e1  mov	r0, r6
00602f20  a0 c4 fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xced80
00602f24  00 70 a0 e1  mov	r7, r0
00602f28  00 30 94 e5  ldr	r3, [r4]
00602f2c  04 00 a0 e1  mov	r0, r4
00602f30  07 10 a0 e1  mov	r1, r7
00602f34  06 20 a0 e1  mov	r2, r6
00602f38  0f e0 a0 e1  mov	lr, pc
00602f3c  0c f0 93 e5  ldr	pc, [r3, #0xc]
00602f40  00 00 56 e1  cmp	r6, r0
00602f44  0e 00 00 0a  beq	0x602f84 <_ZNK6glitch5video15CImageLoaderATC17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x150> @ imm = #0x38
00602f48  00 30 94 e5  ldr	r3, [r4]
00602f4c  04 00 a0 e1  mov	r0, r4
00602f50  0f e0 a0 e1  mov	lr, pc
00602f54  28 f0 93 e5  ldr	pc, [r3, #0x28]
00602f58  00 10 a0 e1  mov	r1, r0
00602f5c  7c 00 9f e5  ldr	r0, [pc, #0x7c]         @ 0x602fe0 <_ZNK6glitch5video15CImageLoaderATC17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x1ac>
00602f60  03 20 a0 e3  mov	r2, #3
00602f64  00 40 a0 e3  mov	r4, #0
00602f68  00 00 8f e0  add	r0, pc, r0
00602f6c  5d 1f 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0x7d74
00602f70  07 00 a0 e1  mov	r0, r7
00602f74  cd 2c f4 eb  bl	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x2f4ccc
00602f78  04 00 a0 e1  mov	r0, r4
00602f7c  14 d0 8d e2  add	sp, sp, #20
00602f80  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
00602f84  00 30 9d e5  ldr	r3, [sp]
00602f88  04 10 9d e5  ldr	r1, [sp, #0x4]
00602f8c  08 84 8a e1  orr	r8, r10, r8, lsl #8
00602f90  01 40 a0 e3  mov	r4, #1
00602f94  03 24 81 e1  orr	r2, r1, r3, lsl #8
00602f98  92 3c 08 e3  movw	r3, #0x8c92
00602f9c  03 00 58 e1  cmp	r8, r3
00602fa0  00 30 a0 e3  mov	r3, #0
00602fa4  09 94 8b e1  orr	r9, r11, r9, lsl #8
00602fa8  08 30 85 e5  str	r3, [r5, #0x8]
00602fac  00 30 85 e5  str	r3, [r5]
00602fb0  15 30 a0 03  moveq	r3, #21
00602fb4  10 90 85 e5  str	r9, [r5, #0x10]
00602fb8  14 20 85 e5  str	r2, [r5, #0x14]
00602fbc  18 40 85 e5  str	r4, [r5, #0x18]
00602fc0  1c 40 c5 e5  strb	r4, [r5, #0x1c]
00602fc4  04 30 85 05  streq	r3, [r5, #0x4]
00602fc8  e8 ff ff 0a  beq	0x602f70 <_ZNK6glitch5video15CImageLoaderATC17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x13c> @ imm = #-0x60
00602fcc  93 3c 08 e3  movw	r3, #0x8c93
00602fd0  03 00 58 e1  cmp	r8, r3
00602fd4  16 30 a0 03  moveq	r3, #22
00602fd8  04 30 85 05  streq	r3, [r5, #0x4]
00602fdc  e3 ff ff ea  b	0x602f70 <_ZNK6glitch5video15CImageLoaderATC17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x13c> @ imm = #-0x74
00602fe0  08 16 2e 00  .word	0x002e1608

; atc_cpu_image_decode: glitch::video::CImageLoaderATC::loadImage(glitch::io::IReadFile*) const
; VA=0x00602fe4, size=0x270, file_offset=0x00602fe4, SHA-256=32d97211f228a50b0092b149b7e674be43a9426644cbdd47dbd31506e6bab3d8
00602fe4  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
00602fe8  00 10 a0 e3  mov	r1, #0
00602fec  2c d0 4d e2  sub	sp, sp, #44
00602ff0  02 60 a0 e1  mov	r6, r2
00602ff4  24 40 8d e2  add	r4, sp, #36
00602ff8  01 20 a0 e1  mov	r2, r1
00602ffc  00 30 96 e5  ldr	r3, [r6]
00603000  00 50 a0 e1  mov	r5, r0
00603004  06 00 a0 e1  mov	r0, r6
00603008  0f e0 a0 e1  mov	lr, pc
0060300c  18 f0 93 e5  ldr	pc, [r3, #0x18]
00603010  04 10 a0 e1  mov	r1, r4
00603014  02 20 a0 e3  mov	r2, #2
00603018  00 30 96 e5  ldr	r3, [r6]
0060301c  06 00 a0 e1  mov	r0, r6
00603020  0f e0 a0 e1  mov	lr, pc
00603024  0c f0 93 e5  ldr	pc, [r3, #0xc]
00603028  04 10 a0 e1  mov	r1, r4
0060302c  02 20 a0 e3  mov	r2, #2
00603030  00 30 96 e5  ldr	r3, [r6]
00603034  06 00 a0 e1  mov	r0, r6
00603038  24 b0 dd e5  ldrb	r11, [sp, #0x24]
0060303c  25 90 dd e5  ldrb	r9, [sp, #0x25]
00603040  0f e0 a0 e1  mov	lr, pc
00603044  0c f0 93 e5  ldr	pc, [r3, #0xc]
00603048  24 c0 dd e5  ldrb	r12, [sp, #0x24]
0060304c  00 30 96 e5  ldr	r3, [r6]
00603050  04 10 a0 e1  mov	r1, r4
00603054  14 c0 8d e5  str	r12, [sp, #0x14]
00603058  25 c0 dd e5  ldrb	r12, [sp, #0x25]
0060305c  02 20 a0 e3  mov	r2, #2
00603060  06 00 a0 e1  mov	r0, r6
00603064  10 c0 8d e5  str	r12, [sp, #0x10]
00603068  0f e0 a0 e1  mov	lr, pc
0060306c  0c f0 93 e5  ldr	pc, [r3, #0xc]
00603070  04 10 a0 e1  mov	r1, r4
00603074  02 20 a0 e3  mov	r2, #2
00603078  00 30 96 e5  ldr	r3, [r6]
0060307c  06 00 a0 e1  mov	r0, r6
00603080  24 a0 dd e5  ldrb	r10, [sp, #0x24]
00603084  25 80 dd e5  ldrb	r8, [sp, #0x25]
00603088  0f e0 a0 e1  mov	lr, pc
0060308c  0c f0 93 e5  ldr	pc, [r3, #0xc]
00603090  04 10 a0 e1  mov	r1, r4
00603094  04 20 a0 e3  mov	r2, #4
00603098  00 30 96 e5  ldr	r3, [r6]
0060309c  06 00 a0 e1  mov	r0, r6
006030a0  0f e0 a0 e1  mov	lr, pc
006030a4  0c f0 93 e5  ldr	pc, [r3, #0xc]
006030a8  26 40 dd e5  ldrb	r4, [sp, #0x26]
006030ac  25 10 dd e5  ldrb	r1, [sp, #0x25]
006030b0  24 20 dd e5  ldrb	r2, [sp, #0x24]
006030b4  27 30 dd e5  ldrb	r3, [sp, #0x27]
006030b8  04 48 a0 e1  lsl	r4, r4, #16
006030bc  01 44 84 e1  orr	r4, r4, r1, lsl #8
006030c0  02 40 84 e1  orr	r4, r4, r2
006030c4  03 4c 84 e1  orr	r4, r4, r3, lsl #24
006030c8  00 10 a0 e3  mov	r1, #0
006030cc  04 00 a0 e1  mov	r0, r4
006030d0  34 c4 fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xcef30
006030d4  00 70 a0 e1  mov	r7, r0
006030d8  00 30 96 e5  ldr	r3, [r6]
006030dc  06 00 a0 e1  mov	r0, r6
006030e0  07 10 a0 e1  mov	r1, r7
006030e4  04 20 a0 e1  mov	r2, r4
006030e8  0f e0 a0 e1  mov	lr, pc
006030ec  0c f0 93 e5  ldr	pc, [r3, #0xc]
006030f0  00 00 54 e1  cmp	r4, r0
006030f4  0f 00 00 0a  beq	0x603138 <_ZNK6glitch5video15CImageLoaderATC9loadImageEPNS_2io9IReadFileE+0x154> @ imm = #0x3c
006030f8  00 30 96 e5  ldr	r3, [r6]
006030fc  06 00 a0 e1  mov	r0, r6
00603100  0f e0 a0 e1  mov	lr, pc
00603104  28 f0 93 e5  ldr	pc, [r3, #0x28]
00603108  00 10 a0 e1  mov	r1, r0
0060310c  38 01 9f e5  ldr	r0, [pc, #0x138]        @ 0x60324c <_ZNK6glitch5video15CImageLoaderATC9loadImageEPNS_2io9IReadFileE+0x268>
00603110  03 20 a0 e3  mov	r2, #3
00603114  00 00 8f e0  add	r0, pc, r0
00603118  f2 1e 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0x7bc8
0060311c  00 30 a0 e3  mov	r3, #0
00603120  00 30 85 e5  str	r3, [r5]
00603124  07 00 a0 e1  mov	r0, r7
00603128  60 2c f4 eb  bl	0x30e2b0 <_ZdlPv@plt>   @ imm = #-0x2f4e80
0060312c  05 00 a0 e1  mov	r0, r5
00603130  2c d0 8d e2  add	sp, sp, #44
00603134  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
00603138  08 84 8a e1  orr	r8, r10, r8, lsl #8
0060313c  92 3c 08 e3  movw	r3, #0x8c92
00603140  03 00 58 e1  cmp	r8, r3
00603144  0e 00 00 0a  beq	0x603184 <_ZNK6glitch5video15CImageLoaderATC9loadImageEPNS_2io9IReadFileE+0x1a0> @ imm = #0x38
00603148  93 3c 08 e3  movw	r3, #0x8c93
0060314c  03 00 58 e1  cmp	r8, r3
00603150  3b 00 00 0a  beq	0x603244 <_ZNK6glitch5video15CImageLoaderATC9loadImageEPNS_2io9IReadFileE+0x260> @ imm = #0xec
00603154  00 30 96 e5  ldr	r3, [r6]
00603158  06 00 a0 e1  mov	r0, r6
0060315c  0f e0 a0 e1  mov	lr, pc
00603160  28 f0 93 e5  ldr	pc, [r3, #0x28]
00603164  00 10 a0 e1  mov	r1, r0
00603168  e0 00 9f e5  ldr	r0, [pc, #0xe0]         @ 0x603250 <_ZNK6glitch5video15CImageLoaderATC9loadImageEPNS_2io9IReadFileE+0x26c>
0060316c  03 20 a0 e3  mov	r2, #3
00603170  00 00 8f e0  add	r0, pc, r0
00603174  db 1e 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0x7b6c
00603178  00 30 a0 e3  mov	r3, #0
0060317c  00 30 85 e5  str	r3, [r5]
00603180  e7 ff ff ea  b	0x603124 <_ZNK6glitch5video15CImageLoaderATC9loadImageEPNS_2io9IReadFileE+0x140> @ imm = #-0x64
00603184  15 a0 a0 e3  mov	r10, #21
00603188  14 10 9d e5  ldr	r1, [sp, #0x14]
0060318c  10 20 9d e5  ldr	r2, [sp, #0x10]
00603190  09 94 8b e1  orr	r9, r11, r9, lsl #8
00603194  02 34 81 e1  orr	r3, r1, r2, lsl #8
00603198  01 00 53 e3  cmp	r3, #1
0060319c  01 00 59 d3  cmple	r9, #1
006031a0  00 80 a0 d3  movle	r8, #0
006031a4  01 80 a0 c3  movgt	r8, #1
006031a8  08 00 00 da  ble	0x6031d0 <_ZNK6glitch5video15CImageLoaderATC9loadImageEPNS_2io9IReadFileE+0x1ec> @ imm = #0x20
006031ac  03 10 a0 e1  mov	r1, r3
006031b0  09 20 a0 e1  mov	r2, r9
006031b4  00 80 a0 e3  mov	r8, #0
006031b8  c2 20 a0 e1  asr	r2, r2, #1
006031bc  c1 10 a0 e1  asr	r1, r1, #1
006031c0  01 00 52 e3  cmp	r2, #1
006031c4  01 00 51 d3  cmple	r1, #1
006031c8  01 80 88 e2  add	r8, r8, #1
006031cc  f9 ff ff ca  bgt	0x6031b8 <_ZNK6glitch5video15CImageLoaderATC9loadImageEPNS_2io9IReadFileE+0x1d4> @ imm = #-0x1c
006031d0  00 10 a0 e3  mov	r1, #0
006031d4  2c 00 a0 e3  mov	r0, #44
006031d8  20 30 8d e5  str	r3, [sp, #0x20]
006031dc  1c 90 8d e5  str	r9, [sp, #0x1c]
006031e0  f1 c3 fc eb  bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xcf03c
006031e4  01 c0 a0 e3  mov	r12, #1
006031e8  00 60 a0 e1  mov	r6, r0
006031ec  07 30 a0 e1  mov	r3, r7
006031f0  0a 10 a0 e1  mov	r1, r10
006031f4  1c 20 8d e2  add	r2, sp, #28
006031f8  10 01 8d e8  stm	sp, {r4, r8}
006031fc  0c c0 8d e5  str	r12, [sp, #0xc]
00603200  08 c0 8d e5  str	r12, [sp, #0x8]
00603204  77 fd ff eb  bl	0x6027e8 <_ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvjjbb> @ imm = #-0xa24
00603208  00 00 56 e3  cmp	r6, #0
0060320c  00 60 85 05  streq	r6, [r5]
00603210  06 70 a0 01  moveq	r7, r6
00603214  c2 ff ff 0a  beq	0x603124 <_ZNK6glitch5video15CImageLoaderATC9loadImageEPNS_2io9IReadFileE+0x140> @ imm = #-0xf8
00603218  04 30 96 e5  ldr	r3, [r6, #0x4]
0060321c  06 00 a0 e1  mov	r0, r6
00603220  00 70 a0 e3  mov	r7, #0
00603224  01 30 83 e2  add	r3, r3, #1
00603228  04 30 86 e5  str	r3, [r6, #0x4]
0060322c  00 60 85 e5  str	r6, [r5]
00603230  04 30 96 e5  ldr	r3, [r6, #0x4]
00603234  01 30 83 e2  add	r3, r3, #1
00603238  04 30 86 e5  str	r3, [r6, #0x4]
0060323c  d0 68 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2e5cc0
00603240  b7 ff ff ea  b	0x603124 <_ZNK6glitch5video15CImageLoaderATC9loadImageEPNS_2io9IReadFileE+0x140> @ imm = #-0x124
00603244  16 a0 a0 e3  mov	r10, #22
00603248  ce ff ff ea  b	0x603188 <_ZNK6glitch5video15CImageLoaderATC9loadImageEPNS_2io9IReadFileE+0x1a4> @ imm = #-0xc8
0060324c  5c 14 2e 00  .word	0x002e145c
00603250  18 14 2e 00  .word	0x002e1418

; atc_texture_data: glitch::video::CImageLoaderATC::loadTextureData(glitch::io::IReadFile*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::STextureDesc const&) const
; VA=0x006032dc, size=0xa4, file_offset=0x006032dc, SHA-256=3b94b6684cec870711c8c181a799d010e8dc4214d70351f74f7919348573f8ae
006032dc  f0 45 2d e9  push	{r4, r5, r6, r7, r8, r10, lr}
006032e0  01 40 a0 e1  mov	r4, r1
006032e4  24 d0 4d e2  sub	sp, sp, #36
006032e8  00 10 91 e5  ldr	r1, [r1]
006032ec  04 00 a0 e1  mov	r0, r4
006032f0  03 80 a0 e1  mov	r8, r3
006032f4  02 a0 a0 e1  mov	r10, r2
006032f8  0f e0 a0 e1  mov	lr, pc
006032fc  20 f0 91 e5  ldr	pc, [r1, #0x20]
00603300  70 70 9f e5  ldr	r7, [pc, #0x70]         @ 0x603378 <_ZNK6glitch5video15CImageLoaderATC15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE+0x9c>
00603304  70 50 9f e5  ldr	r5, [pc, #0x70]         @ 0x60337c <_ZNK6glitch5video15CImageLoaderATC15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE+0xa0>
00603308  14 30 8d e2  add	r3, sp, #20
0060330c  07 70 8f e0  add	r7, pc, r7
00603310  05 50 97 e7  ldr	r5, [r7, r5]
00603314  0c 00 40 e2  sub	r0, r0, #12
00603318  10 00 8d e5  str	r0, [sp, #0x10]
0060331c  08 50 85 e2  add	r5, r5, #8
00603320  08 30 8d e5  str	r3, [sp, #0x8]
00603324  04 50 8d e5  str	r5, [sp, #0x4]
00603328  0c 80 8d e5  str	r8, [sp, #0xc]
0060332c  04 60 8d e2  add	r6, sp, #4
00603330  00 30 94 e5  ldr	r3, [r4]
00603334  0c 10 a0 e3  mov	r1, #12
00603338  00 20 a0 e3  mov	r2, #0
0060333c  04 00 a0 e1  mov	r0, r4
00603340  0f e0 a0 e1  mov	lr, pc
00603344  18 f0 93 e5  ldr	pc, [r3, #0x18]
00603348  08 20 a0 e1  mov	r2, r8
0060334c  0a 30 a0 e1  mov	r3, r10
00603350  06 10 a0 e1  mov	r1, r6
00603354  04 00 a0 e1  mov	r0, r4
00603358  1c 14 00 eb  bl	0x6083d0 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE> @ imm = #0x5070
0060335c  00 40 a0 e1  mov	r4, r0
00603360  06 00 a0 e1  mov	r0, r6
00603364  04 50 8d e5  str	r5, [sp, #0x4]
00603368  b7 10 00 eb  bl	0x60764c <_ZN6glitch5video12IImageLoader9IDataInfoD2Ev> @ imm = #0x42dc
0060336c  04 00 a0 e1  mov	r0, r4
00603370  24 d0 8d e2  add	sp, sp, #36
00603374  f0 85 bd e8  pop	{r4, r5, r6, r7, r8, r10, pc}
00603378  84 17 39 00  .word	0x00391784
0060337c  b4 35 00 00  .word	0x000035b4

; atc_extension: glitch::video::CImageLoaderATC::isALoadableFileExtension(char const*) const
; VA=0x00603254, size=0x4c, file_offset=0x00603254, SHA-256=9fae12c60ffe045ccacd8d13db7aff71c733153fc9338cf913b35460aaed5645
00603254  10 40 2d e9  push	{r4, lr}
00603258  01 00 a0 e1  mov	r0, r1
0060325c  01 40 a0 e1  mov	r4, r1
00603260  30 10 9f e5  ldr	r1, [pc, #0x30]         @ 0x603298 <_ZNK6glitch5video15CImageLoaderATC24isALoadableFileExtensionEPKc+0x44>
00603264  01 10 8f e0  add	r1, pc, r1
00603268  59 2e f4 eb  bl	0x30ebd4 <strstr@plt>   @ imm = #-0x2f469c
0060326c  00 00 50 e3  cmp	r0, #0
00603270  01 00 00 0a  beq	0x60327c <_ZNK6glitch5video15CImageLoaderATC24isALoadableFileExtensionEPKc+0x28> @ imm = #0x4
00603274  01 00 a0 e3  mov	r0, #1
00603278  10 80 bd e8  pop	{r4, pc}
0060327c  18 10 9f e5  ldr	r1, [pc, #0x18]         @ 0x60329c <_ZNK6glitch5video15CImageLoaderATC24isALoadableFileExtensionEPKc+0x48>
00603280  04 00 a0 e1  mov	r0, r4
00603284  01 10 8f e0  add	r1, pc, r1
00603288  51 2e f4 eb  bl	0x30ebd4 <strstr@plt>   @ imm = #-0x2f46bc
0060328c  00 00 50 e2  subs	r0, r0, #0
00603290  01 00 a0 13  movne	r0, #1
00603294  10 80 bd e8  pop	{r4, pc}
00603298  3c 13 2e 00  .word	0x002e133c
0060329c  24 13 2e 00  .word	0x002e1324

; bmp_signature_probe: glitch::video::CImageLoaderBMP::isALoadableFileFormat(glitch::io::IReadFile*) const
; VA=0x006033d8, size=0x3c, file_offset=0x006033d8, SHA-256=f8f1264787451a2362722b4c7756d5dcc66f1acbfd3dd7954bf02d949dbb45da
006033d8  04 e0 2d e5  str	lr, [sp, #-0x4]!
006033dc  0c d0 4d e2  sub	sp, sp, #12
006033e0  00 30 91 e5  ldr	r3, [r1]
006033e4  01 00 a0 e1  mov	r0, r1
006033e8  02 20 a0 e3  mov	r2, #2
006033ec  06 10 8d e2  add	r1, sp, #6
006033f0  0f e0 a0 e1  mov	lr, pc
006033f4  0c f0 93 e5  ldr	pc, [r3, #0xc]
006033f8  b6 00 dd e1  ldrh	r0, [sp, #6]
006033fc  42 3d 04 e3  movw	r3, #0x4d42
00603400  03 00 50 e1  cmp	r0, r3
00603404  00 00 a0 13  movne	r0, #0
00603408  01 00 a0 03  moveq	r0, #1
0060340c  0c d0 8d e2  add	sp, sp, #12
00603410  00 80 bd e8  ldm	sp!, {pc}

; bmp_cpu_image_decode: glitch::video::CImageLoaderBMP::loadImage(glitch::io::IReadFile*) const
; VA=0x006034ec, size=0xcd8, file_offset=0x006034ec, SHA-256=97730dcb6408fdc22de7f27c7680e559801dfc90f88430feb188c208f1e8a3fe
006034ec  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
006034f0  a4 d0 4d e2  sub	sp, sp, #164
006034f4  00 30 92 e5  ldr	r3, [r2]
006034f8  02 70 a0 e1  mov	r7, r2
006034fc  00 40 a0 e1  mov	r4, r0
00603500  44 10 8d e2  add	r1, sp, #68
00603504  02 00 a0 e1  mov	r0, r2
00603508  36 20 a0 e3  mov	r2, #54
0060350c  0f e0 a0 e1  mov	lr, pc
00603510  0c f0 93 e5  ldr	pc, [r3, #0xc]
00603514  b4 24 dd e1  ldrh	r2, [sp, #68]
00603518  90 6c 9f e5  ldr	r6, [pc, #0xc90]        @ 0x6041b0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xcc4>
0060351c  42 3d 04 e3  movw	r3, #0x4d42
00603520  03 00 52 e1  cmp	r2, r3
00603524  06 60 8f e0  add	r6, pc, r6
00603528  04 00 00 0a  beq	0x603540 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x54> @ imm = #0x10
0060352c  00 30 a0 e3  mov	r3, #0
00603530  00 30 84 e5  str	r3, [r4]
00603534  04 00 a0 e1  mov	r0, r4
00603538  a4 d0 8d e2  add	sp, sp, #164
0060353c  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
00603540  b2 36 dd e1  ldrh	r3, [sp, #98]
00603544  b4 26 dd e1  ldrh	r2, [sp, #100]
00603548  02 38 83 e1  orr	r3, r3, r2, lsl #16
0060354c  03 00 53 e3  cmp	r3, #3
00603550  96 00 00 8a  bhi	0x6037b0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x2c4> @ imm = #0x258
00603554  b6 26 dd e1  ldrh	r2, [sp, #102]
00603558  b8 16 dd e1  ldrh	r1, [sp, #104]
0060355c  00 30 97 e5  ldr	r3, [r7]
00603560  07 00 a0 e1  mov	r0, r7
00603564  01 18 82 e1  orr	r1, r2, r1, lsl #16
00603568  00 20 61 e2  rsb	r2, r1, #0
0060356c  03 20 02 e2  and	r2, r2, #3
00603570  01 20 82 e0  add	r2, r2, r1
00603574  22 18 a0 e1  lsr	r1, r2, #16
00603578  b8 16 cd e1  strh	r1, [sp, #104]
0060357c  b6 26 cd e1  strh	r2, [sp, #102]
00603580  0f e0 a0 e1  mov	lr, pc
00603584  24 f0 93 e5  ldr	pc, [r3, #0x24]
00603588  b0 25 dd e1  ldrh	r2, [sp, #80]
0060358c  be 34 dd e1  ldrh	r3, [sp, #78]
00603590  02 38 83 e1  orr	r3, r3, r2, lsl #16
00603594  03 30 60 e0  rsb	r3, r0, r3
00603598  23 31 a0 e1  lsr	r3, r3, #2
0060359c  1c 30 8d e5  str	r3, [sp, #0x1c]
006035a0  2b c3 fc eb  bl	0x534254 <_ZN6glitch4core32isProcessBufferHeapExcessEnabledEv> @ imm = #-0xcf354
006035a4  2c 00 8d e5  str	r0, [sp, #0x2c]
006035a8  01 00 a0 e3  mov	r0, #1
006035ac  2d c3 fc eb  bl	0x534268 <_ZN6glitch4core33setProcessBufferHeapExcessEnabledEb> @ imm = #-0xcf34c
006035b0  1c 00 9d e5  ldr	r0, [sp, #0x1c]
006035b4  00 00 50 e3  cmp	r0, #0
006035b8  20 00 8d 05  streq	r0, [sp, #0x20]
006035bc  0b 00 00 0a  beq	0x6035f0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x104> @ imm = #0x2c
006035c0  1c 10 9d e5  ldr	r1, [sp, #0x1c]
006035c4  01 81 a0 e1  lsl	r8, r1, #2
006035c8  08 00 a0 e1  mov	r0, r8
006035cc  08 c4 fc eb  bl	0x5345f4 <_ZN6glitch4core18allocProcessBufferEi> @ imm = #-0xcefe0
006035d0  00 50 a0 e1  mov	r5, r0
006035d4  08 20 a0 e1  mov	r2, r8
006035d8  00 30 97 e5  ldr	r3, [r7]
006035dc  07 00 a0 e1  mov	r0, r7
006035e0  05 10 a0 e1  mov	r1, r5
006035e4  0f e0 a0 e1  mov	lr, pc
006035e8  0c f0 93 e5  ldr	pc, [r3, #0xc]
006035ec  20 50 8d e5  str	r5, [sp, #0x20]
006035f0  b6 36 dd e1  ldrh	r3, [sp, #102]
006035f4  b8 26 dd e1  ldrh	r2, [sp, #104]
006035f8  02 28 93 e1  orrs	r2, r3, r2, lsl #16
006035fc  4a 02 00 0a  beq	0x603f2c <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xa40> @ imm = #0x928
00603600  be 34 dd e1  ldrh	r3, [sp, #78]
00603604  b0 15 dd e1  ldrh	r1, [sp, #80]
00603608  00 20 a0 e3  mov	r2, #0
0060360c  01 18 83 e1  orr	r1, r3, r1, lsl #16
00603610  07 00 a0 e1  mov	r0, r7
00603614  00 30 97 e5  ldr	r3, [r7]
00603618  0f e0 a0 e1  mov	lr, pc
0060361c  18 f0 93 e5  ldr	pc, [r3, #0x18]
00603620  b6 35 dd e1  ldrh	r3, [sp, #86]
00603624  b8 05 dd e1  ldrh	r0, [sp, #88]
00603628  00 08 83 e1  orr	r0, r3, r0, lsl #16
0060362c  2b 2b f4 eb  bl	0x30e2e0 <__aeabi_ui2f@plt> @ imm = #-0x2f5354
00603630  00 50 a0 e1  mov	r5, r0
00603634  b0 06 dd e1  ldrh	r0, [sp, #96]
00603638  c9 2c f4 eb  bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x2f4cdc
0060363c  3e 14 a0 e3  mov	r1, #1040187392
00603640  c9 2d f4 eb  bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2f48dc
00603644  00 10 a0 e1  mov	r1, r0
00603648  05 00 a0 e1  mov	r0, r5
0060364c  c6 2d f4 eb  bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2f48e8
00603650  00 50 a0 e1  mov	r5, r0
00603654  9c 2b f4 eb  bl	0x30e4cc <__aeabi_f2iz@plt> @ imm = #-0x2f5190
00603658  00 80 a0 e1  mov	r8, r0
0060365c  c0 2c f4 eb  bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x2f4d00
00603660  00 10 a0 e1  mov	r1, r0
00603664  05 00 a0 e1  mov	r0, r5
00603668  4f 2b f4 eb  bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x2f52c4
0060366c  00 10 a0 e3  mov	r1, #0
00603670  45 2a f4 eb  bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2f56ec
00603674  00 00 50 e3  cmp	r0, #0
00603678  01 80 88 02  addeq	r8, r8, #1
0060367c  c8 3f a0 e1  asr	r3, r8, #31
00603680  b8 c6 dd e1  ldrh	r12, [sp, #104]
00603684  23 3f a0 e1  lsr	r3, r3, #30
00603688  03 10 88 e0  add	r1, r8, r3
0060368c  03 10 01 e2  and	r1, r1, #3
00603690  01 10 63 e0  rsb	r1, r3, r1
00603694  04 10 61 e2  rsb	r1, r1, #4
00603698  c1 2f a0 e1  asr	r2, r1, #31
0060369c  b6 06 dd e1  ldrh	r0, [sp, #102]
006036a0  22 2f a0 e1  lsr	r2, r2, #30
006036a4  02 30 81 e0  add	r3, r1, r2
006036a8  0c 08 80 e1  orr	r0, r0, r12, lsl #16
006036ac  03 30 03 e2  and	r3, r3, #3
006036b0  03 30 62 e0  rsb	r3, r2, r3
006036b4  03 00 80 e2  add	r0, r0, #3
006036b8  08 30 83 e0  add	r3, r3, r8
006036bc  00 10 a0 e3  mov	r1, #0
006036c0  03 00 c0 e3  bic	r0, r0, #3
006036c4  28 30 8d e5  str	r3, [sp, #0x28]
006036c8  b6 c2 fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xcf528
006036cc  b8 16 dd e1  ldrh	r1, [sp, #104]
006036d0  b6 26 dd e1  ldrh	r2, [sp, #102]
006036d4  00 50 a0 e1  mov	r5, r0
006036d8  00 30 97 e5  ldr	r3, [r7]
006036dc  01 28 82 e1  orr	r2, r2, r1, lsl #16
006036e0  07 00 a0 e1  mov	r0, r7
006036e4  05 10 a0 e1  mov	r1, r5
006036e8  0f e0 a0 e1  mov	lr, pc
006036ec  0c f0 93 e5  ldr	pc, [r3, #0xc]
006036f0  b2 36 dd e1  ldrh	r3, [sp, #98]
006036f4  b4 26 dd e1  ldrh	r2, [sp, #100]
006036f8  28 c0 9d e5  ldr	r12, [sp, #0x28]
006036fc  02 38 83 e1  orr	r3, r3, r2, lsl #16
00603700  01 00 53 e3  cmp	r3, #1
00603704  0c 80 68 e0  rsb	r8, r8, r12
00603708  3a 01 00 0a  beq	0x603bf8 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x70c> @ imm = #0x4e8
0060370c  02 00 53 e3  cmp	r3, #2
00603710  86 01 00 0a  beq	0x603d30 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x844> @ imm = #0x618
00603714  b0 36 dd e1  ldrh	r3, [sp, #96]
00603718  00 20 a0 e3  mov	r2, #0
0060371c  9c 20 8d e5  str	r2, [sp, #0x9c]
00603720  01 30 43 e2  sub	r3, r3, #1
00603724  1f 00 53 e3  cmp	r3, #31
00603728  03 f1 8f 90  addls	pc, pc, r3, lsl #2
0060372c  2f 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x4bc
00603730  d7 00 00 ea  b	0x603a94 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x5a8> @ imm = #0x35c
00603734  2d 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x4b4
00603738  2c 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x4b0
0060373c  d4 00 00 ea  b	0x603a94 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x5a8> @ imm = #0x350
00603740  2a 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x4a8
00603744  29 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x4a4
00603748  28 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x4a0
0060374c  d0 00 00 ea  b	0x603a94 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x5a8> @ imm = #0x340
00603750  26 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x498
00603754  25 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x494
00603758  24 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x490
0060375c  23 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x48c
00603760  22 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x488
00603764  21 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x484
00603768  20 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x480
0060376c  80 00 00 ea  b	0x603974 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x488> @ imm = #0x200
00603770  1e 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x478
00603774  1d 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x474
00603778  1c 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x470
0060377c  1b 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x46c
00603780  1a 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x468
00603784  19 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x464
00603788  18 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x460
0060378c  3b 00 00 ea  b	0x603880 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x394> @ imm = #0xec
00603790  16 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x458
00603794  15 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x454
00603798  14 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x450
0060379c  13 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x44c
006037a0  12 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x448
006037a4  11 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x444
006037a8  10 01 00 ea  b	0x603bf0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x704> @ imm = #0x440
006037ac  04 00 00 ea  b	0x6037c4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x2d8> @ imm = #0x10
006037b0  fc 09 9f e5  ldr	r0, [pc, #0x9fc]        @ 0x6041b4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xcc8>
006037b4  03 10 a0 e3  mov	r1, #3
006037b8  00 00 8f e0  add	r0, pc, r0
006037bc  37 1d 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0x74dc
006037c0  59 ff ff ea  b	0x60352c <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x40> @ imm = #-0x29c
006037c4  b2 36 dd e1  ldrh	r3, [sp, #98]
006037c8  b4 26 dd e1  ldrh	r2, [sp, #100]
006037cc  02 38 83 e1  orr	r3, r3, r2, lsl #16
006037d0  03 00 53 e3  cmp	r3, #3
006037d4  14 02 00 0a  beq	0x60402c <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xb40> @ imm = #0x850
006037d8  b8 15 dd e1  ldrh	r1, [sp, #88]
006037dc  b6 35 dd e1  ldrh	r3, [sp, #86]
006037e0  ba 25 dd e1  ldrh	r2, [sp, #90]
006037e4  0d 70 a0 e3  mov	r7, #13
006037e8  01 38 83 e1  orr	r3, r3, r1, lsl #16
006037ec  bc 15 dd e1  ldrh	r1, [sp, #92]
006037f0  01 28 82 e1  orr	r2, r2, r1, lsl #16
006037f4  2c 00 a0 e3  mov	r0, #44
006037f8  00 10 a0 e3  mov	r1, #0
006037fc  7c 30 8d e5  str	r3, [sp, #0x7c]
00603800  80 20 8d e5  str	r2, [sp, #0x80]
00603804  68 c2 fc eb  bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xcf660
00603808  07 10 a0 e1  mov	r1, r7
0060380c  00 60 a0 e1  mov	r6, r0
00603810  7c 20 8d e2  add	r2, sp, #124
00603814  3d fa ff eb  bl	0x602110 <_ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE> @ imm = #-0x170c
00603818  06 10 a0 e1  mov	r1, r6
0060381c  9c 00 8d e2  add	r0, sp, #156
00603820  fb fe ff eb  bl	0x603414 <_ZN5boost13intrusive_ptrIN6glitch5video6CImageEEaSEPS3_> @ imm = #-0x414
00603824  9c 00 9d e5  ldr	r0, [sp, #0x9c]
00603828  00 00 50 e3  cmp	r0, #0
0060382c  e0 01 00 0a  beq	0x603fb4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xac8> @ imm = #0x780
00603830  08 20 90 e5  ldr	r2, [r0, #0x8]
00603834  20 30 90 e5  ldr	r3, [r0, #0x20]
00603838  bc c5 dd e1  ldrh	r12, [sp, #92]
0060383c  00 20 8d e5  str	r2, [sp]
00603840  ba 25 dd e1  ldrh	r2, [sp, #90]
00603844  b6 15 dd e1  ldrh	r1, [sp, #86]
00603848  b8 e5 dd e1  ldrh	lr, [sp, #88]
0060384c  18 60 90 e5  ldr	r6, [r0, #0x18]
00603850  0c c8 82 e1  orr	r12, r2, r12, lsl #16
00603854  0e e8 81 e1  orr	lr, r1, lr, lsl #16
00603858  0c c0 8d e5  str	r12, [sp, #0xc]
0060385c  07 00 a0 e1  mov	r0, r7
00603860  01 c0 a0 e3  mov	r12, #1
00603864  28 20 9d e5  ldr	r2, [sp, #0x28]
00603868  05 10 a0 e1  mov	r1, r5
0060386c  40 40 8d e9  stmib	sp, {r6, lr}
00603870  10 c0 8d e5  str	r12, [sp, #0x10]
00603874  4c d7 ff eb  bl	0x5f95ac <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb> @ imm = #-0xa2d0
00603878  9c 30 9d e5  ldr	r3, [sp, #0x9c]
0060387c  27 00 00 ea  b	0x603920 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x434> @ imm = #0x9c
00603880  bc 15 dd e1  ldrh	r1, [sp, #92]
00603884  b8 05 dd e1  ldrh	r0, [sp, #88]
00603888  ba 35 dd e1  ldrh	r3, [sp, #90]
0060388c  b6 25 dd e1  ldrh	r2, [sp, #86]
00603890  01 38 83 e1  orr	r3, r3, r1, lsl #16
00603894  00 28 82 e1  orr	r2, r2, r0, lsl #16
00603898  00 10 a0 e3  mov	r1, #0
0060389c  2c 00 a0 e3  mov	r0, #44
006038a0  88 30 8d e5  str	r3, [sp, #0x88]
006038a4  84 20 8d e5  str	r2, [sp, #0x84]
006038a8  3f c2 fc eb  bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xcf704
006038ac  0a 10 a0 e3  mov	r1, #10
006038b0  00 60 a0 e1  mov	r6, r0
006038b4  84 20 8d e2  add	r2, sp, #132
006038b8  14 fa ff eb  bl	0x602110 <_ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE> @ imm = #-0x17b0
006038bc  06 10 a0 e1  mov	r1, r6
006038c0  9c 00 8d e2  add	r0, sp, #156
006038c4  d2 fe ff eb  bl	0x603414 <_ZN5boost13intrusive_ptrIN6glitch5video6CImageEEaSEPS3_> @ imm = #-0x4b8
006038c8  9c 00 9d e5  ldr	r0, [sp, #0x9c]
006038cc  00 00 50 e3  cmp	r0, #0
006038d0  b7 01 00 0a  beq	0x603fb4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xac8> @ imm = #0x6dc
006038d4  08 20 90 e5  ldr	r2, [r0, #0x8]
006038d8  20 30 90 e5  ldr	r3, [r0, #0x20]
006038dc  bc c5 dd e1  ldrh	r12, [sp, #92]
006038e0  00 20 8d e5  str	r2, [sp]
006038e4  ba 25 dd e1  ldrh	r2, [sp, #90]
006038e8  b6 15 dd e1  ldrh	r1, [sp, #86]
006038ec  b8 e5 dd e1  ldrh	lr, [sp, #88]
006038f0  0c c8 82 e1  orr	r12, r2, r12, lsl #16
006038f4  28 20 9d e5  ldr	r2, [sp, #0x28]
006038f8  18 60 90 e5  ldr	r6, [r0, #0x18]
006038fc  0e e8 81 e1  orr	lr, r1, lr, lsl #16
00603900  0b 00 a0 e3  mov	r0, #11
00603904  0c c0 8d e5  str	r12, [sp, #0xc]
00603908  05 10 a0 e1  mov	r1, r5
0060390c  01 c0 a0 e3  mov	r12, #1
00603910  40 40 8d e9  stmib	sp, {r6, lr}
00603914  10 c0 8d e5  str	r12, [sp, #0x10]
00603918  23 d7 ff eb  bl	0x5f95ac <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb> @ imm = #-0xa374
0060391c  9c 30 9d e5  ldr	r3, [sp, #0x9c]
00603920  00 00 53 e3  cmp	r3, #0
00603924  00 30 84 e5  str	r3, [r4]
00603928  04 20 93 15  ldrne	r2, [r3, #0x4]
0060392c  01 20 82 12  addne	r2, r2, #1
00603930  04 20 83 15  strne	r2, [r3, #0x4]
00603934  9c 00 9d e5  ldr	r0, [sp, #0x9c]
00603938  00 00 50 e3  cmp	r0, #0
0060393c  00 00 00 0a  beq	0x603944 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x458> @ imm = #0x0
00603940  0f 67 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2e63c4
00603944  00 00 55 e3  cmp	r5, #0
00603948  01 00 00 0a  beq	0x603954 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x468> @ imm = #0x4
0060394c  05 00 a0 e1  mov	r0, r5
00603950  d8 29 f4 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2f58a0
00603954  20 10 9d e5  ldr	r1, [sp, #0x20]
00603958  00 00 51 e3  cmp	r1, #0
0060395c  01 00 00 0a  beq	0x603968 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x47c> @ imm = #0x4
00603960  01 00 a0 e1  mov	r0, r1
00603964  47 c3 fc eb  bl	0x534688 <_ZN6glitch4core20releaseProcessBufferEPv> @ imm = #-0xcf2e4
00603968  2c 00 9d e5  ldr	r0, [sp, #0x2c]
0060396c  3d c2 fc eb  bl	0x534268 <_ZN6glitch4core33setProcessBufferHeapExcessEnabledEb> @ imm = #-0xcf70c
00603970  ef fe ff ea  b	0x603534 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x48> @ imm = #-0x444
00603974  b2 36 dd e1  ldrh	r3, [sp, #98]
00603978  b4 26 dd e1  ldrh	r2, [sp, #100]
0060397c  02 38 83 e1  orr	r3, r3, r2, lsl #16
00603980  03 00 53 e3  cmp	r3, #3
00603984  02 69 a0 13  movne	r6, #32768
00603988  09 80 a0 13  movne	r8, #9
0060398c  08 70 a0 13  movne	r7, #8
00603990  8a 01 00 0a  beq	0x603fc0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xad4> @ imm = #0x628
00603994  ba 25 dd e1  ldrh	r2, [sp, #90]
00603998  bc 15 dd e1  ldrh	r1, [sp, #92]
0060399c  28 30 9d e5  ldr	r3, [sp, #0x28]
006039a0  01 08 82 e1  orr	r0, r2, r1, lsl #16
006039a4  90 53 20 e0  mla	r0, r0, r3, r5
006039a8  00 00 55 e1  cmp	r5, r0
006039ac  b6 35 dd 01  ldrheq	r3, [sp, #86]
006039b0  b8 05 dd 01  ldrheq	r0, [sp, #88]
006039b4  00 38 83 01  orreq	r3, r3, r0, lsl #16
006039b8  18 00 00 0a  beq	0x603a20 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x534> @ imm = #0x60
006039bc  b6 35 dd e1  ldrh	r3, [sp, #86]
006039c0  b8 25 dd e1  ldrh	r2, [sp, #88]
006039c4  28 a0 9d e5  ldr	r10, [sp, #0x28]
006039c8  76 60 ff e6  uxth	r6, r6
006039cc  00 e0 a0 e3  mov	lr, #0
006039d0  02 38 83 e1  orr	r3, r3, r2, lsl #16
006039d4  05 10 a0 e1  mov	r1, r5
006039d8  00 00 53 e3  cmp	r3, #0
006039dc  09 00 00 0a  beq	0x603a08 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x51c> @ imm = #0x24
006039e0  00 20 a0 e3  mov	r2, #0
006039e4  b2 c0 91 e1  ldrh	r12, [r1, r2]
006039e8  01 30 53 e2  subs	r3, r3, #1
006039ec  0c c0 86 e1  orr	r12, r6, r12
006039f0  b2 c0 81 e1  strh	r12, [r1, r2]
006039f4  02 20 82 e2  add	r2, r2, #2
006039f8  f9 ff ff 1a  bne	0x6039e4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x4f8> @ imm = #-0x1c
006039fc  b6 35 dd e1  ldrh	r3, [sp, #86]
00603a00  b8 25 dd e1  ldrh	r2, [sp, #88]
00603a04  02 38 83 e1  orr	r3, r3, r2, lsl #16
00603a08  0a e0 8e e0  add	lr, lr, r10
00603a0c  0e 10 85 e0  add	r1, r5, lr
00603a10  01 00 50 e1  cmp	r0, r1
00603a14  ef ff ff 1a  bne	0x6039d8 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x4ec> @ imm = #-0x44
00603a18  ba 25 dd e1  ldrh	r2, [sp, #90]
00603a1c  bc 15 dd e1  ldrh	r1, [sp, #92]
00603a20  01 28 82 e1  orr	r2, r2, r1, lsl #16
00603a24  2c 00 a0 e3  mov	r0, #44
00603a28  00 10 a0 e3  mov	r1, #0
00603a2c  8c 30 8d e5  str	r3, [sp, #0x8c]
00603a30  90 20 8d e5  str	r2, [sp, #0x90]
00603a34  dc c1 fc eb  bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xcf890
00603a38  08 10 a0 e1  mov	r1, r8
00603a3c  00 60 a0 e1  mov	r6, r0
00603a40  8c 20 8d e2  add	r2, sp, #140
00603a44  b1 f9 ff eb  bl	0x602110 <_ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE> @ imm = #-0x193c
00603a48  06 10 a0 e1  mov	r1, r6
00603a4c  9c 00 8d e2  add	r0, sp, #156
00603a50  6f fe ff eb  bl	0x603414 <_ZN5boost13intrusive_ptrIN6glitch5video6CImageEEaSEPS3_> @ imm = #-0x644
00603a54  9c 00 9d e5  ldr	r0, [sp, #0x9c]
00603a58  00 00 50 e3  cmp	r0, #0
00603a5c  54 01 00 0a  beq	0x603fb4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xac8> @ imm = #0x550
00603a60  08 20 90 e5  ldr	r2, [r0, #0x8]
00603a64  20 30 90 e5  ldr	r3, [r0, #0x20]
00603a68  b6 15 dd e1  ldrh	r1, [sp, #86]
00603a6c  00 20 8d e5  str	r2, [sp]
00603a70  b8 e5 dd e1  ldrh	lr, [sp, #88]
00603a74  ba 25 dd e1  ldrh	r2, [sp, #90]
00603a78  bc c5 dd e1  ldrh	r12, [sp, #92]
00603a7c  18 60 90 e5  ldr	r6, [r0, #0x18]
00603a80  0e e8 81 e1  orr	lr, r1, lr, lsl #16
00603a84  0c c8 82 e1  orr	r12, r2, r12, lsl #16
00603a88  07 00 a0 e1  mov	r0, r7
00603a8c  28 20 9d e5  ldr	r2, [sp, #0x28]
00603a90  9b ff ff ea  b	0x603904 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x418> @ imm = #-0x194
00603a94  bc 15 dd e1  ldrh	r1, [sp, #92]
00603a98  b8 05 dd e1  ldrh	r0, [sp, #88]
00603a9c  ba 35 dd e1  ldrh	r3, [sp, #90]
00603aa0  b6 25 dd e1  ldrh	r2, [sp, #86]
00603aa4  01 38 83 e1  orr	r3, r3, r1, lsl #16
00603aa8  00 28 82 e1  orr	r2, r2, r0, lsl #16
00603aac  00 10 a0 e3  mov	r1, #0
00603ab0  2c 00 a0 e3  mov	r0, #44
00603ab4  98 30 8d e5  str	r3, [sp, #0x98]
00603ab8  94 20 8d e5  str	r2, [sp, #0x94]
00603abc  ba c1 fc eb  bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xcf918
00603ac0  09 10 a0 e3  mov	r1, #9
00603ac4  00 70 a0 e1  mov	r7, r0
00603ac8  94 20 8d e2  add	r2, sp, #148
00603acc  8f f9 ff eb  bl	0x602110 <_ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE> @ imm = #-0x19c4
00603ad0  07 10 a0 e1  mov	r1, r7
00603ad4  9c 00 8d e2  add	r0, sp, #156
00603ad8  4d fe ff eb  bl	0x603414 <_ZN5boost13intrusive_ptrIN6glitch5video6CImageEEaSEPS3_> @ imm = #-0x6cc
00603adc  9c 00 9d e5  ldr	r0, [sp, #0x9c]
00603ae0  00 00 50 e3  cmp	r0, #0
00603ae4  32 01 00 0a  beq	0x603fb4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xac8> @ imm = #0x4c8
00603ae8  1c 20 9d e5  ldr	r2, [sp, #0x1c]
00603aec  82 80 a0 e1  lsl	r8, r2, #1
00603af0  08 00 a0 e1  mov	r0, r8
00603af4  be c2 fc eb  bl	0x5345f4 <_ZN6glitch4core18allocProcessBufferEi> @ imm = #-0xcf508
00603af8  b0 36 dd e1  ldrh	r3, [sp, #96]
00603afc  00 70 a0 e1  mov	r7, r0
00603b00  01 00 53 e3  cmp	r3, #1
00603b04  62 01 00 0a  beq	0x604094 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xba8> @ imm = #0x588
00603b08  a8 36 9f e5  ldr	r3, [pc, #0x6a8]        @ 0x6041b8 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xccc>
00603b0c  1c c0 9d e5  ldr	r12, [sp, #0x1c]
00603b10  03 30 96 e7  ldr	r3, [r6, r3]
00603b14  00 00 5c e3  cmp	r12, #0
00603b18  18 12 93 e5  ldr	r1, [r3, #0x218]
00603b1c  07 00 00 0a  beq	0x603b40 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x654> @ imm = #0x1c
00603b20  20 20 9d e5  ldr	r2, [sp, #0x20]
00603b24  00 30 a0 e3  mov	r3, #0
00603b28  03 01 92 e7  ldr	r0, [r2, r3, lsl #2]
00603b2c  01 00 80 e1  orr	r0, r0, r1
00603b30  03 01 82 e7  str	r0, [r2, r3, lsl #2]
00603b34  01 30 83 e2  add	r3, r3, #1
00603b38  03 00 5c e1  cmp	r12, r3
00603b3c  f9 ff ff 1a  bne	0x603b28 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x63c> @ imm = #-0x1c
00603b40  01 c0 a0 e3  mov	r12, #1
00603b44  1c 00 9d e5  ldr	r0, [sp, #0x1c]
00603b48  0c c0 8d e5  str	r12, [sp, #0xc]
00603b4c  00 c0 a0 e3  mov	r12, #0
00603b50  10 c0 8d e5  str	r12, [sp, #0x10]
00603b54  1c c0 9d e5  ldr	r12, [sp, #0x1c]
00603b58  00 21 a0 e1  lsl	r2, r0, #2
00603b5c  20 10 9d e5  ldr	r1, [sp, #0x20]
00603b60  0d 00 a0 e3  mov	r0, #13
00603b64  09 30 a0 e3  mov	r3, #9
00603b68  80 11 8d e8  stm	sp, {r7, r8, r12}
00603b6c  8e d6 ff eb  bl	0x5f95ac <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb> @ imm = #-0xa5c8
00603b70  ba 35 dd e1  ldrh	r3, [sp, #90]
00603b74  bc 95 dd e1  ldrh	r9, [sp, #92]
00603b78  b6 25 dd e1  ldrh	r2, [sp, #86]
00603b7c  b8 65 dd e1  ldrh	r6, [sp, #88]
00603b80  09 98 83 e1  orr	r9, r3, r9, lsl #16
00603b84  9c 30 9d e5  ldr	r3, [sp, #0x9c]
00603b88  06 68 82 e1  orr	r6, r2, r6, lsl #16
00603b8c  06 10 a0 e1  mov	r1, r6
00603b90  09 00 a0 e3  mov	r0, #9
00603b94  08 80 93 e5  ldr	r8, [r3, #0x8]
00603b98  60 a0 dd e5  ldrb	r10, [sp, #0x60]
00603b9c  d2 a7 ff eb  bl	0x5edaec <_ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj> @ imm = #-0x160b8
00603ba0  96 0a 03 e0  mul	r3, r6, r10
00603ba4  08 00 8d e5  str	r0, [sp, #0x8]
00603ba8  07 30 83 e2  add	r3, r3, #7
00603bac  a3 11 a0 e1  lsr	r1, r3, #3
00603bb0  01 c0 a0 e3  mov	r12, #1
00603bb4  0a 20 a0 e1  mov	r2, r10
00603bb8  05 00 a0 e1  mov	r0, r5
00603bbc  09 30 a0 e3  mov	r3, #9
00603bc0  04 80 8d e5  str	r8, [sp, #0x4]
00603bc4  0c 60 8d e5  str	r6, [sp, #0xc]
00603bc8  10 90 8d e5  str	r9, [sp, #0x10]
00603bcc  14 c0 8d e5  str	r12, [sp, #0x14]
00603bd0  00 70 8d e5  str	r7, [sp]
00603bd4  4a a9 ff eb  bl	0x5ee104 <_ZN6glitch5video12pixel_format16unpackPalettizedEPKvjhNS0_14E_PIXEL_FORMATES3_Pvjjjb> @ imm = #-0x15ad8
00603bd8  00 00 57 e3  cmp	r7, #0
00603bdc  25 ff ff 0a  beq	0x603878 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x38c> @ imm = #-0x36c
00603be0  07 00 a0 e1  mov	r0, r7
00603be4  a7 c2 fc eb  bl	0x534688 <_ZN6glitch4core20releaseProcessBufferEPv> @ imm = #-0xcf564
00603be8  9c 30 9d e5  ldr	r3, [sp, #0x9c]
00603bec  4b ff ff ea  b	0x603920 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x434> @ imm = #-0x2d4
00603bf0  00 30 a0 e3  mov	r3, #0
00603bf4  49 ff ff ea  b	0x603920 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x434> @ imm = #-0x2dc
00603bf8  b6 15 dd e1  ldrh	r1, [sp, #86]
00603bfc  b8 b5 dd e1  ldrh	r11, [sp, #88]
00603c00  ba 35 dd e1  ldrh	r3, [sp, #90]
00603c04  bc 25 dd e1  ldrh	r2, [sp, #92]
00603c08  0b b8 81 e1  orr	r11, r1, r11, lsl #16
00603c0c  0b b0 88 e0  add	r11, r8, r11
00603c10  02 88 83 e1  orr	r8, r3, r2, lsl #16
00603c14  98 0b 08 e0  mul	r8, r8, r11
00603c18  b6 36 dd e1  ldrh	r3, [sp, #102]
00603c1c  03 00 98 e2  adds	r0, r8, #3
00603c20  b8 76 dd e1  ldrh	r7, [sp, #104]
00603c24  06 00 88 42  addmi	r0, r8, #6
00603c28  00 10 a0 e3  mov	r1, #0
00603c2c  03 00 c0 e3  bic	r0, r0, #3
00603c30  07 78 83 e1  orr	r7, r3, r7, lsl #16
00603c34  5b c1 fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xcfa94
00603c38  05 10 a0 e1  mov	r1, r5
00603c3c  05 20 61 e0  rsb	r2, r1, r5
00603c40  02 00 57 e1  cmp	r7, r2
00603c44  00 a0 a0 e1  mov	r10, r0
00603c48  08 80 80 e0  add	r8, r0, r8
00603c4c  00 30 a0 e1  mov	r3, r0
00603c50  00 90 a0 e3  mov	r9, #0
00603c54  10 00 00 da  ble	0x603c9c <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x7b0> @ imm = #0x40
00603c58  03 00 58 e1  cmp	r8, r3
00603c5c  0e 00 00 9a  bls	0x603c9c <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x7b0> @ imm = #0x38
00603c60  00 20 d1 e5  ldrb	r2, [r1]
00603c64  00 00 52 e3  cmp	r2, #0
00603c68  11 00 00 1a  bne	0x603cb4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x7c8> @ imm = #0x44
00603c6c  01 00 d1 e5  ldrb	r0, [r1, #0x1]
00603c70  01 e0 81 e2  add	lr, r1, #1
00603c74  01 00 50 e3  cmp	r0, #1
00603c78  07 00 00 0a  beq	0x603c9c <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x7b0> @ imm = #0x1c
00603c7c  17 00 00 2a  bhs	0x603ce0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x7f4> @ imm = #0x5c
00603c80  01 90 89 e2  add	r9, r9, #1
00603c84  9b a9 23 e0  mla	r3, r11, r9, r10
00603c88  01 e0 8e e2  add	lr, lr, #1
00603c8c  0e 10 a0 e1  mov	r1, lr
00603c90  05 20 61 e0  rsb	r2, r1, r5
00603c94  02 00 57 e1  cmp	r7, r2
00603c98  ee ff ff ca  bgt	0x603c58 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x76c> @ imm = #-0x48
00603c9c  00 00 55 e3  cmp	r5, #0
00603ca0  3d 01 00 0a  beq	0x60419c <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xcb0> @ imm = #0x4f4
00603ca4  05 00 a0 e1  mov	r0, r5
00603ca8  02 29 f4 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2f5bf8
00603cac  0a 50 a0 e1  mov	r5, r10
00603cb0  97 fe ff ea  b	0x603714 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x228> @ imm = #-0x5a4
00603cb4  02 e0 81 e2  add	lr, r1, #2
00603cb8  01 00 d1 e5  ldrb	r0, [r1, #0x1]
00603cbc  f2 ff ff da  ble	0x603c8c <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x7a0> @ imm = #-0x38
00603cc0  00 10 a0 e3  mov	r1, #0
00603cc4  01 00 c3 e7  strb	r0, [r3, r1]
00603cc8  01 10 81 e2  add	r1, r1, #1
00603ccc  01 00 52 e1  cmp	r2, r1
00603cd0  fb ff ff ca  bgt	0x603cc4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x7d8> @ imm = #-0x14
00603cd4  02 30 83 e0  add	r3, r3, r2
00603cd8  0e 10 a0 e1  mov	r1, lr
00603cdc  eb ff ff ea  b	0x603c90 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x7a4> @ imm = #-0x54
00603ce0  02 00 50 e3  cmp	r0, #2
00603ce4  a8 00 00 0a  beq	0x603f8c <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xaa0> @ imm = #0x2a0
00603ce8  01 c0 00 e2  and	r12, r0, #1
00603cec  00 00 50 e3  cmp	r0, #0
00603cf0  01 e0 8e e2  add	lr, lr, #1
00603cf4  24 c0 8d e5  str	r12, [sp, #0x24]
00603cf8  07 00 00 0a  beq	0x603d1c <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x830> @ imm = #0x1c
00603cfc  02 c0 d1 e5  ldrb	r12, [r1, #0x2]
00603d00  01 10 81 e2  add	r1, r1, #1
00603d04  02 c0 c3 e7  strb	r12, [r3, r2]
00603d08  01 20 82 e2  add	r2, r2, #1
00603d0c  02 00 50 e1  cmp	r0, r2
00603d10  f9 ff ff ca  bgt	0x603cfc <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x810> @ imm = #-0x1c
00603d14  00 30 83 e0  add	r3, r3, r0
00603d18  00 e0 8e e0  add	lr, lr, r0
00603d1c  24 00 9d e5  ldr	r0, [sp, #0x24]
00603d20  00 00 50 e3  cmp	r0, #0
00603d24  00 e0 8e c0  addgt	lr, lr, r0
00603d28  0e 10 a0 e1  mov	r1, lr
00603d2c  d7 ff ff ea  b	0x603c90 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x7a4> @ imm = #-0xa4
00603d30  b8 15 dd e1  ldrh	r1, [sp, #88]
00603d34  b6 35 dd e1  ldrh	r3, [sp, #86]
00603d38  ba 25 dd e1  ldrh	r2, [sp, #90]
00603d3c  bc 75 dd e1  ldrh	r7, [sp, #92]
00603d40  01 38 83 e1  orr	r3, r3, r1, lsl #16
00603d44  01 30 83 e2  add	r3, r3, #1
00603d48  a3 3f 83 e0  add	r3, r3, r3, lsr #31
00603d4c  07 78 82 e1  orr	r7, r2, r7, lsl #16
00603d50  c3 30 88 e0  add	r3, r8, r3, asr #1
00603d54  97 03 07 e0  mul	r7, r7, r3
00603d58  38 30 8d e5  str	r3, [sp, #0x38]
00603d5c  b8 26 dd e1  ldrh	r2, [sp, #104]
00603d60  b6 36 dd e1  ldrh	r3, [sp, #102]
00603d64  03 00 97 e2  adds	r0, r7, #3
00603d68  06 00 87 42  addmi	r0, r7, #6
00603d6c  02 28 83 e1  orr	r2, r3, r2, lsl #16
00603d70  00 10 a0 e3  mov	r1, #0
00603d74  03 00 c0 e3  bic	r0, r0, #3
00603d78  24 20 8d e5  str	r2, [sp, #0x24]
00603d7c  09 c1 fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xcfbdc
00603d80  00 10 a0 e3  mov	r1, #0
00603d84  07 70 80 e0  add	r7, r0, r7
00603d88  30 00 8d e5  str	r0, [sp, #0x30]
00603d8c  34 70 8d e5  str	r7, [sp, #0x34]
00603d90  00 20 a0 e1  mov	r2, r0
00603d94  05 e0 a0 e1  mov	lr, r5
00603d98  04 30 a0 e3  mov	r3, #4
00603d9c  3c 10 8d e5  str	r1, [sp, #0x3c]
00603da0  0f c0 a0 e3  mov	r12, #15
00603da4  24 00 9d e5  ldr	r0, [sp, #0x24]
00603da8  05 10 6e e0  rsb	r1, lr, r5
00603dac  01 00 50 e1  cmp	r0, r1
00603db0  16 00 00 da  ble	0x603e10 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x924> @ imm = #0x58
00603db4  34 10 9d e5  ldr	r1, [sp, #0x34]
00603db8  02 00 51 e1  cmp	r1, r2
00603dbc  13 00 00 9a  bls	0x603e10 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x924> @ imm = #0x4c
00603dc0  00 70 de e5  ldrb	r7, [lr]
00603dc4  00 00 57 e3  cmp	r7, #0
00603dc8  16 00 00 1a  bne	0x603e28 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x93c> @ imm = #0x58
00603dcc  01 80 de e5  ldrb	r8, [lr, #0x1]
00603dd0  01 10 8e e2  add	r1, lr, #1
00603dd4  01 00 58 e3  cmp	r8, #1
00603dd8  0c 00 00 0a  beq	0x603e10 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x924> @ imm = #0x30
00603ddc  2f 00 00 2a  bhs	0x603ea0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x9b4> @ imm = #0xbc
00603de0  3c 20 9d e5  ldr	r2, [sp, #0x3c]
00603de4  38 30 9d e5  ldr	r3, [sp, #0x38]
00603de8  30 00 9d e5  ldr	r0, [sp, #0x30]
00603dec  01 20 82 e2  add	r2, r2, #1
00603df0  3c 20 8d e5  str	r2, [sp, #0x3c]
00603df4  93 02 22 e0  mla	r2, r3, r2, r0
00603df8  24 00 9d e5  ldr	r0, [sp, #0x24]
00603dfc  01 e0 81 e2  add	lr, r1, #1
00603e00  05 10 6e e0  rsb	r1, lr, r5
00603e04  01 00 50 e1  cmp	r0, r1
00603e08  04 30 a0 e3  mov	r3, #4
00603e0c  e8 ff ff ca  bgt	0x603db4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x8c8> @ imm = #-0x60
00603e10  00 00 55 e3  cmp	r5, #0
00603e14  64 00 00 0a  beq	0x603fac <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xac0> @ imm = #0x190
00603e18  05 00 a0 e1  mov	r0, r5
00603e1c  a5 28 f4 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2f5d6c
00603e20  30 50 9d e5  ldr	r5, [sp, #0x30]
00603e24  3a fe ff ea  b	0x603714 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x228> @ imm = #-0x718
00603e28  01 b0 de e5  ldrb	r11, [lr, #0x1]
00603e2c  02 e0 8e e2  add	lr, lr, #2
00603e30  2b 92 a0 e1  lsr	r9, r11, #4
00603e34  0f b0 0b e2  and	r11, r11, #15
00603e38  d9 ff ff da  ble	0x603da4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x8b8> @ imm = #-0x9c
00603e3c  00 10 a0 e3  mov	r1, #0
00603e40  0a 00 00 ea  b	0x603e70 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x984> @ imm = #0x28
00603e44  19 83 00 e0  and	r8, r0, r9, lsl r3
00603e48  00 a0 d2 e5  ldrb	r10, [r2]
00603e4c  04 00 53 e3  cmp	r3, #4
00603e50  00 30 a0 e3  mov	r3, #0
00603e54  00 00 ca e1  bic	r0, r10, r0
00603e58  08 00 80 e1  orr	r0, r0, r8
00603e5c  00 00 c2 e5  strb	r0, [r2]
00603e60  0b 00 00 1a  bne	0x603e94 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x9a8> @ imm = #0x2c
00603e64  01 10 81 e2  add	r1, r1, #1
00603e68  01 00 57 e1  cmp	r7, r1
00603e6c  cc ff ff da  ble	0x603da4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x8b8> @ imm = #-0xd0
00603e70  1c 03 a0 e1  lsl	r0, r12, r3
00603e74  00 00 53 e3  cmp	r3, #0
00603e78  70 00 ef e6  uxtb	r0, r0
00603e7c  f0 ff ff 1a  bne	0x603e44 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x958> @ imm = #-0x40
00603e80  00 80 d2 e5  ldrb	r8, [r2]
00603e84  0b 30 00 e0  and	r3, r0, r11
00603e88  00 00 c8 e1  bic	r0, r8, r0
00603e8c  03 00 80 e1  orr	r0, r0, r3
00603e90  00 00 c2 e5  strb	r0, [r2]
00603e94  01 20 82 e2  add	r2, r2, #1
00603e98  04 30 a0 e3  mov	r3, #4
00603e9c  f0 ff ff ea  b	0x603e64 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x978> @ imm = #-0x40
00603ea0  02 00 58 e3  cmp	r8, #2
00603ea4  2c 00 00 0a  beq	0x603f5c <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xa70> @ imm = #0xb0
00603ea8  00 00 58 e3  cmp	r8, #0
00603eac  01 e0 81 e2  add	lr, r1, #1
00603eb0  01 90 08 e2  and	r9, r8, #1
00603eb4  19 00 00 0a  beq	0x603f20 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xa34> @ imm = #0x64
00603eb8  01 a0 d1 e5  ldrb	r10, [r1, #0x1]
00603ebc  07 00 a0 e1  mov	r0, r7
00603ec0  2a a2 a0 e1  lsr	r10, r10, #4
00603ec4  07 00 00 ea  b	0x603ee8 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x9fc> @ imm = #0x1c
00603ec8  00 10 de e5  ldrb	r1, [lr]
00603ecc  04 00 50 e3  cmp	r0, #4
00603ed0  51 a0 a0 e1  asr	r10, r1, r0
00603ed4  01 10 81 12  addne	r1, r1, #1
00603ed8  0f a0 0a e2  and	r10, r10, #15
00603edc  00 00 a0 03  moveq	r0, #0
00603ee0  00 10 ce 15  strbne	r1, [lr]
00603ee4  04 00 a0 13  movne	r0, #4
00603ee8  1c 13 a0 e1  lsl	r1, r12, r3
00603eec  71 10 ef e6  uxtb	r1, r1
00603ef0  1a a3 01 e0  and	r10, r1, r10, lsl r3
00603ef4  00 b0 d2 e5  ldrb	r11, [r2]
00603ef8  04 00 53 e3  cmp	r3, #4
00603efc  01 70 87 e2  add	r7, r7, #1
00603f00  01 10 cb e1  bic	r1, r11, r1
00603f04  0a 10 81 e1  orr	r1, r1, r10
00603f08  00 30 a0 e3  mov	r3, #0
00603f0c  00 10 c2 e5  strb	r1, [r2]
00603f10  04 30 a0 13  movne	r3, #4
00603f14  01 20 82 12  addne	r2, r2, #1
00603f18  07 00 58 e1  cmp	r8, r7
00603f1c  e9 ff ff ca  bgt	0x603ec8 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x9dc> @ imm = #-0x5c
00603f20  00 00 59 e3  cmp	r9, #0
00603f24  09 e0 8e c0  addgt	lr, lr, r9
00603f28  9d ff ff ea  b	0x603da4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x8b8> @ imm = #-0x18c
00603f2c  00 30 97 e5  ldr	r3, [r7]
00603f30  07 00 a0 e1  mov	r0, r7
00603f34  0f e0 a0 e1  mov	lr, pc
00603f38  20 f0 93 e5  ldr	pc, [r3, #0x20]
00603f3c  be 34 dd e1  ldrh	r3, [sp, #78]
00603f40  b0 15 dd e1  ldrh	r1, [sp, #80]
00603f44  01 28 83 e1  orr	r2, r3, r1, lsl #16
00603f48  00 20 62 e0  rsb	r2, r2, r0
00603f4c  22 08 a0 e1  lsr	r0, r2, #16
00603f50  b8 06 cd e1  strh	r0, [sp, #104]
00603f54  b6 26 cd e1  strh	r2, [sp, #102]
00603f58  aa fd ff ea  b	0x603608 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x11c> @ imm = #-0x958
00603f5c  01 30 d1 e5  ldrb	r3, [r1, #0x1]
00603f60  01 10 81 e2  add	r1, r1, #1
00603f64  01 e0 d1 e5  ldrb	lr, [r1, #0x1]
00603f68  c3 00 a0 e1  asr	r0, r3, #1
00603f6c  01 00 13 e3  tst	r3, #1
00603f70  38 30 9d e5  ldr	r3, [sp, #0x38]
00603f74  93 0e 20 e0  mla	r0, r3, lr, r0
00603f78  00 30 a0 13  movne	r3, #0
00603f7c  04 30 a0 03  moveq	r3, #4
00603f80  00 20 82 e0  add	r2, r2, r0
00603f84  02 e0 81 e2  add	lr, r1, #2
00603f88  85 ff ff ea  b	0x603da4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x8b8> @ imm = #-0x1ec
00603f8c  01 10 de e5  ldrb	r1, [lr, #0x1]
00603f90  01 e0 8e e2  add	lr, lr, #1
00603f94  01 20 de e5  ldrb	r2, [lr, #0x1]
00603f98  01 30 83 e0  add	r3, r3, r1
00603f9c  02 e0 8e e2  add	lr, lr, #2
00603fa0  9b 32 23 e0  mla	r3, r11, r2, r3
00603fa4  0e 10 a0 e1  mov	r1, lr
00603fa8  38 ff ff ea  b	0x603c90 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x7a4> @ imm = #-0x320
00603fac  30 50 9d e5  ldr	r5, [sp, #0x30]
00603fb0  d7 fd ff ea  b	0x603714 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x228> @ imm = #-0x8a4
00603fb4  00 30 a0 e3  mov	r3, #0
00603fb8  00 30 84 e5  str	r3, [r4]
00603fbc  5d fe ff ea  b	0x603938 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x44c> @ imm = #-0x68c
00603fc0  20 00 9d e5  ldr	r0, [sp, #0x20]
00603fc4  1c 30 9d e5  ldr	r3, [sp, #0x1c]
00603fc8  07 00 90 e8  ldm	r0, {r0, r1, r2}
00603fcc  03 00 53 e3  cmp	r3, #3
00603fd0  02 60 81 e1  orr	r6, r1, r2
00603fd4  00 60 86 e1  orr	r6, r6, r0
00603fd8  06 60 e0 e1  mvn	r6, r6
00603fdc  76 60 ff e6  uxth	r6, r6
00603fe0  01 a0 a0 d3  movle	r10, #1
00603fe4  03 00 00 da  ble	0x603ff8 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xb0c> @ imm = #0xc
00603fe8  20 c0 9d e5  ldr	r12, [sp, #0x20]
00603fec  0c a0 9c e5  ldr	r10, [r12, #0xc]
00603ff0  06 a0 5a e0  subs	r10, r10, r6
00603ff4  01 a0 a0 13  movne	r10, #1
00603ff8  06 30 a0 e1  mov	r3, r6
00603ffc  9b a6 ff eb  bl	0x5eda70 <_ZN6glitch5video12pixel_format9getFormatEjjjj> @ imm = #-0x16594
00604000  27 00 50 e3  cmp	r0, #39
00604004  00 70 a0 e1  mov	r7, r0
00604008  28 00 00 1a  bne	0x6040b0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xbc4> @ imm = #0xa0
0060400c  a8 01 9f e5  ldr	r0, [pc, #0x1a8]        @ 0x6041bc <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xcd0>
00604010  03 10 a0 e3  mov	r1, #3
00604014  00 00 8f e0  add	r0, pc, r0
00604018  20 1b 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0x6c80
0060401c  00 30 a0 e3  mov	r3, #0
00604020  00 30 84 e5  str	r3, [r4]
00604024  9c 00 9d e5  ldr	r0, [sp, #0x9c]
00604028  42 fe ff ea  b	0x603938 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x44c> @ imm = #-0x6f8
0060402c  20 c0 9d e5  ldr	r12, [sp, #0x20]
00604030  1c 30 9d e5  ldr	r3, [sp, #0x1c]
00604034  07 00 9c e8  ldm	r12, {r0, r1, r2}
00604038  03 00 53 e3  cmp	r3, #3
0060403c  02 60 81 e1  orr	r6, r1, r2
00604040  00 60 86 e1  orr	r6, r6, r0
00604044  06 60 e0 e1  mvn	r6, r6
00604048  00 80 a0 d3  movle	r8, #0
0060404c  03 00 00 da  ble	0x604060 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xb74> @ imm = #0xc
00604050  20 c0 9d e5  ldr	r12, [sp, #0x20]
00604054  0c 80 9c e5  ldr	r8, [r12, #0xc]
00604058  06 80 58 e0  subs	r8, r8, r6
0060405c  01 80 a0 13  movne	r8, #1
00604060  06 30 a0 e1  mov	r3, r6
00604064  81 a6 ff eb  bl	0x5eda70 <_ZN6glitch5video12pixel_format9getFormatEjjjj> @ imm = #-0x165fc
00604068  27 00 50 e3  cmp	r0, #39
0060406c  00 70 a0 e1  mov	r7, r0
00604070  1c 00 00 1a  bne	0x6040e8 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xbfc> @ imm = #0x70
00604074  44 01 9f e5  ldr	r0, [pc, #0x144]        @ 0x6041c0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xcd4>
00604078  03 10 a0 e3  mov	r1, #3
0060407c  00 00 8f e0  add	r0, pc, r0
00604080  06 1b 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0x6c18
00604084  00 30 a0 e3  mov	r3, #0
00604088  00 30 84 e5  str	r3, [r4]
0060408c  9c 00 9d e5  ldr	r0, [sp, #0x9c]
00604090  28 fe ff ea  b	0x603938 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x44c> @ imm = #-0x760
00604094  00 30 e0 e3  mvn	r3, #0
00604098  b2 30 c0 e1  strh	r3, [r0, #2]
0060409c  14 31 9f e5  ldr	r3, [pc, #0x114]        @ 0x6041b8 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xccc>
006040a0  03 30 96 e7  ldr	r3, [r6, r3]
006040a4  78 31 93 e5  ldr	r3, [r3, #0x178]
006040a8  b0 30 c0 e1  strh	r3, [r0]
006040ac  af fe ff ea  b	0x603b70 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x684> @ imm = #-0x544
006040b0  08 00 50 e3  cmp	r0, #8
006040b4  09 80 a0 03  moveq	r8, #9
006040b8  02 00 00 0a  beq	0x6040c8 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xbdc> @ imm = #0x8
006040bc  06 00 50 e3  cmp	r0, #6
006040c0  00 80 a0 11  movne	r8, r0
006040c4  07 80 a0 03  moveq	r8, #7
006040c8  00 00 5a e3  cmp	r10, #0
006040cc  34 00 00 1a  bne	0x6041a4 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xcb8> @ imm = #0xd0
006040d0  b6 35 dd e1  ldrh	r3, [sp, #86]
006040d4  b8 05 dd e1  ldrh	r0, [sp, #88]
006040d8  ba 25 dd e1  ldrh	r2, [sp, #90]
006040dc  bc 15 dd e1  ldrh	r1, [sp, #92]
006040e0  00 38 83 e1  orr	r3, r3, r0, lsl #16
006040e4  4d fe ff ea  b	0x603a20 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x534> @ imm = #-0x6cc
006040e8  00 00 58 e3  cmp	r8, #0
006040ec  01 00 00 0a  beq	0x6040f8 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xc0c> @ imm = #0x4
006040f0  00 00 56 e3  cmp	r6, #0
006040f4  05 00 00 1a  bne	0x604110 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xc24> @ imm = #0x14
006040f8  b6 35 dd e1  ldrh	r3, [sp, #86]
006040fc  b8 05 dd e1  ldrh	r0, [sp, #88]
00604100  ba 25 dd e1  ldrh	r2, [sp, #90]
00604104  bc 15 dd e1  ldrh	r1, [sp, #92]
00604108  00 38 83 e1  orr	r3, r3, r0, lsl #16
0060410c  b7 fd ff ea  b	0x6037f0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x304> @ imm = #-0x924
00604110  ba 25 dd e1  ldrh	r2, [sp, #90]
00604114  bc 15 dd e1  ldrh	r1, [sp, #92]
00604118  28 00 9d e5  ldr	r0, [sp, #0x28]
0060411c  01 c8 82 e1  orr	r12, r2, r1, lsl #16
00604120  9c 50 2c e0  mla	r12, r12, r0, r5
00604124  0c 00 55 e1  cmp	r5, r12
00604128  b6 35 dd 01  ldrheq	r3, [sp, #86]
0060412c  b8 05 dd 01  ldrheq	r0, [sp, #88]
00604130  00 38 83 01  orreq	r3, r3, r0, lsl #16
00604134  ad fd ff 0a  beq	0x6037f0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x304> @ imm = #-0x94c
00604138  b6 35 dd e1  ldrh	r3, [sp, #86]
0060413c  b8 25 dd e1  ldrh	r2, [sp, #88]
00604140  28 80 9d e5  ldr	r8, [sp, #0x28]
00604144  00 e0 a0 e3  mov	lr, #0
00604148  05 10 a0 e1  mov	r1, r5
0060414c  02 38 83 e1  orr	r3, r3, r2, lsl #16
00604150  00 00 53 e3  cmp	r3, #0
00604154  09 00 00 0a  beq	0x604180 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xc94> @ imm = #0x24
00604158  00 20 a0 e3  mov	r2, #0
0060415c  02 00 91 e7  ldr	r0, [r1, r2]
00604160  01 30 53 e2  subs	r3, r3, #1
00604164  06 00 80 e1  orr	r0, r0, r6
00604168  02 00 81 e7  str	r0, [r1, r2]
0060416c  04 20 82 e2  add	r2, r2, #4
00604170  f9 ff ff 1a  bne	0x60415c <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xc70> @ imm = #-0x1c
00604174  b6 35 dd e1  ldrh	r3, [sp, #86]
00604178  b8 25 dd e1  ldrh	r2, [sp, #88]
0060417c  02 38 83 e1  orr	r3, r3, r2, lsl #16
00604180  08 e0 8e e0  add	lr, lr, r8
00604184  0e 10 85 e0  add	r1, r5, lr
00604188  01 00 5c e1  cmp	r12, r1
0060418c  ef ff ff 1a  bne	0x604150 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xc64> @ imm = #-0x44
00604190  ba 25 dd e1  ldrh	r2, [sp, #90]
00604194  bc 15 dd e1  ldrh	r1, [sp, #92]
00604198  94 fd ff ea  b	0x6037f0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x304> @ imm = #-0x9b0
0060419c  0a 50 a0 e1  mov	r5, r10
006041a0  5b fd ff ea  b	0x603714 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x228> @ imm = #-0xa94
006041a4  00 00 56 e3  cmp	r6, #0
006041a8  c8 ff ff 0a  beq	0x6040d0 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0xbe4> @ imm = #-0xe0
006041ac  f8 fd ff ea  b	0x603994 <_ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE+0x4a8> @ imm = #-0x820
006041b0  6c 15 39 00  .word	0x0039156c
006041b4  08 0e 2e 00  .word	0x002e0e08
006041b8  34 1f 00 00  .word	0x00001f34
006041bc  cc 05 2e 00  .word	0x002e05cc
006041c0  64 05 2e 00  .word	0x002e0564

; bmp_extension: glitch::video::CImageLoaderBMP::isALoadableFileExtension(char const*) const
; VA=0x006034a0, size=0x4c, file_offset=0x006034a0, SHA-256=f1611a95ad1e45f76d2fa6f204f03b86d12806782864471b41e93b2746616a1f
006034a0  10 40 2d e9  push	{r4, lr}
006034a4  01 00 a0 e1  mov	r0, r1
006034a8  01 40 a0 e1  mov	r4, r1
006034ac  30 10 9f e5  ldr	r1, [pc, #0x30]         @ 0x6034e4 <_ZNK6glitch5video15CImageLoaderBMP24isALoadableFileExtensionEPKc+0x44>
006034b0  01 10 8f e0  add	r1, pc, r1
006034b4  c6 2d f4 eb  bl	0x30ebd4 <strstr@plt>   @ imm = #-0x2f48e8
006034b8  00 00 50 e3  cmp	r0, #0
006034bc  01 00 00 0a  beq	0x6034c8 <_ZNK6glitch5video15CImageLoaderBMP24isALoadableFileExtensionEPKc+0x28> @ imm = #0x4
006034c0  01 00 a0 e3  mov	r0, #1
006034c4  10 80 bd e8  pop	{r4, pc}
006034c8  18 10 9f e5  ldr	r1, [pc, #0x18]         @ 0x6034e8 <_ZNK6glitch5video15CImageLoaderBMP24isALoadableFileExtensionEPKc+0x48>
006034cc  04 00 a0 e1  mov	r0, r4
006034d0  01 10 8f e0  add	r1, pc, r1
006034d4  be 2d f4 eb  bl	0x30ebd4 <strstr@plt>   @ imm = #-0x2f4908
006034d8  00 00 50 e2  subs	r0, r0, #0
006034dc  01 00 a0 13  movne	r0, #1
006034e0  10 80 bd e8  pop	{r4, pc}
006034e4  00 11 2e 00  .word	0x002e1100
006034e8  e8 10 2e 00  .word	0x002e10e8

; dds_texture_interface: glitch::video::CImageLoaderDDS::hasTextureLoadInterface()
; VA=0x006041c4, size=0x8, file_offset=0x006041c4, SHA-256=007f34a6c3441b0240da53f253e513b959105da2d8803255e1856aa48f48db47
006041c4  01 00 a0 e3  mov	r0, #1
006041c8  1e ff 2f e1  bx	lr

; dds_signature_probe: glitch::video::CImageLoaderDDS::isALoadableFileFormat(glitch::io::IReadFile*) const
; VA=0x006042c0, size=0x4c, file_offset=0x006042c0, SHA-256=96983c020dd0e5f4d108a197263dbcd56cc16de353635863197cf58b264d8b9d
006042c0  04 e0 2d e5  str	lr, [sp, #-0x4]!
006042c4  00 00 51 e3  cmp	r1, #0
006042c8  0c d0 4d e2  sub	sp, sp, #12
006042cc  01 00 a0 01  moveq	r0, r1
006042d0  0b 00 00 0a  beq	0x604304 <_ZNK6glitch5video15CImageLoaderDDS21isALoadableFileFormatEPNS_2io9IReadFileE+0x44> @ imm = #0x2c
006042d4  00 30 91 e5  ldr	r3, [r1]
006042d8  01 00 a0 e1  mov	r0, r1
006042dc  04 20 a0 e3  mov	r2, #4
006042e0  04 10 8d e2  add	r1, sp, #4
006042e4  0f e0 a0 e1  mov	lr, pc
006042e8  0c f0 93 e5  ldr	pc, [r3, #0xc]
006042ec  04 00 9d e5  ldr	r0, [sp, #0x4]
006042f0  44 34 04 e3  movw	r3, #0x4444
006042f4  53 30 42 e3  movt	r3, #0x2053
006042f8  03 00 50 e1  cmp	r0, r3
006042fc  00 00 a0 13  movne	r0, #0
00604300  01 00 a0 03  moveq	r0, #1
00604304  0c d0 8d e2  add	sp, sp, #12
00604308  00 80 bd e8  ldm	sp!, {pc}

; dds_header: glitch::video::CImageLoaderDDS::loadTextureHeader(glitch::io::IReadFile*, glitch::video::STextureDesc&) const
; VA=0x00604398, size=0x35c, file_offset=0x00604398, SHA-256=c30d640adb76446c167806bd4c199831738f6a767dc01830009180fa526c66f9
00604398  f0 45 2d e9  push	{r4, r5, r6, r7, r8, r10, lr}
0060439c  9c d0 4d e2  sub	sp, sp, #156
006043a0  01 00 a0 e1  mov	r0, r1
006043a4  01 50 a0 e1  mov	r5, r1
006043a8  10 10 8d e2  add	r1, sp, #16
006043ac  02 40 a0 e1  mov	r4, r2
006043b0  85 ff ff eb  bl	0x6041cc <_ZN6glitch5video12_GLOBAL__N_113readDDSHeaderEPNS_2io9IReadFileERNS1_23SDDSSurfaceFormatHeaderE> @ imm = #-0x1ec
006043b4  00 00 50 e3  cmp	r0, #0
006043b8  01 00 00 1a  bne	0x6043c4 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x2c> @ imm = #0x4
006043bc  9c d0 8d e2  add	sp, sp, #156
006043c0  f0 85 bd e8  pop	{r4, r5, r6, r7, r8, r10, pc}
006043c4  7c 30 9d e5  ldr	r3, [sp, #0x7c]
006043c8  02 0c 13 e3  tst	r3, #512
006043cc  51 00 00 1a  bne	0x604518 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x180> @ imm = #0x144
006043d0  02 36 13 e2  ands	r3, r3, #2097152
006043d4  01 30 a0 13  movne	r3, #1
006043d8  00 30 84 e5  str	r3, [r4]
006043dc  14 10 9d e5  ldr	r1, [sp, #0x14]
006043e0  18 30 9d e5  ldr	r3, [sp, #0x18]
006043e4  1c 20 9d e5  ldr	r2, [sp, #0x1c]
006043e8  02 05 11 e3  tst	r1, #8388608
006043ec  00 10 a0 e3  mov	r1, #0
006043f0  14 30 84 e5  str	r3, [r4, #0x14]
006043f4  08 10 84 e5  str	r1, [r4, #0x8]
006043f8  10 20 84 e5  str	r2, [r4, #0x10]
006043fc  24 30 9d 15  ldrne	r3, [sp, #0x24]
00604400  01 30 a0 03  moveq	r3, #1
00604404  18 30 84 e5  str	r3, [r4, #0x18]
00604408  78 30 9d e5  ldr	r3, [sp, #0x78]
0060440c  53 3b e0 e7  ubfx	r3, r3, #0x16, #0x1
00604410  00 00 53 e3  cmp	r3, #0
00604414  1c 30 c4 e5  strb	r3, [r4, #0x1c]
00604418  25 00 00 0a  beq	0x6044b4 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x11c> @ imm = #0x94
0060441c  10 30 94 e5  ldr	r3, [r4, #0x10]
00604420  00 00 53 e3  cmp	r3, #0
00604424  00 20 e0 03  mvneq	r2, #0
00604428  03 00 00 0a  beq	0x60443c <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0xa4> @ imm = #0xc
0060442c  00 20 e0 e3  mvn	r2, #0
00604430  a3 30 b0 e1  lsrs	r3, r3, #1
00604434  01 20 82 e2  add	r2, r2, #1
00604438  fc ff ff 1a  bne	0x604430 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x98> @ imm = #-0x10
0060443c  14 30 94 e5  ldr	r3, [r4, #0x14]
00604440  8c 20 8d e5  str	r2, [sp, #0x8c]
00604444  00 00 53 e3  cmp	r3, #0
00604448  00 10 e0 03  mvneq	r1, #0
0060444c  03 00 00 0a  beq	0x604460 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0xc8> @ imm = #0xc
00604450  00 10 e0 e3  mvn	r1, #0
00604454  a3 30 b0 e1  lsrs	r3, r3, #1
00604458  01 10 81 e2  add	r1, r1, #1
0060445c  fc ff ff 1a  bne	0x604454 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0xbc> @ imm = #-0x10
00604460  18 30 94 e5  ldr	r3, [r4, #0x18]
00604464  90 10 8d e5  str	r1, [sp, #0x90]
00604468  00 00 53 e3  cmp	r3, #0
0060446c  00 00 e0 03  mvneq	r0, #0
00604470  03 00 00 0a  beq	0x604484 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0xec> @ imm = #0xc
00604474  00 00 e0 e3  mvn	r0, #0
00604478  a3 30 b0 e1  lsrs	r3, r3, #1
0060447c  01 00 80 e2  add	r0, r0, #1
00604480  fc ff ff 1a  bne	0x604478 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0xe0> @ imm = #-0x10
00604484  02 00 51 e1  cmp	r1, r2
00604488  01 20 a0 81  movhi	r2, r1
0060448c  90 30 8d 82  addhi	r3, sp, #144
00604490  8c 30 8d 92  addls	r3, sp, #140
00604494  00 00 52 e1  cmp	r2, r0
00604498  94 30 8d 32  addlo	r3, sp, #148
0060449c  94 00 8d e5  str	r0, [sp, #0x94]
006044a0  00 60 93 e5  ldr	r6, [r3]
006044a4  28 30 9d e5  ldr	r3, [sp, #0x28]
006044a8  01 60 86 e2  add	r6, r6, #1
006044ac  03 00 56 e1  cmp	r6, r3
006044b0  4e 00 00 1a  bne	0x6045f0 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x258> @ imm = #0x138
006044b4  5c a0 9d e5  ldr	r10, [sp, #0x5c]
006044b8  04 00 1a e3  tst	r10, #4
006044bc  25 00 00 0a  beq	0x604558 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x1c0> @ imm = #0x94
006044c0  60 20 9d e5  ldr	r2, [sp, #0x60]
006044c4  44 38 05 e3  movw	r3, #0x5844
006044c8  54 33 43 e3  movt	r3, #0x3354
006044cc  03 00 52 e1  cmp	r2, r3
006044d0  7b 00 00 0a  beq	0x6046c4 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x32c> @ imm = #0x1ec
006044d4  53 00 00 9a  bls	0x604628 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x290> @ imm = #0x14c
006044d8  44 38 05 e3  movw	r3, #0x5844
006044dc  54 34 43 e3  movt	r3, #0x3454
006044e0  03 00 52 e1  cmp	r2, r3
006044e4  7a 00 00 0a  beq	0x6046d4 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x33c> @ imm = #0x1e8
006044e8  44 38 05 e3  movw	r3, #0x5844
006044ec  54 35 43 e3  movt	r3, #0x3554
006044f0  03 00 52 e1  cmp	r2, r3
006044f4  76 00 00 0a  beq	0x6046d4 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x33c> @ imm = #0x1d8
006044f8  50 34 05 e3  movw	r3, #0x5450
006044fc  43 34 43 e3  movt	r3, #0x3443
00604500  03 00 52 e1  cmp	r2, r3
00604504  56 00 00 1a  bne	0x604664 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x2cc> @ imm = #0x158
00604508  1b 30 a0 e3  mov	r3, #27
0060450c  04 30 84 e5  str	r3, [r4, #0x4]
00604510  01 00 a0 e3  mov	r0, #1
00604514  a8 ff ff ea  b	0x6043bc <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x24> @ imm = #-0x160
00604518  3f 3b 03 e2  and	r3, r3, #64512
0060451c  3f 0b 53 e3  cmp	r3, #64512
00604520  02 30 a0 03  moveq	r3, #2
00604524  00 30 84 05  streq	r3, [r4]
00604528  ab ff ff 0a  beq	0x6043dc <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x44> @ imm = #-0x154
0060452c  00 30 95 e5  ldr	r3, [r5]
00604530  05 00 a0 e1  mov	r0, r5
00604534  0f e0 a0 e1  mov	lr, pc
00604538  28 f0 93 e5  ldr	pc, [r3, #0x28]
0060453c  a0 11 9f e5  ldr	r1, [pc, #0x1a0]        @ 0x6046e4 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x34c>
00604540  00 20 a0 e1  mov	r2, r0
00604544  03 00 a0 e3  mov	r0, #3
00604548  01 10 8f e0  add	r1, pc, r1
0060454c  b8 1a 00 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x6ae0
00604550  00 00 a0 e3  mov	r0, #0
00604554  98 ff ff ea  b	0x6043bc <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x24> @ imm = #-0x1a0
00604558  40 60 00 e3  movw	r6, #0x40
0060455c  02 60 40 e3  movt	r6, #0x2
00604560  06 60 0a e0  and	r6, r10, r6
00604564  00 00 56 e3  cmp	r6, #0
00604568  06 80 a0 01  moveq	r8, r6
0060456c  06 70 a0 01  moveq	r7, r6
00604570  05 00 00 0a  beq	0x60458c <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x1f4> @ imm = #0x14
00604574  02 08 1a e3  tst	r10, #131072
00604578  68 70 9d e5  ldr	r7, [sp, #0x68]
0060457c  6c 80 9d 05  ldreq	r8, [sp, #0x6c]
00604580  70 60 9d 05  ldreq	r6, [sp, #0x70]
00604584  07 60 a0 11  movne	r6, r7
00604588  07 80 a0 11  movne	r8, r7
0060458c  03 a0 1a e2  ands	r10, r10, #3
00604590  74 a0 9d 15  ldrne	r10, [sp, #0x74]
00604594  07 00 a0 e1  mov	r0, r7
00604598  08 10 a0 e1  mov	r1, r8
0060459c  06 20 a0 e1  mov	r2, r6
006045a0  0a 30 a0 e1  mov	r3, r10
006045a4  31 a5 ff eb  bl	0x5eda70 <_ZN6glitch5video12pixel_format9getFormatEjjjj> @ imm = #-0x16b3c
006045a8  27 00 50 e3  cmp	r0, #39
006045ac  04 00 84 e5  str	r0, [r4, #0x4]
006045b0  01 00 a0 13  movne	r0, #1
006045b4  80 ff ff 1a  bne	0x6043bc <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x24> @ imm = #-0x200
006045b8  00 30 95 e5  ldr	r3, [r5]
006045bc  05 00 a0 e1  mov	r0, r5
006045c0  0f e0 a0 e1  mov	lr, pc
006045c4  28 f0 93 e5  ldr	pc, [r3, #0x28]
006045c8  18 11 9f e5  ldr	r1, [pc, #0x118]        @ 0x6046e8 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x350>
006045cc  00 20 a0 e1  mov	r2, r0
006045d0  07 30 a0 e1  mov	r3, r7
006045d4  03 00 a0 e3  mov	r0, #3
006045d8  01 10 8f e0  add	r1, pc, r1
006045dc  00 80 8d e5  str	r8, [sp]
006045e0  40 04 8d e9  stmib	sp, {r6, r10}
006045e4  92 1a 00 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x6a48
006045e8  00 00 a0 e3  mov	r0, #0
006045ec  72 ff ff ea  b	0x6043bc <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x24> @ imm = #-0x238
006045f0  00 30 95 e5  ldr	r3, [r5]
006045f4  05 00 a0 e1  mov	r0, r5
006045f8  0f e0 a0 e1  mov	lr, pc
006045fc  28 f0 93 e5  ldr	pc, [r3, #0x28]
00604600  e4 10 9f e5  ldr	r1, [pc, #0xe4]         @ 0x6046ec <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x354>
00604604  28 c0 9d e5  ldr	r12, [sp, #0x28]
00604608  00 20 a0 e1  mov	r2, r0
0060460c  01 10 8f e0  add	r1, pc, r1
00604610  03 00 a0 e3  mov	r0, #3
00604614  06 30 a0 e1  mov	r3, r6
00604618  00 c0 8d e5  str	r12, [sp]
0060461c  84 1a 00 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x6a10
00604620  00 00 a0 e3  mov	r0, #0
00604624  64 ff ff ea  b	0x6043bc <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x24> @ imm = #-0x270
00604628  50 34 05 e3  movw	r3, #0x5450
0060462c  43 32 43 e3  movt	r3, #0x3243
00604630  03 00 52 e1  cmp	r2, r3
00604634  19 30 a0 03  moveq	r3, #25
00604638  04 30 84 05  streq	r3, [r4, #0x4]
0060463c  01 00 a0 03  moveq	r0, #1
00604640  5d ff ff 0a  beq	0x6043bc <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x24> @ imm = #-0x28c
00604644  44 38 05 e3  movw	r3, #0x5844
00604648  54 32 43 e3  movt	r3, #0x3254
0060464c  03 00 52 e1  cmp	r2, r3
00604650  1b 00 00 0a  beq	0x6046c4 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x32c> @ imm = #0x6c
00604654  44 38 05 e3  movw	r3, #0x5844
00604658  54 31 43 e3  movt	r3, #0x3154
0060465c  03 00 52 e1  cmp	r2, r3
00604660  13 00 00 0a  beq	0x6046b4 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x31c> @ imm = #0x4c
00604664  27 30 a0 e3  mov	r3, #39
00604668  04 30 84 e5  str	r3, [r4, #0x4]
0060466c  00 30 95 e5  ldr	r3, [r5]
00604670  05 00 a0 e1  mov	r0, r5
00604674  0f e0 a0 e1  mov	lr, pc
00604678  28 f0 93 e5  ldr	pc, [r3, #0x28]
0060467c  60 c0 9d e5  ldr	r12, [sp, #0x60]
00604680  68 10 9f e5  ldr	r1, [pc, #0x68]         @ 0x6046f0 <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x358>
00604684  00 20 a0 e1  mov	r2, r0
00604688  5c e8 a7 e7  sbfx	lr, r12, #0x10, #0x8
0060468c  7c 30 af e6  sxtb	r3, r12
00604690  5c 44 a7 e7  sbfx	r4, r12, #0x8, #0x8
00604694  03 00 a0 e3  mov	r0, #3
00604698  4c cc a0 e1  asr	r12, r12, #24
0060469c  01 10 8f e0  add	r1, pc, r1
006046a0  10 40 8d e8  stm	sp, {r4, lr}
006046a4  08 c0 8d e5  str	r12, [sp, #0x8]
006046a8  61 1a 00 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x6984
006046ac  00 00 a0 e3  mov	r0, #0
006046b0  41 ff ff ea  b	0x6043bc <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x24> @ imm = #-0x2fc
006046b4  12 30 a0 e3  mov	r3, #18
006046b8  04 30 84 e5  str	r3, [r4, #0x4]
006046bc  01 00 a0 e3  mov	r0, #1
006046c0  3d ff ff ea  b	0x6043bc <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x24> @ imm = #-0x30c
006046c4  13 30 a0 e3  mov	r3, #19
006046c8  04 30 84 e5  str	r3, [r4, #0x4]
006046cc  01 00 a0 e3  mov	r0, #1
006046d0  39 ff ff ea  b	0x6043bc <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x24> @ imm = #-0x31c
006046d4  14 30 a0 e3  mov	r3, #20
006046d8  04 30 84 e5  str	r3, [r4, #0x4]
006046dc  01 00 a0 e3  mov	r0, #1
006046e0  35 ff ff ea  b	0x6043bc <_ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE+0x24> @ imm = #-0x32c
006046e4  b8 00 2e 00  .word	0x002e00b8
006046e8  d0 00 2e 00  .word	0x002e00d0
006046ec  24 00 2e 00  .word	0x002e0024
006046f0  e4 ff 2d 00  .word	0x002dffe4

; dds_cpu_image_decode: glitch::video::CImageLoaderDDS::loadImage(glitch::io::IReadFile*) const
; VA=0x006046f4, size=0x218, file_offset=0x006046f4, SHA-256=78ed907ec11b403392c576439c356e2259480933c5fdd7a7473156d4dfa57e92
006046f4  f0 41 2d e9  push	{r4, r5, r6, r7, r8, lr}
006046f8  00 30 a0 e3  mov	r3, #0
006046fc  98 d0 4d e2  sub	sp, sp, #152
00604700  00 30 80 e5  str	r3, [r0]
00604704  00 40 a0 e1  mov	r4, r0
00604708  14 10 8d e2  add	r1, sp, #20
0060470c  02 00 a0 e1  mov	r0, r2
00604710  02 50 a0 e1  mov	r5, r2
00604714  ac fe ff eb  bl	0x6041cc <_ZN6glitch5video12_GLOBAL__N_113readDDSHeaderEPNS_2io9IReadFileERNS1_23SDDSSurfaceFormatHeaderE> @ imm = #-0x550
00604718  00 00 50 e3  cmp	r0, #0
0060471c  02 00 00 0a  beq	0x60472c <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x38> @ imm = #0x8
00604720  14 30 9d e5  ldr	r3, [sp, #0x14]
00604724  7c 00 53 e3  cmp	r3, #124
00604728  02 00 00 0a  beq	0x604738 <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x44> @ imm = #0x8
0060472c  04 00 a0 e1  mov	r0, r4
00604730  98 d0 8d e2  add	sp, sp, #152
00604734  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
00604738  18 20 9d e5  ldr	r2, [sp, #0x18]
0060473c  01 30 01 e3  movw	r3, #0x1001
00604740  00 30 40 e3  movt	r3, #0x0
00604744  03 30 02 e0  and	r3, r2, r3
00604748  01 10 01 e3  movw	r1, #0x1001
0060474c  01 00 53 e1  cmp	r3, r1
00604750  f5 ff ff 1a  bne	0x60472c <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x38> @ imm = #-0x2c
00604754  28 30 9d e5  ldr	r3, [sp, #0x28]
00604758  00 00 53 e3  cmp	r3, #0
0060475c  06 00 00 0a  beq	0x60477c <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x88> @ imm = #0x18
00604760  02 05 12 e3  tst	r2, #8388608
00604764  04 00 00 0a  beq	0x60477c <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x88> @ imm = #0x10
00604768  88 01 9f e5  ldr	r0, [pc, #0x188]        @ 0x6048f8 <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x204>
0060476c  03 10 a0 e3  mov	r1, #3
00604770  00 00 8f e0  add	r0, pc, r0
00604774  49 19 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0x6524
00604778  eb ff ff ea  b	0x60472c <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x38> @ imm = #-0x54
0060477c  60 30 9d e5  ldr	r3, [sp, #0x60]
00604780  01 10 a0 e3  mov	r1, #1
00604784  28 10 8d e5  str	r1, [sp, #0x28]
00604788  04 00 13 e3  tst	r3, #4
0060478c  41 00 00 0a  beq	0x604898 <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x1a4> @ imm = #0x104
00604790  64 20 9d e5  ldr	r2, [sp, #0x64]
00604794  44 38 05 e3  movw	r3, #0x5844
00604798  54 33 43 e3  movt	r3, #0x3354
0060479c  03 00 52 e1  cmp	r2, r3
006047a0  20 60 9d e5  ldr	r6, [sp, #0x20]
006047a4  1c 80 9d e5  ldr	r8, [sp, #0x1c]
006047a8  08 00 00 0a  beq	0x6047d0 <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0xdc> @ imm = #0x20
006047ac  3e 00 00 8a  bhi	0x6048ac <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x1b8> @ imm = #0xf8
006047b0  44 38 05 e3  movw	r3, #0x5844
006047b4  54 31 43 e3  movt	r3, #0x3154
006047b8  03 00 52 e1  cmp	r2, r3
006047bc  48 00 00 0a  beq	0x6048e4 <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x1f0> @ imm = #0x120
006047c0  44 38 05 e3  movw	r3, #0x5844
006047c4  54 32 43 e3  movt	r3, #0x3254
006047c8  03 00 52 e1  cmp	r2, r3
006047cc  d6 ff ff 1a  bne	0x60472c <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x38> @ imm = #-0xa8
006047d0  24 01 9f e5  ldr	r0, [pc, #0x124]        @ 0x6048fc <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x208>
006047d4  01 10 a0 e3  mov	r1, #1
006047d8  13 70 a0 e3  mov	r7, #19
006047dc  00 00 8f e0  add	r0, pc, r0
006047e0  2e 19 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0x64b8
006047e4  08 20 a0 e1  mov	r2, r8
006047e8  06 10 a0 e1  mov	r1, r6
006047ec  2c 30 9d e5  ldr	r3, [sp, #0x2c]
006047f0  07 00 a0 e1  mov	r0, r7
006047f4  ef a4 ff eb  bl	0x5edbb8 <_ZN6glitch5video12pixel_format18computeSizeInBytesENS0_14E_PIXEL_FORMATEjjj> @ imm = #-0x16c44
006047f8  00 10 a0 e3  mov	r1, #0
006047fc  00 60 a0 e1  mov	r6, r0
00604800  68 be fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xd0660
00604804  00 80 a0 e1  mov	r8, r0
00604808  06 20 a0 e1  mov	r2, r6
0060480c  00 30 95 e5  ldr	r3, [r5]
00604810  05 00 a0 e1  mov	r0, r5
00604814  08 10 a0 e1  mov	r1, r8
00604818  0f e0 a0 e1  mov	lr, pc
0060481c  0c f0 93 e5  ldr	pc, [r3, #0xc]
00604820  20 30 9d e5  ldr	r3, [sp, #0x20]
00604824  00 10 a0 e3  mov	r1, #0
00604828  2c 00 a0 e3  mov	r0, #44
0060482c  90 30 8d e5  str	r3, [sp, #0x90]
00604830  1c 30 9d e5  ldr	r3, [sp, #0x1c]
00604834  94 30 8d e5  str	r3, [sp, #0x94]
00604838  5b be fc eb  bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xd0694
0060483c  2c c0 9d e5  ldr	r12, [sp, #0x2c]
00604840  00 50 a0 e1  mov	r5, r0
00604844  08 30 a0 e1  mov	r3, r8
00604848  00 00 5c e3  cmp	r12, #0
0060484c  01 c0 4c 12  subne	r12, r12, #1
00604850  01 e0 a0 e3  mov	lr, #1
00604854  07 10 a0 e1  mov	r1, r7
00604858  05 00 a0 e1  mov	r0, r5
0060485c  90 20 8d e2  add	r2, sp, #144
00604860  40 10 8d e8  stm	sp, {r6, r12}
00604864  0c e0 8d e5  str	lr, [sp, #0xc]
00604868  08 e0 8d e5  str	lr, [sp, #0x8]
0060486c  dd f7 ff eb  bl	0x6027e8 <_ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvjjbb> @ imm = #-0x208c
00604870  00 00 55 e3  cmp	r5, #0
00604874  04 30 95 15  ldrne	r3, [r5, #0x4]
00604878  01 30 83 12  addne	r3, r3, #1
0060487c  04 30 85 15  strne	r3, [r5, #0x4]
00604880  00 00 94 e5  ldr	r0, [r4]
00604884  00 50 84 e5  str	r5, [r4]
00604888  00 00 50 e3  cmp	r0, #0
0060488c  a6 ff ff 0a  beq	0x60472c <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x38> @ imm = #-0x168
00604890  3b 63 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2e7314
00604894  a4 ff ff ea  b	0x60472c <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x38> @ imm = #-0x170
00604898  60 00 9f e5  ldr	r0, [pc, #0x60]         @ 0x604900 <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x20c>
0060489c  03 10 a0 e3  mov	r1, #3
006048a0  00 00 8f e0  add	r0, pc, r0
006048a4  fd 18 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0x63f4
006048a8  9f ff ff ea  b	0x60472c <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x38> @ imm = #-0x184
006048ac  44 38 05 e3  movw	r3, #0x5844
006048b0  54 34 43 e3  movt	r3, #0x3454
006048b4  03 00 52 e1  cmp	r2, r3
006048b8  03 00 00 0a  beq	0x6048cc <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x1d8> @ imm = #0xc
006048bc  44 38 05 e3  movw	r3, #0x5844
006048c0  54 35 43 e3  movt	r3, #0x3554
006048c4  03 00 52 e1  cmp	r2, r3
006048c8  97 ff ff 1a  bne	0x60472c <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x38> @ imm = #-0x1a4
006048cc  30 00 9f e5  ldr	r0, [pc, #0x30]         @ 0x604904 <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x210>
006048d0  01 10 a0 e3  mov	r1, #1
006048d4  14 70 a0 e3  mov	r7, #20
006048d8  00 00 8f e0  add	r0, pc, r0
006048dc  ef 18 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0x63bc
006048e0  bf ff ff ea  b	0x6047e4 <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0xf0> @ imm = #-0x104
006048e4  1c 00 9f e5  ldr	r0, [pc, #0x1c]         @ 0x604908 <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0x214>
006048e8  12 70 a0 e3  mov	r7, #18
006048ec  00 00 8f e0  add	r0, pc, r0
006048f0  ea 18 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0x63a8
006048f4  ba ff ff ea  b	0x6047e4 <_ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE+0xf0> @ imm = #-0x118
006048f8  80 ff 2d 00  .word	0x002dff80
006048fc  4c ff 2d 00  .word	0x002dff4c
00604900  b8 fe 2d 00  .word	0x002dfeb8
00604904  68 fe 2d 00  .word	0x002dfe68
00604908  24 fe 2d 00  .word	0x002dfe24

; dds_texture_data: glitch::video::CImageLoaderDDS::loadTextureData(glitch::io::IReadFile*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::STextureDesc const&) const
; VA=0x0060496c, size=0x110, file_offset=0x0060496c, SHA-256=fe04ea1aa706d7e033e655e6b1663b165d15cbbd06643db2942841c57af65077
0060496c  f0 45 2d e9  push	{r4, r5, r6, r7, r8, r10, lr}
00604970  94 d0 4d e2  sub	sp, sp, #148
00604974  04 50 8d e2  add	r5, sp, #4
00604978  01 00 a0 e1  mov	r0, r1
0060497c  01 40 a0 e1  mov	r4, r1
00604980  05 10 a0 e1  mov	r1, r5
00604984  02 70 a0 e1  mov	r7, r2
00604988  03 60 a0 e1  mov	r6, r3
0060498c  0e fe ff eb  bl	0x6041cc <_ZN6glitch5video12_GLOBAL__N_113readDDSHeaderEPNS_2io9IReadFileERNS1_23SDDSSurfaceFormatHeaderE> @ imm = #-0x7c8
00604990  d8 a0 9f e5  ldr	r10, [pc, #0xd8]        @ 0x604a70 <_ZNK6glitch5video15CImageLoaderDDS15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE+0x104>
00604994  00 00 50 e3  cmp	r0, #0
00604998  00 50 a0 01  moveq	r5, r0
0060499c  0a a0 8f e0  add	r10, pc, r10
006049a0  18 00 00 0a  beq	0x604a08 <_ZNK6glitch5video15CImageLoaderDDS15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE+0x9c> @ imm = #0x60
006049a4  08 30 9d e5  ldr	r3, [sp, #0x8]
006049a8  02 07 13 e3  tst	r3, #524288
006049ac  18 00 00 1a  bne	0x604a14 <_ZNK6glitch5video15CImageLoaderDDS15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE+0xa8> @ imm = #0x60
006049b0  00 30 94 e5  ldr	r3, [r4]
006049b4  04 00 a0 e1  mov	r0, r4
006049b8  0f e0 a0 e1  mov	lr, pc
006049bc  20 f0 93 e5  ldr	pc, [r3, #0x20]
006049c0  ac 30 9f e5  ldr	r3, [pc, #0xac]         @ 0x604a74 <_ZNK6glitch5video15CImageLoaderDDS15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE+0x108>
006049c4  80 80 8d e2  add	r8, sp, #128
006049c8  80 c0 40 e2  sub	r12, r0, #128
006049cc  03 30 9a e7  ldr	r3, [r10, r3]
006049d0  04 00 a0 e1  mov	r0, r4
006049d4  06 20 a0 e1  mov	r2, r6
006049d8  08 40 83 e2  add	r4, r3, #8
006049dc  08 10 a0 e1  mov	r1, r8
006049e0  07 30 a0 e1  mov	r3, r7
006049e4  84 50 8d e5  str	r5, [sp, #0x84]
006049e8  8c c0 8d e5  str	r12, [sp, #0x8c]
006049ec  80 40 8d e5  str	r4, [sp, #0x80]
006049f0  88 60 8d e5  str	r6, [sp, #0x88]
006049f4  75 0e 00 eb  bl	0x6083d0 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE> @ imm = #0x39d4
006049f8  00 50 a0 e1  mov	r5, r0
006049fc  08 00 a0 e1  mov	r0, r8
00604a00  80 40 8d e5  str	r4, [sp, #0x80]
00604a04  10 0b 00 eb  bl	0x60764c <_ZN6glitch5video12IImageLoader9IDataInfoD2Ev> @ imm = #0x2c40
00604a08  05 00 a0 e1  mov	r0, r5
00604a0c  94 d0 8d e2  add	sp, sp, #148
00604a10  f0 85 bd e8  pop	{r4, r5, r6, r7, r8, r10, pc}
00604a14  00 30 97 e5  ldr	r3, [r7]
00604a18  04 10 96 e5  ldr	r1, [r6, #0x4]
00604a1c  38 20 93 e5  ldr	r2, [r3, #0x38]
00604a20  52 22 e5 e7  ubfx	r2, r2, #0x4, #0x6
00604a24  02 00 51 e1  cmp	r1, r2
00604a28  e0 ff ff 1a  bne	0x6049b0 <_ZNK6glitch5video15CImageLoaderDDS15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE+0x44> @ imm = #-0x80
00604a2c  30 30 93 e5  ldr	r3, [r3, #0x30]
00604a30  0c 00 93 e8  ldm	r3, {r2, r3}
00604a34  03 30 62 e0  rsb	r3, r2, r3
00604a38  14 20 9d e5  ldr	r2, [sp, #0x14]
00604a3c  03 00 52 e1  cmp	r2, r3
00604a40  da ff ff 0a  beq	0x6049b0 <_ZNK6glitch5video15CImageLoaderDDS15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE+0x44> @ imm = #-0x98
00604a44  00 30 94 e5  ldr	r3, [r4]
00604a48  04 00 a0 e1  mov	r0, r4
00604a4c  0f e0 a0 e1  mov	lr, pc
00604a50  28 f0 93 e5  ldr	pc, [r3, #0x28]
00604a54  1c 10 9f e5  ldr	r1, [pc, #0x1c]         @ 0x604a78 <_ZNK6glitch5video15CImageLoaderDDS15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE+0x10c>
00604a58  00 20 a0 e1  mov	r2, r0
00604a5c  03 00 a0 e3  mov	r0, #3
00604a60  01 10 8f e0  add	r1, pc, r1
00604a64  72 19 00 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x65c8
00604a68  00 50 a0 e3  mov	r5, #0
00604a6c  e5 ff ff ea  b	0x604a08 <_ZNK6glitch5video15CImageLoaderDDS15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE+0x9c> @ imm = #-0x6c
00604a70  f4 00 39 00  .word	0x003900f4
00604a74  c4 47 00 00  .word	0x000047c4
00604a78  20 fd 2d 00  .word	0x002dfd20

; dds_extension: glitch::video::CImageLoaderDDS::isALoadableFileExtension(char const*) const
; VA=0x0060490c, size=0x24, file_offset=0x0060490c, SHA-256=c15e95e77a3dd5367c2f0bf07f2b28b6e42a51151f1357d058fb5dd8b2396ead
0060490c  01 00 a0 e1  mov	r0, r1
00604910  14 10 9f e5  ldr	r1, [pc, #0x14]         @ 0x60492c <_ZNK6glitch5video15CImageLoaderDDS24isALoadableFileExtensionEPKc+0x20>
00604914  10 40 2d e9  push	{r4, lr}
00604918  01 10 8f e0  add	r1, pc, r1
0060491c  ac 28 f4 eb  bl	0x30ebd4 <strstr@plt>   @ imm = #-0x2f5d50
00604920  00 00 50 e2  subs	r0, r0, #0
00604924  01 00 a0 13  movne	r0, #1
00604928  10 80 bd e8  pop	{r4, pc}
0060492c  60 fe 2d 00  .word	0x002dfe60

; jpg_signature_probe: glitch::video::CImageLoaderJPG::isALoadableFileFormat(glitch::io::IReadFile*) const
; VA=0x00604b0c, size=0x94, file_offset=0x00604b0c, SHA-256=e0ac84a92f7f9e0b160edd969bf9312b3b302d92b22a7a719d34053174114c77
00604b0c  30 40 2d e9  push	{r4, r5, lr}
00604b10  00 40 51 e2  subs	r4, r1, #0
00604b14  0c d0 4d e2  sub	sp, sp, #12
00604b18  05 00 00 0a  beq	0x604b34 <_ZNK6glitch5video15CImageLoaderJPG21isALoadableFileFormatEPNS_2io9IReadFileE+0x28> @ imm = #0x14
00604b1c  00 30 94 e5  ldr	r3, [r4]
00604b20  04 00 a0 e1  mov	r0, r4
00604b24  0f e0 a0 e1  mov	lr, pc
00604b28  20 f0 93 e5  ldr	pc, [r3, #0x20]
00604b2c  05 00 50 e3  cmp	r0, #5
00604b30  02 00 00 ca  bgt	0x604b40 <_ZNK6glitch5video15CImageLoaderJPG21isALoadableFileFormatEPNS_2io9IReadFileE+0x34> @ imm = #0x8
00604b34  00 00 a0 e3  mov	r0, #0
00604b38  0c d0 8d e2  add	sp, sp, #12
00604b3c  30 80 bd e8  pop	{r4, r5, pc}
00604b40  00 20 a0 e3  mov	r2, #0
00604b44  08 50 8d e2  add	r5, sp, #8
00604b48  04 20 25 e5  str	r2, [r5, #-0x4]!
00604b4c  06 10 a0 e3  mov	r1, #6
00604b50  00 30 94 e5  ldr	r3, [r4]
00604b54  04 00 a0 e1  mov	r0, r4
00604b58  0f e0 a0 e1  mov	lr, pc
00604b5c  18 f0 93 e5  ldr	pc, [r3, #0x18]
00604b60  00 30 94 e5  ldr	r3, [r4]
00604b64  04 20 a0 e3  mov	r2, #4
00604b68  04 00 a0 e1  mov	r0, r4
00604b6c  05 10 a0 e1  mov	r1, r5
00604b70  0f e0 a0 e1  mov	lr, pc
00604b74  0c f0 93 e5  ldr	pc, [r3, #0xc]
00604b78  04 00 9d e5  ldr	r0, [sp, #0x4]
00604b7c  4a 26 04 e3  movw	r2, #0x464a
00604b80  46 39 04 e3  movw	r3, #0x4946
00604b84  49 26 44 e3  movt	r2, #0x4649
00604b88  46 3a 44 e3  movt	r3, #0x4a46
00604b8c  03 00 50 e1  cmp	r0, r3
00604b90  02 00 50 11  cmpne	r0, r2
00604b94  00 00 a0 13  movne	r0, #0
00604b98  01 00 a0 03  moveq	r0, #1
00604b9c  e5 ff ff ea  b	0x604b38 <_ZNK6glitch5video15CImageLoaderJPG21isALoadableFileFormatEPNS_2io9IReadFileE+0x2c> @ imm = #-0x6c

; jpg_cpu_image_decode: glitch::video::CImageLoaderJPG::loadImage(glitch::io::IReadFile*) const
; VA=0x00604be0, size=0x2f8, file_offset=0x00604be0, SHA-256=ba2b54b163fa0e04f3721577822291d542e2a0114e9dc7d8a27ab2a3603c452a
00604be0  f0 45 2d e9  push	{r4, r5, r6, r7, r8, r10, lr}
00604be4  c8 12 9f e5  ldr	r1, [pc, #0x2c8]        @ 0x604eb4 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x2d4>
00604be8  c8 32 9f e5  ldr	r3, [pc, #0x2c8]        @ 0x604eb8 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x2d8>
00604bec  df df 4d e2  sub	sp, sp, #892
00604bf0  01 10 8f e0  add	r1, pc, r1
00604bf4  0c 20 8d e5  str	r2, [sp, #0xc]
00604bf8  03 20 91 e7  ldr	r2, [r1, r3]
00604bfc  14 00 8d e5  str	r0, [sp, #0x14]
00604c00  0c 00 9d e5  ldr	r0, [sp, #0xc]
00604c04  00 20 92 e5  ldr	r2, [r2]
00604c08  08 10 8d e5  str	r1, [sp, #0x8]
00604c0c  00 30 90 e5  ldr	r3, [r0]
00604c10  74 23 8d e5  str	r2, [sp, #0x374]
00604c14  0f e0 a0 e1  mov	lr, pc
00604c18  20 f0 93 e5  ldr	pc, [r3, #0x20]
00604c1c  00 10 a0 e3  mov	r1, #0
00604c20  60 bd fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xd0a80
00604c24  0c 10 9d e5  ldr	r1, [sp, #0xc]
00604c28  10 00 8d e5  str	r0, [sp, #0x10]
00604c2c  1f 4e 8d e2  add	r4, sp, #496
00604c30  00 30 91 e5  ldr	r3, [r1]
00604c34  01 00 a0 e1  mov	r0, r1
00604c38  0c 50 93 e5  ldr	r5, [r3, #0xc]
00604c3c  0f e0 a0 e1  mov	lr, pc
00604c40  20 f0 93 e5  ldr	pc, [r3, #0x20]
00604c44  10 10 9d e5  ldr	r1, [sp, #0x10]
00604c48  00 20 a0 e1  mov	r2, r0
00604c4c  0c 00 9d e5  ldr	r0, [sp, #0xc]
00604c50  35 ff 2f e1  blx	r5
00604c54  04 00 a0 e1  mov	r0, r4
00604c58  61 ee 01 eb  bl	0x6805e4 <jpeg_std_error> @ imm = #0x7b984
00604c5c  58 22 9f e5  ldr	r2, [pc, #0x258]        @ 0x604ebc <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x2dc>
00604c60  40 00 8d e5  str	r0, [sp, #0x40]
00604c64  00 30 a0 e1  mov	r3, r0
00604c68  08 00 9d e5  ldr	r0, [sp, #0x8]
00604c6c  02 10 90 e7  ldr	r1, [r0, r2]
00604c70  48 22 9f e5  ldr	r2, [pc, #0x248]        @ 0x604ec0 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x2e0>
00604c74  00 10 83 e5  str	r1, [r3]
00604c78  02 20 90 e7  ldr	r2, [r0, r2]
00604c7c  40 30 9d e5  ldr	r3, [sp, #0x40]
00604c80  84 00 84 e2  add	r0, r4, #132
00604c84  08 20 83 e5  str	r2, [r3, #0x8]
00604c88  92 27 f4 eb  bl	0x30ead8 <setjmp@plt>   @ imm = #-0x2f61b8
00604c8c  00 50 50 e2  subs	r5, r0, #0
00604c90  17 00 00 0a  beq	0x604cf4 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x114> @ imm = #0x5c
00604c94  40 00 8d e2  add	r0, sp, #64
00604c98  c1 d6 01 eb  bl	0x67a7a4 <jpeg_destroy_decompress> @ imm = #0x75b04
00604c9c  14 10 9d e5  ldr	r1, [sp, #0x14]
00604ca0  00 40 a0 e3  mov	r4, #0
00604ca4  00 40 81 e5  str	r4, [r1]
00604ca8  10 30 9d e5  ldr	r3, [sp, #0x10]
00604cac  00 00 53 e3  cmp	r3, #0
00604cb0  01 00 00 0a  beq	0x604cbc <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0xdc> @ imm = #0x4
00604cb4  03 00 a0 e1  mov	r0, r3
00604cb8  fe 24 f4 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2f6c08
00604cbc  00 00 54 e3  cmp	r4, #0
00604cc0  01 00 00 0a  beq	0x604ccc <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0xec> @ imm = #0x4
00604cc4  04 00 a0 e1  mov	r0, r4
00604cc8  fa 24 f4 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2f6c18
00604ccc  e4 31 9f e5  ldr	r3, [pc, #0x1e4]        @ 0x604eb8 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x2d8>
00604cd0  08 10 9d e5  ldr	r1, [sp, #0x8]
00604cd4  74 23 9d e5  ldr	r2, [sp, #0x374]
00604cd8  14 00 9d e5  ldr	r0, [sp, #0x14]
00604cdc  03 30 91 e7  ldr	r3, [r1, r3]
00604ce0  00 30 93 e5  ldr	r3, [r3]
00604ce4  03 00 52 e1  cmp	r2, r3
00604ce8  70 00 00 1a  bne	0x604eb0 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x2d0> @ imm = #0x1c0
00604cec  df df 8d e2  add	sp, sp, #892
00604cf0  f0 85 bd e8  pop	{r4, r5, r6, r7, r8, r10, pc}
00604cf4  40 40 8d e2  add	r4, sp, #64
00604cf8  1b 2e a0 e3  mov	r2, #432
00604cfc  3e 10 a0 e3  mov	r1, #62
00604d00  04 00 a0 e1  mov	r0, r4
00604d04  a7 d6 01 eb  bl	0x67a7a8 <jpeg_CreateDecompress> @ imm = #0x75a9c
00604d08  0c 00 9d e5  ldr	r0, [sp, #0xc]
00604d0c  00 30 90 e5  ldr	r3, [r0]
00604d10  0f e0 a0 e1  mov	lr, pc
00604d14  20 f0 93 e5  ldr	pc, [r3, #0x20]
00604d18  08 20 9d e5  ldr	r2, [sp, #0x8]
00604d1c  a0 31 9f e5  ldr	r3, [pc, #0x1a0]        @ 0x604ec4 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x2e4>
00604d20  08 10 9d e5  ldr	r1, [sp, #0x8]
00604d24  20 00 8d e5  str	r0, [sp, #0x20]
00604d28  03 60 92 e7  ldr	r6, [r2, r3]
00604d2c  94 31 9f e5  ldr	r3, [pc, #0x194]        @ 0x604ec8 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x2e8>
00604d30  10 00 9d e5  ldr	r0, [sp, #0x10]
00604d34  24 60 8d e5  str	r6, [sp, #0x24]
00604d38  03 e0 92 e7  ldr	lr, [r2, r3]
00604d3c  88 31 9f e5  ldr	r3, [pc, #0x188]        @ 0x604ecc <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x2ec>
00604d40  28 e0 8d e5  str	lr, [sp, #0x28]
00604d44  03 c0 92 e7  ldr	r12, [r2, r3]
00604d48  80 31 9f e5  ldr	r3, [pc, #0x180]        @ 0x604ed0 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x2f0>
00604d4c  2c c0 8d e5  str	r12, [sp, #0x2c]
00604d50  03 20 92 e7  ldr	r2, [r2, r3]
00604d54  78 31 9f e5  ldr	r3, [pc, #0x178]        @ 0x604ed4 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x2f4>
00604d58  30 20 8d e5  str	r2, [sp, #0x30]
00604d5c  03 70 91 e7  ldr	r7, [r1, r3]
00604d60  de 3f 8d e2  add	r3, sp, #888
00604d64  5c 03 23 e5  str	r0, [r3, #-0x35c]!
00604d68  01 10 a0 e3  mov	r1, #1
00604d6c  04 00 a0 e1  mov	r0, r4
00604d70  58 30 8d e5  str	r3, [sp, #0x58]
00604d74  34 70 8d e5  str	r7, [sp, #0x34]
00604d78  63 d6 01 eb  bl	0x67a70c <jpeg_read_header> @ imm = #0x7598c
00604d7c  02 30 a0 e3  mov	r3, #2
00604d80  04 00 a0 e1  mov	r0, r4
00604d84  6c 30 8d e5  str	r3, [sp, #0x6c]
00604d88  03 30 a0 e3  mov	r3, #3
00604d8c  a4 30 8d e5  str	r3, [sp, #0xa4]
00604d90  88 50 cd e5  strb	r5, [sp, #0x88]
00604d94  d6 d7 01 eb  bl	0x67acf4 <jpeg_start_decompress> @ imm = #0x75f58
00604d98  5c 80 9d e5  ldr	r8, [sp, #0x5c]
00604d9c  a4 70 9d e5  ldr	r7, [sp, #0xa4]
00604da0  60 60 9d e5  ldr	r6, [sp, #0x60]
00604da4  05 10 a0 e1  mov	r1, r5
00604da8  98 07 07 e0  mul	r7, r8, r7
00604dac  77 70 ff e6  uxth	r7, r7
00604db0  96 07 00 e0  mul	r0, r6, r7
00604db4  fb bc fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xd0c14
00604db8  05 10 a0 e1  mov	r1, r5
00604dbc  00 a0 a0 e1  mov	r10, r0
00604dc0  06 01 a0 e1  lsl	r0, r6, #2
00604dc4  f7 bc fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xd0c24
00604dc8  00 00 56 e3  cmp	r6, #0
00604dcc  00 40 a0 e1  mov	r4, r0
00604dd0  05 00 00 0a  beq	0x604dec <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x20c> @ imm = #0x14
00604dd4  0a 30 a0 e1  mov	r3, r10
00604dd8  05 31 84 e7  str	r3, [r4, r5, lsl #2]
00604ddc  01 50 85 e2  add	r5, r5, #1
00604de0  06 00 55 e1  cmp	r5, r6
00604de4  07 30 83 e0  add	r3, r3, r7
00604de8  fa ff ff 1a  bne	0x604dd8 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x1f8> @ imm = #-0x18
00604dec  a0 20 9d e5  ldr	r2, [sp, #0xa0]
00604df0  b8 30 9d e5  ldr	r3, [sp, #0xb8]
00604df4  03 00 52 e1  cmp	r2, r3
00604df8  0a 00 00 9a  bls	0x604e28 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x248> @ imm = #0x28
00604dfc  00 50 a0 e3  mov	r5, #0
00604e00  40 70 8d e2  add	r7, sp, #64
00604e04  02 20 65 e0  rsb	r2, r5, r2
00604e08  05 11 84 e0  add	r1, r4, r5, lsl #2
00604e0c  07 00 a0 e1  mov	r0, r7
00604e10  eb d6 01 eb  bl	0x67a9c4 <jpeg_read_scanlines> @ imm = #0x75bac
00604e14  a0 20 9d e5  ldr	r2, [sp, #0xa0]
00604e18  b8 30 9d e5  ldr	r3, [sp, #0xb8]
00604e1c  00 50 85 e0  add	r5, r5, r0
00604e20  02 00 53 e1  cmp	r3, r2
00604e24  f6 ff ff 3a  blo	0x604e04 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x224> @ imm = #-0x28
00604e28  40 50 8d e2  add	r5, sp, #64
00604e2c  05 00 a0 e1  mov	r0, r5
00604e30  f4 d5 01 eb  bl	0x67a608 <jpeg_finish_decompress> @ imm = #0x757d0
00604e34  05 00 a0 e1  mov	r0, r5
00604e38  59 d6 01 eb  bl	0x67a7a4 <jpeg_destroy_decompress> @ imm = #0x75964
00604e3c  00 10 a0 e3  mov	r1, #0
00604e40  2c 00 a0 e3  mov	r0, #44
00604e44  38 80 8d e5  str	r8, [sp, #0x38]
00604e48  3c 60 8d e5  str	r6, [sp, #0x3c]
00604e4c  d6 bc fc eb  bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xd0ca8
00604e50  01 c0 a0 e3  mov	r12, #1
00604e54  00 50 a0 e1  mov	r5, r0
00604e58  0a 30 a0 e1  mov	r3, r10
00604e5c  0a 10 a0 e3  mov	r1, #10
00604e60  38 20 8d e2  add	r2, sp, #56
00604e64  04 c0 8d e5  str	r12, [sp, #0x4]
00604e68  00 c0 8d e5  str	r12, [sp]
00604e6c  ff f5 ff eb  bl	0x602670 <_ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvbb> @ imm = #-0x2804
00604e70  00 00 55 e3  cmp	r5, #0
00604e74  0a 00 00 0a  beq	0x604ea4 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0x2c4> @ imm = #0x28
00604e78  04 30 95 e5  ldr	r3, [r5, #0x4]
00604e7c  05 00 a0 e1  mov	r0, r5
00604e80  01 30 83 e2  add	r3, r3, #1
00604e84  04 30 85 e5  str	r3, [r5, #0x4]
00604e88  14 10 9d e5  ldr	r1, [sp, #0x14]
00604e8c  00 50 81 e5  str	r5, [r1]
00604e90  04 30 95 e5  ldr	r3, [r5, #0x4]
00604e94  01 30 83 e2  add	r3, r3, #1
00604e98  04 30 85 e5  str	r3, [r5, #0x4]
00604e9c  b8 61 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2e7920
00604ea0  80 ff ff ea  b	0x604ca8 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0xc8> @ imm = #-0x200
00604ea4  14 20 9d e5  ldr	r2, [sp, #0x14]
00604ea8  00 50 82 e5  str	r5, [r2]
00604eac  7d ff ff ea  b	0x604ca8 <_ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE+0xc8> @ imm = #-0x20c
00604eb0  16 25 f4 eb  bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x2f6ba8
00604eb4  a0 fe 38 00  .word	0x0038fea0
00604eb8  ac 40 00 00  .word	0x000040ac
00604ebc  2c 2f 00 00  .word	0x00002f2c
00604ec0  c8 19 00 00  .word	0x000019c8
00604ec4  30 42 00 00  .word	0x00004230
00604ec8  b0 44 00 00  .word	0x000044b0
00604ecc  9c 0a 00 00  .word	0x00000a9c
00604ed0  50 09 00 00  .word	0x00000950
00604ed4  98 17 00 00  .word	0x00001798

; jpg_extension: glitch::video::CImageLoaderJPG::isALoadableFileExtension(char const*) const
; VA=0x00604f6c, size=0x4c, file_offset=0x00604f6c, SHA-256=8c8b65715b4f60882adc24a1b1b209835f897d3124c16b54e071c5fa05e73610
00604f6c  10 40 2d e9  push	{r4, lr}
00604f70  01 00 a0 e1  mov	r0, r1
00604f74  01 40 a0 e1  mov	r4, r1
00604f78  30 10 9f e5  ldr	r1, [pc, #0x30]         @ 0x604fb0 <_ZNK6glitch5video15CImageLoaderJPG24isALoadableFileExtensionEPKc+0x44>
00604f7c  01 10 8f e0  add	r1, pc, r1
00604f80  13 27 f4 eb  bl	0x30ebd4 <strstr@plt>   @ imm = #-0x2f63b4
00604f84  00 00 50 e3  cmp	r0, #0
00604f88  01 00 00 0a  beq	0x604f94 <_ZNK6glitch5video15CImageLoaderJPG24isALoadableFileExtensionEPKc+0x28> @ imm = #0x4
00604f8c  01 00 a0 e3  mov	r0, #1
00604f90  10 80 bd e8  pop	{r4, pc}
00604f94  18 10 9f e5  ldr	r1, [pc, #0x18]         @ 0x604fb4 <_ZNK6glitch5video15CImageLoaderJPG24isALoadableFileExtensionEPKc+0x48>
00604f98  04 00 a0 e1  mov	r0, r4
00604f9c  01 10 8f e0  add	r1, pc, r1
00604fa0  0b 27 f4 eb  bl	0x30ebd4 <strstr@plt>   @ imm = #-0x2f63d4
00604fa4  00 00 50 e2  subs	r0, r0, #0
00604fa8  01 00 a0 13  movne	r0, #1
00604fac  10 80 bd e8  pop	{r4, pc}
00604fb0  44 f8 2d 00  .word	0x002df844
00604fb4  2c f8 2d 00  .word	0x002df82c

; png_signature_probe: glitch::video::CImageLoaderPng::isALoadableFileFormat(glitch::io::IReadFile*) const
; VA=0x00605048, size=0x94, file_offset=0x00605048, SHA-256=f32aa29351d9151d3bd2f20c8ac282d5bf2c9d00b23a1ff0bd8e03df7c41033e
00605048  70 40 2d e9  push	{r4, r5, r6, lr}
0060504c  80 40 9f e5  ldr	r4, [pc, #0x80]         @ 0x6050d4 <_ZNK6glitch5video15CImageLoaderPng21isALoadableFileFormatEPNS_2io9IReadFileE+0x8c>
00605050  80 50 9f e5  ldr	r5, [pc, #0x80]         @ 0x6050d8 <_ZNK6glitch5video15CImageLoaderPng21isALoadableFileFormatEPNS_2io9IReadFileE+0x90>
00605054  10 d0 4d e2  sub	sp, sp, #16
00605058  04 40 8f e0  add	r4, pc, r4
0060505c  05 30 94 e7  ldr	r3, [r4, r5]
00605060  00 00 51 e3  cmp	r1, #0
00605064  00 30 93 e5  ldr	r3, [r3]
00605068  0c 30 8d e5  str	r3, [sp, #0xc]
0060506c  09 00 00 0a  beq	0x605098 <_ZNK6glitch5video15CImageLoaderPng21isALoadableFileFormatEPNS_2io9IReadFileE+0x50> @ imm = #0x24
00605070  04 60 8d e2  add	r6, sp, #4
00605074  01 00 a0 e1  mov	r0, r1
00605078  00 30 91 e5  ldr	r3, [r1]
0060507c  08 20 a0 e3  mov	r2, #8
00605080  06 10 a0 e1  mov	r1, r6
00605084  0f e0 a0 e1  mov	lr, pc
00605088  0c f0 93 e5  ldr	pc, [r3, #0xc]
0060508c  08 00 50 e3  cmp	r0, #8
00605090  00 20 a0 e1  mov	r2, r0
00605094  07 00 00 0a  beq	0x6050b8 <_ZNK6glitch5video15CImageLoaderPng21isALoadableFileFormatEPNS_2io9IReadFileE+0x70> @ imm = #0x1c
00605098  00 00 a0 e3  mov	r0, #0
0060509c  05 30 94 e7  ldr	r3, [r4, r5]
006050a0  0c 20 9d e5  ldr	r2, [sp, #0xc]
006050a4  00 30 93 e5  ldr	r3, [r3]
006050a8  03 00 52 e1  cmp	r2, r3
006050ac  07 00 00 1a  bne	0x6050d0 <_ZNK6glitch5video15CImageLoaderPng21isALoadableFileFormatEPNS_2io9IReadFileE+0x88> @ imm = #0x1c
006050b0  10 d0 8d e2  add	sp, sp, #16
006050b4  70 80 bd e8  pop	{r4, r5, r6, pc}
006050b8  06 00 a0 e1  mov	r0, r6
006050bc  00 10 a0 e3  mov	r1, #0
006050c0  43 fc 01 eb  bl	0x6841d4 <png_sig_cmp>  @ imm = #0x7f10c
006050c4  01 00 70 e2  rsbs	r0, r0, #1
006050c8  00 00 a0 33  movlo	r0, #0
006050cc  f2 ff ff ea  b	0x60509c <_ZNK6glitch5video15CImageLoaderPng21isALoadableFileFormatEPNS_2io9IReadFileE+0x54> @ imm = #-0x38
006050d0  8e 24 f4 eb  bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x2f6dc8
006050d4  38 fa 38 00  .word	0x0038fa38
006050d8  ac 40 00 00  .word	0x000040ac

; png_cpu_image_decode: glitch::video::CImageLoaderPng::loadImage(glitch::io::IReadFile*) const
; VA=0x006050dc, size=0x570, file_offset=0x006050dc, SHA-256=74f43ec786747cef0d149d0f466fbe414260fc1acec680f6689aa2707ede429d
006050dc  3c 15 9f e5  ldr	r1, [pc, #0x53c]        @ 0x605620 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x544>
006050e0  3c 35 9f e5  ldr	r3, [pc, #0x53c]        @ 0x605624 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x548>
006050e4  f0 41 2d e9  push	{r4, r5, r6, r7, r8, lr}
006050e8  01 10 8f e0  add	r1, pc, r1
006050ec  03 30 91 e7  ldr	r3, [r1, r3]
006050f0  68 d0 4d e2  sub	sp, sp, #104
006050f4  00 00 52 e3  cmp	r2, #0
006050f8  00 30 93 e5  ldr	r3, [r3]
006050fc  18 10 8d e5  str	r1, [sp, #0x18]
00605100  1c 20 8d e5  str	r2, [sp, #0x1c]
00605104  64 30 8d e5  str	r3, [sp, #0x64]
00605108  00 30 a0 01  moveq	r3, r0
0060510c  20 00 8d e5  str	r0, [sp, #0x20]
00605110  00 20 83 05  streq	r2, [r3]
00605114  1c 00 00 0a  beq	0x60518c <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0xb0> @ imm = #0x70
00605118  1c c0 9d e5  ldr	r12, [sp, #0x1c]
0060511c  5c 40 8d e2  add	r4, sp, #92
00605120  08 20 a0 e3  mov	r2, #8
00605124  00 30 9c e5  ldr	r3, [r12]
00605128  0c 00 a0 e1  mov	r0, r12
0060512c  04 10 a0 e1  mov	r1, r4
00605130  0f e0 a0 e1  mov	lr, pc
00605134  0c f0 93 e5  ldr	pc, [r3, #0xc]
00605138  08 00 50 e3  cmp	r0, #8
0060513c  00 20 a0 e1  mov	r2, r0
00605140  1b 00 00 0a  beq	0x6051b4 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0xd8> @ imm = #0x6c
00605144  1c 00 9d e5  ldr	r0, [sp, #0x1c]
00605148  00 30 90 e5  ldr	r3, [r0]
0060514c  0f e0 a0 e1  mov	lr, pc
00605150  28 f0 93 e5  ldr	pc, [r3, #0x28]
00605154  00 10 a0 e1  mov	r1, r0
00605158  c8 04 9f e5  ldr	r0, [pc, #0x4c8]        @ 0x605628 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x54c>
0060515c  03 20 a0 e3  mov	r2, #3
00605160  00 00 8f e0  add	r0, pc, r0
00605164  df 16 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0x5b7c
00605168  20 10 9d e5  ldr	r1, [sp, #0x20]
0060516c  00 30 a0 e3  mov	r3, #0
00605170  00 30 81 e5  str	r3, [r1]
00605174  24 30 8d e5  str	r3, [sp, #0x24]
00605178  24 10 9d e5  ldr	r1, [sp, #0x24]
0060517c  00 00 51 e3  cmp	r1, #0
00605180  01 00 00 0a  beq	0x60518c <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0xb0> @ imm = #0x4
00605184  24 00 9d e5  ldr	r0, [sp, #0x24]
00605188  fd 60 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2e7c0c
0060518c  90 34 9f e5  ldr	r3, [pc, #0x490]        @ 0x605624 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x548>
00605190  18 c0 9d e5  ldr	r12, [sp, #0x18]
00605194  64 20 9d e5  ldr	r2, [sp, #0x64]
00605198  20 00 9d e5  ldr	r0, [sp, #0x20]
0060519c  03 30 9c e7  ldr	r3, [r12, r3]
006051a0  00 30 93 e5  ldr	r3, [r3]
006051a4  03 00 52 e1  cmp	r2, r3
006051a8  1b 01 00 1a  bne	0x60561c <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x540> @ imm = #0x46c
006051ac  68 d0 8d e2  add	sp, sp, #104
006051b0  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
006051b4  00 10 a0 e3  mov	r1, #0
006051b8  04 00 a0 e1  mov	r0, r4
006051bc  04 fc 01 eb  bl	0x6841d4 <png_sig_cmp>  @ imm = #0x7f010
006051c0  00 10 50 e2  subs	r1, r0, #0
006051c4  9b 00 00 1a  bne	0x605438 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x35c> @ imm = #0x26c
006051c8  5c 04 9f e5  ldr	r0, [pc, #0x45c]        @ 0x60562c <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x550>
006051cc  5c 24 9f e5  ldr	r2, [pc, #0x45c]        @ 0x605630 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x554>
006051d0  01 30 a0 e1  mov	r3, r1
006051d4  00 00 8f e0  add	r0, pc, r0
006051d8  02 20 8f e0  add	r2, pc, r2
006051dc  1a 0b 02 eb  bl	0x687e4c <png_create_read_struct> @ imm = #0x82c68
006051e0  00 00 50 e3  cmp	r0, #0
006051e4  00 40 a0 e1  mov	r4, r0
006051e8  58 00 8d e5  str	r0, [sp, #0x58]
006051ec  a8 00 00 0a  beq	0x605494 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x3b8> @ imm = #0x2a0
006051f0  0b fe 01 eb  bl	0x684a24 <png_create_info_struct> @ imm = #0x7f82c
006051f4  00 00 50 e3  cmp	r0, #0
006051f8  00 40 a0 e1  mov	r4, r0
006051fc  54 00 8d e5  str	r0, [sp, #0x54]
00605200  c3 00 00 0a  beq	0x605514 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x438> @ imm = #0x30c
00605204  58 00 9d e5  ldr	r0, [sp, #0x58]
00605208  32 26 f4 eb  bl	0x30ead8 <setjmp@plt>   @ imm = #-0x2f6738
0060520c  00 40 50 e2  subs	r4, r0, #0
00605210  96 00 00 1a  bne	0x605470 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x394> @ imm = #0x258
00605214  18 34 9f e5  ldr	r3, [pc, #0x418]        @ 0x605634 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x558>
00605218  18 c0 9d e5  ldr	r12, [sp, #0x18]
0060521c  58 00 9d e5  ldr	r0, [sp, #0x58]
00605220  1c 10 9d e5  ldr	r1, [sp, #0x1c]
00605224  03 20 9c e7  ldr	r2, [r12, r3]
00605228  10 0b 02 eb  bl	0x687e70 <png_set_read_fn> @ imm = #0x82c40
0060522c  58 00 9d e5  ldr	r0, [sp, #0x58]
00605230  08 10 a0 e3  mov	r1, #8
00605234  26 fe 01 eb  bl	0x684ad4 <png_set_sig_bytes> @ imm = #0x7f898
00605238  58 00 9d e5  ldr	r0, [sp, #0x58]
0060523c  54 10 9d e5  ldr	r1, [sp, #0x54]
00605240  08 07 02 eb  bl	0x686e68 <png_read_info> @ imm = #0x81c20
00605244  48 c0 8d e2  add	r12, sp, #72
00605248  3c 30 8d e2  add	r3, sp, #60
0060524c  00 c0 8d e5  str	r12, [sp]
00605250  58 00 9d e5  ldr	r0, [sp, #0x58]
00605254  44 c0 8d e2  add	r12, sp, #68
00605258  54 10 9d e5  ldr	r1, [sp, #0x54]
0060525c  40 20 8d e2  add	r2, sp, #64
00605260  04 c0 8d e5  str	r12, [sp, #0x4]
00605264  10 40 8d e5  str	r4, [sp, #0x10]
00605268  08 40 8d e5  str	r4, [sp, #0x8]
0060526c  0c 40 8d e5  str	r4, [sp, #0xc]
00605270  10 02 02 eb  bl	0x685ab8 <png_get_IHDR> @ imm = #0x80840
00605274  44 30 9d e5  ldr	r3, [sp, #0x44]
00605278  03 00 53 e3  cmp	r3, #3
0060527c  40 30 9d e5  ldr	r3, [sp, #0x40]
00605280  50 30 8d e5  str	r3, [sp, #0x50]
00605284  3c 30 9d e5  ldr	r3, [sp, #0x3c]
00605288  4c 30 8d e5  str	r3, [sp, #0x4c]
0060528c  cb 00 00 0a  beq	0x6055c0 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x4e4> @ imm = #0x32c
00605290  48 30 9d e5  ldr	r3, [sp, #0x48]
00605294  07 00 53 e3  cmp	r3, #7
00605298  05 00 00 ca  bgt	0x6052b4 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x1d8> @ imm = #0x14
0060529c  44 30 9d e5  ldr	r3, [sp, #0x44]
006052a0  00 00 53 e3  cmp	r3, #0
006052a4  04 00 53 13  cmpne	r3, #4
006052a8  b0 00 00 1a  bne	0x605570 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x494> @ imm = #0x2c0
006052ac  58 00 9d e5  ldr	r0, [sp, #0x58]
006052b0  7d 0b 02 eb  bl	0x6880ac <png_set_gray_1_2_4_to_8> @ imm = #0x82df4
006052b4  58 00 9d e5  ldr	r0, [sp, #0x58]
006052b8  54 10 9d e5  ldr	r1, [sp, #0x54]
006052bc  10 20 a0 e3  mov	r2, #16
006052c0  63 ff 01 eb  bl	0x685054 <png_get_valid> @ imm = #0x7fd8c
006052c4  00 00 50 e3  cmp	r0, #0
006052c8  a5 00 00 1a  bne	0x605564 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x488> @ imm = #0x294
006052cc  48 30 9d e5  ldr	r3, [sp, #0x48]
006052d0  10 00 53 e3  cmp	r3, #16
006052d4  bc 00 00 0a  beq	0x6055cc <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x4f0> @ imm = #0x2f0
006052d8  44 30 9d e5  ldr	r3, [sp, #0x44]
006052dc  00 00 53 e3  cmp	r3, #0
006052e0  04 00 53 13  cmpne	r3, #4
006052e4  9b 00 00 0a  beq	0x605558 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x47c> @ imm = #0x26c
006052e8  50 50 8d e2  add	r5, sp, #80
006052ec  58 00 9d e5  ldr	r0, [sp, #0x58]
006052f0  54 10 9d e5  ldr	r1, [sp, #0x54]
006052f4  4c 60 8d e2  add	r6, sp, #76
006052f8  c8 06 02 eb  bl	0x686e20 <png_read_update_info> @ imm = #0x81b20
006052fc  00 40 a0 e3  mov	r4, #0
00605300  05 20 a0 e1  mov	r2, r5
00605304  54 10 9d e5  ldr	r1, [sp, #0x54]
00605308  48 70 8d e2  add	r7, sp, #72
0060530c  44 80 8d e2  add	r8, sp, #68
00605310  06 30 a0 e1  mov	r3, r6
00605314  58 00 9d e5  ldr	r0, [sp, #0x58]
00605318  80 01 8d e8  stm	sp, {r7, r8}
0060531c  08 40 8d e5  str	r4, [sp, #0x8]
00605320  0c 40 8d e5  str	r4, [sp, #0xc]
00605324  10 40 8d e5  str	r4, [sp, #0x10]
00605328  e2 01 02 eb  bl	0x685ab8 <png_get_IHDR> @ imm = #0x80788
0060532c  44 c0 9d e5  ldr	r12, [sp, #0x44]
00605330  05 20 a0 e1  mov	r2, r5
00605334  06 30 a0 e1  mov	r3, r6
00605338  06 00 5c e3  cmp	r12, #6
0060533c  54 10 9d e5  ldr	r1, [sp, #0x54]
00605340  58 00 9d e5  ldr	r0, [sp, #0x58]
00605344  0e 50 a0 03  moveq	r5, #14
00605348  0a 50 a0 13  movne	r5, #10
0060534c  80 01 8d e8  stm	sp, {r7, r8}
00605350  08 40 8d e5  str	r4, [sp, #0x8]
00605354  0c 40 8d e5  str	r4, [sp, #0xc]
00605358  10 40 8d e5  str	r4, [sp, #0x10]
0060535c  d5 01 02 eb  bl	0x685ab8 <png_get_IHDR> @ imm = #0x80754
00605360  50 30 9d e5  ldr	r3, [sp, #0x50]
00605364  04 10 a0 e1  mov	r1, r4
00605368  2c 00 a0 e3  mov	r0, #44
0060536c  34 30 8d e5  str	r3, [sp, #0x34]
00605370  4c 30 9d e5  ldr	r3, [sp, #0x4c]
00605374  38 30 8d e5  str	r3, [sp, #0x38]
00605378  8b bb fc eb  bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xd11d4
0060537c  05 10 a0 e1  mov	r1, r5
00605380  34 20 8d e2  add	r2, sp, #52
00605384  24 00 8d e5  str	r0, [sp, #0x24]
00605388  60 f3 ff eb  bl	0x602110 <_ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE> @ imm = #-0x3280
0060538c  24 10 9d e5  ldr	r1, [sp, #0x24]
00605390  04 00 51 e1  cmp	r1, r4
00605394  78 00 00 0a  beq	0x60557c <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x4a0> @ imm = #0x1e0
00605398  04 30 91 e5  ldr	r3, [r1, #0x4]
0060539c  24 20 9d e5  ldr	r2, [sp, #0x24]
006053a0  04 10 a0 e1  mov	r1, r4
006053a4  01 30 83 e2  add	r3, r3, #1
006053a8  2c 20 8d e5  str	r2, [sp, #0x2c]
006053ac  04 30 82 e5  str	r3, [r2, #0x4]
006053b0  4c 00 9d e5  ldr	r0, [sp, #0x4c]
006053b4  00 01 a0 e1  lsl	r0, r0, #2
006053b8  7a bb fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xd1218
006053bc  00 00 50 e3  cmp	r0, #0
006053c0  28 00 8d e5  str	r0, [sp, #0x28]
006053c4  83 00 00 0a  beq	0x6055d8 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x4fc> @ imm = #0x20c
006053c8  4c 20 9d e5  ldr	r2, [sp, #0x4c]
006053cc  24 10 9d e5  ldr	r1, [sp, #0x24]
006053d0  00 00 52 e3  cmp	r2, #0
006053d4  08 30 91 e5  ldr	r3, [r1, #0x8]
006053d8  08 00 00 0a  beq	0x605400 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x324> @ imm = #0x20
006053dc  28 20 9d e5  ldr	r2, [sp, #0x28]
006053e0  04 31 82 e7  str	r3, [r2, r4, lsl #2]
006053e4  24 c0 9d e5  ldr	r12, [sp, #0x24]
006053e8  4c 10 9d e5  ldr	r1, [sp, #0x4c]
006053ec  01 40 84 e2  add	r4, r4, #1
006053f0  18 20 9c e5  ldr	r2, [r12, #0x18]
006053f4  04 00 51 e1  cmp	r1, r4
006053f8  02 30 83 e0  add	r3, r3, r2
006053fc  f6 ff ff 8a  bhi	0x6053dc <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x300> @ imm = #-0x28
00605400  58 00 9d e5  ldr	r0, [sp, #0x58]
00605404  b3 25 f4 eb  bl	0x30ead8 <setjmp@plt>   @ imm = #-0x2f6934
00605408  00 40 50 e2  subs	r4, r0, #0
0060540c  2d 00 00 0a  beq	0x6054c8 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x3ec> @ imm = #0xb4
00605410  54 10 8d e2  add	r1, sp, #84
00605414  58 00 8d e2  add	r0, sp, #88
00605418  00 20 a0 e3  mov	r2, #0
0060541c  37 03 02 eb  bl	0x686100 <png_destroy_read_struct> @ imm = #0x80cdc
00605420  20 10 9d e5  ldr	r1, [sp, #0x20]
00605424  00 30 a0 e3  mov	r3, #0
00605428  00 30 81 e5  str	r3, [r1]
0060542c  28 00 9d e5  ldr	r0, [sp, #0x28]
00605430  20 23 f4 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2f7380
00605434  52 ff ff ea  b	0x605184 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0xa8> @ imm = #-0x2b8
00605438  1c 00 9d e5  ldr	r0, [sp, #0x1c]
0060543c  00 30 90 e5  ldr	r3, [r0]
00605440  0f e0 a0 e1  mov	lr, pc
00605444  28 f0 93 e5  ldr	pc, [r3, #0x28]
00605448  00 10 a0 e1  mov	r1, r0
0060544c  e4 01 9f e5  ldr	r0, [pc, #0x1e4]        @ 0x605638 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x55c>
00605450  03 20 a0 e3  mov	r2, #3
00605454  00 00 8f e0  add	r0, pc, r0
00605458  22 16 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0x5888
0060545c  20 20 9d e5  ldr	r2, [sp, #0x20]
00605460  00 30 a0 e3  mov	r3, #0
00605464  00 30 82 e5  str	r3, [r2]
00605468  24 30 8d e5  str	r3, [sp, #0x24]
0060546c  41 ff ff ea  b	0x605178 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x9c> @ imm = #-0x2fc
00605470  54 10 8d e2  add	r1, sp, #84
00605474  58 00 8d e2  add	r0, sp, #88
00605478  00 20 a0 e3  mov	r2, #0
0060547c  1f 03 02 eb  bl	0x686100 <png_destroy_read_struct> @ imm = #0x80c7c
00605480  20 10 9d e5  ldr	r1, [sp, #0x20]
00605484  00 30 a0 e3  mov	r3, #0
00605488  00 30 81 e5  str	r3, [r1]
0060548c  24 30 8d e5  str	r3, [sp, #0x24]
00605490  38 ff ff ea  b	0x605178 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x9c> @ imm = #-0x320
00605494  1c 00 9d e5  ldr	r0, [sp, #0x1c]
00605498  00 30 90 e5  ldr	r3, [r0]
0060549c  0f e0 a0 e1  mov	lr, pc
006054a0  28 f0 93 e5  ldr	pc, [r3, #0x28]
006054a4  00 10 a0 e1  mov	r1, r0
006054a8  8c 01 9f e5  ldr	r0, [pc, #0x18c]        @ 0x60563c <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x560>
006054ac  03 20 a0 e3  mov	r2, #3
006054b0  00 00 8f e0  add	r0, pc, r0
006054b4  0b 16 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0x582c
006054b8  20 30 9d e5  ldr	r3, [sp, #0x20]
006054bc  24 40 8d e5  str	r4, [sp, #0x24]
006054c0  00 40 83 e5  str	r4, [r3]
006054c4  2b ff ff ea  b	0x605178 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x9c> @ imm = #-0x354
006054c8  58 00 9d e5  ldr	r0, [sp, #0x58]
006054cc  28 10 9d e5  ldr	r1, [sp, #0x28]
006054d0  68 50 8d e2  add	r5, sp, #104
006054d4  06 06 02 eb  bl	0x686cf4 <png_read_image> @ imm = #0x81818
006054d8  10 00 35 e5  ldr	r0, [r5, #-0x10]!
006054dc  04 10 a0 e1  mov	r1, r4
006054e0  3b 03 02 eb  bl	0x6861d4 <png_read_end> @ imm = #0x80cec
006054e4  04 20 a0 e1  mov	r2, r4
006054e8  05 00 a0 e1  mov	r0, r5
006054ec  54 10 8d e2  add	r1, sp, #84
006054f0  02 03 02 eb  bl	0x686100 <png_destroy_read_struct> @ imm = #0x80c08
006054f4  20 30 9d e5  ldr	r3, [sp, #0x20]
006054f8  24 20 9d e5  ldr	r2, [sp, #0x24]
006054fc  00 20 83 e5  str	r2, [r3]
00605500  2c c0 9d e5  ldr	r12, [sp, #0x2c]
00605504  04 30 9c e5  ldr	r3, [r12, #0x4]
00605508  01 30 83 e2  add	r3, r3, #1
0060550c  04 30 8c e5  str	r3, [r12, #0x4]
00605510  c5 ff ff ea  b	0x60542c <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x350> @ imm = #-0xec
00605514  1c 00 9d e5  ldr	r0, [sp, #0x1c]
00605518  00 30 90 e5  ldr	r3, [r0]
0060551c  0f e0 a0 e1  mov	lr, pc
00605520  28 f0 93 e5  ldr	pc, [r3, #0x28]
00605524  00 10 a0 e1  mov	r1, r0
00605528  10 01 9f e5  ldr	r0, [pc, #0x110]        @ 0x605640 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x564>
0060552c  03 20 a0 e3  mov	r2, #3
00605530  00 00 8f e0  add	r0, pc, r0
00605534  eb 15 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0x57ac
00605538  58 00 8d e2  add	r0, sp, #88
0060553c  04 10 a0 e1  mov	r1, r4
00605540  04 20 a0 e1  mov	r2, r4
00605544  ed 02 02 eb  bl	0x686100 <png_destroy_read_struct> @ imm = #0x80bb4
00605548  20 c0 9d e5  ldr	r12, [sp, #0x20]
0060554c  24 40 8d e5  str	r4, [sp, #0x24]
00605550  00 40 8c e5  str	r4, [r12]
00605554  07 ff ff ea  b	0x605178 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x9c> @ imm = #-0x3e4
00605558  58 00 9d e5  ldr	r0, [sp, #0x58]
0060555c  e0 0a 02 eb  bl	0x6880e4 <png_set_gray_to_rgb> @ imm = #0x82b80
00605560  60 ff ff ea  b	0x6052e8 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x20c> @ imm = #-0x280
00605564  58 00 9d e5  ldr	r0, [sp, #0x58]
00605568  d5 0a 02 eb  bl	0x6880c4 <png_set_tRNS_to_alpha> @ imm = #0x82b54
0060556c  56 ff ff ea  b	0x6052cc <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x1f0> @ imm = #-0x2a8
00605570  58 00 9d e5  ldr	r0, [sp, #0x58]
00605574  67 39 02 eb  bl	0x693b18 <png_set_packing> @ imm = #0x8e59c
00605578  4d ff ff ea  b	0x6052b4 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x1d8> @ imm = #-0x2cc
0060557c  1c 00 9d e5  ldr	r0, [sp, #0x1c]
00605580  00 30 90 e5  ldr	r3, [r0]
00605584  0f e0 a0 e1  mov	lr, pc
00605588  28 f0 93 e5  ldr	pc, [r3, #0x28]
0060558c  00 10 a0 e1  mov	r1, r0
00605590  ac 00 9f e5  ldr	r0, [pc, #0xac]         @ 0x605644 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x568>
00605594  03 20 a0 e3  mov	r2, #3
00605598  00 00 8f e0  add	r0, pc, r0
0060559c  d1 15 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0x5744
006055a0  24 10 9d e5  ldr	r1, [sp, #0x24]
006055a4  58 00 8d e2  add	r0, sp, #88
006055a8  01 20 a0 e1  mov	r2, r1
006055ac  d3 02 02 eb  bl	0x686100 <png_destroy_read_struct> @ imm = #0x80b4c
006055b0  24 20 9d e5  ldr	r2, [sp, #0x24]
006055b4  20 30 9d e5  ldr	r3, [sp, #0x20]
006055b8  00 20 83 e5  str	r2, [r3]
006055bc  ed fe ff ea  b	0x605178 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x9c> @ imm = #-0x44c
006055c0  58 00 9d e5  ldr	r0, [sp, #0x58]
006055c4  a5 0a 02 eb  bl	0x688060 <png_set_palette_to_rgb> @ imm = #0x82a94
006055c8  30 ff ff ea  b	0x605290 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x1b4> @ imm = #-0x340
006055cc  58 00 9d e5  ldr	r0, [sp, #0x58]
006055d0  63 0a 02 eb  bl	0x687f64 <png_set_strip_16> @ imm = #0x8298c
006055d4  3f ff ff ea  b	0x6052d8 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x1fc> @ imm = #-0x304
006055d8  1c 00 9d e5  ldr	r0, [sp, #0x1c]
006055dc  00 30 90 e5  ldr	r3, [r0]
006055e0  0f e0 a0 e1  mov	lr, pc
006055e4  28 f0 93 e5  ldr	pc, [r3, #0x28]
006055e8  00 10 a0 e1  mov	r1, r0
006055ec  54 00 9f e5  ldr	r0, [pc, #0x54]         @ 0x605648 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x56c>
006055f0  03 20 a0 e3  mov	r2, #3
006055f4  00 00 8f e0  add	r0, pc, r0
006055f8  ba 15 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0x56e8
006055fc  28 10 9d e5  ldr	r1, [sp, #0x28]
00605600  58 00 8d e2  add	r0, sp, #88
00605604  01 20 a0 e1  mov	r2, r1
00605608  bc 02 02 eb  bl	0x686100 <png_destroy_read_struct> @ imm = #0x80af0
0060560c  28 30 9d e5  ldr	r3, [sp, #0x28]
00605610  20 c0 9d e5  ldr	r12, [sp, #0x20]
00605614  00 30 8c e5  str	r3, [r12]
00605618  d6 fe ff ea  b	0x605178 <_ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE+0x9c> @ imm = #-0x4a8
0060561c  3b 23 f4 eb  bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x2f7314
00605620  a8 f9 38 00  .word	0x0038f9a8
00605624  ac 40 00 00  .word	0x000040ac
00605628  70 f6 2d 00  .word	0x002df670
0060562c  3c f6 2d 00  .word	0x002df63c
00605630  6c 04 00 00  .word	0x0000046c
00605634  d8 2d 00 00  .word	0x00002dd8
00605638  9c f3 2d 00  .word	0x002df39c
0060563c  68 f3 2d 00  .word	0x002df368
00605640  20 f3 2d 00  .word	0x002df320
00605644  28 f3 2d 00  .word	0x002df328
00605648  94 f2 2d 00  .word	0x002df294

; png_extension: glitch::video::CImageLoaderPng::isALoadableFileExtension(char const*) const
; VA=0x00605674, size=0x60, file_offset=0x00605674, SHA-256=84887c4631de1bb7951bafa46730ebf9f03ee1becf09b50d3e8a3ca140ea992a
00605674  10 40 2d e9  push	{r4, lr}
00605678  01 00 a0 e1  mov	r0, r1
0060567c  2e 10 a0 e3  mov	r1, #46
00605680  67 23 f4 eb  bl	0x30e424 <strrchr@plt>  @ imm = #-0x2f7264
00605684  00 40 50 e2  subs	r4, r0, #0
00605688  0d 00 00 0a  beq	0x6056c4 <_ZNK6glitch5video15CImageLoaderPng24isALoadableFileExtensionEPKc+0x50> @ imm = #0x34
0060568c  38 10 9f e5  ldr	r1, [pc, #0x38]         @ 0x6056cc <_ZNK6glitch5video15CImageLoaderPng24isALoadableFileExtensionEPKc+0x58>
00605690  01 10 8f e0  add	r1, pc, r1
00605694  20 23 f4 eb  bl	0x30e31c <strcmp@plt>   @ imm = #-0x2f7380
00605698  00 00 50 e3  cmp	r0, #0
0060569c  01 00 00 1a  bne	0x6056a8 <_ZNK6glitch5video15CImageLoaderPng24isALoadableFileExtensionEPKc+0x34> @ imm = #0x4
006056a0  01 00 a0 e3  mov	r0, #1
006056a4  10 80 bd e8  pop	{r4, pc}
006056a8  20 10 9f e5  ldr	r1, [pc, #0x20]         @ 0x6056d0 <_ZNK6glitch5video15CImageLoaderPng24isALoadableFileExtensionEPKc+0x5c>
006056ac  04 00 a0 e1  mov	r0, r4
006056b0  01 10 8f e0  add	r1, pc, r1
006056b4  18 23 f4 eb  bl	0x30e31c <strcmp@plt>   @ imm = #-0x2f73a0
006056b8  01 00 70 e2  rsbs	r0, r0, #1
006056bc  00 00 a0 33  movlo	r0, #0
006056c0  10 80 bd e8  pop	{r4, pc}
006056c4  04 00 a0 e1  mov	r0, r4
006056c8  10 80 bd e8  pop	{r4, pc}
006056cc  78 f2 2d 00  .word	0x002df278
006056d0  60 f2 2d 00  .word	0x002df260

; pvr_texture_interface: glitch::video::CImageLoaderPVR::hasTextureLoadInterface()
; VA=0x00605718, size=0x8, file_offset=0x00605718, SHA-256=007f34a6c3441b0240da53f253e513b959105da2d8803255e1856aa48f48db47
00605718  01 00 a0 e3  mov	r0, #1
0060571c  1e ff 2f e1  bx	lr

; pvr_extension: glitch::video::CImageLoaderPVR::isALoadableFileExtension(char const*) const
; VA=0x006061b4, size=0x4c, file_offset=0x006061b4, SHA-256=5c3b3ba68d0b5e8993803628d451d10008f793cb6804c0b56a08f98ad2c7a2fc
006061b4  10 40 2d e9  push	{r4, lr}
006061b8  01 00 a0 e1  mov	r0, r1
006061bc  01 40 a0 e1  mov	r4, r1
006061c0  30 10 9f e5  ldr	r1, [pc, #0x30]         @ 0x6061f8 <_ZNK6glitch5video15CImageLoaderPVR24isALoadableFileExtensionEPKc+0x44>
006061c4  01 10 8f e0  add	r1, pc, r1
006061c8  81 22 f4 eb  bl	0x30ebd4 <strstr@plt>   @ imm = #-0x2f75fc
006061cc  00 00 50 e3  cmp	r0, #0
006061d0  01 00 00 0a  beq	0x6061dc <_ZNK6glitch5video15CImageLoaderPVR24isALoadableFileExtensionEPKc+0x28> @ imm = #0x4
006061d4  01 00 a0 e3  mov	r0, #1
006061d8  10 80 bd e8  pop	{r4, pc}
006061dc  18 10 9f e5  ldr	r1, [pc, #0x18]         @ 0x6061fc <_ZNK6glitch5video15CImageLoaderPVR24isALoadableFileExtensionEPKc+0x48>
006061e0  04 00 a0 e1  mov	r0, r4
006061e4  01 10 8f e0  add	r1, pc, r1
006061e8  79 22 f4 eb  bl	0x30ebd4 <strstr@plt>   @ imm = #-0x2f761c
006061ec  00 00 50 e2  subs	r0, r0, #0
006061f0  01 00 a0 13  movne	r0, #1
006061f4  10 80 bd e8  pop	{r4, pc}
006061f8  84 e8 2d 00  .word	0x002de884
006061fc  6c e8 2d 00  .word	0x002de86c

; tga_signature_probe: glitch::video::CImageLoaderTGA::isALoadableFileFormat(glitch::io::IReadFile*) const
; VA=0x00606778, size=0xf4, file_offset=0x00606778, SHA-256=6efa4758faa20e163bf18eebef70dce1e15a549ef5145b5e24c0d9f9515285a5
00606778  f0 45 2d e9  push	{r4, r5, r6, r7, r8, r10, lr}
0060677c  dc 40 9f e5  ldr	r4, [pc, #0xdc]         @ 0x606860 <_ZNK6glitch5video15CImageLoaderTGA21isALoadableFileFormatEPNS_2io9IReadFileE+0xe8>
00606780  dc 60 9f e5  ldr	r6, [pc, #0xdc]         @ 0x606864 <_ZNK6glitch5video15CImageLoaderTGA21isALoadableFileFormatEPNS_2io9IReadFileE+0xec>
00606784  24 d0 4d e2  sub	sp, sp, #36
00606788  04 40 8f e0  add	r4, pc, r4
0060678c  06 30 94 e7  ldr	r3, [r4, r6]
00606790  00 50 51 e2  subs	r5, r1, #0
00606794  00 30 93 e5  ldr	r3, [r3]
00606798  1c 30 8d e5  str	r3, [sp, #0x1c]
0060679c  05 00 00 0a  beq	0x6067b8 <_ZNK6glitch5video15CImageLoaderTGA21isALoadableFileFormatEPNS_2io9IReadFileE+0x40> @ imm = #0x14
006067a0  00 30 95 e5  ldr	r3, [r5]
006067a4  05 00 a0 e1  mov	r0, r5
006067a8  0f e0 a0 e1  mov	lr, pc
006067ac  20 f0 93 e5  ldr	pc, [r3, #0x20]
006067b0  19 00 50 e3  cmp	r0, #25
006067b4  07 00 00 8a  bhi	0x6067d8 <_ZNK6glitch5video15CImageLoaderTGA21isALoadableFileFormatEPNS_2io9IReadFileE+0x60> @ imm = #0x1c
006067b8  00 00 a0 e3  mov	r0, #0
006067bc  06 30 94 e7  ldr	r3, [r4, r6]
006067c0  1c 20 9d e5  ldr	r2, [sp, #0x1c]
006067c4  00 30 93 e5  ldr	r3, [r3]
006067c8  03 00 52 e1  cmp	r2, r3
006067cc  22 00 00 1a  bne	0x60685c <_ZNK6glitch5video15CImageLoaderTGA21isALoadableFileFormatEPNS_2io9IReadFileE+0xe4> @ imm = #0x88
006067d0  24 d0 8d e2  add	sp, sp, #36
006067d4  f0 85 bd e8  pop	{r4, r5, r6, r7, r8, r10, pc}
006067d8  00 a0 a0 e3  mov	r10, #0
006067dc  08 30 8d e2  add	r3, sp, #8
006067e0  04 a0 83 e4  str	r10, [r3], #4
006067e4  04 a0 83 e4  str	r10, [r3], #4
006067e8  04 a0 83 e4  str	r10, [r3], #4
006067ec  04 a0 83 e4  str	r10, [r3], #4
006067f0  00 a0 8d e5  str	r10, [sp]
006067f4  04 a0 8d e5  str	r10, [sp, #0x4]
006067f8  b0 a0 c3 e1  strh	r10, [r3]
006067fc  00 30 95 e5  ldr	r3, [r5]
00606800  05 00 a0 e1  mov	r0, r5
00606804  0d 70 a0 e1  mov	r7, sp
00606808  18 80 93 e5  ldr	r8, [r3, #0x18]
0060680c  0f e0 a0 e1  mov	lr, pc
00606810  20 f0 93 e5  ldr	pc, [r3, #0x20]
00606814  0a 20 a0 e1  mov	r2, r10
00606818  1a 10 40 e2  sub	r1, r0, #26
0060681c  05 00 a0 e1  mov	r0, r5
00606820  38 ff 2f e1  blx	r8
00606824  0d 10 a0 e1  mov	r1, sp
00606828  1a 20 a0 e3  mov	r2, #26
0060682c  00 30 95 e5  ldr	r3, [r5]
00606830  05 00 a0 e1  mov	r0, r5
00606834  0f e0 a0 e1  mov	lr, pc
00606838  0c f0 93 e5  ldr	pc, [r3, #0xc]
0060683c  24 10 9f e5  ldr	r1, [pc, #0x24]         @ 0x606868 <_ZNK6glitch5video15CImageLoaderTGA21isALoadableFileFormatEPNS_2io9IReadFileE+0xf0>
00606840  08 00 8d e2  add	r0, sp, #8
00606844  01 10 8f e0  add	r1, pc, r1
00606848  b3 1e f4 eb  bl	0x30e31c <strcmp@plt>   @ imm = #-0x2f8534
0060684c  0a 00 50 e1  cmp	r0, r10
00606850  00 00 a0 13  movne	r0, #0
00606854  01 00 a0 03  moveq	r0, #1
00606858  d7 ff ff ea  b	0x6067bc <_ZNK6glitch5video15CImageLoaderTGA21isALoadableFileFormatEPNS_2io9IReadFileE+0x44> @ imm = #-0xa4
0060685c  ab 1e f4 eb  bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x2f8554
00606860  08 e3 38 00  .word	0x0038e308
00606864  ac 40 00 00  .word	0x000040ac
00606868  4c e2 2d 00  .word	0x002de24c

; tga_cpu_image_decode: glitch::video::CImageLoaderTGA::loadImage(glitch::io::IReadFile*) const
; VA=0x00606368, size=0x410, file_offset=0x00606368, SHA-256=f8547b2cd74f9ae61c53ed00c49ef5ef34177ba66d90de3bfc5303212082a82f
00606368  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
0060636c  54 d0 4d e2  sub	sp, sp, #84
00606370  20 00 8d e5  str	r0, [sp, #0x20]
00606374  00 30 92 e5  ldr	r3, [r2]
00606378  02 00 a0 e1  mov	r0, r2
0060637c  30 10 8d e2  add	r1, sp, #48
00606380  02 80 a0 e1  mov	r8, r2
00606384  12 20 a0 e3  mov	r2, #18
00606388  0f e0 a0 e1  mov	lr, pc
0060638c  0c f0 93 e5  ldr	pc, [r3, #0xc]
00606390  30 10 dd e5  ldrb	r1, [sp, #0x30]
00606394  00 00 51 e3  cmp	r1, #0
00606398  cc 00 00 1a  bne	0x6066d0 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x368> @ imm = #0x330
0060639c  31 30 dd e5  ldrb	r3, [sp, #0x31]
006063a0  00 00 53 e3  cmp	r3, #0
006063a4  1c 30 8d 05  streq	r3, [sp, #0x1c]
006063a8  9c 00 00 1a  bne	0x606620 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x2b8> @ imm = #0x270
006063ac  40 30 dd e5  ldrb	r3, [sp, #0x40]
006063b0  18 00 53 e3  cmp	r3, #24
006063b4  ae 00 00 0a  beq	0x606674 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x30c> @ imm = #0x2b8
006063b8  20 00 53 e3  cmp	r3, #32
006063bc  c9 00 00 0a  beq	0x6066e8 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x380> @ imm = #0x324
006063c0  10 00 53 e3  cmp	r3, #16
006063c4  13 00 00 0a  beq	0x606418 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0xb0> @ imm = #0x4c
006063c8  00 30 98 e5  ldr	r3, [r8]
006063cc  08 00 a0 e1  mov	r0, r8
006063d0  0f e0 a0 e1  mov	lr, pc
006063d4  28 f0 93 e5  ldr	pc, [r3, #0x28]
006063d8  00 10 a0 e1  mov	r1, r0
006063dc  8c 03 9f e5  ldr	r0, [pc, #0x38c]        @ 0x606770 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x408>
006063e0  03 20 a0 e3  mov	r2, #3
006063e4  00 00 8f e0  add	r0, pc, r0
006063e8  3e 12 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0x48f8
006063ec  20 20 9d e5  ldr	r2, [sp, #0x20]
006063f0  00 30 a0 e3  mov	r3, #0
006063f4  00 30 82 e5  str	r3, [r2]
006063f8  1c 20 9d e5  ldr	r2, [sp, #0x1c]
006063fc  00 00 52 e3  cmp	r2, #0
00606400  01 00 00 0a  beq	0x60640c <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0xa4> @ imm = #0x4
00606404  02 00 a0 e1  mov	r0, r2
00606408  2a 1f f4 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2f8358
0060640c  20 00 9d e5  ldr	r0, [sp, #0x20]
00606410  54 d0 8d e2  add	sp, sp, #84
00606414  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
00606418  08 30 a0 e3  mov	r3, #8
0060641c  24 30 8d e5  str	r3, [sp, #0x24]
00606420  28 30 8d e5  str	r3, [sp, #0x28]
00606424  32 70 dd e5  ldrb	r7, [sp, #0x32]
00606428  0a 00 57 e3  cmp	r7, #10
0060642c  02 00 57 13  cmpne	r7, #2
00606430  00 70 a0 03  moveq	r7, #0
00606434  01 70 a0 13  movne	r7, #1
00606438  97 00 00 1a  bne	0x60669c <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x334> @ imm = #0x25c
0060643c  be 33 dd e1  ldrh	r3, [sp, #62]
00606440  bc 23 dd e1  ldrh	r2, [sp, #60]
00606444  07 10 a0 e1  mov	r1, r7
00606448  2c 00 a0 e3  mov	r0, #44
0060644c  44 20 8d e5  str	r2, [sp, #0x44]
00606450  48 30 8d e5  str	r3, [sp, #0x48]
00606454  54 b7 fc eb  bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xd22b0
00606458  24 10 9d e5  ldr	r1, [sp, #0x24]
0060645c  44 20 8d e2  add	r2, sp, #68
00606460  00 50 a0 e1  mov	r5, r0
00606464  29 ef ff eb  bl	0x602110 <_ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE> @ imm = #-0x435c
00606468  00 00 55 e3  cmp	r5, #0
0060646c  20 c0 9d 05  ldreq	r12, [sp, #0x20]
00606470  00 50 8c 05  streq	r5, [r12]
00606474  df ff ff 0a  beq	0x6063f8 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x90> @ imm = #-0x84
00606478  08 10 95 e9  ldmib	r5, {r3, r12}
0060647c  01 30 83 e2  add	r3, r3, #1
00606480  2c c0 8d e5  str	r12, [sp, #0x2c]
00606484  04 30 85 e5  str	r3, [r5, #0x4]
00606488  32 30 dd e5  ldrb	r3, [sp, #0x32]
0060648c  02 00 53 e3  cmp	r3, #2
00606490  98 00 00 0a  beq	0x6066f8 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x390> @ imm = #0x260
00606494  bc 33 dd e1  ldrh	r3, [sp, #60]
00606498  be a3 dd e1  ldrh	r10, [sp, #62]
0060649c  40 60 dd e5  ldrb	r6, [sp, #0x40]
006064a0  07 10 a0 e1  mov	r1, r7
006064a4  9a 03 0a e0  mul	r10, r10, r3
006064a8  a6 61 a0 e1  lsr	r6, r6, #3
006064ac  96 0a 0a e0  mul	r10, r6, r10
006064b0  0a 00 a0 e1  mov	r0, r10
006064b4  3b b7 fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xd2314
006064b8  00 00 5a e3  cmp	r10, #0
006064bc  00 40 a0 e1  mov	r4, r0
006064c0  39 00 00 da  ble	0x6065ac <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x244> @ imm = #0xe4
006064c4  4f 90 8d e2  add	r9, sp, #79
006064c8  07 b0 a0 e1  mov	r11, r7
006064cc  0c 00 00 ea  b	0x606504 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x19c> @ imm = #0x30
006064d0  01 30 83 e2  add	r3, r3, #1
006064d4  73 20 ef e6  uxtb	r2, r3
006064d8  4f 20 cd e5  strb	r2, [sp, #0x4f]
006064dc  07 10 84 e0  add	r1, r4, r7
006064e0  00 30 98 e5  ldr	r3, [r8]
006064e4  96 02 02 e0  mul	r2, r6, r2
006064e8  08 00 a0 e1  mov	r0, r8
006064ec  0f e0 a0 e1  mov	lr, pc
006064f0  0c f0 93 e5  ldr	pc, [r3, #0xc]
006064f4  4f 30 dd e5  ldrb	r3, [sp, #0x4f]
006064f8  93 76 27 e0  mla	r7, r3, r6, r7
006064fc  07 00 5a e1  cmp	r10, r7
00606500  29 00 00 da  ble	0x6065ac <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x244> @ imm = #0xa4
00606504  4f b0 cd e5  strb	r11, [sp, #0x4f]
00606508  00 30 98 e5  ldr	r3, [r8]
0060650c  08 00 a0 e1  mov	r0, r8
00606510  09 10 a0 e1  mov	r1, r9
00606514  01 20 a0 e3  mov	r2, #1
00606518  0f e0 a0 e1  mov	lr, pc
0060651c  0c f0 93 e5  ldr	pc, [r3, #0xc]
00606520  4f 30 dd e5  ldrb	r3, [sp, #0x4f]
00606524  80 00 13 e3  tst	r3, #128
00606528  e8 ff ff 0a  beq	0x6064d0 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x168> @ imm = #-0x60
0060652c  7f 30 43 e2  sub	r3, r3, #127
00606530  4f 30 cd e5  strb	r3, [sp, #0x4f]
00606534  07 10 84 e0  add	r1, r4, r7
00606538  00 30 98 e5  ldr	r3, [r8]
0060653c  08 00 a0 e1  mov	r0, r8
00606540  06 20 a0 e1  mov	r2, r6
00606544  0f e0 a0 e1  mov	lr, pc
00606548  0c f0 93 e5  ldr	pc, [r3, #0xc]
0060654c  4f 30 dd e5  ldrb	r3, [sp, #0x4f]
00606550  07 00 a0 e1  mov	r0, r7
00606554  06 70 87 e0  add	r7, r7, r6
00606558  01 00 53 e3  cmp	r3, #1
0060655c  00 00 84 c0  addgt	r0, r4, r0
00606560  07 10 84 c0  addgt	r1, r4, r7
00606564  01 c0 a0 c3  movgt	r12, #1
00606568  e3 ff ff da  ble	0x6064fc <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x194> @ imm = #-0x74
0060656c  00 00 56 e3  cmp	r6, #0
00606570  00 30 a0 13  movne	r3, #0
00606574  05 00 00 0a  beq	0x606590 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x228> @ imm = #0x14
00606578  03 20 d0 e7  ldrb	r2, [r0, r3]
0060657c  03 20 c1 e7  strb	r2, [r1, r3]
00606580  01 30 83 e2  add	r3, r3, #1
00606584  03 00 56 e1  cmp	r6, r3
00606588  fa ff ff ca  bgt	0x606578 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x210> @ imm = #-0x18
0060658c  4f 30 dd e5  ldrb	r3, [sp, #0x4f]
00606590  01 c0 8c e2  add	r12, r12, #1
00606594  03 00 5c e1  cmp	r12, r3
00606598  07 70 86 e0  add	r7, r6, r7
0060659c  06 10 81 e0  add	r1, r1, r6
006065a0  f1 ff ff ba  blt	0x60656c <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x204> @ imm = #-0x3c
006065a4  07 00 5a e1  cmp	r10, r7
006065a8  d5 ff ff ca  bgt	0x606504 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x19c> @ imm = #-0xac
006065ac  41 c0 dd e5  ldrb	r12, [sp, #0x41]
006065b0  bc 63 dd e1  ldrh	r6, [sp, #60]
006065b4  be 73 dd e1  ldrh	r7, [sp, #62]
006065b8  2c 80 9d e5  ldr	r8, [sp, #0x2c]
006065bc  00 e0 a0 e3  mov	lr, #0
006065c0  20 c0 2c e2  eor	r12, r12, #32
006065c4  dc c2 e0 e7  ubfx	r12, r12, #0x5, #0x1
006065c8  28 00 9d e5  ldr	r0, [sp, #0x28]
006065cc  0e 20 a0 e1  mov	r2, lr
006065d0  24 30 9d e5  ldr	r3, [sp, #0x24]
006065d4  04 10 a0 e1  mov	r1, r4
006065d8  00 80 8d e5  str	r8, [sp]
006065dc  08 60 8d e5  str	r6, [sp, #0x8]
006065e0  0c 70 8d e5  str	r7, [sp, #0xc]
006065e4  10 c0 8d e5  str	r12, [sp, #0x10]
006065e8  04 e0 8d e5  str	lr, [sp, #0x4]
006065ec  ee cb ff eb  bl	0x5f95ac <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb> @ imm = #-0xd048
006065f0  00 00 54 e3  cmp	r4, #0
006065f4  01 00 00 0a  beq	0x606600 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x298> @ imm = #0x4
006065f8  04 00 a0 e1  mov	r0, r4
006065fc  ad 1e f4 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2f854c
00606600  20 30 9d e5  ldr	r3, [sp, #0x20]
00606604  05 00 a0 e1  mov	r0, r5
00606608  00 50 83 e5  str	r5, [r3]
0060660c  04 30 95 e5  ldr	r3, [r5, #0x4]
00606610  01 30 83 e2  add	r3, r3, #1
00606614  04 30 85 e5  str	r3, [r5, #0x4]
00606618  d9 5b f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2e909c
0060661c  75 ff ff ea  b	0x6063f8 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x90> @ imm = #-0x22c
00606620  37 30 dd e5  ldrb	r3, [sp, #0x37]
00606624  34 00 9d e5  ldr	r0, [sp, #0x34]
00606628  00 10 a0 e3  mov	r1, #0
0060662c  a3 31 a0 e1  lsr	r3, r3, #3
00606630  50 04 ef e7  ubfx	r0, r0, #0x8, #0x10
00606634  90 03 00 e0  mul	r0, r0, r3
00606638  da b6 fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xd2498
0060663c  37 20 dd e5  ldrb	r2, [sp, #0x37]
00606640  34 10 9d e5  ldr	r1, [sp, #0x34]
00606644  1c 00 8d e5  str	r0, [sp, #0x1c]
00606648  a2 21 a0 e1  lsr	r2, r2, #3
0060664c  51 14 ef e7  ubfx	r1, r1, #0x8, #0x10
00606650  00 30 98 e5  ldr	r3, [r8]
00606654  91 02 02 e0  mul	r2, r1, r2
00606658  08 00 a0 e1  mov	r0, r8
0060665c  1c 10 9d e5  ldr	r1, [sp, #0x1c]
00606660  0f e0 a0 e1  mov	lr, pc
00606664  0c f0 93 e5  ldr	pc, [r3, #0xc]
00606668  40 30 dd e5  ldrb	r3, [sp, #0x40]
0060666c  18 00 53 e3  cmp	r3, #24
00606670  50 ff ff 1a  bne	0x6063b8 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x50> @ imm = #-0x2c0
00606674  32 70 dd e5  ldrb	r7, [sp, #0x32]
00606678  0a 20 a0 e3  mov	r2, #10
0060667c  0b 30 a0 e3  mov	r3, #11
00606680  0a 00 57 e3  cmp	r7, #10
00606684  02 00 57 13  cmpne	r7, #2
00606688  24 20 8d e5  str	r2, [sp, #0x24]
0060668c  28 30 8d e5  str	r3, [sp, #0x28]
00606690  00 70 a0 03  moveq	r7, #0
00606694  01 70 a0 13  movne	r7, #1
00606698  67 ff ff 0a  beq	0x60643c <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0xd4> @ imm = #-0x264
0060669c  00 30 98 e5  ldr	r3, [r8]
006066a0  08 00 a0 e1  mov	r0, r8
006066a4  0f e0 a0 e1  mov	lr, pc
006066a8  28 f0 93 e5  ldr	pc, [r3, #0x28]
006066ac  00 10 a0 e1  mov	r1, r0
006066b0  bc 00 9f e5  ldr	r0, [pc, #0xbc]         @ 0x606774 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x40c>
006066b4  03 20 a0 e3  mov	r2, #3
006066b8  00 00 8f e0  add	r0, pc, r0
006066bc  89 11 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0x4624
006066c0  20 80 9d e5  ldr	r8, [sp, #0x20]
006066c4  00 30 a0 e3  mov	r3, #0
006066c8  00 30 88 e5  str	r3, [r8]
006066cc  49 ff ff ea  b	0x6063f8 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x90> @ imm = #-0x2dc
006066d0  00 30 98 e5  ldr	r3, [r8]
006066d4  08 00 a0 e1  mov	r0, r8
006066d8  01 20 a0 e3  mov	r2, #1
006066dc  0f e0 a0 e1  mov	lr, pc
006066e0  18 f0 93 e5  ldr	pc, [r3, #0x18]
006066e4  2c ff ff ea  b	0x60639c <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x34> @ imm = #-0x350
006066e8  0d c0 a0 e3  mov	r12, #13
006066ec  24 c0 8d e5  str	r12, [sp, #0x24]
006066f0  28 c0 8d e5  str	r12, [sp, #0x28]
006066f4  4a ff ff ea  b	0x606424 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0xbc> @ imm = #-0x2d8
006066f8  be 13 dd e1  ldrh	r1, [sp, #62]
006066fc  bc 33 dd e1  ldrh	r3, [sp, #60]
00606700  40 20 dd e5  ldrb	r2, [sp, #0x40]
00606704  08 00 a0 e1  mov	r0, r8
00606708  91 03 03 e0  mul	r3, r1, r3
0060670c  2c 10 9d e5  ldr	r1, [sp, #0x2c]
00606710  92 03 02 e0  mul	r2, r2, r3
00606714  00 30 98 e5  ldr	r3, [r8]
00606718  07 c0 82 e2  add	r12, r2, #7
0060671c  00 00 52 e3  cmp	r2, #0
00606720  0c 20 a0 b1  movlt	r2, r12
00606724  c2 21 a0 e1  asr	r2, r2, #3
00606728  0f e0 a0 e1  mov	lr, pc
0060672c  0c f0 93 e5  ldr	pc, [r3, #0xc]
00606730  41 c0 dd e5  ldrb	r12, [sp, #0x41]
00606734  2c 10 9d e5  ldr	r1, [sp, #0x2c]
00606738  bc e3 dd e1  ldrh	lr, [sp, #60]
0060673c  be 43 dd e1  ldrh	r4, [sp, #62]
00606740  20 c0 2c e2  eor	r12, r12, #32
00606744  dc c2 e0 e7  ubfx	r12, r12, #0x5, #0x1
00606748  28 00 9d e5  ldr	r0, [sp, #0x28]
0060674c  07 20 a0 e1  mov	r2, r7
00606750  24 30 9d e5  ldr	r3, [sp, #0x24]
00606754  08 e0 8d e5  str	lr, [sp, #0x8]
00606758  0c 40 8d e5  str	r4, [sp, #0xc]
0060675c  10 c0 8d e5  str	r12, [sp, #0x10]
00606760  01 80 a0 e1  mov	r8, r1
00606764  82 00 8d e8  stm	sp, {r1, r7}
00606768  8f cb ff eb  bl	0x5f95ac <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb> @ imm = #-0xd1c4
0060676c  a3 ff ff ea  b	0x606600 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x298> @ imm = #-0x174
00606770  74 e6 2d 00  .word	0x002de674
00606774  b8 e3 2d 00  .word	0x002de3b8

; tga_extension: glitch::video::CImageLoaderTGA::isALoadableFileExtension(char const*) const
; VA=0x0060686c, size=0x4c, file_offset=0x0060686c, SHA-256=271a1a76a8f036564a215868c8cc16a0b44004e792069af924e9cefa776cc09d
0060686c  10 40 2d e9  push	{r4, lr}
00606870  01 00 a0 e1  mov	r0, r1
00606874  01 40 a0 e1  mov	r4, r1
00606878  30 10 9f e5  ldr	r1, [pc, #0x30]         @ 0x6068b0 <_ZNK6glitch5video15CImageLoaderTGA24isALoadableFileExtensionEPKc+0x44>
0060687c  01 10 8f e0  add	r1, pc, r1
00606880  d3 20 f4 eb  bl	0x30ebd4 <strstr@plt>   @ imm = #-0x2f7cb4
00606884  00 00 50 e3  cmp	r0, #0
00606888  01 00 00 0a  beq	0x606894 <_ZNK6glitch5video15CImageLoaderTGA24isALoadableFileExtensionEPKc+0x28> @ imm = #0x4
0060688c  01 00 a0 e3  mov	r0, #1
00606890  10 80 bd e8  pop	{r4, pc}
00606894  18 10 9f e5  ldr	r1, [pc, #0x18]         @ 0x6068b4 <_ZNK6glitch5video15CImageLoaderTGA24isALoadableFileExtensionEPKc+0x48>
00606898  04 00 a0 e1  mov	r0, r4
0060689c  01 10 8f e0  add	r1, pc, r1
006068a0  cb 20 f4 eb  bl	0x30ebd4 <strstr@plt>   @ imm = #-0x2f7cd4
006068a4  00 00 50 e2  subs	r0, r0, #0
006068a8  01 00 a0 13  movne	r0, #1
006068ac  10 80 bd e8  pop	{r4, pc}
006068b0  bc 18 2c 00  .word	0x002c18bc
006068b4  0c e2 2d 00  .word	0x002de20c

; generic_image_data_transfer: glitch::video::IImageLoader::loadData(glitch::io::IReadFile*, glitch::video::IImageLoader::IDataInfo const&, glitch::video::STextureDesc const&, boost::intrusive_ptr<glitch::video::ITexture> const&)
; VA=0x006083d0, size=0x480, file_offset=0x006083d0, SHA-256=b859a6cdf1dce67aabf17db5f04e4bd62a7c02c458872f6bfdc13db2930867a3
006083d0  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
006083d4  01 40 a0 e1  mov	r4, r1
006083d8  8c d0 4d e2  sub	sp, sp, #140
006083dc  00 10 a0 e3  mov	r1, #0
006083e0  85 10 cd e5  strb	r1, [sp, #0x85]
006083e4  78 10 8d e5  str	r1, [sp, #0x78]
006083e8  7c 10 8d e5  str	r1, [sp, #0x7c]
006083ec  80 10 8d e5  str	r1, [sp, #0x80]
006083f0  84 10 cd e5  strb	r1, [sp, #0x84]
006083f4  00 90 a0 e1  mov	r9, r0
006083f8  00 10 94 e5  ldr	r1, [r4]
006083fc  04 00 a0 e1  mov	r0, r4
00608400  02 70 a0 e1  mov	r7, r2
00608404  03 60 a0 e1  mov	r6, r3
00608408  0f e0 a0 e1  mov	lr, pc
0060840c  10 f0 91 e5  ldr	pc, [r1, #0x10]
00608410  18 54 9f e5  ldr	r5, [pc, #0x418]        @ 0x608830 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x460>
00608414  00 00 50 e3  cmp	r0, #0
00608418  05 50 8f e0  add	r5, pc, r5
0060841c  7a 00 00 0a  beq	0x60860c <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x23c> @ imm = #0x1e8
00608420  0c 84 9f e5  ldr	r8, [pc, #0x40c]        @ 0x608834 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x464>
00608424  00 30 a0 e3  mov	r3, #0
00608428  85 30 cd e5  strb	r3, [sp, #0x85]
0060842c  00 30 94 e5  ldr	r3, [r4]
00608430  00 10 a0 e3  mov	r1, #0
00608434  04 00 a0 e1  mov	r0, r4
00608438  0f e0 a0 e1  mov	lr, pc
0060843c  0c f0 93 e5  ldr	pc, [r3, #0xc]
00608440  00 30 96 e5  ldr	r3, [r6]
00608444  00 a0 a0 e1  mov	r10, r0
00608448  08 20 95 e7  ldr	r2, [r5, r8]
0060844c  38 00 93 e5  ldr	r0, [r3, #0x38]
00608450  04 c0 97 e5  ldr	r12, [r7, #0x4]
00608454  28 10 a0 e3  mov	r1, #40
00608458  50 02 e5 e7  ubfx	r0, r0, #0x4, #0x6
0060845c  91 2c 2c e0  mla	r12, r1, r12, r2
00608460  91 20 22 e0  mla	r2, r1, r0, r2
00608464  16 c0 dc e5  ldrb	r12, [r12, #0x16]
00608468  16 20 d2 e5  ldrb	r2, [r2, #0x16]
0060846c  0c 00 52 e1  cmp	r2, r12
00608470  77 00 00 0a  beq	0x608654 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x284> @ imm = #0x1dc
00608474  00 30 94 e5  ldr	r3, [r4]
00608478  04 00 a0 e1  mov	r0, r4
0060847c  0f e0 a0 e1  mov	lr, pc
00608480  08 f0 93 e5  ldr	pc, [r3, #0x8]
00608484  00 10 a0 e3  mov	r1, #0
00608488  46 af fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xd42e8
0060848c  00 b0 a0 e1  mov	r11, r0
00608490  80 00 9d e5  ldr	r0, [sp, #0x80]
00608494  80 b0 8d e5  str	r11, [sp, #0x80]
00608498  00 00 50 e3  cmp	r0, #0
0060849c  01 00 00 0a  beq	0x6084a8 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0xd8> @ imm = #0x4
006084a0  04 17 f4 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2fa3f0
006084a4  80 b0 9d e5  ldr	r11, [sp, #0x80]
006084a8  00 00 5b e3  cmp	r11, #0
006084ac  cb 00 00 0a  beq	0x6087e0 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x410> @ imm = #0x32c
006084b0  01 30 a0 e3  mov	r3, #1
006084b4  00 20 96 e5  ldr	r2, [r6]
006084b8  00 80 a0 e3  mov	r8, #0
006084bc  84 30 cd e5  strb	r3, [sp, #0x84]
006084c0  3e 20 d2 e5  ldrb	r2, [r2, #0x3e]
006084c4  01 00 52 e3  cmp	r2, #1
006084c8  00 50 a0 83  movhi	r5, #0
006084cc  1c 50 d7 95  ldrbls	r5, [r7, #0x1c]
006084d0  00 00 53 e3  cmp	r3, #0
006084d4  02 00 00 0a  beq	0x6084e4 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x114> @ imm = #0x8
006084d8  80 30 9d e5  ldr	r3, [sp, #0x80]
006084dc  00 00 53 e3  cmp	r3, #0
006084e0  56 00 00 0a  beq	0x608640 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x270> @ imm = #0x158
006084e4  85 30 dd e5  ldrb	r3, [sp, #0x85]
006084e8  00 00 53 e3  cmp	r3, #0
006084ec  04 c0 a0 03  moveq	r12, #4
006084f0  52 00 00 1a  bne	0x608640 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x270> @ imm = #0x148
006084f4  00 20 a0 e3  mov	r2, #0
006084f8  78 a0 8d e2  add	r10, sp, #120
006084fc  0a 00 a0 e1  mov	r0, r10
00608500  06 10 a0 e1  mov	r1, r6
00608504  02 30 a0 e1  mov	r3, r2
00608508  00 c0 8d e5  str	r12, [sp]
0060850c  c4 fc ff eb  bl	0x607824 <_ZN6glitch5video16SMapTextureWrite5resetERKN5boost13intrusive_ptrINS0_8ITextureEEEhNS0_23E_TEXTURE_CUBE_MAP_FACEENS0_19E_BUFFER_MAP_ACCESSE> @ imm = #-0xcf0
00608510  7c b0 9d e5  ldr	r11, [sp, #0x7c]
00608514  00 00 5b e3  cmp	r11, #0
00608518  ba 00 00 0a  beq	0x608808 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x438> @ imm = #0x2e8
0060851c  00 30 96 e5  ldr	r3, [r6]
00608520  3f 30 d3 e5  ldrb	r3, [r3, #0x3f]
00608524  40 00 13 e3  tst	r3, #64
00608528  46 00 00 0a  beq	0x608648 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x278> @ imm = #0x118
0060852c  00 00 55 e3  cmp	r5, #0
00608530  67 00 00 0a  beq	0x6086d4 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x304> @ imm = #0x19c
00608534  00 30 99 e5  ldr	r3, [r9]
00608538  09 00 a0 e1  mov	r0, r9
0060853c  0f e0 a0 e1  mov	lr, pc
00608540  28 f0 93 e5  ldr	pc, [r3, #0x28]
00608544  ec 12 9f e5  ldr	r1, [pc, #0x2ec]        @ 0x608838 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x468>
00608548  00 20 a0 e1  mov	r2, r0
0060854c  02 00 a0 e3  mov	r0, #2
00608550  01 10 8f e0  add	r1, pc, r1
00608554  b6 0a 00 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x2ad8
00608558  0c 50 8d e2  add	r5, sp, #12
0060855c  00 30 a0 e3  mov	r3, #0
00608560  05 00 a0 e1  mov	r0, r5
00608564  2e 30 cd e5  strb	r3, [sp, #0x2e]
00608568  0c 30 8d e5  str	r3, [sp, #0xc]
0060856c  10 30 8d e5  str	r3, [sp, #0x10]
00608570  14 30 8d e5  str	r3, [sp, #0x14]
00608574  18 30 8d e5  str	r3, [sp, #0x18]
00608578  1c 30 8d e5  str	r3, [sp, #0x1c]
0060857c  20 30 8d e5  str	r3, [sp, #0x20]
00608580  24 30 8d e5  str	r3, [sp, #0x24]
00608584  28 30 8d e5  str	r3, [sp, #0x28]
00608588  2c 30 cd e5  strb	r3, [sp, #0x2c]
0060858c  2d 30 cd e5  strb	r3, [sp, #0x2d]
00608590  2f fc ff eb  bl	0x607654 <_ZN6glitch5video12IImageLoader19ITextureDataLoadingC2Ev> @ imm = #-0xf44
00608594  a0 32 9f e5  ldr	r3, [pc, #0x2a0]        @ 0x60883c <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x46c>
00608598  04 20 a0 e1  mov	r2, r4
0060859c  09 10 a0 e1  mov	r1, r9
006085a0  03 30 8f e0  add	r3, pc, r3
006085a4  50 40 83 e2  add	r4, r3, #80
006085a8  05 00 a0 e1  mov	r0, r5
006085ac  07 30 a0 e1  mov	r3, r7
006085b0  00 a0 8d e5  str	r10, [sp]
006085b4  0c 40 8d e5  str	r4, [sp, #0xc]
006085b8  29 fd ff eb  bl	0x607a64 <_ZN6glitch5video12IImageLoader19ITextureDataLoading4loadEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERNS0_12_GLOBAL__N_19SLoadInfoE> @ imm = #-0xb5c
006085bc  00 b0 a0 e1  mov	r11, r0
006085c0  05 00 a0 e1  mov	r0, r5
006085c4  0c 40 8d e5  str	r4, [sp, #0xc]
006085c8  4b fc ff eb  bl	0x6076fc <_ZN6glitch5video12IImageLoader19ITextureDataLoadingD2Ev> @ imm = #-0xed4
006085cc  80 00 9d e5  ldr	r0, [sp, #0x80]
006085d0  00 00 50 e3  cmp	r0, #0
006085d4  00 00 00 0a  beq	0x6085dc <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x20c> @ imm = #0x0
006085d8  b6 16 f4 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2fa528
006085dc  7c 30 9d e5  ldr	r3, [sp, #0x7c]
006085e0  00 00 53 e3  cmp	r3, #0
006085e4  01 00 00 0a  beq	0x6085f0 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x220> @ imm = #0x4
006085e8  78 00 9d e5  ldr	r0, [sp, #0x78]
006085ec  86 d5 ff eb  bl	0x5fdc0c <_ZNK6glitch5video8ITexture5unmapEv> @ imm = #-0xa9e8
006085f0  78 00 9d e5  ldr	r0, [sp, #0x78]
006085f4  00 00 50 e3  cmp	r0, #0
006085f8  00 00 00 0a  beq	0x608600 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x230> @ imm = #0x0
006085fc  e0 53 f4 eb  bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2eb080
00608600  0b 00 a0 e1  mov	r0, r11
00608604  8c d0 8d e2  add	sp, sp, #140
00608608  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
0060860c  04 30 97 e5  ldr	r3, [r7, #0x4]
00608610  1c 82 9f e5  ldr	r8, [pc, #0x21c]        @ 0x608834 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x464>
00608614  28 20 a0 e3  mov	r2, #40
00608618  92 03 03 e0  mul	r3, r2, r3
0060861c  08 20 95 e7  ldr	r2, [r5, r8]
00608620  03 10 92 e7  ldr	r1, [r2, r3]
00608624  03 30 82 e0  add	r3, r2, r3
00608628  08 00 11 e3  tst	r1, #8
0060862c  7c ff ff 1a  bne	0x608424 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x54> @ imm = #-0x210
00608630  14 30 d3 e5  ldrb	r3, [r3, #0x14]
00608634  00 30 53 e2  subs	r3, r3, #0
00608638  01 30 a0 13  movne	r3, #1
0060863c  79 ff ff ea  b	0x608428 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x58> @ imm = #-0x21c
00608640  05 c0 a0 e3  mov	r12, #5
00608644  aa ff ff ea  b	0x6084f4 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x124> @ imm = #-0x158
00608648  00 00 55 e3  cmp	r5, #0
0060864c  c1 ff ff 0a  beq	0x608558 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x188> @ imm = #-0xfc
00608650  b7 ff ff ea  b	0x608534 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x164> @ imm = #-0x124
00608654  00 00 5a e3  cmp	r10, #0
00608658  5b 00 00 1a  bne	0x6087cc <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x3fc> @ imm = #0x16c
0060865c  00 30 94 e5  ldr	r3, [r4]
00608660  04 00 a0 e1  mov	r0, r4
00608664  0f e0 a0 e1  mov	lr, pc
00608668  08 f0 93 e5  ldr	pc, [r3, #0x8]
0060866c  00 20 96 e5  ldr	r2, [r6]
00608670  38 30 92 e5  ldr	r3, [r2, #0x38]
00608674  3f 10 d2 e5  ldrb	r1, [r2, #0x3f]
00608678  03 e0 03 e2  and	lr, r3, #3
0060867c  02 00 5e e3  cmp	lr, #2
00608680  05 e0 a0 03  moveq	lr, #5
00608684  00 e0 a0 13  movne	lr, #0
00608688  02 00 11 e3  tst	r1, #2
0060868c  30 c0 92 15  ldrne	r12, [r2, #0x30]
00608690  30 10 92 05  ldreq	r1, [r2, #0x30]
00608694  3e c0 d2 05  ldrbeq	r12, [r2, #0x3e]
00608698  00 10 9c 15  ldrne	r1, [r12]
0060869c  04 80 9c 15  ldrne	r8, [r12, #0x4]
006086a0  0c 11 91 07  ldreq	r1, [r1, r12, lsl #2]
006086a4  53 32 e5 e7  ubfx	r3, r3, #0x4, #0x6
006086a8  08 10 61 10  rsbne	r1, r1, r8
006086ac  7f 80 81 e2  add	r8, r1, #127
006086b0  7f 80 c8 e3  bic	r8, r8, #127
006086b4  98 1e 28 e0  mla	r8, r8, lr, r1
006086b8  04 10 97 e5  ldr	r1, [r7, #0x4]
006086bc  08 80 50 e0  subs	r8, r0, r8
006086c0  01 80 a0 13  movne	r8, #1
006086c4  03 30 51 e0  subs	r3, r1, r3
006086c8  01 30 a0 13  movne	r3, #1
006086cc  84 30 cd e5  strb	r3, [sp, #0x84]
006086d0  7a ff ff ea  b	0x6084c0 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0xf0> @ imm = #-0x218
006086d4  00 00 58 e3  cmp	r8, #0
006086d8  1d 00 00 0a  beq	0x608754 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x384> @ imm = #0x74
006086dc  5c 61 9f e5  ldr	r6, [pc, #0x15c]        @ 0x608840 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x470>
006086e0  54 80 8d e2  add	r8, sp, #84
006086e4  08 00 a0 e1  mov	r0, r8
006086e8  06 60 8f e0  add	r6, pc, r6
006086ec  76 50 cd e5  strb	r5, [sp, #0x76]
006086f0  54 50 8d e5  str	r5, [sp, #0x54]
006086f4  58 50 8d e5  str	r5, [sp, #0x58]
006086f8  5c 50 8d e5  str	r5, [sp, #0x5c]
006086fc  60 50 8d e5  str	r5, [sp, #0x60]
00608700  64 50 8d e5  str	r5, [sp, #0x64]
00608704  68 50 8d e5  str	r5, [sp, #0x68]
00608708  6c 50 8d e5  str	r5, [sp, #0x6c]
0060870c  70 50 8d e5  str	r5, [sp, #0x70]
00608710  74 50 cd e5  strb	r5, [sp, #0x74]
00608714  75 50 cd e5  strb	r5, [sp, #0x75]
00608718  cd fb ff eb  bl	0x607654 <_ZN6glitch5video12IImageLoader19ITextureDataLoadingC2Ev> @ imm = #-0x10cc
0060871c  20 c0 86 e2  add	r12, r6, #32
00608720  09 10 a0 e1  mov	r1, r9
00608724  04 20 a0 e1  mov	r2, r4
00608728  07 30 a0 e1  mov	r3, r7
0060872c  08 00 a0 e1  mov	r0, r8
00608730  54 c0 8d e5  str	r12, [sp, #0x54]
00608734  00 a0 8d e5  str	r10, [sp]
00608738  c9 fc ff eb  bl	0x607a64 <_ZN6glitch5video12IImageLoader19ITextureDataLoading4loadEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERNS0_12_GLOBAL__N_19SLoadInfoE> @ imm = #-0xcdc
0060873c  08 60 86 e2  add	r6, r6, #8
00608740  00 b0 a0 e1  mov	r11, r0
00608744  08 00 a0 e1  mov	r0, r8
00608748  54 60 8d e5  str	r6, [sp, #0x54]
0060874c  ea fb ff eb  bl	0x6076fc <_ZN6glitch5video12IImageLoader19ITextureDataLoadingD2Ev> @ imm = #-0x1058
00608750  9d ff ff ea  b	0x6085cc <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x1fc> @ imm = #-0x18c
00608754  e8 50 9f e5  ldr	r5, [pc, #0xe8]         @ 0x608844 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x474>
00608758  30 60 8d e2  add	r6, sp, #48
0060875c  06 00 a0 e1  mov	r0, r6
00608760  05 50 8f e0  add	r5, pc, r5
00608764  52 80 cd e5  strb	r8, [sp, #0x52]
00608768  30 80 8d e5  str	r8, [sp, #0x30]
0060876c  34 80 8d e5  str	r8, [sp, #0x34]
00608770  38 80 8d e5  str	r8, [sp, #0x38]
00608774  3c 80 8d e5  str	r8, [sp, #0x3c]
00608778  40 80 8d e5  str	r8, [sp, #0x40]
0060877c  44 80 8d e5  str	r8, [sp, #0x44]
00608780  48 80 8d e5  str	r8, [sp, #0x48]
00608784  4c 80 8d e5  str	r8, [sp, #0x4c]
00608788  50 80 cd e5  strb	r8, [sp, #0x50]
0060878c  51 80 cd e5  strb	r8, [sp, #0x51]
00608790  af fb ff eb  bl	0x607654 <_ZN6glitch5video12IImageLoader19ITextureDataLoadingC2Ev> @ imm = #-0x1144
00608794  38 c0 85 e2  add	r12, r5, #56
00608798  09 10 a0 e1  mov	r1, r9
0060879c  04 20 a0 e1  mov	r2, r4
006087a0  07 30 a0 e1  mov	r3, r7
006087a4  06 00 a0 e1  mov	r0, r6
006087a8  30 c0 8d e5  str	r12, [sp, #0x30]
006087ac  00 a0 8d e5  str	r10, [sp]
006087b0  ab fc ff eb  bl	0x607a64 <_ZN6glitch5video12IImageLoader19ITextureDataLoading4loadEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERNS0_12_GLOBAL__N_19SLoadInfoE> @ imm = #-0xd54
006087b4  08 50 85 e2  add	r5, r5, #8
006087b8  00 b0 a0 e1  mov	r11, r0
006087bc  06 00 a0 e1  mov	r0, r6
006087c0  30 50 8d e5  str	r5, [sp, #0x30]
006087c4  cc fb ff eb  bl	0x6076fc <_ZN6glitch5video12IImageLoader19ITextureDataLoadingD2Ev> @ imm = #-0x10d0
006087c8  7f ff ff ea  b	0x6085cc <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x1fc> @ imm = #-0x204
006087cc  20 10 93 e5  ldr	r1, [r3, #0x20]
006087d0  c5 94 ff eb  bl	0x5edaec <_ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj> @ imm = #-0x1acec
006087d4  00 00 5a e1  cmp	r10, r0
006087d8  25 ff ff 1a  bne	0x608474 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0xa4> @ imm = #-0x36c
006087dc  9e ff ff ea  b	0x60865c <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x28c> @ imm = #-0x188
006087e0  09 00 a0 e1  mov	r0, r9
006087e4  00 30 99 e5  ldr	r3, [r9]
006087e8  0f e0 a0 e1  mov	lr, pc
006087ec  28 f0 93 e5  ldr	pc, [r3, #0x28]
006087f0  50 10 9f e5  ldr	r1, [pc, #0x50]         @ 0x608848 <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x478>
006087f4  00 20 a0 e1  mov	r2, r0
006087f8  03 00 a0 e3  mov	r0, #3
006087fc  01 10 8f e0  add	r1, pc, r1
00608800  0b 0a 00 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x282c
00608804  70 ff ff ea  b	0x6085cc <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x1fc> @ imm = #-0x240
00608808  09 00 a0 e1  mov	r0, r9
0060880c  00 30 99 e5  ldr	r3, [r9]
00608810  0f e0 a0 e1  mov	lr, pc
00608814  28 f0 93 e5  ldr	pc, [r3, #0x28]
00608818  2c 10 9f e5  ldr	r1, [pc, #0x2c]         @ 0x60884c <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x47c>
0060881c  00 20 a0 e1  mov	r2, r0
00608820  03 00 a0 e3  mov	r0, #3
00608824  01 10 8f e0  add	r1, pc, r1
00608828  01 0a 00 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x2804
0060882c  66 ff ff ea  b	0x6085cc <_ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE+0x1fc> @ imm = #-0x268
00608830  78 c6 38 00  .word	0x0038c678
00608834  34 1f 00 00  .word	0x00001f34
00608838  f0 c6 2d 00  .word	0x002dc6f0
0060883c  68 ef 34 00  .word	0x0034ef68
00608840  20 ee 34 00  .word	0x0034ee20
00608844  a8 ed 34 00  .word	0x0034eda8
00608848  0c c4 2d 00  .word	0x002dc40c
0060884c  04 c4 2d 00  .word	0x002dc404

; texture_map: glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)
; VA=0x005fe0d4, size=0x22c, file_offset=0x005fe0d4, SHA-256=ac52c10e043e82d964e28cf6271600220138cb5b1c6905fa30a032be22d3866f
005fe0d4  f0 41 2d e9  push	{r4, r5, r6, r7, r8, lr}
005fe0d8  42 c0 d0 e5  ldrb	r12, [r0, #0x42]
005fe0dc  00 40 a0 e1  mov	r4, r0
005fe0e0  01 70 a0 e1  mov	r7, r1
005fe0e4  00 00 5c e3  cmp	r12, #0
005fe0e8  02 50 a0 e1  mov	r5, r2
005fe0ec  03 60 a0 e1  mov	r6, r3
005fe0f0  38 00 00 1a  bne	0x5fe1d8 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0x104> @ imm = #0xe0
005fe0f4  3f 30 d0 e5  ldrb	r3, [r0, #0x3f]
005fe0f8  08 00 13 e3  tst	r3, #8
005fe0fc  0a 00 00 0a  beq	0x5fe12c <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0x58> @ imm = #0x28
005fe100  03 00 51 e3  cmp	r1, #3
005fe104  2f 00 00 ca  bgt	0x5fe1c8 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0xf4> @ imm = #0xbc
005fe108  01 10 07 e2  and	r1, r7, #1
005fe10c  04 00 a0 e1  mov	r0, r4
005fe110  02 10 81 e3  orr	r1, r1, #2
005fe114  05 20 a0 e1  mov	r2, r5
005fe118  06 30 a0 e1  mov	r3, r6
005fe11c  00 c0 94 e5  ldr	r12, [r4]
005fe120  0f e0 a0 e1  mov	lr, pc
005fe124  14 f0 9c e5  ldr	pc, [r12, #0x14]
005fe128  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
005fe12c  2c 00 90 e5  ldr	r0, [r0, #0x2c]
005fe130  00 00 50 e3  cmp	r0, #0
005fe134  55 00 00 0a  beq	0x5fe290 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0x1bc> @ imm = #0x154
005fe138  00 00 56 e3  cmp	r6, #0
005fe13c  00 00 55 03  cmpeq	r5, #0
005fe140  86 31 85 e1  orr	r3, r5, r6, lsl #3
005fe144  43 30 c4 e5  strb	r3, [r4, #0x43]
005fe148  3f 30 d4 05  ldrbeq	r3, [r4, #0x3f]
005fe14c  87 72 a0 e1  lsl	r7, r7, #5
005fe150  01 70 87 e3  orr	r7, r7, #1
005fe154  40 30 83 03  orreq	r3, r3, #64
005fe158  3f 30 c4 05  strbeq	r3, [r4, #0x3f]
005fe15c  00 00 50 e3  cmp	r0, #0
005fe160  42 70 c4 e5  strb	r7, [r4, #0x42]
005fe164  0e 00 00 0a  beq	0x5fe1a4 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0xd0> @ imm = #0x38
005fe168  3e 20 d4 e5  ldrb	r2, [r4, #0x3e]
005fe16c  b0 c4 d4 e1  ldrh	r12, [r4, #64]
005fe170  30 00 94 e5  ldr	r0, [r4, #0x30]
005fe174  92 65 21 e0  mla	r1, r2, r5, r6
005fe178  01 c0 8c e3  orr	r12, r12, #1
005fe17c  01 30 82 e2  add	r3, r2, #1
005fe180  b0 c4 c4 e1  strh	r12, [r4, #64]
005fe184  a1 22 a0 e1  lsr	r2, r1, #5
005fe188  03 31 80 e0  add	r3, r0, r3, lsl #2
005fe18c  02 01 93 e7  ldr	r0, [r3, r2, lsl #2]
005fe190  1f 10 01 e2  and	r1, r1, #31
005fe194  01 c0 a0 e3  mov	r12, #1
005fe198  1c 11 80 e1  orr	r1, r0, r12, lsl r1
005fe19c  02 11 83 e7  str	r1, [r3, r2, lsl #2]
005fe1a0  2c 00 94 e5  ldr	r0, [r4, #0x2c]
005fe1a4  3f 30 d4 e5  ldrb	r3, [r4, #0x3f]
005fe1a8  02 00 13 e3  tst	r3, #2
005fe1ac  0f 00 00 0a  beq	0x5fe1f0 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0x11c> @ imm = #0x3c
005fe1b0  30 30 94 e5  ldr	r3, [r4, #0x30]
005fe1b4  0c 00 93 e8  ldm	r3, {r2, r3}
005fe1b8  03 30 62 e0  rsb	r3, r2, r3
005fe1bc  93 05 05 e0  mul	r5, r3, r5
005fe1c0  05 00 80 e0  add	r0, r0, r5
005fe1c4  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
005fe1c8  2c 00 90 e5  ldr	r0, [r0, #0x2c]
005fe1cc  00 00 50 e3  cmp	r0, #0
005fe1d0  d8 ff ff 1a  bne	0x5fe138 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0x64> @ imm = #-0xa0
005fe1d4  cb ff ff ea  b	0x5fe108 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0x34> @ imm = #-0xd4
005fe1d8  43 30 d0 e5  ldrb	r3, [r0, #0x43]
005fe1dc  07 20 03 e2  and	r2, r3, #7
005fe1e0  02 00 55 e1  cmp	r5, r2
005fe1e4  09 00 00 0a  beq	0x5fe210 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0x13c> @ imm = #0x24
005fe1e8  00 00 a0 e3  mov	r0, #0
005fe1ec  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
005fe1f0  30 30 94 e5  ldr	r3, [r4, #0x30]
005fe1f4  3e 20 d4 e5  ldrb	r2, [r4, #0x3e]
005fe1f8  02 21 93 e7  ldr	r2, [r3, r2, lsl #2]
005fe1fc  06 31 93 e7  ldr	r3, [r3, r6, lsl #2]
005fe200  7f 20 82 e2  add	r2, r2, #127
005fe204  7f 20 c2 e3  bic	r2, r2, #127
005fe208  92 35 25 e0  mla	r5, r2, r5, r3
005fe20c  eb ff ff ea  b	0x5fe1c0 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0xec> @ imm = #-0x54
005fe210  a3 01 56 e1  cmp	r6, r3, lsr #3
005fe214  f3 ff ff 1a  bne	0x5fe1e8 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0x114> @ imm = #-0x34
005fe218  3f 30 d0 e5  ldrb	r3, [r0, #0x3f]
005fe21c  1f 20 0c e2  and	r2, r12, #31
005fe220  01 20 82 e2  add	r2, r2, #1
005fe224  1f c0 cc e3  bic	r12, r12, #31
005fe228  0c 20 82 e1  orr	r2, r2, r12
005fe22c  20 00 13 e3  tst	r3, #32
005fe230  42 20 c0 e5  strb	r2, [r0, #0x42]
005fe234  11 00 00 1a  bne	0x5fe280 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0x1ac> @ imm = #0x44
005fe238  02 00 13 e3  tst	r3, #2
005fe23c  2c 30 90 e5  ldr	r3, [r0, #0x2c]
005fe240  06 00 00 0a  beq	0x5fe260 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0x18c> @ imm = #0x18
005fe244  30 20 90 e5  ldr	r2, [r0, #0x30]
005fe248  00 10 92 e5  ldr	r1, [r2]
005fe24c  04 00 92 e5  ldr	r0, [r2, #0x4]
005fe250  00 00 61 e0  rsb	r0, r1, r0
005fe254  90 05 00 e0  mul	r0, r0, r5
005fe258  00 00 83 e0  add	r0, r3, r0
005fe25c  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
005fe260  30 20 90 e5  ldr	r2, [r0, #0x30]
005fe264  3e 10 d0 e5  ldrb	r1, [r0, #0x3e]
005fe268  01 01 92 e7  ldr	r0, [r2, r1, lsl #2]
005fe26c  06 21 92 e7  ldr	r2, [r2, r6, lsl #2]
005fe270  7f 00 80 e2  add	r0, r0, #127
005fe274  7f 00 c0 e3  bic	r0, r0, #127
005fe278  95 20 20 e0  mla	r0, r5, r0, r2
005fe27c  f5 ff ff ea  b	0x5fe258 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0x184> @ imm = #-0x2c
005fe280  00 30 90 e5  ldr	r3, [r0]
005fe284  0f e0 a0 e1  mov	lr, pc
005fe288  1c f0 93 e5  ldr	pc, [r3, #0x1c]
005fe28c  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
005fe290  38 20 94 e5  ldr	r2, [r4, #0x38]
005fe294  03 20 02 e2  and	r2, r2, #3
005fe298  02 00 52 e3  cmp	r2, #2
005fe29c  05 20 a0 03  moveq	r2, #5
005fe2a0  00 20 a0 13  movne	r2, #0
005fe2a4  02 00 13 e3  tst	r3, #2
005fe2a8  30 10 94 15  ldrne	r1, [r4, #0x30]
005fe2ac  30 30 94 05  ldreq	r3, [r4, #0x30]
005fe2b0  3e 10 d4 05  ldrbeq	r1, [r4, #0x3e]
005fe2b4  00 30 91 15  ldrne	r3, [r1]
005fe2b8  04 10 91 15  ldrne	r1, [r1, #0x4]
005fe2bc  01 31 93 07  ldreq	r3, [r3, r1, lsl #2]
005fe2c0  01 30 63 10  rsbne	r3, r3, r1
005fe2c4  7f 00 83 e2  add	r0, r3, #127
005fe2c8  7f 00 c0 e3  bic	r0, r0, #127
005fe2cc  90 32 20 e0  mla	r0, r0, r2, r3
005fe2d0  00 10 a0 e3  mov	r1, #0
005fe2d4  b3 d7 fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xca134
005fe2d8  3f 30 d4 e5  ldrb	r3, [r4, #0x3f]
005fe2dc  00 10 a0 e1  mov	r1, r0
005fe2e0  01 20 a0 e3  mov	r2, #1
005fe2e4  04 00 a0 e1  mov	r0, r4
005fe2e8  d3 30 e0 e7  ubfx	r3, r3, #0x1, #0x1
005fe2ec  20 ff ff eb  bl	0x5fdf74 <_ZN6glitch5video8ITexture7setDataEPvbb> @ imm = #-0x380
005fe2f0  2c 00 94 e5  ldr	r0, [r4, #0x2c]
005fe2f4  00 00 50 e3  cmp	r0, #0
005fe2f8  ba ff ff 0a  beq	0x5fe1e8 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0x114> @ imm = #-0x118
005fe2fc  8d ff ff ea  b	0x5fe138 <_ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh+0x64> @ imm = #-0x1cc

; texture_set_data: glitch::video::ITexture::setData(void*, bool, bool)
; VA=0x005fdf74, size=0x160, file_offset=0x005fdf74, SHA-256=468bfa81cdb8773035af3ad1d745c9395aa81d3a5bfd74d94ddbe25850387f42
005fdf74  f0 41 2d e9  push	{r4, r5, r6, r7, r8, lr}
005fdf78  00 40 a0 e1  mov	r4, r0
005fdf7c  2c 00 90 e5  ldr	r0, [r0, #0x2c]
005fdf80  01 50 a0 e1  mov	r5, r1
005fdf84  02 60 a0 e1  mov	r6, r2
005fdf88  00 00 51 e1  cmp	r1, r0
005fdf8c  03 70 a0 e1  mov	r7, r3
005fdf90  3b 00 00 0a  beq	0x5fe084 <_ZN6glitch5video8ITexture7setDataEPvbb+0x110> @ imm = #0xec
005fdf94  00 00 50 e3  cmp	r0, #0
005fdf98  19 00 00 0a  beq	0x5fe004 <_ZN6glitch5video8ITexture7setDataEPvbb+0x90> @ imm = #0x64
005fdf9c  3f 30 d4 e5  ldrb	r3, [r4, #0x3f]
005fdfa0  01 00 13 e3  tst	r3, #1
005fdfa4  15 00 00 1a  bne	0x5fe000 <_ZN6glitch5video8ITexture7setDataEPvbb+0x8c> @ imm = #0x54
005fdfa8  00 00 55 e3  cmp	r5, #0
005fdfac  2c 50 84 e5  str	r5, [r4, #0x2c]
005fdfb0  01 50 a0 13  movne	r5, #1
005fdfb4  17 00 00 0a  beq	0x5fe018 <_ZN6glitch5video8ITexture7setDataEPvbb+0xa4> @ imm = #0x5c
005fdfb8  3e c0 d4 e5  ldrb	r12, [r4, #0x3e]
005fdfbc  00 00 56 e3  cmp	r6, #0
005fdfc0  01 30 83 13  orrne	r3, r3, #1
005fdfc4  fe 30 03 02  andeq	r3, r3, #254
005fdfc8  01 00 5c e3  cmp	r12, #1
005fdfcc  3f 30 c4 e5  strb	r3, [r4, #0x3f]
005fdfd0  23 00 00 9a  bls	0x5fe064 <_ZN6glitch5video8ITexture7setDataEPvbb+0xf0> @ imm = #0x8c
005fdfd4  00 00 57 e3  cmp	r7, #0
005fdfd8  21 00 00 0a  beq	0x5fe064 <_ZN6glitch5video8ITexture7setDataEPvbb+0xf0> @ imm = #0x84
005fdfdc  02 10 03 e2  and	r1, r3, #2
005fdfe0  71 10 ef e6  uxtb	r1, r1
005fdfe4  00 00 51 e3  cmp	r1, #0
005fdfe8  2a 00 00 0a  beq	0x5fe098 <_ZN6glitch5video8ITexture7setDataEPvbb+0x124> @ imm = #0xa8
005fdfec  02 30 83 e3  orr	r3, r3, #2
005fdff0  00 00 55 e3  cmp	r5, #0
005fdff4  3f 30 c4 e5  strb	r3, [r4, #0x3f]
005fdff8  1d 00 00 1a  bne	0x5fe074 <_ZN6glitch5video8ITexture7setDataEPvbb+0x100> @ imm = #0x74
005fdffc  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
005fe000  2c 40 f4 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2eff50
005fe004  00 00 55 e3  cmp	r5, #0
005fe008  2c 50 84 e5  str	r5, [r4, #0x2c]
005fe00c  3f 30 d4 e5  ldrb	r3, [r4, #0x3f]
005fe010  01 50 a0 13  movne	r5, #1
005fe014  e7 ff ff 1a  bne	0x5fdfb8 <_ZN6glitch5video8ITexture7setDataEPvbb+0x44> @ imm = #-0x64
005fe018  01 30 83 e3  orr	r3, r3, #1
005fe01c  08 00 13 e3  tst	r3, #8
005fe020  3f 30 c4 e5  strb	r3, [r4, #0x3f]
005fe024  b0 34 d4 e1  ldrh	r3, [r4, #64]
005fe028  3e 20 d4 e5  ldrb	r2, [r4, #0x3e]
005fe02c  01 30 c3 13  bicne	r3, r3, #1
005fe030  03 38 a0 11  lslne	r3, r3, #16
005fe034  23 38 a0 11  lsrne	r3, r3, #16
005fe038  b0 34 c4 11  strhne	r3, [r4, #64]
005fe03c  02 30 c3 e3  bic	r3, r3, #2
005fe040  01 00 52 e3  cmp	r2, #1
005fe044  b0 34 c4 e1  strh	r3, [r4, #64]
005fe048  1b 00 00 9a  bls	0x5fe0bc <_ZN6glitch5video8ITexture7setDataEPvbb+0x148> @ imm = #0x6c
005fe04c  00 00 57 e3  cmp	r7, #0
005fe050  19 00 00 0a  beq	0x5fe0bc <_ZN6glitch5video8ITexture7setDataEPvbb+0x148> @ imm = #0x64
005fe054  3f 30 d4 e5  ldrb	r3, [r4, #0x3f]
005fe058  02 30 83 e3  orr	r3, r3, #2
005fe05c  3f 30 c4 e5  strb	r3, [r4, #0x3f]
005fe060  f0 81 bd e8  pop	{r4, r5, r6, r7, r8, pc}
005fe064  02 30 c3 e3  bic	r3, r3, #2
005fe068  00 00 55 e3  cmp	r5, #0
005fe06c  3f 30 c4 e5  strb	r3, [r4, #0x3f]
005fe070  e1 ff ff 0a  beq	0x5fdffc <_ZN6glitch5video8ITexture7setDataEPvbb+0x88> @ imm = #-0x7c
005fe074  04 00 a0 e1  mov	r0, r4
005fe078  00 10 a0 e3  mov	r1, #0
005fe07c  f0 41 bd e8  pop	{r4, r5, r6, r7, r8, lr}
005fe080  98 fe ff ea  b	0x5fdae8 <_ZNK6glitch5video8ITexture12setDataDirtyEb> @ imm = #-0x5a0
005fe084  00 00 51 e3  cmp	r1, #0
005fe088  0f 00 00 0a  beq	0x5fe0cc <_ZN6glitch5video8ITexture7setDataEPvbb+0x158> @ imm = #0x3c
005fe08c  3f 30 d4 e5  ldrb	r3, [r4, #0x3f]
005fe090  00 50 a0 e3  mov	r5, #0
005fe094  c7 ff ff ea  b	0x5fdfb8 <_ZN6glitch5video8ITexture7setDataEPvbb+0x44> @ imm = #-0xe4
005fe098  30 30 94 e5  ldr	r3, [r4, #0x30]
005fe09c  1f 20 8c e2  add	r2, r12, #31
005fe0a0  c2 22 a0 e1  asr	r2, r2, #5
005fe0a4  01 00 8c e2  add	r0, r12, #1
005fe0a8  00 01 83 e0  add	r0, r3, r0, lsl #2
005fe0ac  02 21 a0 e1  lsl	r2, r2, #2
005fe0b0  ea 40 f4 eb  bl	0x30e460 <memset@plt>   @ imm = #-0x2efc58
005fe0b4  3f 30 d4 e5  ldrb	r3, [r4, #0x3f]
005fe0b8  cb ff ff ea  b	0x5fdfec <_ZN6glitch5video8ITexture7setDataEPvbb+0x78> @ imm = #-0xd4
005fe0bc  3f 30 d4 e5  ldrb	r3, [r4, #0x3f]
005fe0c0  02 30 c3 e3  bic	r3, r3, #2
005fe0c4  3f 30 c4 e5  strb	r3, [r4, #0x3f]
005fe0c8  cb ff ff ea  b	0x5fdffc <_ZN6glitch5video8ITexture7setDataEPvbb+0x88> @ imm = #-0xd4
005fe0cc  3f 30 d4 e5  ldrb	r3, [r4, #0x3f]
005fe0d0  d0 ff ff ea  b	0x5fe018 <_ZN6glitch5video8ITexture7setDataEPvbb+0xa4> @ imm = #-0xc0

; texture_unmap: glitch::video::ITexture::unmap() const
; VA=0x005fdc0c, size=0x78, file_offset=0x005fdc0c, SHA-256=0a9855ff43450e273ae1c701067b4a9ab1917327c5f93669ac37f415ececf553
005fdc0c  42 30 d0 e5  ldrb	r3, [r0, #0x42]
005fdc10  10 40 2d e9  push	{r4, lr}
005fdc14  1f 20 03 e2  and	r2, r3, #31
005fdc18  01 00 52 e3  cmp	r2, #1
005fdc1c  00 40 a0 e1  mov	r4, r0
005fdc20  04 00 00 9a  bls	0x5fdc38 <_ZNK6glitch5video8ITexture5unmapEv+0x2c> @ imm = #0x10
005fdc24  01 20 42 e2  sub	r2, r2, #1
005fdc28  1f 30 c3 e3  bic	r3, r3, #31
005fdc2c  03 30 82 e1  orr	r3, r2, r3
005fdc30  42 30 c0 e5  strb	r3, [r0, #0x42]
005fdc34  10 80 bd e8  pop	{r4, pc}
005fdc38  3f 30 d0 e5  ldrb	r3, [r0, #0x3f]
005fdc3c  20 00 13 e3  tst	r3, #32
005fdc40  05 00 00 1a  bne	0x5fdc5c <_ZNK6glitch5video8ITexture5unmapEv+0x50> @ imm = #0x14
005fdc44  00 20 a0 e3  mov	r2, #0
005fdc48  40 30 c3 e3  bic	r3, r3, #64
005fdc4c  3f 30 c4 e5  strb	r3, [r4, #0x3f]
005fdc50  42 20 c4 e5  strb	r2, [r4, #0x42]
005fdc54  43 20 c4 e5  strb	r2, [r4, #0x43]
005fdc58  10 80 bd e8  pop	{r4, pc}
005fdc5c  00 30 90 e5  ldr	r3, [r0]
005fdc60  0f e0 a0 e1  mov	lr, pc
005fdc64  18 f0 93 e5  ldr	pc, [r3, #0x18]
005fdc68  3f 30 d4 e5  ldrb	r3, [r4, #0x3f]
005fdc6c  00 20 a0 e3  mov	r2, #0
005fdc70  42 20 c4 e5  strb	r2, [r4, #0x42]
005fdc74  40 30 c3 e3  bic	r3, r3, #64
005fdc78  3f 30 c4 e5  strb	r3, [r4, #0x3f]
005fdc7c  43 20 c4 e5  strb	r2, [r4, #0x43]
005fdc80  10 80 bd e8  pop	{r4, pc}

; gl_texture_factory: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::createTextureImpl(char const*, glitch::video::STextureDesc const&)
; VA=0x005b5f6c, size=0x408, file_offset=0x005b5f6c, SHA-256=34ada247cda6dda00ce33a20d1d0df65b708a6c2d404fb11d24b41b40983321a
005b5f6c  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
005b5f70  3c d0 4d e2  sub	sp, sp, #60
005b5f74  18 a0 8d e2  add	r10, sp, #24
005b5f78  03 40 a0 e1  mov	r4, r3
005b5f7c  0a c0 a0 e1  mov	r12, r10
005b5f80  03 e0 a0 e1  mov	lr, r3
005b5f84  00 50 a0 e1  mov	r5, r0
005b5f88  01 60 a0 e1  mov	r6, r1
005b5f8c  02 80 a0 e1  mov	r8, r2
005b5f90  0f 00 b4 e8  ldm	r4!, {r0, r1, r2, r3}
005b5f94  0f 00 ac e8  stm	r12!, {r0, r1, r2, r3}
005b5f98  0f 00 94 e8  ldm	r4, {r0, r1, r2, r3}
005b5f9c  07 00 ac e8  stm	r12!, {r0, r1, r2}
005b5fa0  28 70 9d e5  ldr	r7, [sp, #0x28]
005b5fa4  80 43 9f e5  ldr	r4, [pc, #0x380]        @ 0x5b632c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3c0>
005b5fa8  b2 30 cc e0  strh	r3, [r12], #2
005b5fac  01 20 47 e2  sub	r2, r7, #1
005b5fb0  07 00 12 e1  tst	r2, r7
005b5fb4  23 38 a0 e1  lsr	r3, r3, #16
005b5fb8  00 30 cc e5  strb	r3, [r12]
005b5fbc  04 40 8f e0  add	r4, pc, r4
005b5fc0  03 00 00 1a  bne	0x5b5fd4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x68> @ imm = #0xc
005b5fc4  2c 30 9d e5  ldr	r3, [sp, #0x2c]
005b5fc8  01 20 43 e2  sub	r2, r3, #1
005b5fcc  03 00 12 e1  tst	r2, r3
005b5fd0  7b 00 00 0a  beq	0x5b61c4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x258> @ imm = #0x1ec
005b5fd4  00 90 a0 e3  mov	r9, #0
005b5fd8  ec 37 96 e5  ldr	r3, [r6, #0x7ec]
005b5fdc  08 00 13 e3  tst	r3, #8
005b5fe0  1a 00 00 0a  beq	0x5b6050 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0xe4> @ imm = #0x68
005b5fe4  18 b0 9d e5  ldr	r11, [sp, #0x18]
005b5fe8  00 00 5b e3  cmp	r11, #0
005b5fec  17 00 00 0a  beq	0x5b6050 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0xe4> @ imm = #0x5c
005b5ff0  03 00 5b e3  cmp	r11, #3
005b5ff4  15 00 00 0a  beq	0x5b6050 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0xe4> @ imm = #0x54
005b5ff8  00 00 59 e3  cmp	r9, #0
005b5ffc  13 00 00 1a  bne	0x5b6050 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0xe4> @ imm = #0x4c
005b6000  7b 30 ff e6  uxth	r3, r11
005b6004  ff 00 53 e3  cmp	r3, #255
005b6008  b2 00 00 0a  beq	0x5b62d8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x36c> @ imm = #0x2c8
005b600c  09 00 a0 e1  mov	r0, r9
005b6010  94 1e 01 eb  bl	0x5fda68 <_ZN6glitch5video18getStringsInternalEPNS0_14E_TEXTURE_TYPEE> @ imm = #0x47a50
005b6014  28 70 9d e5  ldr	r7, [sp, #0x28]
005b6018  0b 31 90 e7  ldr	r3, [r0, r11, lsl #2]
005b601c  2c c0 9d e5  ldr	r12, [sp, #0x2c]
005b6020  08 13 9f e5  ldr	r1, [pc, #0x308]        @ 0x5b6330 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3c4>
005b6024  08 20 a0 e1  mov	r2, r8
005b6028  04 c0 8d e5  str	r12, [sp, #0x4]
005b602c  30 c0 9d e5  ldr	r12, [sp, #0x30]
005b6030  01 10 8f e0  add	r1, pc, r1
005b6034  03 00 a0 e3  mov	r0, #3
005b6038  00 70 8d e5  str	r7, [sp]
005b603c  08 c0 8d e5  str	r12, [sp, #0x8]
005b6040  fb 53 01 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x54fec
005b6044  00 30 a0 e3  mov	r3, #0
005b6048  00 30 85 e5  str	r3, [r5]
005b604c  46 00 00 ea  b	0x5b616c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x200> @ imm = #0x118
005b6050  1c 70 9d e5  ldr	r7, [sp, #0x1c]
005b6054  d8 22 9f e5  ldr	r2, [pc, #0x2d8]        @ 0x5b6334 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3c8>
005b6058  28 30 a0 e3  mov	r3, #40
005b605c  93 07 03 e0  mul	r3, r3, r7
005b6060  02 20 94 e7  ldr	r2, [r4, r2]
005b6064  03 30 92 e7  ldr	r3, [r2, r3]
005b6068  30 00 13 e3  tst	r3, #48
005b606c  41 00 00 1a  bne	0x5b6178 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x20c> @ imm = #0x104
005b6070  35 20 dd e5  ldrb	r2, [sp, #0x35]
005b6074  00 00 52 e3  cmp	r2, #0
005b6078  6f 00 00 0a  beq	0x5b623c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x2d0> @ imm = #0x1bc
005b607c  14 30 a0 e3  mov	r3, #20
005b6080  93 67 27 e0  mla	r7, r3, r7, r6
005b6084  4a 7e 87 e2  add	r7, r7, #1184
005b6088  08 70 87 e2  add	r7, r7, #8
005b608c  b6 b0 d7 e1  ldrh	r11, [r7, #6]
005b6090  04 70 9e e5  ldr	r7, [lr, #0x4]
005b6094  1c b0 8d e5  str	r11, [sp, #0x1c]
005b6098  07 00 5b e1  cmp	r11, r7
005b609c  1b 00 00 0a  beq	0x5b6110 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x1a4> @ imm = #0x6c
005b60a0  27 00 5b e3  cmp	r11, #39
005b60a4  50 00 00 0a  beq	0x5b61ec <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x280> @ imm = #0x140
005b60a8  77 30 ff e6  uxth	r3, r7
005b60ac  27 00 53 e3  cmp	r3, #39
005b60b0  75 00 00 0a  beq	0x5b628c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x320> @ imm = #0x1d4
005b60b4  00 00 a0 e3  mov	r0, #0
005b60b8  21 de 00 eb  bl	0x5ed944 <_ZN6glitch5video18getStringsInternalEPNS0_14E_PIXEL_FORMATE> @ imm = #0x37884
005b60bc  35 20 dd e5  ldrb	r2, [sp, #0x35]
005b60c0  07 31 90 e7  ldr	r3, [r0, r7, lsl #2]
005b60c4  1c b0 9d e5  ldr	r11, [sp, #0x1c]
005b60c8  00 00 52 e3  cmp	r2, #0
005b60cc  60 00 00 1a  bne	0x5b6254 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x2e8> @ imm = #0x180
005b60d0  60 72 9f e5  ldr	r7, [pc, #0x260]        @ 0x5b6338 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3cc>
005b60d4  07 70 8f e0  add	r7, pc, r7
005b60d8  7b 20 ff e6  uxth	r2, r11
005b60dc  27 00 52 e3  cmp	r2, #39
005b60e0  6c 00 00 0a  beq	0x5b6298 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x32c> @ imm = #0x1b0
005b60e4  00 00 a0 e3  mov	r0, #0
005b60e8  14 30 8d e5  str	r3, [sp, #0x14]
005b60ec  14 de 00 eb  bl	0x5ed944 <_ZN6glitch5video18getStringsInternalEPNS0_14E_PIXEL_FORMATE> @ imm = #0x37850
005b60f0  14 30 9d e5  ldr	r3, [sp, #0x14]
005b60f4  0b c1 90 e7  ldr	r12, [r0, r11, lsl #2]
005b60f8  3c 12 9f e5  ldr	r1, [pc, #0x23c]        @ 0x5b633c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3d0>
005b60fc  02 00 a0 e3  mov	r0, #2
005b6100  08 20 a0 e1  mov	r2, r8
005b6104  01 10 8f e0  add	r1, pc, r1
005b6108  80 10 8d e8  stm	sp, {r7, r12}
005b610c  c8 53 01 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x54f20
005b6110  20 70 9d e5  ldr	r7, [sp, #0x20]
005b6114  02 00 57 e3  cmp	r7, #2
005b6118  50 00 00 0a  beq	0x5b6260 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x2f4> @ imm = #0x140
005b611c  03 00 57 e3  cmp	r7, #3
005b6120  3f 00 00 0a  beq	0x5b6224 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x2b8> @ imm = #0xfc
005b6124  00 00 57 e3  cmp	r7, #0
005b6128  5d 00 00 1a  bne	0x5b62a4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x338> @ imm = #0x174
005b612c  00 10 a0 e3  mov	r1, #0
005b6130  5c 00 a0 e3  mov	r0, #92
005b6134  1c f8 fd eb  bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x81f90
005b6138  0a 30 a0 e1  mov	r3, r10
005b613c  08 10 a0 e1  mov	r1, r8
005b6140  06 20 a0 e1  mov	r2, r6
005b6144  00 70 a0 e1  mov	r7, r0
005b6148  62 9f 04 eb  bl	0x6dded8 <_ZN6glitch5video19CCommonGLDriverBase12CTextureBaseC2EPKcPS1_RKNS0_12STextureDescE> @ imm = #0x127d88
005b614c  ec 31 9f e5  ldr	r3, [pc, #0x1ec]        @ 0x5b6340 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3d4>
005b6150  03 30 94 e7  ldr	r3, [r4, r3]
005b6154  08 30 83 e2  add	r3, r3, #8
005b6158  00 30 87 e5  str	r3, [r7]
005b615c  00 70 85 e5  str	r7, [r5]
005b6160  04 30 97 e5  ldr	r3, [r7, #0x4]
005b6164  01 30 83 e2  add	r3, r3, #1
005b6168  04 30 87 e5  str	r3, [r7, #0x4]
005b616c  05 00 a0 e1  mov	r0, r5
005b6170  3c d0 8d e2  add	sp, sp, #60
005b6174  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
005b6178  18 30 9d e5  ldr	r3, [sp, #0x18]
005b617c  00 00 53 e3  cmp	r3, #0
005b6180  ba ff ff 0a  beq	0x5b6070 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x104> @ imm = #-0x118
005b6184  02 00 53 e3  cmp	r3, #2
005b6188  b8 ff ff 0a  beq	0x5b6070 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x104> @ imm = #-0x120
005b618c  77 30 ff e6  uxth	r3, r7
005b6190  27 00 53 e3  cmp	r3, #39
005b6194  61 00 00 0a  beq	0x5b6320 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3b4> @ imm = #0x184
005b6198  00 00 a0 e3  mov	r0, #0
005b619c  e8 dd 00 eb  bl	0x5ed944 <_ZN6glitch5video18getStringsInternalEPNS0_14E_PIXEL_FORMATE> @ imm = #0x377a0
005b61a0  07 31 90 e7  ldr	r3, [r0, r7, lsl #2]
005b61a4  98 11 9f e5  ldr	r1, [pc, #0x198]        @ 0x5b6344 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3d8>
005b61a8  08 20 a0 e1  mov	r2, r8
005b61ac  03 00 a0 e3  mov	r0, #3
005b61b0  01 10 8f e0  add	r1, pc, r1
005b61b4  9e 53 01 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x54e78
005b61b8  00 30 a0 e3  mov	r3, #0
005b61bc  00 30 85 e5  str	r3, [r5]
005b61c0  e9 ff ff ea  b	0x5b616c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x200> @ imm = #-0x5c
005b61c4  18 30 9d e5  ldr	r3, [sp, #0x18]
005b61c8  01 00 53 e3  cmp	r3, #1
005b61cc  01 90 a0 13  movne	r9, #1
005b61d0  80 ff ff 1a  bne	0x5b5fd8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x6c> @ imm = #-0x200
005b61d4  30 30 9d e5  ldr	r3, [sp, #0x30]
005b61d8  01 20 43 e2  sub	r2, r3, #1
005b61dc  03 00 12 e1  tst	r2, r3
005b61e0  00 90 a0 13  movne	r9, #0
005b61e4  01 90 a0 03  moveq	r9, #1
005b61e8  7a ff ff ea  b	0x5b5fd8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x6c> @ imm = #-0x218
005b61ec  77 30 ff e6  uxth	r3, r7
005b61f0  27 00 53 e3  cmp	r3, #39
005b61f4  3a 00 00 0a  beq	0x5b62e4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x378> @ imm = #0xe8
005b61f8  00 00 a0 e3  mov	r0, #0
005b61fc  d0 dd 00 eb  bl	0x5ed944 <_ZN6glitch5video18getStringsInternalEPNS0_14E_PIXEL_FORMATE> @ imm = #0x37740
005b6200  07 31 90 e7  ldr	r3, [r0, r7, lsl #2]
005b6204  3c 11 9f e5  ldr	r1, [pc, #0x13c]        @ 0x5b6348 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3dc>
005b6208  08 20 a0 e1  mov	r2, r8
005b620c  03 00 a0 e3  mov	r0, #3
005b6210  01 10 8f e0  add	r1, pc, r1
005b6214  86 53 01 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x54e18
005b6218  00 30 a0 e3  mov	r3, #0
005b621c  00 30 85 e5  str	r3, [r5]
005b6220  d1 ff ff ea  b	0x5b616c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x200> @ imm = #-0xbc
005b6224  00 00 59 e3  cmp	r9, #0
005b6228  30 00 00 0a  beq	0x5b62f0 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x384> @ imm = #0xc0
005b622c  00 00 a0 e3  mov	r0, #0
005b6230  10 1e 01 eb  bl	0x5fda78 <_ZN6glitch5video18getStringsInternalEPNS0_16E_TEXTURE_LAYOUTE> @ imm = #0x47840
005b6234  07 31 90 e7  ldr	r3, [r0, r7, lsl #2]
005b6238  1e 00 00 ea  b	0x5b62b8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x34c> @ imm = #0x78
005b623c  14 30 a0 e3  mov	r3, #20
005b6240  93 67 27 e0  mla	r7, r3, r7, r6
005b6244  4a 7e 87 e2  add	r7, r7, #1184
005b6248  08 70 87 e2  add	r7, r7, #8
005b624c  b4 b0 d7 e1  ldrh	r11, [r7, #4]
005b6250  8e ff ff ea  b	0x5b6090 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x124> @ imm = #-0x1c8
005b6254  f0 70 9f e5  ldr	r7, [pc, #0xf0]         @ 0x5b634c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3e0>
005b6258  07 70 8f e0  add	r7, pc, r7
005b625c  9d ff ff ea  b	0x5b60d8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x16c> @ imm = #-0x18c
005b6260  00 00 a0 e3  mov	r0, #0
005b6264  03 1e 01 eb  bl	0x5fda78 <_ZN6glitch5video18getStringsInternalEPNS0_16E_TEXTURE_LAYOUTE> @ imm = #0x4780c
005b6268  e0 10 9f e5  ldr	r1, [pc, #0xe0]         @ 0x5b6350 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3e4>
005b626c  08 30 90 e5  ldr	r3, [r0, #0x8]
005b6270  08 20 a0 e1  mov	r2, r8
005b6274  01 10 8f e0  add	r1, pc, r1
005b6278  03 00 a0 e3  mov	r0, #3
005b627c  6c 53 01 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x54db0
005b6280  00 30 a0 e3  mov	r3, #0
005b6284  00 30 85 e5  str	r3, [r5]
005b6288  b7 ff ff ea  b	0x5b616c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x200> @ imm = #-0x124
005b628c  c0 30 9f e5  ldr	r3, [pc, #0xc0]         @ 0x5b6354 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3e8>
005b6290  03 30 8f e0  add	r3, pc, r3
005b6294  8b ff ff ea  b	0x5b60c8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x15c> @ imm = #-0x1d4
005b6298  b8 c0 9f e5  ldr	r12, [pc, #0xb8]        @ 0x5b6358 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3ec>
005b629c  0c c0 8f e0  add	r12, pc, r12
005b62a0  94 ff ff ea  b	0x5b60f8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x18c> @ imm = #-0x1b0
005b62a4  77 30 ff e6  uxth	r3, r7
005b62a8  ff 00 53 e3  cmp	r3, #255
005b62ac  de ff ff 1a  bne	0x5b622c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x2c0> @ imm = #-0x88
005b62b0  a4 30 9f e5  ldr	r3, [pc, #0xa4]         @ 0x5b635c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3f0>
005b62b4  03 30 8f e0  add	r3, pc, r3
005b62b8  a0 10 9f e5  ldr	r1, [pc, #0xa0]         @ 0x5b6360 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3f4>
005b62bc  02 00 a0 e3  mov	r0, #2
005b62c0  08 20 a0 e1  mov	r2, r8
005b62c4  01 10 8f e0  add	r1, pc, r1
005b62c8  59 53 01 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x54d64
005b62cc  00 30 a0 e3  mov	r3, #0
005b62d0  20 30 8d e5  str	r3, [sp, #0x20]
005b62d4  94 ff ff ea  b	0x5b612c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x1c0> @ imm = #-0x1b0
005b62d8  84 30 9f e5  ldr	r3, [pc, #0x84]         @ 0x5b6364 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3f8>
005b62dc  03 30 8f e0  add	r3, pc, r3
005b62e0  4d ff ff ea  b	0x5b601c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0xb0> @ imm = #-0x2cc
005b62e4  7c 30 9f e5  ldr	r3, [pc, #0x7c]         @ 0x5b6368 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x3fc>
005b62e8  03 30 8f e0  add	r3, pc, r3
005b62ec  c4 ff ff ea  b	0x5b6204 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x298> @ imm = #-0xf0
005b62f0  2c c0 9d e5  ldr	r12, [sp, #0x2c]
005b62f4  70 10 9f e5  ldr	r1, [pc, #0x70]         @ 0x5b636c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x400>
005b62f8  07 00 a0 e1  mov	r0, r7
005b62fc  00 c0 8d e5  str	r12, [sp]
005b6300  30 c0 9d e5  ldr	r12, [sp, #0x30]
005b6304  01 10 8f e0  add	r1, pc, r1
005b6308  08 20 a0 e1  mov	r2, r8
005b630c  28 30 9d e5  ldr	r3, [sp, #0x28]
005b6310  04 c0 8d e5  str	r12, [sp, #0x4]
005b6314  46 53 01 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x54d18
005b6318  00 90 85 e5  str	r9, [r5]
005b631c  92 ff ff ea  b	0x5b616c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x200> @ imm = #-0x1b8
005b6320  48 30 9f e5  ldr	r3, [pc, #0x48]         @ 0x5b6370 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x404>
005b6324  03 30 8f e0  add	r3, pc, r3
005b6328  9d ff ff ea  b	0x5b61a4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE+0x238> @ imm = #-0x18c
005b632c  d4 ea 3d 00  .word	0x003dead4
005b6330  c0 a6 32 00  .word	0x0032a6c0
005b6334  34 1f 00 00  .word	0x00001f34
005b6338  44 6c 33 00  .word	0x00336c44
005b633c  a4 a6 32 00  .word	0x0032a6a4
005b6340  68 09 00 00  .word	0x00000968
005b6344  78 a5 32 00  .word	0x0032a578
005b6348  58 a5 32 00  .word	0x0032a558
005b634c  40 a5 32 00  .word	0x0032a540
005b6350  7c a5 32 00  .word	0x0032a57c
005b6354  d0 01 31 00  .word	0x003101d0
005b6358  c4 01 31 00  .word	0x003101c4
005b635c  ac 01 31 00  .word	0x003101ac
005b6360  a4 a5 32 00  .word	0x0032a5a4
005b6364  84 01 31 00  .word	0x00310184
005b6368  78 01 31 00  .word	0x00310178
005b636c  14 a5 32 00  .word	0x0032a514
005b6370  3c 01 31 00  .word	0x0031013c

; gl_texture_bind: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)
; VA=0x005b5610, size=0x300, file_offset=0x005b5610, SHA-256=f686f404818da4866c94754a34882a1c5eb299e3f03959314317261ea7b496f0
005b5610  f0 47 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, lr}
005b5614  54 30 90 e5  ldr	r3, [r0, #0x54]
005b5618  34 40 90 e5  ldr	r4, [r0, #0x34]
005b561c  38 70 90 e5  ldr	r7, [r0, #0x38]
005b5620  d8 62 9f e5  ldr	r6, [pc, #0x2d8]        @ 0x5b5900 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x2f0>
005b5624  00 00 53 e3  cmp	r3, #0
005b5628  03 70 07 e2  and	r7, r7, #3
005b562c  42 3e 84 e2  add	r3, r4, #1056
005b5630  00 50 a0 e1  mov	r5, r0
005b5634  87 72 83 e0  add	r7, r3, r7, lsl #5
005b5638  06 60 8f e0  add	r6, pc, r6
005b563c  01 80 a0 e1  mov	r8, r1
005b5640  35 00 00 0a  beq	0x5b571c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x10c> @ imm = #0xd4
005b5644  68 32 94 e5  ldr	r3, [r4, #0x268]
005b5648  03 21 97 e7  ldr	r2, [r7, r3, lsl #2]
005b564c  00 00 52 e1  cmp	r2, r0
005b5650  13 00 00 0a  beq	0x5b56a4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x94> @ imm = #0x4c
005b5654  4c 60 94 e5  ldr	r6, [r4, #0x4c]
005b5658  01 60 46 e2  sub	r6, r6, #1
005b565c  06 00 53 e1  cmp	r3, r6
005b5660  03 00 00 0a  beq	0x5b5674 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x64> @ imm = #0xc
005b5664  21 0b 86 e2  add	r0, r6, #33792
005b5668  c0 00 80 e2  add	r0, r0, #192
005b566c  dc 62 f5 eb  bl	0x30e1e4 <glActiveTexture@plt> @ imm = #-0x2a7490
005b5670  68 62 84 e5  str	r6, [r4, #0x268]
005b5674  06 31 97 e7  ldr	r3, [r7, r6, lsl #2]
005b5678  03 00 55 e1  cmp	r5, r3
005b567c  08 00 00 0a  beq	0x5b56a4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x94> @ imm = #0x20
005b5680  7c 32 9f e5  ldr	r3, [pc, #0x27c]        @ 0x5b5904 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x2f4>
005b5684  38 20 95 e5  ldr	r2, [r5, #0x38]
005b5688  54 10 95 e5  ldr	r1, [r5, #0x54]
005b568c  03 30 8f e0  add	r3, pc, r3
005b5690  a4 30 83 e2  add	r3, r3, #164
005b5694  03 20 02 e2  and	r2, r2, #3
005b5698  02 01 93 e7  ldr	r0, [r3, r2, lsl #2]
005b569c  47 64 f5 eb  bl	0x30e7c0 <glBindTexture@plt> @ imm = #-0x2a6ee4
005b56a0  06 51 87 e7  str	r5, [r7, r6, lsl #2]
005b56a4  58 10 d5 e5  ldrb	r1, [r5, #0x58]
005b56a8  00 00 51 e3  cmp	r1, #0
005b56ac  5d 00 00 1a  bne	0x5b5828 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x218> @ imm = #0x174
005b56b0  b0 44 d5 e1  ldrh	r4, [r5, #64]
005b56b4  02 40 c4 e3  bic	r4, r4, #2
005b56b8  84 49 a0 e1  lsl	r4, r4, #19
005b56bc  a4 49 a0 e1  lsr	r4, r4, #19
005b56c0  00 00 54 e3  cmp	r4, #0
005b56c4  5c 00 00 1a  bne	0x5b583c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x22c> @ imm = #0x170
005b56c8  3f 30 d5 e5  ldrb	r3, [r5, #0x3f]
005b56cc  10 10 03 e2  and	r1, r3, #16
005b56d0  71 10 ef e6  uxtb	r1, r1
005b56d4  00 00 51 e3  cmp	r1, #0
005b56d8  04 00 00 0a  beq	0x5b56f0 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0xe0> @ imm = #0x10
005b56dc  54 30 95 e5  ldr	r3, [r5, #0x54]
005b56e0  00 00 53 e3  cmp	r3, #0
005b56e4  5e 00 00 1a  bne	0x5b5864 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x254> @ imm = #0x178
005b56e8  04 00 a0 e1  mov	r0, r4
005b56ec  f0 87 bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, pc}
005b56f0  00 00 58 e3  cmp	r8, #0
005b56f4  fb ff ff 0a  beq	0x5b56e8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0xd8> @ imm = #-0x14
005b56f8  2c 20 95 e5  ldr	r2, [r5, #0x2c]
005b56fc  00 00 52 e3  cmp	r2, #0
005b5700  f8 ff ff 0a  beq	0x5b56e8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0xd8> @ imm = #-0x20
005b5704  05 00 a0 e1  mov	r0, r5
005b5708  d3 30 e0 e7  ubfx	r3, r3, #0x1, #0x1
005b570c  01 20 a0 e3  mov	r2, #1
005b5710  17 22 01 eb  bl	0x5fdf74 <_ZN6glitch5video8ITexture7setDataEPvbb> @ imm = #0x4885c
005b5714  04 00 a0 e1  mov	r0, r4
005b5718  f0 87 bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, pc}
005b571c  3f 30 d0 e5  ldrb	r3, [r0, #0x3f]
005b5720  54 10 85 e2  add	r1, r5, #84
005b5724  01 00 a0 e3  mov	r0, #1
005b5728  10 30 c3 e3  bic	r3, r3, #16
005b572c  3f 30 c5 e5  strb	r3, [r5, #0x3f]
005b5730  7f 64 f5 eb  bl	0x30e934 <glGenTextures@plt> @ imm = #-0x2a6e04
005b5734  54 10 95 e5  ldr	r1, [r5, #0x54]
005b5738  00 00 51 e3  cmp	r1, #0
005b573c  43 00 00 0a  beq	0x5b5850 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x240> @ imm = #0x10c
005b5740  34 a0 95 e5  ldr	r10, [r5, #0x34]
005b5744  68 32 9a e5  ldr	r3, [r10, #0x268]
005b5748  03 21 97 e7  ldr	r2, [r7, r3, lsl #2]
005b574c  05 00 52 e1  cmp	r2, r5
005b5750  09 00 00 0a  beq	0x5b577c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x16c> @ imm = #0x24
005b5754  4c 40 9a e5  ldr	r4, [r10, #0x4c]
005b5758  01 40 44 e2  sub	r4, r4, #1
005b575c  04 00 53 e1  cmp	r3, r4
005b5760  03 00 00 0a  beq	0x5b5774 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x164> @ imm = #0xc
005b5764  21 0b 84 e2  add	r0, r4, #33792
005b5768  c0 00 80 e2  add	r0, r0, #192
005b576c  9c 62 f5 eb  bl	0x30e1e4 <glActiveTexture@plt> @ imm = #-0x2a7590
005b5770  68 42 8a e5  str	r4, [r10, #0x268]
005b5774  04 51 87 e7  str	r5, [r7, r4, lsl #2]
005b5778  54 10 95 e5  ldr	r1, [r5, #0x54]
005b577c  84 31 9f e5  ldr	r3, [pc, #0x184]        @ 0x5b5908 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x2f8>
005b5780  38 20 95 e5  ldr	r2, [r5, #0x38]
005b5784  03 30 8f e0  add	r3, pc, r3
005b5788  a4 30 83 e2  add	r3, r3, #164
005b578c  03 20 02 e2  and	r2, r2, #3
005b5790  02 01 93 e7  ldr	r0, [r3, r2, lsl #2]
005b5794  09 64 f5 eb  bl	0x30e7c0 <glBindTexture@plt> @ imm = #-0x2a6fdc
005b5798  3e 30 d5 e5  ldrb	r3, [r5, #0x3e]
005b579c  38 20 95 e5  ldr	r2, [r5, #0x38]
005b57a0  01 00 53 e3  cmp	r3, #1
005b57a4  1c 00 00 9a  bls	0x5b581c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x20c> @ imm = #0x70
005b57a8  3f 30 d5 e5  ldrb	r3, [r5, #0x3f]
005b57ac  02 00 13 e3  tst	r3, #2
005b57b0  03 10 a0 e1  mov	r1, r3
005b57b4  33 00 00 1a  bne	0x5b5888 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x278> @ imm = #0xcc
005b57b8  52 66 e2 e7  ubfx	r6, r2, #0xc, #0x3
005b57bc  01 00 56 e3  cmp	r6, #1
005b57c0  39 00 00 da  ble	0x5b58ac <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x29c> @ imm = #0xe4
005b57c4  08 30 83 e3  orr	r3, r3, #8
005b57c8  3f 30 c5 e5  strb	r3, [r5, #0x3f]
005b57cc  05 00 a0 e1  mov	r0, r5
005b57d0  01 10 a0 e3  mov	r1, #1
005b57d4  1c eb ff eb  bl	0x5b044c <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture6updateEb> @ imm = #-0x5390
005b57d8  02 00 56 e3  cmp	r6, #2
005b57dc  00 40 a0 e1  mov	r4, r0
005b57e0  b8 ff ff 0a  beq	0x5b56c8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0xb8> @ imm = #-0x120
005b57e4  38 30 95 e5  ldr	r3, [r5, #0x38]
005b57e8  53 26 e2 e7  ubfx	r2, r3, #0xc, #0x3
005b57ec  02 00 56 e1  cmp	r6, r2
005b57f0  b4 ff ff 0a  beq	0x5b56c8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0xb8> @ imm = #-0x130
005b57f4  3e 20 d5 e5  ldrb	r2, [r5, #0x3e]
005b57f8  01 00 52 e3  cmp	r2, #1
005b57fc  39 00 00 9a  bls	0x5b58e8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x2d8> @ imm = #0xe4
005b5800  b0 24 d5 e1  ldrh	r2, [r5, #64]
005b5804  07 3a c3 e3  bic	r3, r3, #28672
005b5808  06 66 83 e1  orr	r6, r3, r6, lsl #12
005b580c  04 20 82 e3  orr	r2, r2, #4
005b5810  38 60 85 e5  str	r6, [r5, #0x38]
005b5814  b0 24 c5 e1  strh	r2, [r5, #64]
005b5818  aa ff ff ea  b	0x5b56c8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0xb8> @ imm = #-0x158
005b581c  3f 10 d5 e5  ldrb	r1, [r5, #0x3f]
005b5820  08 10 81 e3  orr	r1, r1, #8
005b5824  3f 10 c5 e5  strb	r1, [r5, #0x3f]
005b5828  05 00 a0 e1  mov	r0, r5
005b582c  01 10 a0 e3  mov	r1, #1
005b5830  05 eb ff eb  bl	0x5b044c <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture6updateEb> @ imm = #-0x53ec
005b5834  00 40 a0 e1  mov	r4, r0
005b5838  a2 ff ff ea  b	0x5b56c8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0xb8> @ imm = #-0x178
005b583c  05 00 a0 e1  mov	r0, r5
005b5840  01 eb ff eb  bl	0x5b044c <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture6updateEb> @ imm = #-0x53fc
005b5844  3f 30 d5 e5  ldrb	r3, [r5, #0x3f]
005b5848  00 40 a0 e1  mov	r4, r0
005b584c  9e ff ff ea  b	0x5b56cc <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0xbc> @ imm = #-0x188
005b5850  3f 30 d5 e5  ldrb	r3, [r5, #0x3f]
005b5854  01 40 a0 e1  mov	r4, r1
005b5858  10 30 83 e3  orr	r3, r3, #16
005b585c  3f 30 c5 e5  strb	r3, [r5, #0x3f]
005b5860  99 ff ff ea  b	0x5b56cc <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0xbc> @ imm = #-0x19c
005b5864  00 30 95 e5  ldr	r3, [r5]
005b5868  05 00 a0 e1  mov	r0, r5
005b586c  0f e0 a0 e1  mov	lr, pc
005b5870  10 f0 93 e5  ldr	pc, [r3, #0x10]
005b5874  3f 30 d5 e5  ldrb	r3, [r5, #0x3f]
005b5878  04 00 a0 e1  mov	r0, r4
005b587c  10 30 83 e3  orr	r3, r3, #16
005b5880  3f 30 c5 e5  strb	r3, [r5, #0x3f]
005b5884  f0 87 bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, pc}
005b5888  7c c0 9f e5  ldr	r12, [pc, #0x7c]        @ 0x5b590c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x2fc>
005b588c  52 02 e5 e7  ubfx	r0, r2, #0x4, #0x6
005b5890  28 e0 a0 e3  mov	lr, #40
005b5894  0c c0 96 e7  ldr	r12, [r6, r12]
005b5898  9e 00 00 e0  mul	r0, lr, r0
005b589c  00 00 9c e7  ldr	r0, [r12, r0]
005b58a0  08 00 10 e3  tst	r0, #8
005b58a4  dd ff ff 1a  bne	0x5b5820 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x210> @ imm = #-0x8c
005b58a8  c2 ff ff ea  b	0x5b57b8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x1a8> @ imm = #-0xf8
005b58ac  02 00 56 e3  cmp	r6, #2
005b58b0  0f 00 00 0a  beq	0x5b58f4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x2e4> @ imm = #0x3c
005b58b4  b0 04 d5 e1  ldrh	r0, [r5, #64]
005b58b8  07 2a c2 e3  bic	r2, r2, #28672
005b58bc  02 1a 82 e3  orr	r1, r2, #8192
005b58c0  08 30 83 e3  orr	r3, r3, #8
005b58c4  04 20 80 e3  orr	r2, r0, #4
005b58c8  38 10 85 e5  str	r1, [r5, #0x38]
005b58cc  b0 24 c5 e1  strh	r2, [r5, #64]
005b58d0  3f 30 c5 e5  strb	r3, [r5, #0x3f]
005b58d4  05 00 a0 e1  mov	r0, r5
005b58d8  01 10 a0 e3  mov	r1, #1
005b58dc  da ea ff eb  bl	0x5b044c <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture6updateEb> @ imm = #-0x5498
005b58e0  00 40 a0 e1  mov	r4, r0
005b58e4  be ff ff ea  b	0x5b57e4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x1d4> @ imm = #-0x108
005b58e8  01 00 56 e3  cmp	r6, #1
005b58ec  75 ff ff ca  bgt	0x5b56c8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0xb8> @ imm = #-0x22c
005b58f0  c2 ff ff ea  b	0x5b5800 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x1f0> @ imm = #-0xf8
005b58f4  08 30 83 e3  orr	r3, r3, #8
005b58f8  3f 30 c5 e5  strb	r3, [r5, #0x3f]
005b58fc  c9 ff ff ea  b	0x5b5828 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb+0x218> @ imm = #-0xdc
005b5900  58 f4 3d 00  .word	0x003df458
005b5904  a8 a9 32 00  .word	0x0032a9a8
005b5908  b0 a8 32 00  .word	0x0032a8b0
005b590c  34 1f 00 00  .word	0x00001f34

; gl_texture_upload: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::updateData(bool) const
; VA=0x005afff0, size=0x45c, file_offset=0x005afff0, SHA-256=9fb09ee2dfd6c052dc1e900ea57542c33b89ed0404e9a4a3ce6642571a500f00
005afff0  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
005afff4  40 24 9f e5  ldr	r2, [pc, #0x440]        @ 0x5b043c <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x44c>
005afff8  3f 30 d0 e5  ldrb	r3, [r0, #0x3f]
005afffc  4c d0 4d e2  sub	sp, sp, #76
005b0000  02 20 8f e0  add	r2, pc, r2
005b0004  02 00 13 e3  tst	r3, #2
005b0008  30 20 8d e5  str	r2, [sp, #0x30]
005b000c  3e c0 d0 05  ldrbeq	r12, [r0, #0x3e]
005b0010  01 30 a0 13  movne	r3, #1
005b0014  3e 90 d0 15  ldrbne	r9, [r0, #0x3e]
005b0018  40 c0 8d 05  streq	r12, [sp, #0x40]
005b001c  40 30 8d 15  strne	r3, [sp, #0x40]
005b0020  2c 20 90 e5  ldr	r2, [r0, #0x2c]
005b0024  30 30 90 e5  ldr	r3, [r0, #0x30]
005b0028  38 40 90 e5  ldr	r4, [r0, #0x38]
005b002c  09 80 a0 11  movne	r8, r9
005b0030  0c 80 a0 01  moveq	r8, r12
005b0034  01 90 a0 03  moveq	r9, #1
005b0038  01 80 88 e2  add	r8, r8, #1
005b003c  00 00 52 e3  cmp	r2, #0
005b0040  00 50 a0 e1  mov	r5, r0
005b0044  01 b0 a0 e1  mov	r11, r1
005b0048  08 81 83 e0  add	r8, r3, r8, lsl #2
005b004c  54 42 e5 e7  ubfx	r4, r4, #0x4, #0x6
005b0050  34 a0 90 e5  ldr	r10, [r0, #0x34]
005b0054  0e 00 00 0a  beq	0x5b0094 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0xa4> @ imm = #0x38
005b0058  04 00 a0 e1  mov	r0, r4
005b005c  20 10 95 e5  ldr	r1, [r5, #0x20]
005b0060  a1 f6 00 eb  bl	0x5edaec <_ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj> @ imm = #0x3da84
005b0064  34 60 95 e5  ldr	r6, [r5, #0x34]
005b0068  01 00 10 e3  tst	r0, #1
005b006c  03 00 00 e2  and	r0, r0, #3
005b0070  6c 32 96 e5  ldr	r3, [r6, #0x26c]
005b0074  01 70 a0 13  movne	r7, #1
005b0078  04 70 60 02  rsbeq	r7, r0, #4
005b007c  03 00 57 e1  cmp	r7, r3
005b0080  03 00 00 0a  beq	0x5b0094 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0xa4> @ imm = #0xc
005b0084  f5 0c 00 e3  movw	r0, #0xcf5
005b0088  07 10 a0 e1  mov	r1, r7
005b008c  36 78 f5 eb  bl	0x30e16c <glPixelStorei@plt> @ imm = #-0x2a1f28
005b0090  6c 72 86 e5  str	r7, [r6, #0x26c]
005b0094  43 78 f5 eb  bl	0x30e1a8 <glGetError@plt> @ imm = #-0x2a1ef4
005b0098  14 30 a0 e3  mov	r3, #20
005b009c  93 a4 23 e0  mla	r3, r3, r4, r10
005b00a0  00 10 a0 e3  mov	r1, #0
005b00a4  34 30 8d e5  str	r3, [sp, #0x34]
005b00a8  38 20 95 e5  ldr	r2, [r5, #0x38]
005b00ac  8c 33 9f e5  ldr	r3, [pc, #0x38c]        @ 0x5b0440 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x450>
005b00b0  34 c0 9d e5  ldr	r12, [sp, #0x34]
005b00b4  03 20 02 e2  and	r2, r2, #3
005b00b8  02 00 52 e3  cmp	r2, #2
005b00bc  03 30 8f e0  add	r3, pc, r3
005b00c0  4b ce 8c e2  add	r12, r12, #1200
005b00c4  06 20 a0 03  moveq	r2, #6
005b00c8  01 20 a0 13  movne	r2, #1
005b00cc  04 c0 8c e2  add	r12, r12, #4
005b00d0  a4 30 83 e2  add	r3, r3, #164
005b00d4  20 10 8d e5  str	r1, [sp, #0x20]
005b00d8  44 20 8d e5  str	r2, [sp, #0x44]
005b00dc  3c c0 8d e5  str	r12, [sp, #0x3c]
005b00e0  38 30 8d e5  str	r3, [sp, #0x38]
005b00e4  24 10 8d e5  str	r1, [sp, #0x24]
005b00e8  01 40 a0 e1  mov	r4, r1
005b00ec  40 20 9d e5  ldr	r2, [sp, #0x40]
005b00f0  00 00 52 e3  cmp	r2, #0
005b00f4  58 00 00 0a  beq	0x5b025c <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x26c> @ imm = #0x160
005b00f8  34 30 9d e5  ldr	r3, [sp, #0x34]
005b00fc  01 a0 42 e2  sub	r10, r2, #1
005b0100  3c c3 9f e5  ldr	r12, [pc, #0x33c]       @ 0x5b0444 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x454>
005b0104  7a a0 ef e6  uxtb	r10, r10
005b0108  4b 3e 83 e2  add	r3, r3, #1200
005b010c  01 a0 8a e2  add	r10, r10, #1
005b0110  00 60 a0 e3  mov	r6, #0
005b0114  08 30 83 e2  add	r3, r3, #8
005b0118  0a a1 a0 e1  lsl	r10, r10, #2
005b011c  2c 30 8d e5  str	r3, [sp, #0x2c]
005b0120  06 70 a0 e1  mov	r7, r6
005b0124  28 c0 8d e5  str	r12, [sp, #0x28]
005b0128  00 30 98 e5  ldr	r3, [r8]
005b012c  01 20 a0 e3  mov	r2, #1
005b0130  12 34 13 e0  ands	r3, r3, r2, lsl r4
005b0134  3f 00 00 0a  beq	0x5b0238 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x248> @ imm = #0xfc
005b0138  2c e0 95 e5  ldr	lr, [r5, #0x2c]
005b013c  00 00 5e e3  cmp	lr, #0
005b0140  08 00 00 0a  beq	0x5b0168 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x178> @ imm = #0x20
005b0144  3f 30 d5 e5  ldrb	r3, [r5, #0x3f]
005b0148  02 00 13 e3  tst	r3, #2
005b014c  4a 00 00 0a  beq	0x5b027c <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x28c> @ imm = #0x128
005b0150  30 30 95 e5  ldr	r3, [r5, #0x30]
005b0154  20 10 9d e5  ldr	r1, [sp, #0x20]
005b0158  0c 00 93 e8  ldm	r3, {r2, r3}
005b015c  03 20 62 e0  rsb	r2, r2, r3
005b0160  92 01 02 e0  mul	r2, r2, r1
005b0164  02 e0 8e e0  add	lr, lr, r2
005b0168  20 30 95 e5  ldr	r3, [r5, #0x20]
005b016c  24 10 95 e5  ldr	r1, [r5, #0x24]
005b0170  38 20 95 e5  ldr	r2, [r5, #0x38]
005b0174  53 37 a0 e1  asr	r3, r3, r7
005b0178  51 17 a0 e1  asr	r1, r1, r7
005b017c  03 00 02 e2  and	r0, r2, #3
005b0180  01 00 53 e3  cmp	r3, #1
005b0184  01 30 a0 b3  movlt	r3, #1
005b0188  01 00 51 e3  cmp	r1, #1
005b018c  01 10 a0 b3  movlt	r1, #1
005b0190  01 00 50 e3  cmp	r0, #1
005b0194  22 00 00 0a  beq	0x5b0224 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x234> @ imm = #0x88
005b0198  02 00 50 e3  cmp	r0, #2
005b019c  24 c0 9d 05  ldreq	r12, [sp, #0x24]
005b01a0  38 c0 9d 15  ldrne	r12, [sp, #0x38]
005b01a4  52 22 e5 e7  ubfx	r2, r2, #0x4, #0x6
005b01a8  85 0c 8c 02  addeq	r0, r12, #34048
005b01ac  00 01 9c 17  ldrne	r0, [r12, r0, lsl #2]
005b01b0  28 c0 a0 e3  mov	r12, #40
005b01b4  9c 02 0c e0  mul	r12, r12, r2
005b01b8  28 20 9d e5  ldr	r2, [sp, #0x28]
005b01bc  18 c0 8d e5  str	r12, [sp, #0x18]
005b01c0  30 c0 9d e5  ldr	r12, [sp, #0x30]
005b01c4  15 00 80 02  addeq	r0, r0, #21
005b01c8  02 20 9c e7  ldr	r2, [r12, r2]
005b01cc  18 c0 9d e5  ldr	r12, [sp, #0x18]
005b01d0  0c c0 92 e7  ldr	r12, [r2, r12]
005b01d4  1c c0 8d e5  str	r12, [sp, #0x1c]
005b01d8  08 c0 1c e2  ands	r12, r12, #8
005b01dc  2f 00 00 0a  beq	0x5b02a0 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x2b0> @ imm = #0xbc
005b01e0  00 00 5b e3  cmp	r11, #0
005b01e4  3e 00 00 0a  beq	0x5b02e4 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x2f4> @ imm = #0xf8
005b01e8  34 20 9d e5  ldr	r2, [sp, #0x34]
005b01ec  30 c0 95 e5  ldr	r12, [r5, #0x30]
005b01f0  b0 24 92 e5  ldr	r2, [r2, #0x4b0]
005b01f4  00 10 8d e5  str	r1, [sp]
005b01f8  00 10 a0 e3  mov	r1, #0
005b01fc  04 10 8d e5  str	r1, [sp, #0x4]
005b0200  1c 20 8d e5  str	r2, [sp, #0x1c]
005b0204  06 10 8c e0  add	r1, r12, r6
005b0208  04 10 91 e5  ldr	r1, [r1, #0x4]
005b020c  06 c0 9c e7  ldr	r12, [r12, r6]
005b0210  0c e0 8d e5  str	lr, [sp, #0xc]
005b0214  01 c0 6c e0  rsb	r12, r12, r1
005b0218  07 10 a0 e1  mov	r1, r7
005b021c  08 c0 8d e5  str	r12, [sp, #0x8]
005b0220  c5 7a f5 eb  bl	0x30ed3c <glCompressedTexImage2D@plt> @ imm = #-0x2a14ec
005b0224  df 77 f5 eb  bl	0x30e1a8 <glGetError@plt> @ imm = #-0x2a2084
005b0228  00 00 50 e3  cmp	r0, #0
005b022c  3f 30 d5 15  ldrbne	r3, [r5, #0x3f]
005b0230  10 30 83 13  orrne	r3, r3, #16
005b0234  3f 30 c5 15  strbne	r3, [r5, #0x3f]
005b0238  09 40 84 e0  add	r4, r4, r9
005b023c  1f 00 54 e3  cmp	r4, #31
005b0240  00 30 a0 83  movhi	r3, #0
005b0244  04 60 86 e2  add	r6, r6, #4
005b0248  04 30 88 84  strhi	r3, [r8], #4
005b024c  20 40 44 82  subhi	r4, r4, #32
005b0250  0a 00 56 e1  cmp	r6, r10
005b0254  01 70 87 e2  add	r7, r7, #1
005b0258  b2 ff ff 1a  bne	0x5b0128 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x138> @ imm = #-0x138
005b025c  24 c0 9d e5  ldr	r12, [sp, #0x24]
005b0260  44 10 9d e5  ldr	r1, [sp, #0x44]
005b0264  01 c0 8c e2  add	r12, r12, #1
005b0268  01 00 5c e1  cmp	r12, r1
005b026c  24 c0 8d e5  str	r12, [sp, #0x24]
005b0270  3a 00 00 aa  bge	0x5b0360 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x370> @ imm = #0xe8
005b0274  20 c0 8d e5  str	r12, [sp, #0x20]
005b0278  9b ff ff ea  b	0x5b00ec <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0xfc> @ imm = #-0x194
005b027c  30 30 95 e5  ldr	r3, [r5, #0x30]
005b0280  3e 10 d5 e5  ldrb	r1, [r5, #0x3e]
005b0284  20 c0 9d e5  ldr	r12, [sp, #0x20]
005b0288  06 20 93 e7  ldr	r2, [r3, r6]
005b028c  01 31 93 e7  ldr	r3, [r3, r1, lsl #2]
005b0290  7f 30 83 e2  add	r3, r3, #127
005b0294  7f 30 c3 e3  bic	r3, r3, #127
005b0298  93 2c 22 e0  mla	r2, r3, r12, r2
005b029c  b0 ff ff ea  b	0x5b0164 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x174> @ imm = #-0x140
005b02a0  00 00 5b e3  cmp	r11, #0
005b02a4  1f 00 00 0a  beq	0x5b0328 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x338> @ imm = #0x7c
005b02a8  34 20 9d e5  ldr	r2, [sp, #0x34]
005b02ac  b0 24 92 e5  ldr	r2, [r2, #0x4b0]
005b02b0  04 c0 8d e5  str	r12, [sp, #0x4]
005b02b4  3c c0 9d e5  ldr	r12, [sp, #0x3c]
005b02b8  1c 20 8d e5  str	r2, [sp, #0x1c]
005b02bc  00 10 8d e5  str	r1, [sp]
005b02c0  00 10 9c e5  ldr	r1, [r12]
005b02c4  08 10 8d e5  str	r1, [sp, #0x8]
005b02c8  2c 10 9d e5  ldr	r1, [sp, #0x2c]
005b02cc  00 c0 91 e5  ldr	r12, [r1]
005b02d0  07 10 a0 e1  mov	r1, r7
005b02d4  10 e0 8d e5  str	lr, [sp, #0x10]
005b02d8  0c c0 8d e5  str	r12, [sp, #0xc]
005b02dc  4b 77 f5 eb  bl	0x30e010 <glTexImage2D@plt> @ imm = #-0x2a22d4
005b02e0  cf ff ff ea  b	0x5b0224 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x234> @ imm = #-0xc4
005b02e4  34 20 9d e5  ldr	r2, [sp, #0x34]
005b02e8  04 10 8d e5  str	r1, [sp, #0x4]
005b02ec  00 30 8d e5  str	r3, [sp]
005b02f0  b0 34 92 e5  ldr	r3, [r2, #0x4b0]
005b02f4  30 20 95 e5  ldr	r2, [r5, #0x30]
005b02f8  07 10 a0 e1  mov	r1, r7
005b02fc  08 30 8d e5  str	r3, [sp, #0x8]
005b0300  06 30 82 e0  add	r3, r2, r6
005b0304  06 c0 92 e7  ldr	r12, [r2, r6]
005b0308  04 30 93 e5  ldr	r3, [r3, #0x4]
005b030c  0b 20 a0 e1  mov	r2, r11
005b0310  10 e0 8d e5  str	lr, [sp, #0x10]
005b0314  03 c0 6c e0  rsb	r12, r12, r3
005b0318  0b 30 a0 e1  mov	r3, r11
005b031c  0c c0 8d e5  str	r12, [sp, #0xc]
005b0320  9e 76 f5 eb  bl	0x30dda0 <glCompressedTexSubImage2D@plt> @ imm = #-0x2a2588
005b0324  be ff ff ea  b	0x5b0224 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x234> @ imm = #-0x108
005b0328  3c 20 9d e5  ldr	r2, [sp, #0x3c]
005b032c  04 10 8d e5  str	r1, [sp, #0x4]
005b0330  00 30 8d e5  str	r3, [sp]
005b0334  00 30 92 e5  ldr	r3, [r2]
005b0338  07 10 a0 e1  mov	r1, r7
005b033c  0b 20 a0 e1  mov	r2, r11
005b0340  08 30 8d e5  str	r3, [sp, #0x8]
005b0344  2c 30 9d e5  ldr	r3, [sp, #0x2c]
005b0348  00 c0 93 e5  ldr	r12, [r3]
005b034c  0b 30 a0 e1  mov	r3, r11
005b0350  10 e0 8d e5  str	lr, [sp, #0x10]
005b0354  0c c0 8d e5  str	r12, [sp, #0xc]
005b0358  fc 79 f5 eb  bl	0x30eb50 <glTexSubImage2D@plt> @ imm = #-0x2a1810
005b035c  b0 ff ff ea  b	0x5b0224 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x234> @ imm = #-0x140
005b0360  00 00 54 e3  cmp	r4, #0
005b0364  00 30 a0 13  movne	r3, #0
005b0368  00 30 88 15  strne	r3, [r8]
005b036c  b0 24 d5 e1  ldrh	r2, [r5, #64]
005b0370  3f 30 d5 e5  ldrb	r3, [r5, #0x3f]
005b0374  03 20 c2 e3  bic	r2, r2, #3
005b0378  10 00 13 e3  tst	r3, #16
005b037c  b0 24 c5 e1  strh	r2, [r5, #64]
005b0380  16 00 00 1a  bne	0x5b03e0 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x3f0> @ imm = #0x58
005b0384  3e 20 d5 e5  ldrb	r2, [r5, #0x3e]
005b0388  01 00 52 e3  cmp	r2, #1
005b038c  13 00 00 9a  bls	0x5b03e0 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x3f0> @ imm = #0x4c
005b0390  02 00 13 e3  tst	r3, #2
005b0394  11 00 00 0a  beq	0x5b03e0 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x3f0> @ imm = #0x44
005b0398  2c 30 95 e5  ldr	r3, [r5, #0x2c]
005b039c  00 00 53 e3  cmp	r3, #0
005b03a0  1a 00 00 0a  beq	0x5b0410 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x420> @ imm = #0x68
005b03a4  30 10 9d e5  ldr	r1, [sp, #0x30]
005b03a8  38 30 95 e5  ldr	r3, [r5, #0x38]
005b03ac  90 20 9f e5  ldr	r2, [pc, #0x90]         @ 0x5b0444 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x454>
005b03b0  53 32 e5 e7  ubfx	r3, r3, #0x4, #0x6
005b03b4  02 20 91 e7  ldr	r2, [r1, r2]
005b03b8  28 10 a0 e3  mov	r1, #40
005b03bc  91 03 03 e0  mul	r3, r1, r3
005b03c0  03 30 92 e7  ldr	r3, [r2, r3]
005b03c4  08 00 13 e3  tst	r3, #8
005b03c8  07 00 00 0a  beq	0x5b03ec <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x3fc> @ imm = #0x1c
005b03cc  74 10 9f e5  ldr	r1, [pc, #0x74]         @ 0x5b0448 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x458>
005b03d0  1c 20 95 e5  ldr	r2, [r5, #0x1c]
005b03d4  02 00 a0 e3  mov	r0, #2
005b03d8  01 10 8f e0  add	r1, pc, r1
005b03dc  14 6b 01 eb  bl	0x60b034 <_ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz> @ imm = #0x5ac50
005b03e0  01 00 a0 e3  mov	r0, #1
005b03e4  4c d0 8d e2  add	sp, sp, #76
005b03e8  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
005b03ec  34 30 95 e5  ldr	r3, [r5, #0x34]
005b03f0  9c 30 93 e5  ldr	r3, [r3, #0x9c]
005b03f4  04 00 13 e3  tst	r3, #4
005b03f8  f8 ff ff 0a  beq	0x5b03e0 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x3f0> @ imm = #-0x20
005b03fc  05 00 a0 e1  mov	r0, r5
005b0400  00 30 95 e5  ldr	r3, [r5]
005b0404  0f e0 a0 e1  mov	lr, pc
005b0408  20 f0 93 e5  ldr	pc, [r3, #0x20]
005b040c  f3 ff ff ea  b	0x5b03e0 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x3f0> @ imm = #-0x34
005b0410  38 30 95 e5  ldr	r3, [r5, #0x38]
005b0414  28 20 9f e5  ldr	r2, [pc, #0x28]         @ 0x5b0444 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x454>
005b0418  30 c0 9d e5  ldr	r12, [sp, #0x30]
005b041c  53 32 e5 e7  ubfx	r3, r3, #0x4, #0x6
005b0420  28 10 a0 e3  mov	r1, #40
005b0424  02 20 9c e7  ldr	r2, [r12, r2]
005b0428  91 03 03 e0  mul	r3, r1, r3
005b042c  03 30 92 e7  ldr	r3, [r2, r3]
005b0430  08 00 13 e3  tst	r3, #8
005b0434  e9 ff ff 0a  beq	0x5b03e0 <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x3f0> @ imm = #-0x5c
005b0438  e3 ff ff ea  b	0x5b03cc <_ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb+0x3dc> @ imm = #-0x74
005b043c  90 4a 3e 00  .word	0x003e4a90
005b0440  78 ff 32 00  .word	0x0032ff78
005b0444  34 1f 00 00  .word	0x00001f34
005b0448  20 00 33 00  .word	0x00330020

; PVR content probe added from its complete recovered function range.
; ELF VA=0x006057e0, size=196, file_offset=0x006057e0, SHA-256=4531cf92fb52a47ab1c29440dcb2353a08369d021c19bd41f12c68f7f8aa4e15
; FUNCTION 0x006057e0, declared_size=196, range_size=196, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZNK6glitch5video15CImageLoaderPVR21isALoadableFileFormatEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderPVR::isALoadableFileFormat(glitch::io::IReadFile*) const
; decoder-mode: arm
006057e0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006057e4  00 40 51 e2                                      subs r4, r1, #0
006057e8  3c d0 4d e2                                      sub sp, sp, #0x3c
006057ec  04 00 a0 01                                      moveq r0, r4
006057f0  1b 00 00 0a                                      beq #0x605864
006057f4  00 30 94 e5                                      ldr r3, [r4]
006057f8  04 00 a0 e1                                      mov r0, r4
006057fc  0f e0 a0 e1                                      mov lr, pc
00605800  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00605804  04 50 8d e2                                      add r5, sp, #4
00605808  00 70 a0 e1                                      mov r7, r0
0060580c  05 10 a0 e1                                      mov r1, r5
00605810  34 20 a0 e3                                      mov r2, #0x34
00605814  00 30 94 e5                                      ldr r3, [r4]
00605818  04 00 a0 e1                                      mov r0, r4
0060581c  0f e0 a0 e1                                      mov lr, pc
00605820  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00605824  07 10 a0 e1                                      mov r1, r7
00605828  00 60 a0 e1                                      mov r6, r0
0060582c  00 30 94 e5                                      ldr r3, [r4]
00605830  04 00 a0 e1                                      mov r0, r4
00605834  00 20 a0 e3                                      mov r2, #0
00605838  0f e0 a0 e1                                      mov lr, pc
0060583c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00605840  34 00 56 e3                                      cmp r6, #0x34
00605844  08 00 00 0a                                      beq #0x60586c
00605848  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0060584c  05 00 a0 e1                                      mov r0, r5
00605850  08 20 a0 e3                                      mov r2, #8
00605854  01 10 8f e0                                      add r1, pc, r1
00605858  07 25 f4 eb                                      bl #0x30ec7c
0060585c  01 00 70 e2                                      rsbs r0, r0, #1
00605860  00 00 a0 33                                      movlo r0, #0
00605864  3c d0 8d e2                                      add sp, sp, #0x3c
00605868  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0060586c  04 30 9d e5                                      ldr r3, [sp, #4]
00605870  34 00 53 e3                                      cmp r3, #0x34
00605874  f3 ff ff 1a                                      bne #0x605848
00605878  20 10 9f e5                                      ldr r1, [pc, #0x20]
0060587c  2c 00 85 e2                                      add r0, r5, #0x2c
00605880  04 20 a0 e3                                      mov r2, #4
00605884  01 10 8f e0                                      add r1, pc, r1
00605888  fb 24 f4 eb                                      bl #0x30ec7c
0060588c  00 00 50 e3                                      cmp r0, #0
00605890  01 00 a0 03                                      moveq r0, #1
00605894  eb ff ff 1a                                      bne #0x605848
00605898  f1 ff ff ea                                      b #0x605864
; mapping-symbol data/literal pool
0060589c  d4 f0 2d 00 b4 f0 2d 00                          .byte 0xd4, 0xf0, 0x2d, 0x00, 0xb4, 0xf0, 0x2d, 0x00
