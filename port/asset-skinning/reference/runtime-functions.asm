; Focused runtime skinning and morph ARM excerpts copied from the recovered listing.
; Original ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Every complete function range below was reassembled from the address/byte columns and
; compared byte-for-byte with its file-backed PT_LOAD slice in the APK library.

; FUNCTION 0x0060e6f0, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase20constructModularSkinEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructModularSkin(glitch::collada::SInstanceModularSkin*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060e6f0  30 40 2d e9                                      push {r4, r5, lr}
0060e6f4  04 c0 91 e5                                      ldr ip, [r1, #4]
0060e6f8  14 d0 4d e2                                      sub sp, sp, #0x14
0060e6fc  01 e0 a0 e1                                      mov lr, r1
0060e700  02 50 a0 e1                                      mov r5, r2
0060e704  00 40 a0 e1                                      mov r4, r0
0060e708  0c 10 a0 e1                                      mov r1, ip
0060e70c  0c 00 8d e2                                      add r0, sp, #0xc
0060e710  00 c0 9c e5                                      ldr ip, [ip]
0060e714  0e 20 a0 e1                                      mov r2, lr
0060e718  00 30 8d e5                                      str r3, [sp]
0060e71c  05 30 a0 e1                                      mov r3, r5
0060e720  0f e0 a0 e1                                      mov lr, pc
0060e724  5c f0 9c e5                                      ldr pc, [ip, #0x5c]
0060e728  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060e72c  00 00 50 e3                                      cmp r0, #0
0060e730  00 00 84 e5                                      str r0, [r4]
0060e734  04 30 90 15                                      ldrne r3, [r0, #4]
0060e738  01 30 83 12                                      addne r3, r3, #1
0060e73c  04 30 80 15                                      strne r3, [r0, #4]
0060e740  0c 00 9d 15                                      ldrne r0, [sp, #0xc]
0060e744  00 00 50 e3                                      cmp r0, #0
0060e748  00 00 00 0a                                      beq #0x60e750
0060e74c  8c 3b f4 eb                                      bl #0x31d584
0060e750  04 00 a0 e1                                      mov r0, r4
0060e754  14 d0 8d e2                                      add sp, sp, #0x14
0060e758  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00631560, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory17createModularSkinERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createModularSkin(glitch::collada::CColladaDatabase const&, glitch::collada::SInstanceModularSkin*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00631560  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00631564  00 10 a0 e3                                      mov r1, #0
00631568  14 d0 4d e2                                      sub sp, sp, #0x14
0063156c  00 50 a0 e1                                      mov r5, r0
00631570  5c 00 a0 e3                                      mov r0, #0x5c
00631574  02 60 a0 e1                                      mov r6, r2
00631578  03 70 a0 e1                                      mov r7, r3
0063157c  0a 0b fc eb                                      bl #0x5341ac
00631580  00 c0 e0 e3                                      mvn ip, #0
00631584  00 c0 8d e5                                      str ip, [sp]
00631588  01 c0 a0 e3                                      mov ip, #1
0063158c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00631590  04 c0 8d e5                                      str ip, [sp, #4]
00631594  06 10 a0 e1                                      mov r1, r6
00631598  00 c0 a0 e3                                      mov ip, #0
0063159c  07 20 a0 e1                                      mov r2, r7
006315a0  00 40 a0 e1                                      mov r4, r0
006315a4  08 c0 8d e5                                      str ip, [sp, #8]
006315a8  dc 5e 00 eb                                      bl #0x649120
006315ac  00 00 54 e3                                      cmp r4, #0
006315b0  00 40 85 e5                                      str r4, [r5]
006315b4  04 30 94 15                                      ldrne r3, [r4, #4]
006315b8  05 00 a0 e1                                      mov r0, r5
006315bc  01 30 83 12                                      addne r3, r3, #1
006315c0  04 30 84 15                                      strne r3, [r4, #4]
006315c4  14 d0 8d e2                                      add sp, sp, #0x14
006315c8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00649120, declared_size=364, range_size=364, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE
; demangled: glitch::collada::CModularSkinnedMesh::CModularSkinnedMesh(glitch::collada::CColladaDatabase const&, glitch::collada::SInstanceModularSkin*, glitch::collada::CRootSceneNode*, int, bool, glitch::video::IVideoDriver*)
; decoder-mode: arm
00649120  54 c1 9f e5                                      ldr ip, [pc, #0x154]
00649124  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00649128  50 e1 9f e5                                      ldr lr, [pc, #0x150]
0064912c  0c c0 8f e0                                      add ip, pc, ip
00649130  00 40 a0 e1                                      mov r4, r0
00649134  0e e0 9c e7                                      ldr lr, [ip, lr]
00649138  00 00 a0 e3                                      mov r0, #0
0064913c  04 00 84 e5                                      str r0, [r4, #4]
00649140  08 e0 8e e2                                      add lr, lr, #8
00649144  00 e0 84 e5                                      str lr, [r4]
00649148  00 00 91 e5                                      ldr r0, [r1]
0064914c  0c 00 84 e5                                      str r0, [r4, #0xc]
00649150  04 10 91 e5                                      ldr r1, [r1, #4]
00649154  00 00 50 e3                                      cmp r0, #0
00649158  10 10 84 e5                                      str r1, [r4, #0x10]
0064915c  1c 70 dd e5                                      ldrb r7, [sp, #0x1c]
00649160  03 00 00 0a                                      beq #0x649174
00649164  04 10 90 e5                                      ldr r1, [r0, #4]
00649168  00 00 51 e3                                      cmp r1, #0
0064916c  01 10 81 12                                      addne r1, r1, #1
00649170  04 10 80 15                                      strne r1, [r0, #4]
00649174  08 51 9f e5                                      ldr r5, [pc, #0x108]
00649178  08 11 9f e5                                      ldr r1, [pc, #0x108]
0064917c  bf e4 a0 e3                                      mov lr, #0xbf000000
00649180  05 50 9c e7                                      ldr r5, [ip, r5]
00649184  01 10 9c e7                                      ldr r1, [ip, r1]
00649188  02 e5 8e e2                                      add lr, lr, #0x800000
0064918c  fe 05 a0 e3                                      mov r0, #0x3f800000
00649190  08 60 81 e2                                      add r6, r1, #8
00649194  01 c0 a0 e3                                      mov ip, #1
00649198  00 10 a0 e3                                      mov r1, #0
0064919c  04 50 85 e2                                      add r5, r5, #4
006491a0  08 50 84 e5                                      str r5, [r4, #8]
006491a4  00 60 84 e5                                      str r6, [r4]
006491a8  20 30 84 e5                                      str r3, [r4, #0x20]
006491ac  48 e0 84 e5                                      str lr, [r4, #0x48]
006491b0  54 00 84 e5                                      str r0, [r4, #0x54]
006491b4  58 10 c4 e5                                      strb r1, [r4, #0x58]
006491b8  14 10 84 e5                                      str r1, [r4, #0x14]
006491bc  18 c0 c4 e5                                      strb ip, [r4, #0x18]
006491c0  1c 20 84 e5                                      str r2, [r4, #0x1c]
006491c4  24 10 84 e5                                      str r1, [r4, #0x24]
006491c8  28 10 84 e5                                      str r1, [r4, #0x28]
006491cc  2c 10 84 e5                                      str r1, [r4, #0x2c]
006491d0  30 10 84 e5                                      str r1, [r4, #0x30]
006491d4  34 10 84 e5                                      str r1, [r4, #0x34]
006491d8  38 10 84 e5                                      str r1, [r4, #0x38]
006491dc  3c 10 84 e5                                      str r1, [r4, #0x3c]
006491e0  40 e0 84 e5                                      str lr, [r4, #0x40]
006491e4  44 e0 84 e5                                      str lr, [r4, #0x44]
006491e8  4c 00 84 e5                                      str r0, [r4, #0x4c]
006491ec  50 00 84 e5                                      str r0, [r4, #0x50]
006491f0  59 c0 c4 e5                                      strb ip, [r4, #0x59]
006491f4  00 30 92 e5                                      ldr r3, [r2]
006491f8  08 60 92 e5                                      ldr r6, [r2, #8]
006491fc  18 20 9d e5                                      ldr r2, [sp, #0x18]
00649200  03 60 86 e0                                      add r6, r6, r3
00649204  01 00 52 e1                                      cmp r2, r1
00649208  19 00 00 da                                      ble #0x649274
0064920c  04 00 a0 e1                                      mov r0, r4
00649210  06 10 a0 e1                                      mov r1, r6
00649214  00 20 a0 e3                                      mov r2, #0
00649218  fe fe ff eb                                      bl #0x648e18
0064921c  00 00 56 e3                                      cmp r6, #0
00649220  0e 00 00 0a                                      beq #0x649260
00649224  00 50 a0 e3                                      mov r5, #0
00649228  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0064922c  04 00 a0 e1                                      mov r0, r4
00649230  04 30 93 e5                                      ldr r3, [r3, #4]
00649234  05 32 83 e0                                      add r3, r3, r5, lsl #4
00649238  04 10 93 e5                                      ldr r1, [r3, #4]
0064923c  9d f8 ff eb                                      bl #0x6474b8
00649240  05 10 a0 e1                                      mov r1, r5
00649244  00 20 a0 e1                                      mov r2, r0
00649248  01 50 85 e2                                      add r5, r5, #1
0064924c  04 00 a0 e1                                      mov r0, r4
00649250  00 30 a0 e3                                      mov r3, #0
00649254  5d ff ff eb                                      bl #0x648fd0
00649258  05 00 56 e1                                      cmp r6, r5
0064925c  f1 ff ff 1a                                      bne #0x649228
00649260  07 10 a0 e1                                      mov r1, r7
00649264  04 00 a0 e1                                      mov r0, r4
00649268  56 fc ff eb                                      bl #0x6483c8
0064926c  04 00 a0 e1                                      mov r0, r4
00649270  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00649274  3c c0 84 05                                      streq ip, [r4, #0x3c]
00649278  e3 ff ff ea                                      b #0x64920c
; mapping-symbol data/literal pool
0064927c  64 b9 34 00 40 0a 00 00 b4 17 00 00 38 3a 00 00  .byte 0x64, 0xb9, 0x34, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x38, 0x3a, 0x00, 0x00

; FUNCTION 0x00648db4, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh9setModuleEjRKN5boost13intrusive_ptrINS0_12ISkinnedMeshEEE
; demangled: glitch::collada::CModularSkinnedMesh::setModule(unsigned int, boost::intrusive_ptr<glitch::collada::ISkinnedMesh> const&)
; decoder-mode: arm
00648db4  10 40 2d e9                                      push {r4, lr}
00648db8  24 30 90 e5                                      ldr r3, [r0, #0x24]
00648dbc  00 40 a0 e1                                      mov r4, r0
00648dc0  00 20 92 e5                                      ldr r2, [r2]
00648dc4  81 31 83 e0                                      add r3, r3, r1, lsl #3
00648dc8  04 00 93 e5                                      ldr r0, [r3, #4]
00648dcc  02 00 50 e1                                      cmp r0, r2
00648dd0  0e 00 00 0a                                      beq #0x648e10
00648dd4  00 00 52 e3                                      cmp r2, #0
00648dd8  04 10 92 15                                      ldrne r1, [r2, #4]
00648ddc  01 10 81 12                                      addne r1, r1, #1
00648de0  04 10 82 15                                      strne r1, [r2, #4]
00648de4  04 00 93 15                                      ldrne r0, [r3, #4]
00648de8  04 20 83 e5                                      str r2, [r3, #4]
00648dec  00 00 50 e3                                      cmp r0, #0
00648df0  00 00 00 0a                                      beq #0x648df8
00648df4  e2 51 f3 eb                                      bl #0x31d584
00648df8  14 10 94 e5                                      ldr r1, [r4, #0x14]
00648dfc  04 00 a0 e1                                      mov r0, r4
00648e00  01 10 21 e2                                      eor r1, r1, #1
00648e04  01 10 01 e2                                      and r1, r1, #1
00648e08  10 40 bd e8                                      pop {r4, lr}
00648e0c  6d fd ff ea                                      b #0x6483c8
00648e10  00 00 a0 e3                                      mov r0, #0
00648e14  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00647fcc, declared_size=896, range_size=896, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh4skinEj
; demangled: glitch::collada::CModularSkinnedMesh::skin(unsigned int)
; decoder-mode: arm
00647fcc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00647fd0  30 30 90 e5                                      ldr r3, [r0, #0x30]
00647fd4  4c d0 4d e2                                      sub sp, sp, #0x4c
00647fd8  00 70 a0 e1                                      mov r7, r0
00647fdc  81 42 83 e0                                      add r4, r3, r1, lsl #5
00647fe0  1c 20 d4 e5                                      ldrb r2, [r4, #0x1c]
00647fe4  00 00 52 e3                                      cmp r2, #0
00647fe8  13 00 00 1a                                      bne #0x64803c
00647fec  10 50 94 e5                                      ldr r5, [r4, #0x10]
00647ff0  0c 40 94 e5                                      ldr r4, [r4, #0xc]
00647ff4  05 00 54 e1                                      cmp r4, r5
00647ff8  0d 00 00 0a                                      beq #0x648034
00647ffc  00 20 94 e5                                      ldr r2, [r4]
00648000  24 30 97 e5                                      ldr r3, [r7, #0x24]
00648004  00 10 a0 e3                                      mov r1, #0
00648008  04 40 84 e2                                      add r4, r4, #4
0064800c  82 31 83 e0                                      add r3, r3, r2, lsl #3
00648010  04 30 93 e5                                      ldr r3, [r3, #4]
00648014  01 00 53 e1                                      cmp r3, r1
00648018  03 00 a0 e1                                      mov r0, r3
0064801c  f4 ff ff 0a                                      beq #0x647ff4
00648020  00 30 93 e5                                      ldr r3, [r3]
00648024  0f e0 a0 e1                                      mov lr, pc
00648028  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0064802c  05 00 54 e1                                      cmp r4, r5
00648030  f1 ff ff 1a                                      bne #0x647ffc
00648034  4c d0 8d e2                                      add sp, sp, #0x4c
00648038  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0064803c  81 32 93 e7                                      ldr r3, [r3, r1, lsl #5]
00648040  00 90 a0 e3                                      mov sb, #0
00648044  14 30 93 e5                                      ldr r3, [r3, #0x14]
00648048  04 20 93 e5                                      ldr r2, [r3, #4]
0064804c  14 a0 83 e2                                      add sl, r3, #0x14
00648050  02 28 12 e2                                      ands r2, r2, #0x20000
00648054  0c 20 d3 15                                      ldrbne r2, [r3, #0xc]
00648058  01 20 82 12                                      addne r2, r2, #1
0064805c  72 20 ef 16                                      uxtbne r2, r2
00648060  02 22 8a 10                                      addne r2, sl, r2, lsl #4
00648064  14 20 8d e5                                      str r2, [sp, #0x14]
00648068  14 10 93 e5                                      ldr r1, [r3, #0x14]
0064806c  00 00 51 e3                                      cmp r1, #0
00648070  08 10 8d e5                                      str r1, [sp, #8]
00648074  08 c0 9d 15                                      ldrne ip, [sp, #8]
00648078  01 00 a0 01                                      moveq r0, r1
0064807c  04 10 a0 e3                                      mov r1, #4
00648080  04 20 9c 15                                      ldrne r2, [ip, #4]
00648084  01 20 82 12                                      addne r2, r2, #1
00648088  04 20 8c 15                                      strne r2, [ip, #4]
0064808c  14 00 93 15                                      ldrne r0, [r3, #0x14]
00648090  56 66 fd eb                                      bl #0x5a19f0
00648094  ff 30 a0 e3                                      mov r3, #0xff
00648098  1c 00 8d e5                                      str r0, [sp, #0x1c]
0064809c  3c 30 8d e5                                      str r3, [sp, #0x3c]
006480a0  34 90 8d e5                                      str sb, [sp, #0x34]
006480a4  38 90 8d e5                                      str sb, [sp, #0x38]
006480a8  b0 94 cd e1                                      strh sb, [sp, #0x40]
006480ac  b2 94 cd e1                                      strh sb, [sp, #0x42]
006480b0  10 b0 94 e5                                      ldr fp, [r4, #0x10]
006480b4  0c 50 94 e5                                      ldr r5, [r4, #0xc]
006480b8  0b 00 55 e1                                      cmp r5, fp
006480bc  73 00 00 0a                                      beq #0x648290
006480c0  44 10 8d e2                                      add r1, sp, #0x44
006480c4  24 20 8d e2                                      add r2, sp, #0x24
006480c8  34 30 8d e2                                      add r3, sp, #0x34
006480cc  10 10 8d e5                                      str r1, [sp, #0x10]
006480d0  0c 20 8d e5                                      str r2, [sp, #0xc]
006480d4  18 30 8d e5                                      str r3, [sp, #0x18]
006480d8  07 80 a0 e1                                      mov r8, r7
006480dc  4f 00 00 ea                                      b #0x648220
006480e0  00 30 94 e5                                      ldr r3, [r4]
006480e4  10 00 9d e5                                      ldr r0, [sp, #0x10]
006480e8  04 10 a0 e1                                      mov r1, r4
006480ec  00 20 a0 e3                                      mov r2, #0
006480f0  0f e0 a0 e1                                      mov lr, pc
006480f4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006480f8  44 70 9d e5                                      ldr r7, [sp, #0x44]
006480fc  00 00 57 e3                                      cmp r7, #0
00648100  01 00 00 0a                                      beq #0x64810c
00648104  07 00 a0 e1                                      mov r0, r7
00648108  1d 55 f3 eb                                      bl #0x31d584
0064810c  14 60 97 e5                                      ldr r6, [r7, #0x14]
00648110  be 20 da e1                                      ldrh r2, [sl, #0xe]
00648114  24 10 97 e5                                      ldr r1, [r7, #0x24]
00648118  14 30 96 e5                                      ldr r3, [r6, #0x14]
0064811c  14 70 86 e2                                      add r7, r6, #0x14
00648120  91 92 61 e0                                      mls r1, r1, r2, sb
00648124  24 30 8d e5                                      str r3, [sp, #0x24]
00648128  04 10 8d e5                                      str r1, [sp, #4]
0064812c  00 00 53 e3                                      cmp r3, #0
00648130  04 20 93 15                                      ldrne r2, [r3, #4]
00648134  06 00 a0 e1                                      mov r0, r6
00648138  07 10 a0 e1                                      mov r1, r7
0064813c  01 20 82 12                                      addne r2, r2, #1
00648140  04 20 83 15                                      strne r2, [r3, #4]
00648144  04 30 97 e5                                      ldr r3, [r7, #4]
00648148  0a 20 a0 e1                                      mov r2, sl
0064814c  28 30 8d e5                                      str r3, [sp, #0x28]
00648150  ba c0 d7 e1                                      ldrh ip, [r7, #0xa]
00648154  04 30 9d e5                                      ldr r3, [sp, #4]
00648158  2c c0 8d e5                                      str ip, [sp, #0x2c]
0064815c  bc c0 d7 e1                                      ldrh ip, [r7, #0xc]
00648160  b0 c3 cd e1                                      strh ip, [sp, #0x30]
00648164  be c0 d7 e1                                      ldrh ip, [r7, #0xe]
00648168  b2 c3 cd e1                                      strh ip, [sp, #0x32]
0064816c  5b ff ff eb                                      bl #0x647ee0
00648170  04 30 96 e5                                      ldr r3, [r6, #4]
00648174  02 08 13 e3                                      tst r3, #0x20000
00648178  56 00 00 0a                                      beq #0x6482d8
0064817c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00648180  00 00 51 e3                                      cmp r1, #0
00648184  53 00 00 0a                                      beq #0x6482d8
00648188  0c 10 d6 e5                                      ldrb r1, [r6, #0xc]
0064818c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00648190  01 10 81 e2                                      add r1, r1, #1
00648194  71 10 ef e6                                      uxtb r1, r1
00648198  01 12 87 e0                                      add r1, r7, r1, lsl #4
0064819c  6c ff ff eb                                      bl #0x647f54
006481a0  0c 10 d6 e5                                      ldrb r1, [r6, #0xc]
006481a4  14 20 9d e5                                      ldr r2, [sp, #0x14]
006481a8  04 30 9d e5                                      ldr r3, [sp, #4]
006481ac  01 10 81 e2                                      add r1, r1, #1
006481b0  01 12 87 e0                                      add r1, r7, r1, lsl #4
006481b4  06 00 a0 e1                                      mov r0, r6
006481b8  48 ff ff eb                                      bl #0x647ee0
006481bc  04 00 a0 e1                                      mov r0, r4
006481c0  00 30 94 e5                                      ldr r3, [r4]
006481c4  00 10 a0 e3                                      mov r1, #0
006481c8  0f e0 a0 e1                                      mov lr, pc
006481cc  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
006481d0  08 30 96 e5                                      ldr r3, [r6, #8]
006481d4  be c0 da e1                                      ldrh ip, [sl, #0xe]
006481d8  06 00 a0 e1                                      mov r0, r6
006481dc  07 10 a0 e1                                      mov r1, r7
006481e0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006481e4  93 9c 29 e0                                      mla sb, r3, ip, sb
006481e8  22 ff ff eb                                      bl #0x647e78
006481ec  0c 30 d6 e5                                      ldrb r3, [r6, #0xc]
006481f0  06 00 a0 e1                                      mov r0, r6
006481f4  18 20 9d e5                                      ldr r2, [sp, #0x18]
006481f8  01 30 83 e2                                      add r3, r3, #1
006481fc  03 12 87 e0                                      add r1, r7, r3, lsl #4
00648200  1c ff ff eb                                      bl #0x647e78
00648204  24 00 9d e5                                      ldr r0, [sp, #0x24]
00648208  00 00 50 e3                                      cmp r0, #0
0064820c  00 00 00 0a                                      beq #0x648214
00648210  db 54 f3 eb                                      bl #0x31d584
00648214  04 50 85 e2                                      add r5, r5, #4
00648218  0b 00 55 e1                                      cmp r5, fp
0064821c  17 00 00 0a                                      beq #0x648280
00648220  00 20 95 e5                                      ldr r2, [r5]
00648224  24 30 98 e5                                      ldr r3, [r8, #0x24]
00648228  82 31 83 e0                                      add r3, r3, r2, lsl #3
0064822c  04 40 93 e5                                      ldr r4, [r3, #4]
00648230  00 00 54 e3                                      cmp r4, #0
00648234  f6 ff ff 0a                                      beq #0x648214
00648238  00 10 a0 e3                                      mov r1, #0
0064823c  04 00 a0 e1                                      mov r0, r4
00648240  00 30 94 e5                                      ldr r3, [r4]
00648244  0f e0 a0 e1                                      mov lr, pc
00648248  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0064824c  00 30 94 e5                                      ldr r3, [r4]
00648250  04 00 a0 e1                                      mov r0, r4
00648254  0f e0 a0 e1                                      mov lr, pc
00648258  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0064825c  00 10 50 e2                                      subs r1, r0, #0
00648260  9e ff ff 1a                                      bne #0x6480e0
00648264  04 00 a0 e1                                      mov r0, r4
00648268  00 30 94 e5                                      ldr r3, [r4]
0064826c  04 50 85 e2                                      add r5, r5, #4
00648270  0f e0 a0 e1                                      mov lr, pc
00648274  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00648278  0b 00 55 e1                                      cmp r5, fp
0064827c  e7 ff ff 1a                                      bne #0x648220
00648280  34 00 9d e5                                      ldr r0, [sp, #0x34]
00648284  00 00 50 e3                                      cmp r0, #0
00648288  00 00 00 0a                                      beq #0x648290
0064828c  bc 54 f3 eb                                      bl #0x31d584
00648290  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00648294  00 00 52 e3                                      cmp r2, #0
00648298  08 00 00 0a                                      beq #0x6482c0
0064829c  08 c0 9d e5                                      ldr ip, [sp, #8]
006482a0  13 30 dc e5                                      ldrb r3, [ip, #0x13]
006482a4  1f 20 03 e2                                      and r2, r3, #0x1f
006482a8  01 00 52 e3                                      cmp r2, #1
006482ac  16 00 00 9a                                      bls #0x64830c
006482b0  01 20 42 e2                                      sub r2, r2, #1
006482b4  1f 30 c3 e3                                      bic r3, r3, #0x1f
006482b8  03 30 82 e1                                      orr r3, r2, r3
006482bc  13 30 cc e5                                      strb r3, [ip, #0x13]
006482c0  08 30 9d e5                                      ldr r3, [sp, #8]
006482c4  00 00 53 e3                                      cmp r3, #0
006482c8  59 ff ff 0a                                      beq #0x648034
006482cc  03 00 a0 e1                                      mov r0, r3
006482d0  ab 54 f3 eb                                      bl #0x31d584
006482d4  56 ff ff ea                                      b #0x648034
006482d8  04 00 a0 e1                                      mov r0, r4
006482dc  00 30 94 e5                                      ldr r3, [r4]
006482e0  00 10 a0 e3                                      mov r1, #0
006482e4  0f e0 a0 e1                                      mov lr, pc
006482e8  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
006482ec  be c0 da e1                                      ldrh ip, [sl, #0xe]
006482f0  08 30 96 e5                                      ldr r3, [r6, #8]
006482f4  06 00 a0 e1                                      mov r0, r6
006482f8  07 10 a0 e1                                      mov r1, r7
006482fc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00648300  93 9c 29 e0                                      mla sb, r3, ip, sb
00648304  db fe ff eb                                      bl #0x647e78
00648308  bd ff ff ea                                      b #0x648204
0064830c  08 10 9d e5                                      ldr r1, [sp, #8]
00648310  12 30 d1 e5                                      ldrb r3, [r1, #0x12]
00648314  20 00 13 e3                                      tst r3, #0x20
00648318  06 00 00 1a                                      bne #0x648338
0064831c  08 20 9d e5                                      ldr r2, [sp, #8]
00648320  00 30 a0 e3                                      mov r3, #0
00648324  13 30 c2 e5                                      strb r3, [r2, #0x13]
00648328  08 30 9d e5                                      ldr r3, [sp, #8]
0064832c  00 00 53 e3                                      cmp r3, #0
00648330  e5 ff ff 1a                                      bne #0x6482cc
00648334  3e ff ff ea                                      b #0x648034
00648338  00 30 91 e5                                      ldr r3, [r1]
0064833c  01 00 a0 e1                                      mov r0, r1
00648340  0f e0 a0 e1                                      mov lr, pc
00648344  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00648348  f3 ff ff ea                                      b #0x64831c

; FUNCTION 0x00664ee0, declared_size=292, range_size=292, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh4skinEj
; demangled: glitch::collada::CSkinnedMesh::skin(unsigned int)
; decoder-mode: arm
00664ee0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00664ee4  14 50 a0 e3                                      mov r5, #0x14
00664ee8  95 01 05 e0                                      mul r5, r5, r1
00664eec  01 60 a0 e1                                      mov r6, r1
00664ef0  5c 10 90 e5                                      ldr r1, [r0, #0x5c]
00664ef4  00 40 a0 e1                                      mov r4, r0
00664ef8  14 d0 4d e2                                      sub sp, sp, #0x14
00664efc  05 10 81 e0                                      add r1, r1, r5
00664f00  4d fa ff eb                                      bl #0x66383c
00664f04  5c 70 94 e5                                      ldr r7, [r4, #0x5c]
00664f08  05 70 87 e0                                      add r7, r7, r5
00664f0c  10 20 d7 e5                                      ldrb r2, [r7, #0x10]
00664f10  11 30 d7 e5                                      ldrb r3, [r7, #0x11]
00664f14  03 00 52 e1                                      cmp r2, r3
00664f18  25 00 00 0a                                      beq #0x664fb4
00664f1c  0c 80 97 e5                                      ldr r8, [r7, #0xc]
00664f20  68 30 94 e5                                      ldr r3, [r4, #0x68]
00664f24  0c 00 8d e2                                      add r0, sp, #0xc
00664f28  00 c0 98 e5                                      ldr ip, [r8]
00664f2c  03 10 a0 e1                                      mov r1, r3
00664f30  06 20 a0 e1                                      mov r2, r6
00664f34  00 30 93 e5                                      ldr r3, [r3]
00664f38  14 a0 9c e5                                      ldr sl, [ip, #0x14]
00664f3c  0f e0 a0 e1                                      mov lr, pc
00664f40  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00664f44  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00664f48  20 c0 d4 e5                                      ldrb ip, [r4, #0x20]
00664f4c  07 10 a0 e1                                      mov r1, r7
00664f50  05 30 83 e0                                      add r3, r3, r5
00664f54  04 30 93 e5                                      ldr r3, [r3, #4]
00664f58  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00664f5c  08 00 a0 e1                                      mov r0, r8
00664f60  04 30 93 e5                                      ldr r3, [r3, #4]
00664f64  1f 70 06 e2                                      and r7, r6, #0x1f
00664f68  04 30 93 e5                                      ldr r3, [r3, #4]
00664f6c  00 c0 8d e5                                      str ip, [sp]
00664f70  3a ff 2f e1                                      blx sl
00664f74  14 30 94 e5                                      ldr r3, [r4, #0x14]
00664f78  00 00 50 e3                                      cmp r0, #0
00664f7c  01 20 a0 e3                                      mov r2, #1
00664f80  12 77 83 11                                      orrne r7, r3, r2, lsl r7
00664f84  12 77 c3 01                                      biceq r7, r3, r2, lsl r7
00664f88  14 70 84 e5                                      str r7, [r4, #0x14]
00664f8c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00664f90  00 00 50 e3                                      cmp r0, #0
00664f94  00 00 00 0a                                      beq #0x664f9c
00664f98  79 e1 f2 eb                                      bl #0x31d584
00664f9c  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00664fa0  05 30 83 e0                                      add r3, r3, r5
00664fa4  10 20 d3 e5                                      ldrb r2, [r3, #0x10]
00664fa8  11 20 c3 e5                                      strb r2, [r3, #0x11]
00664fac  5c 70 94 e5                                      ldr r7, [r4, #0x5c]
00664fb0  05 70 87 e0                                      add r7, r7, r5
00664fb4  0c 50 97 e5                                      ldr r5, [r7, #0xc]
00664fb8  68 30 94 e5                                      ldr r3, [r4, #0x68]
00664fbc  06 20 a0 e1                                      mov r2, r6
00664fc0  00 c0 95 e5                                      ldr ip, [r5]
00664fc4  03 10 a0 e1                                      mov r1, r3
00664fc8  08 00 8d e2                                      add r0, sp, #8
00664fcc  00 30 93 e5                                      ldr r3, [r3]
00664fd0  18 40 9c e5                                      ldr r4, [ip, #0x18]
00664fd4  0f e0 a0 e1                                      mov lr, pc
00664fd8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00664fdc  05 00 a0 e1                                      mov r0, r5
00664fe0  07 10 a0 e1                                      mov r1, r7
00664fe4  08 20 9d e5                                      ldr r2, [sp, #8]
00664fe8  34 ff 2f e1                                      blx r4
00664fec  08 00 9d e5                                      ldr r0, [sp, #8]
00664ff0  00 00 50 e3                                      cmp r0, #0
00664ff4  00 00 00 0a                                      beq #0x664ffc
00664ff8  61 e1 f2 eb                                      bl #0x31d584
00664ffc  14 d0 8d e2                                      add sp, sp, #0x14
00665000  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0066fab4, declared_size=176, range_size=176, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique15preparePtrCacheEv
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::preparePtrCache()
; decoder-mode: arm
0066fab4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066fab8  00 40 a0 e1                                      mov r4, r0
0066fabc  10 00 90 e5                                      ldr r0, [r0, #0x10]
0066fac0  08 d0 4d e2                                      sub sp, sp, #8
0066fac4  00 30 90 e5                                      ldr r3, [r0]
0066fac8  01 08 13 e3                                      tst r3, #0x10000
0066facc  01 00 00 1a                                      bne #0x66fad8
0066fad0  08 d0 8d e2                                      add sp, sp, #8
0066fad4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0066fad8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066fadc  08 20 8d e2                                      add r2, sp, #8
0066fae0  00 50 a0 e3                                      mov r5, #0
0066fae4  74 10 93 e5                                      ldr r1, [r3, #0x74]
0066fae8  10 00 80 e2                                      add r0, r0, #0x10
0066faec  04 50 22 e5                                      str r5, [r2, #-4]!
0066faf0  82 f2 ff eb                                      bl #0x66c500
0066faf4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066faf8  74 70 93 e5                                      ldr r7, [r3, #0x74]
0066fafc  05 00 57 e1                                      cmp r7, r5
0066fb00  01 00 00 ca                                      bgt #0x66fb0c
0066fb04  11 00 00 ea                                      b #0x66fb50
0066fb08  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066fb0c  78 30 93 e5                                      ldr r3, [r3, #0x78]
0066fb10  14 00 94 e5                                      ldr r0, [r4, #0x14]
0066fb14  05 61 a0 e1                                      lsl r6, r5, #2
0066fb18  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
0066fb1c  3a a2 fc eb                                      bl #0x59840c
0066fb20  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066fb24  00 20 50 e2                                      subs r2, r0, #0
0066fb28  02 00 a0 01                                      moveq r0, r2
0066fb2c  10 80 93 e5                                      ldr r8, [r3, #0x10]
0066fb30  02 00 00 0a                                      beq #0x66fb40
0066fb34  00 30 92 e5                                      ldr r3, [r2]
0066fb38  0f e0 a0 e1                                      mov lr, pc
0066fb3c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0066fb40  01 50 85 e2                                      add r5, r5, #1
0066fb44  07 00 55 e1                                      cmp r5, r7
0066fb48  06 00 88 e7                                      str r0, [r8, r6]
0066fb4c  ed ff ff 1a                                      bne #0x66fb08
0066fb50  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066fb54  00 20 93 e5                                      ldr r2, [r3]
0066fb58  01 28 c2 e3                                      bic r2, r2, #0x10000
0066fb5c  00 20 83 e5                                      str r2, [r3]
0066fb60  da ff ff ea                                      b #0x66fad0

; FUNCTION 0x0066fe34, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique12prepareCacheEv
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::prepareCache()
; decoder-mode: arm
0066fe34  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066fe38  10 30 90 e5                                      ldr r3, [r0, #0x10]
0066fe3c  d0 d0 4d e2                                      sub sp, sp, #0xd0
0066fe40  00 50 a0 e1                                      mov r5, r0
0066fe44  00 30 93 e5                                      ldr r3, [r3]
0066fe48  01 00 13 e3                                      tst r3, #1
0066fe4c  01 00 00 1a                                      bne #0x66fe58
0066fe50  d0 d0 8d e2                                      add sp, sp, #0xd0
0066fe54  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0066fe58  15 ff ff eb                                      bl #0x66fab4
0066fe5c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0066fe60  10 80 95 e5                                      ldr r8, [r5, #0x10]
0066fe64  8c 40 8d e2                                      add r4, sp, #0x8c
0066fe68  74 70 93 e5                                      ldr r7, [r3, #0x74]
0066fe6c  00 60 a0 e3                                      mov r6, #0
0066fe70  06 10 a0 e1                                      mov r1, r6
0066fe74  40 20 a0 e3                                      mov r2, #0x40
0066fe78  04 00 a0 e1                                      mov r0, r4
0066fe7c  04 80 88 e2                                      add r8, r8, #4
0066fe80  76 79 f2 eb                                      bl #0x30e460
0066fe84  fe 35 a0 e3                                      mov r3, #0x3f800000
0066fe88  04 20 a0 e1                                      mov r2, r4
0066fe8c  01 c0 a0 e3                                      mov ip, #1
0066fe90  08 00 a0 e1                                      mov r0, r8
0066fe94  07 10 a0 e1                                      mov r1, r7
0066fe98  c8 30 8d e5                                      str r3, [sp, #0xc8]
0066fe9c  8c 30 8d e5                                      str r3, [sp, #0x8c]
0066fea0  a0 30 8d e5                                      str r3, [sp, #0xa0]
0066fea4  b4 30 8d e5                                      str r3, [sp, #0xb4]
0066fea8  cc c0 cd e5                                      strb ip, [sp, #0xcc]
0066feac  7a f3 ff eb                                      bl #0x66cc9c
0066feb0  10 30 95 e5                                      ldr r3, [r5, #0x10]
0066feb4  10 20 93 e5                                      ldr r2, [r3, #0x10]
0066feb8  14 90 93 e5                                      ldr sb, [r3, #0x14]
0066febc  09 90 62 e0                                      rsb sb, r2, sb
0066fec0  49 91 b0 e1                                      asrs sb, sb, #2
0066fec4  1b 00 00 0a                                      beq #0x66ff38
0066fec8  06 40 a0 e1                                      mov r4, r6
0066fecc  48 80 8d e2                                      add r8, sp, #0x48
0066fed0  04 70 8d e2                                      add r7, sp, #4
0066fed4  01 00 00 ea                                      b #0x66fee0
0066fed8  10 30 95 e5                                      ldr r3, [r5, #0x10]
0066fedc  10 20 93 e5                                      ldr r2, [r3, #0x10]
0066fee0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0066fee4  04 11 92 e7                                      ldr r1, [r2, r4, lsl #2]
0066fee8  04 a0 93 e5                                      ldr sl, [r3, #4]
0066feec  04 20 90 e5                                      ldr r2, [r0, #4]
0066fef0  08 00 a0 e1                                      mov r0, r8
0066fef4  06 a0 8a e0                                      add sl, sl, r6
0066fef8  04 23 82 e0                                      add r2, r2, r4, lsl #6
0066fefc  a7 d4 ff eb                                      bl #0x6651a0
0066ff00  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0066ff04  07 00 a0 e1                                      mov r0, r7
0066ff08  08 10 a0 e1                                      mov r1, r8
0066ff0c  10 20 82 e2                                      add r2, r2, #0x10
0066ff10  a2 d4 ff eb                                      bl #0x6651a0
0066ff14  01 40 84 e2                                      add r4, r4, #1
0066ff18  0a 00 a0 e1                                      mov r0, sl
0066ff1c  07 10 a0 e1                                      mov r1, r7
0066ff20  41 20 a0 e3                                      mov r2, #0x41
0066ff24  4f 7a f2 eb                                      bl #0x30e868
0066ff28  09 00 54 e1                                      cmp r4, sb
0066ff2c  44 60 86 e2                                      add r6, r6, #0x44
0066ff30  e8 ff ff 1a                                      bne #0x66fed8
0066ff34  10 30 95 e5                                      ldr r3, [r5, #0x10]
0066ff38  00 20 93 e5                                      ldr r2, [r3]
0066ff3c  01 20 c2 e3                                      bic r2, r2, #1
0066ff40  00 20 83 e5                                      str r2, [r3]
0066ff44  c1 ff ff ea                                      b #0x66fe50

; FUNCTION 0x0066ff48, declared_size=2840, range_size=2840, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique4skinERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::skin(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*)
; decoder-mode: arm
0066ff48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066ff4c  bc d0 4d e2                                      sub sp, sp, #0xbc
0066ff50  64 00 8d e5                                      str r0, [sp, #0x64]
0066ff54  02 70 a0 e1                                      mov r7, r2
0066ff58  00 30 90 e5                                      ldr r3, [r0]
0066ff5c  01 50 a0 e1                                      mov r5, r1
0066ff60  0f e0 a0 e1                                      mov lr, pc
0066ff64  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0066ff68  14 00 97 e5                                      ldr r0, [r7, #0x14]
0066ff6c  01 10 a0 e3                                      mov r1, #1
0066ff70  8c 00 8d e5                                      str r0, [sp, #0x8c]
0066ff74  24 40 97 e5                                      ldr r4, [r7, #0x24]
0066ff78  28 70 97 e5                                      ldr r7, [r7, #0x28]
0066ff7c  14 60 80 e2                                      add r6, r0, #0x14
0066ff80  14 00 90 e5                                      ldr r0, [r0, #0x14]
0066ff84  70 70 8d e5                                      str r7, [sp, #0x70]
0066ff88  be 20 d6 e1                                      ldrh r2, [r6, #0xe]
0066ff8c  7c 20 8d e5                                      str r2, [sp, #0x7c]
0066ff90  d1 c6 fc eb                                      bl #0x5a1adc
0066ff94  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
0066ff98  04 10 96 e5                                      ldr r1, [r6, #4]
0066ff9c  04 20 93 e5                                      ldr r2, [r3, #4]
0066ffa0  be 30 d6 e1                                      ldrh r3, [r6, #0xe]
0066ffa4  01 10 80 e0                                      add r1, r0, r1
0066ffa8  02 08 12 e3                                      tst r2, #0x20000
0066ffac  94 13 23 e0                                      mla r3, r4, r3, r1
0066ffb0  8c c0 9d 15                                      ldrne ip, [sp, #0x8c]
0066ffb4  58 30 8d e5                                      str r3, [sp, #0x58]
0066ffb8  a8 10 8d e5                                      str r1, [sp, #0xa8]
0066ffbc  8c 00 9d 05                                      ldreq r0, [sp, #0x8c]
0066ffc0  0c 30 dc 15                                      ldrbne r3, [ip, #0xc]
0066ffc4  04 10 a0 e3                                      mov r1, #4
0066ffc8  10 00 90 05                                      ldreq r0, [r0, #0x10]
0066ffcc  01 30 83 12                                      addne r3, r3, #1
0066ffd0  03 32 86 10                                      addne r3, r6, r3, lsl #4
0066ffd4  90 30 8d 15                                      strne r3, [sp, #0x90]
0066ffd8  90 00 8d 05                                      streq r0, [sp, #0x90]
0066ffdc  00 30 95 e5                                      ldr r3, [r5]
0066ffe0  14 30 93 e5                                      ldr r3, [r3, #0x14]
0066ffe4  84 30 8d e5                                      str r3, [sp, #0x84]
0066ffe8  14 00 93 e5                                      ldr r0, [r3, #0x14]
0066ffec  7f c6 fc eb                                      bl #0x5a19f0
0066fff0  64 10 9d e5                                      ldr r1, [sp, #0x64]
0066fff4  84 20 9d e5                                      ldr r2, [sp, #0x84]
0066fff8  84 c0 9d e5                                      ldr ip, [sp, #0x84]
0066fffc  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00670000  14 20 82 e2                                      add r2, r2, #0x14
00670004  88 20 8d e5                                      str r2, [sp, #0x88]
00670008  04 10 92 e5                                      ldr r1, [r2, #4]
0067000c  98 20 d3 e5                                      ldrb r2, [r3, #0x98]
00670010  04 30 9c e5                                      ldr r3, [ip, #4]
00670014  88 c0 9d e5                                      ldr ip, [sp, #0x88]
00670018  01 10 80 e0                                      add r1, r0, r1
0067001c  01 20 82 e2                                      add r2, r2, #1
00670020  be c0 dc e1                                      ldrh ip, [ip, #0xe]
00670024  02 21 a0 e1                                      lsl r2, r2, #2
00670028  02 38 13 e2                                      ands r3, r3, #0x20000
0067002c  94 1c 20 e0                                      mla r0, r4, ip, r1
00670030  74 c0 8d e5                                      str ip, [sp, #0x74]
00670034  a4 10 8d e5                                      str r1, [sp, #0xa4]
00670038  78 20 8d e5                                      str r2, [sp, #0x78]
0067003c  50 00 8d e5                                      str r0, [sp, #0x50]
00670040  4b 02 00 1a                                      bne #0x670974
00670044  84 10 9d e5                                      ldr r1, [sp, #0x84]
00670048  0c 20 d1 e5                                      ldrb r2, [r1, #0xc]
0067004c  ac 30 8d e5                                      str r3, [sp, #0xac]
00670050  01 20 82 e2                                      add r2, r2, #1
00670054  84 c0 9d e5                                      ldr ip, [sp, #0x84]
00670058  88 00 9d e5                                      ldr r0, [sp, #0x88]
0067005c  12 10 a0 e3                                      mov r1, #0x12
00670060  10 30 9c e5                                      ldr r3, [ip, #0x10]
00670064  02 22 80 e0                                      add r2, r0, r2, lsl #4
00670068  0c 00 a0 e1                                      mov r0, ip
0067006c  9f c2 fc eb                                      bl #0x5a0af0
00670070  12 50 d5 e5                                      ldrb r5, [r5, #0x12]
00670074  88 20 9d e5                                      ldr r2, [sp, #0x88]
00670078  01 10 a0 e3                                      mov r1, #1
0067007c  94 50 8d e5                                      str r5, [sp, #0x94]
00670080  05 02 92 e7                                      ldr r0, [r2, r5, lsl #4]
00670084  94 c6 fc eb                                      bl #0x5a1adc
00670088  88 c0 9d e5                                      ldr ip, [sp, #0x88]
0067008c  94 50 9d e5                                      ldr r5, [sp, #0x94]
00670090  05 32 8c e0                                      add r3, ip, r5, lsl #4
00670094  04 20 93 e5                                      ldr r2, [r3, #4]
00670098  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
0067009c  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
006700a0  02 20 80 e0                                      add r2, r0, r2
006700a4  10 10 9c e5                                      ldr r1, [ip, #0x10]
006700a8  94 23 23 e0                                      mla r3, r4, r3, r2
006700ac  90 00 9d e5                                      ldr r0, [sp, #0x90]
006700b0  04 30 83 e2                                      add r3, r3, #4
006700b4  a0 20 8d e5                                      str r2, [sp, #0xa0]
006700b8  01 00 50 e1                                      cmp r0, r1
006700bc  54 30 8d e5                                      str r3, [sp, #0x54]
006700c0  3c 01 00 0a                                      beq #0x6705b8
006700c4  90 20 9d e5                                      ldr r2, [sp, #0x90]
006700c8  00 30 92 e5                                      ldr r3, [r2]
006700cc  00 00 53 e3                                      cmp r3, #0
006700d0  38 01 00 0a                                      beq #0x6705b8
006700d4  ac 30 9d e5                                      ldr r3, [sp, #0xac]
006700d8  00 00 93 e5                                      ldr r0, [r3]
006700dc  00 00 50 e3                                      cmp r0, #0
006700e0  34 01 00 0a                                      beq #0x6705b8
006700e4  04 10 a0 e3                                      mov r1, #4
006700e8  40 c6 fc eb                                      bl #0x5a19f0
006700ec  ac c0 9d e5                                      ldr ip, [sp, #0xac]
006700f0  01 10 a0 e3                                      mov r1, #1
006700f4  04 30 9c e5                                      ldr r3, [ip, #4]
006700f8  be 20 dc e1                                      ldrh r2, [ip, #0xe]
006700fc  03 30 80 e0                                      add r3, r0, r3
00670100  b4 30 8d e5                                      str r3, [sp, #0xb4]
00670104  90 30 9d e5                                      ldr r3, [sp, #0x90]
00670108  9c 20 8d e5                                      str r2, [sp, #0x9c]
0067010c  00 00 93 e5                                      ldr r0, [r3]
00670110  71 c6 fc eb                                      bl #0x5a1adc
00670114  90 c0 9d e5                                      ldr ip, [sp, #0x90]
00670118  70 10 9d e5                                      ldr r1, [sp, #0x70]
0067011c  04 30 9c e5                                      ldr r3, [ip, #4]
00670120  be 20 dc e1                                      ldrh r2, [ip, #0xe]
00670124  01 00 54 e1                                      cmp r4, r1
00670128  03 30 80 e0                                      add r3, r0, r3
0067012c  98 20 8d e5                                      str r2, [sp, #0x98]
00670130  b0 30 8d e5                                      str r3, [sp, #0xb0]
00670134  bc 01 00 2a                                      bhs #0x67082c
00670138  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
0067013c  b4 c0 9d e5                                      ldr ip, [sp, #0xb4]
00670140  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
00670144  80 40 8d e5                                      str r4, [sp, #0x80]
00670148  94 c3 23 e0                                      mla r3, r4, r3, ip
0067014c  94 02 24 e0                                      mla r4, r4, r2, r0
00670150  68 30 8d e5                                      str r3, [sp, #0x68]
00670154  6c 40 8d e5                                      str r4, [sp, #0x6c]
00670158  64 10 9d e5                                      ldr r1, [sp, #0x64]
0067015c  54 20 9d e5                                      ldr r2, [sp, #0x54]
00670160  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00670164  04 c0 42 e2                                      sub ip, r2, #4
00670168  4c 20 8d e5                                      str r2, [sp, #0x4c]
0067016c  60 c0 8d e5                                      str ip, [sp, #0x60]
00670170  98 30 d3 e5                                      ldrb r3, [r3, #0x98]
00670174  00 00 53 e3                                      cmp r3, #0
00670178  5c 30 8d e5                                      str r3, [sp, #0x5c]
0067017c  16 02 00 0a                                      beq #0x6709dc
00670180  00 50 92 e5                                      ldr r5, [r2]
00670184  00 10 a0 e3                                      mov r1, #0
00670188  05 00 a0 e1                                      mov r0, r5
0067018c  7e 77 f2 eb                                      bl #0x30df8c
00670190  00 00 50 e3                                      cmp r0, #0
00670194  10 02 00 1a                                      bne #0x6709dc
00670198  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0067019c  00 00 a0 e3                                      mov r0, #0
006701a0  64 10 9d e5                                      ldr r1, [sp, #0x64]
006701a4  30 00 8d e5                                      str r0, [sp, #0x30]
006701a8  04 c0 92 e5                                      ldr ip, [r2, #4]
006701ac  10 30 91 e5                                      ldr r3, [r1, #0x10]
006701b0  00 70 92 e5                                      ldr r7, [r2]
006701b4  18 c0 8d e5                                      str ip, [sp, #0x18]
006701b8  04 30 93 e5                                      ldr r3, [r3, #4]
006701bc  58 10 9d e5                                      ldr r1, [sp, #0x58]
006701c0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
006701c4  48 30 8d e5                                      str r3, [sp, #0x48]
006701c8  08 00 92 e5                                      ldr r0, [r2, #8]
006701cc  58 20 9d e5                                      ldr r2, [sp, #0x58]
006701d0  58 30 9d e5                                      ldr r3, [sp, #0x58]
006701d4  14 00 8d e5                                      str r0, [sp, #0x14]
006701d8  00 10 91 e5                                      ldr r1, [r1]
006701dc  01 60 a0 e3                                      mov r6, #1
006701e0  10 10 8d e5                                      str r1, [sp, #0x10]
006701e4  04 20 92 e5                                      ldr r2, [r2, #4]
006701e8  0c 20 8d e5                                      str r2, [sp, #0xc]
006701ec  08 30 93 e5                                      ldr r3, [r3, #8]
006701f0  40 c0 8d e5                                      str ip, [sp, #0x40]
006701f4  44 c0 8d e5                                      str ip, [sp, #0x44]
006701f8  08 30 8d e5                                      str r3, [sp, #8]
006701fc  34 c0 8d e5                                      str ip, [sp, #0x34]
00670200  00 30 a0 e3                                      mov r3, #0
00670204  38 c0 8d e5                                      str ip, [sp, #0x38]
00670208  3c c0 8d e5                                      str ip, [sp, #0x3c]
0067020c  0a 00 00 ea                                      b #0x67023c
00670210  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00670214  01 40 86 e2                                      add r4, r6, #1
00670218  04 50 b1 e5                                      ldr r5, [r1, #4]!
0067021c  4c 10 8d e5                                      str r1, [sp, #0x4c]
00670220  05 00 a0 e1                                      mov r0, r5
00670224  00 10 a0 e3                                      mov r1, #0
00670228  57 77 f2 eb                                      bl #0x30df8c
0067022c  00 00 50 e3                                      cmp r0, #0
00670230  b7 00 00 1a                                      bne #0x670514
00670234  06 30 a0 e1                                      mov r3, r6
00670238  04 60 a0 e1                                      mov r6, r4
0067023c  60 20 9d e5                                      ldr r2, [sp, #0x60]
00670240  48 c0 9d e5                                      ldr ip, [sp, #0x48]
00670244  10 10 9d e5                                      ldr r1, [sp, #0x10]
00670248  03 40 d2 e7                                      ldrb r4, [r2, r3]
0067024c  44 30 a0 e3                                      mov r3, #0x44
00670250  93 04 04 e0                                      mul r4, r3, r4
00670254  04 b0 9c e7                                      ldr fp, [ip, r4]
00670258  04 40 8c e0                                      add r4, ip, r4
0067025c  10 90 94 e5                                      ldr sb, [r4, #0x10]
00670260  0b 00 a0 e1                                      mov r0, fp
00670264  c0 7a f2 eb                                      bl #0x30ed6c
00670268  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0067026c  00 80 a0 e1                                      mov r8, r0
00670270  09 00 a0 e1                                      mov r0, sb
00670274  bc 7a f2 eb                                      bl #0x30ed6c
00670278  00 10 a0 e1                                      mov r1, r0
0067027c  08 00 a0 e1                                      mov r0, r8
00670280  47 7a f2 eb                                      bl #0x30eba4
00670284  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00670288  00 80 a0 e1                                      mov r8, r0
0067028c  08 10 9d e5                                      ldr r1, [sp, #8]
00670290  0a 00 a0 e1                                      mov r0, sl
00670294  b4 7a f2 eb                                      bl #0x30ed6c
00670298  00 10 a0 e1                                      mov r1, r0
0067029c  08 00 a0 e1                                      mov r0, r8
006702a0  3f 7a f2 eb                                      bl #0x30eba4
006702a4  30 10 94 e5                                      ldr r1, [r4, #0x30]
006702a8  3d 7a f2 eb                                      bl #0x30eba4
006702ac  00 10 a0 e1                                      mov r1, r0
006702b0  05 00 a0 e1                                      mov r0, r5
006702b4  ac 7a f2 eb                                      bl #0x30ed6c
006702b8  00 10 a0 e1                                      mov r1, r0
006702bc  30 00 9d e5                                      ldr r0, [sp, #0x30]
006702c0  37 7a f2 eb                                      bl #0x30eba4
006702c4  04 80 94 e5                                      ldr r8, [r4, #4]
006702c8  30 00 8d e5                                      str r0, [sp, #0x30]
006702cc  14 20 94 e5                                      ldr r2, [r4, #0x14]
006702d0  10 10 9d e5                                      ldr r1, [sp, #0x10]
006702d4  08 00 a0 e1                                      mov r0, r8
006702d8  1c 20 8d e5                                      str r2, [sp, #0x1c]
006702dc  a2 7a f2 eb                                      bl #0x30ed6c
006702e0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006702e4  00 30 a0 e1                                      mov r3, r0
006702e8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006702ec  04 30 8d e5                                      str r3, [sp, #4]
006702f0  9d 7a f2 eb                                      bl #0x30ed6c
006702f4  04 30 9d e5                                      ldr r3, [sp, #4]
006702f8  00 10 a0 e1                                      mov r1, r0
006702fc  03 00 a0 e1                                      mov r0, r3
00670300  24 30 94 e5                                      ldr r3, [r4, #0x24]
00670304  20 30 8d e5                                      str r3, [sp, #0x20]
00670308  25 7a f2 eb                                      bl #0x30eba4
0067030c  08 10 9d e5                                      ldr r1, [sp, #8]
00670310  00 30 a0 e1                                      mov r3, r0
00670314  20 00 9d e5                                      ldr r0, [sp, #0x20]
00670318  04 30 8d e5                                      str r3, [sp, #4]
0067031c  92 7a f2 eb                                      bl #0x30ed6c
00670320  04 30 9d e5                                      ldr r3, [sp, #4]
00670324  00 10 a0 e1                                      mov r1, r0
00670328  03 00 a0 e1                                      mov r0, r3
0067032c  1c 7a f2 eb                                      bl #0x30eba4
00670330  34 10 94 e5                                      ldr r1, [r4, #0x34]
00670334  1a 7a f2 eb                                      bl #0x30eba4
00670338  00 10 a0 e1                                      mov r1, r0
0067033c  05 00 a0 e1                                      mov r0, r5
00670340  89 7a f2 eb                                      bl #0x30ed6c
00670344  08 c0 94 e5                                      ldr ip, [r4, #8]
00670348  00 10 a0 e1                                      mov r1, r0
0067034c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00670350  24 c0 8d e5                                      str ip, [sp, #0x24]
00670354  12 7a f2 eb                                      bl #0x30eba4
00670358  40 00 8d e5                                      str r0, [sp, #0x40]
0067035c  18 20 94 e5                                      ldr r2, [r4, #0x18]
00670360  10 10 9d e5                                      ldr r1, [sp, #0x10]
00670364  24 00 9d e5                                      ldr r0, [sp, #0x24]
00670368  28 20 8d e5                                      str r2, [sp, #0x28]
0067036c  7e 7a f2 eb                                      bl #0x30ed6c
00670370  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00670374  00 30 a0 e1                                      mov r3, r0
00670378  28 00 9d e5                                      ldr r0, [sp, #0x28]
0067037c  04 30 8d e5                                      str r3, [sp, #4]
00670380  79 7a f2 eb                                      bl #0x30ed6c
00670384  04 30 9d e5                                      ldr r3, [sp, #4]
00670388  00 10 a0 e1                                      mov r1, r0
0067038c  03 00 a0 e1                                      mov r0, r3
00670390  28 30 94 e5                                      ldr r3, [r4, #0x28]
00670394  2c 30 8d e5                                      str r3, [sp, #0x2c]
00670398  01 7a f2 eb                                      bl #0x30eba4
0067039c  08 10 9d e5                                      ldr r1, [sp, #8]
006703a0  00 30 a0 e1                                      mov r3, r0
006703a4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006703a8  04 30 8d e5                                      str r3, [sp, #4]
006703ac  6e 7a f2 eb                                      bl #0x30ed6c
006703b0  04 30 9d e5                                      ldr r3, [sp, #4]
006703b4  00 10 a0 e1                                      mov r1, r0
006703b8  03 00 a0 e1                                      mov r0, r3
006703bc  f8 79 f2 eb                                      bl #0x30eba4
006703c0  38 10 94 e5                                      ldr r1, [r4, #0x38]
006703c4  f6 79 f2 eb                                      bl #0x30eba4
006703c8  00 10 a0 e1                                      mov r1, r0
006703cc  05 00 a0 e1                                      mov r0, r5
006703d0  65 7a f2 eb                                      bl #0x30ed6c
006703d4  00 10 a0 e1                                      mov r1, r0
006703d8  44 00 9d e5                                      ldr r0, [sp, #0x44]
006703dc  f0 79 f2 eb                                      bl #0x30eba4
006703e0  07 10 a0 e1                                      mov r1, r7
006703e4  44 00 8d e5                                      str r0, [sp, #0x44]
006703e8  0b 00 a0 e1                                      mov r0, fp
006703ec  5e 7a f2 eb                                      bl #0x30ed6c
006703f0  18 10 9d e5                                      ldr r1, [sp, #0x18]
006703f4  00 40 a0 e1                                      mov r4, r0
006703f8  09 00 a0 e1                                      mov r0, sb
006703fc  5a 7a f2 eb                                      bl #0x30ed6c
00670400  00 10 a0 e1                                      mov r1, r0
00670404  04 00 a0 e1                                      mov r0, r4
00670408  e5 79 f2 eb                                      bl #0x30eba4
0067040c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00670410  00 40 a0 e1                                      mov r4, r0
00670414  0a 00 a0 e1                                      mov r0, sl
00670418  53 7a f2 eb                                      bl #0x30ed6c
0067041c  00 10 a0 e1                                      mov r1, r0
00670420  04 00 a0 e1                                      mov r0, r4
00670424  de 79 f2 eb                                      bl #0x30eba4
00670428  00 10 a0 e1                                      mov r1, r0
0067042c  05 00 a0 e1                                      mov r0, r5
00670430  4d 7a f2 eb                                      bl #0x30ed6c
00670434  00 10 a0 e1                                      mov r1, r0
00670438  34 00 9d e5                                      ldr r0, [sp, #0x34]
0067043c  d8 79 f2 eb                                      bl #0x30eba4
00670440  07 10 a0 e1                                      mov r1, r7
00670444  34 00 8d e5                                      str r0, [sp, #0x34]
00670448  08 00 a0 e1                                      mov r0, r8
0067044c  46 7a f2 eb                                      bl #0x30ed6c
00670450  18 10 9d e5                                      ldr r1, [sp, #0x18]
00670454  00 40 a0 e1                                      mov r4, r0
00670458  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0067045c  42 7a f2 eb                                      bl #0x30ed6c
00670460  00 10 a0 e1                                      mov r1, r0
00670464  04 00 a0 e1                                      mov r0, r4
00670468  cd 79 f2 eb                                      bl #0x30eba4
0067046c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00670470  00 40 a0 e1                                      mov r4, r0
00670474  20 00 9d e5                                      ldr r0, [sp, #0x20]
00670478  3b 7a f2 eb                                      bl #0x30ed6c
0067047c  00 10 a0 e1                                      mov r1, r0
00670480  04 00 a0 e1                                      mov r0, r4
00670484  c6 79 f2 eb                                      bl #0x30eba4
00670488  00 10 a0 e1                                      mov r1, r0
0067048c  05 00 a0 e1                                      mov r0, r5
00670490  35 7a f2 eb                                      bl #0x30ed6c
00670494  00 10 a0 e1                                      mov r1, r0
00670498  38 00 9d e5                                      ldr r0, [sp, #0x38]
0067049c  c0 79 f2 eb                                      bl #0x30eba4
006704a0  07 10 a0 e1                                      mov r1, r7
006704a4  38 00 8d e5                                      str r0, [sp, #0x38]
006704a8  24 00 9d e5                                      ldr r0, [sp, #0x24]
006704ac  2e 7a f2 eb                                      bl #0x30ed6c
006704b0  18 10 9d e5                                      ldr r1, [sp, #0x18]
006704b4  00 40 a0 e1                                      mov r4, r0
006704b8  28 00 9d e5                                      ldr r0, [sp, #0x28]
006704bc  2a 7a f2 eb                                      bl #0x30ed6c
006704c0  00 10 a0 e1                                      mov r1, r0
006704c4  04 00 a0 e1                                      mov r0, r4
006704c8  b5 79 f2 eb                                      bl #0x30eba4
006704cc  14 10 9d e5                                      ldr r1, [sp, #0x14]
006704d0  00 40 a0 e1                                      mov r4, r0
006704d4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006704d8  23 7a f2 eb                                      bl #0x30ed6c
006704dc  00 10 a0 e1                                      mov r1, r0
006704e0  04 00 a0 e1                                      mov r0, r4
006704e4  ae 79 f2 eb                                      bl #0x30eba4
006704e8  00 10 a0 e1                                      mov r1, r0
006704ec  05 00 a0 e1                                      mov r0, r5
006704f0  1d 7a f2 eb                                      bl #0x30ed6c
006704f4  00 10 a0 e1                                      mov r1, r0
006704f8  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006704fc  a8 79 f2 eb                                      bl #0x30eba4
00670500  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
00670504  76 30 ef e6                                      uxtb r3, r6
00670508  3c 00 8d e5                                      str r0, [sp, #0x3c]
0067050c  03 00 5c e1                                      cmp ip, r3
00670510  3e ff ff 8a                                      bhi #0x670210
00670514  80 10 9d e5                                      ldr r1, [sp, #0x80]
00670518  30 30 9d e5                                      ldr r3, [sp, #0x30]
0067051c  50 c0 9d e5                                      ldr ip, [sp, #0x50]
00670520  01 10 81 e2                                      add r1, r1, #1
00670524  70 20 9d e5                                      ldr r2, [sp, #0x70]
00670528  80 10 8d e5                                      str r1, [sp, #0x80]
0067052c  00 30 8c e5                                      str r3, [ip]
00670530  40 00 9d e5                                      ldr r0, [sp, #0x40]
00670534  02 00 51 e1                                      cmp r1, r2
00670538  04 00 8c e5                                      str r0, [ip, #4]
0067053c  44 10 9d e5                                      ldr r1, [sp, #0x44]
00670540  08 10 8c e5                                      str r1, [ip, #8]
00670544  34 20 9d e5                                      ldr r2, [sp, #0x34]
00670548  68 30 9d e5                                      ldr r3, [sp, #0x68]
0067054c  00 20 83 e5                                      str r2, [r3]
00670550  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00670554  04 c0 83 e5                                      str ip, [r3, #4]
00670558  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0067055c  08 00 83 e5                                      str r0, [r3, #8]
00670560  b1 00 00 2a                                      bhs #0x67082c
00670564  54 10 9d e5                                      ldr r1, [sp, #0x54]
00670568  78 20 9d e5                                      ldr r2, [sp, #0x78]
0067056c  50 30 9d e5                                      ldr r3, [sp, #0x50]
00670570  74 c0 9d e5                                      ldr ip, [sp, #0x74]
00670574  02 10 81 e0                                      add r1, r1, r2
00670578  68 00 9d e5                                      ldr r0, [sp, #0x68]
0067057c  54 10 8d e5                                      str r1, [sp, #0x54]
00670580  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
00670584  0c 30 83 e0                                      add r3, r3, ip
00670588  58 20 9d e5                                      ldr r2, [sp, #0x58]
0067058c  01 00 80 e0                                      add r0, r0, r1
00670590  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
00670594  50 30 8d e5                                      str r3, [sp, #0x50]
00670598  68 00 8d e5                                      str r0, [sp, #0x68]
0067059c  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006705a0  98 00 9d e5                                      ldr r0, [sp, #0x98]
006705a4  03 20 82 e0                                      add r2, r2, r3
006705a8  00 c0 8c e0                                      add ip, ip, r0
006705ac  58 20 8d e5                                      str r2, [sp, #0x58]
006705b0  6c c0 8d e5                                      str ip, [sp, #0x6c]
006705b4  e7 fe ff ea                                      b #0x670158
006705b8  70 10 9d e5                                      ldr r1, [sp, #0x70]
006705bc  01 00 54 e1                                      cmp r4, r1
006705c0  20 40 8d 35                                      strlo r4, [sp, #0x20]
006705c4  bc 00 00 2a                                      bhs #0x6708bc
006705c8  64 00 9d e5                                      ldr r0, [sp, #0x64]
006705cc  54 10 9d e5                                      ldr r1, [sp, #0x54]
006705d0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
006705d4  04 20 41 e2                                      sub r2, r1, #4
006705d8  14 10 8d e5                                      str r1, [sp, #0x14]
006705dc  1c 20 8d e5                                      str r2, [sp, #0x1c]
006705e0  98 30 d3 e5                                      ldrb r3, [r3, #0x98]
006705e4  00 00 53 e3                                      cmp r3, #0
006705e8  18 30 8d e5                                      str r3, [sp, #0x18]
006705ec  dc 00 00 0a                                      beq #0x670964
006705f0  00 50 91 e5                                      ldr r5, [r1]
006705f4  00 10 a0 e3                                      mov r1, #0
006705f8  05 00 a0 e1                                      mov r0, r5
006705fc  62 76 f2 eb                                      bl #0x30df8c
00670600  00 00 50 e3                                      cmp r0, #0
00670604  d6 00 00 1a                                      bne #0x670964
00670608  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0067060c  58 00 9d e5                                      ldr r0, [sp, #0x58]
00670610  00 90 a0 e3                                      mov sb, #0
00670614  10 30 9c e5                                      ldr r3, [ip, #0x10]
00670618  00 a0 90 e5                                      ldr sl, [r0]
0067061c  04 80 90 e5                                      ldr r8, [r0, #4]
00670620  04 30 93 e5                                      ldr r3, [r3, #4]
00670624  01 60 a0 e3                                      mov r6, #1
00670628  10 30 8d e5                                      str r3, [sp, #0x10]
0067062c  08 70 90 e5                                      ldr r7, [r0, #8]
00670630  00 30 a0 e3                                      mov r3, #0
00670634  08 90 8d e5                                      str sb, [sp, #8]
00670638  0c 90 8d e5                                      str sb, [sp, #0xc]
0067063c  0a 00 00 ea                                      b #0x67066c
00670640  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00670644  00 10 a0 e3                                      mov r1, #0
00670648  01 40 86 e2                                      add r4, r6, #1
0067064c  04 50 bc e5                                      ldr r5, [ip, #4]!
00670650  05 00 a0 e1                                      mov r0, r5
00670654  14 c0 8d e5                                      str ip, [sp, #0x14]
00670658  4b 76 f2 eb                                      bl #0x30df8c
0067065c  00 00 50 e3                                      cmp r0, #0
00670660  59 00 00 1a                                      bne #0x6707cc
00670664  06 30 a0 e1                                      mov r3, r6
00670668  04 60 a0 e1                                      mov r6, r4
0067066c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00670670  44 10 a0 e3                                      mov r1, #0x44
00670674  10 20 9d e5                                      ldr r2, [sp, #0x10]
00670678  03 40 d0 e7                                      ldrb r4, [r0, r3]
0067067c  0a 00 a0 e1                                      mov r0, sl
00670680  91 04 04 e0                                      mul r4, r1, r4
00670684  04 10 92 e7                                      ldr r1, [r2, r4]
00670688  04 40 82 e0                                      add r4, r2, r4
0067068c  b6 79 f2 eb                                      bl #0x30ed6c
00670690  10 10 94 e5                                      ldr r1, [r4, #0x10]
00670694  00 b0 a0 e1                                      mov fp, r0
00670698  08 00 a0 e1                                      mov r0, r8
0067069c  b2 79 f2 eb                                      bl #0x30ed6c
006706a0  00 10 a0 e1                                      mov r1, r0
006706a4  0b 00 a0 e1                                      mov r0, fp
006706a8  3d 79 f2 eb                                      bl #0x30eba4
006706ac  20 10 94 e5                                      ldr r1, [r4, #0x20]
006706b0  00 b0 a0 e1                                      mov fp, r0
006706b4  07 00 a0 e1                                      mov r0, r7
006706b8  ab 79 f2 eb                                      bl #0x30ed6c
006706bc  00 10 a0 e1                                      mov r1, r0
006706c0  0b 00 a0 e1                                      mov r0, fp
006706c4  36 79 f2 eb                                      bl #0x30eba4
006706c8  30 10 94 e5                                      ldr r1, [r4, #0x30]
006706cc  34 79 f2 eb                                      bl #0x30eba4
006706d0  00 10 a0 e1                                      mov r1, r0
006706d4  05 00 a0 e1                                      mov r0, r5
006706d8  a3 79 f2 eb                                      bl #0x30ed6c
006706dc  00 10 a0 e1                                      mov r1, r0
006706e0  08 00 9d e5                                      ldr r0, [sp, #8]
006706e4  2e 79 f2 eb                                      bl #0x30eba4
006706e8  08 00 8d e5                                      str r0, [sp, #8]
006706ec  04 10 94 e5                                      ldr r1, [r4, #4]
006706f0  0a 00 a0 e1                                      mov r0, sl
006706f4  9c 79 f2 eb                                      bl #0x30ed6c
006706f8  14 10 94 e5                                      ldr r1, [r4, #0x14]
006706fc  00 b0 a0 e1                                      mov fp, r0
00670700  08 00 a0 e1                                      mov r0, r8
00670704  98 79 f2 eb                                      bl #0x30ed6c
00670708  00 10 a0 e1                                      mov r1, r0
0067070c  0b 00 a0 e1                                      mov r0, fp
00670710  23 79 f2 eb                                      bl #0x30eba4
00670714  24 10 94 e5                                      ldr r1, [r4, #0x24]
00670718  00 b0 a0 e1                                      mov fp, r0
0067071c  07 00 a0 e1                                      mov r0, r7
00670720  91 79 f2 eb                                      bl #0x30ed6c
00670724  00 10 a0 e1                                      mov r1, r0
00670728  0b 00 a0 e1                                      mov r0, fp
0067072c  1c 79 f2 eb                                      bl #0x30eba4
00670730  34 10 94 e5                                      ldr r1, [r4, #0x34]
00670734  1a 79 f2 eb                                      bl #0x30eba4
00670738  00 10 a0 e1                                      mov r1, r0
0067073c  05 00 a0 e1                                      mov r0, r5
00670740  89 79 f2 eb                                      bl #0x30ed6c
00670744  00 10 a0 e1                                      mov r1, r0
00670748  09 00 a0 e1                                      mov r0, sb
0067074c  14 79 f2 eb                                      bl #0x30eba4
00670750  08 10 94 e5                                      ldr r1, [r4, #8]
00670754  00 90 a0 e1                                      mov sb, r0
00670758  0a 00 a0 e1                                      mov r0, sl
0067075c  82 79 f2 eb                                      bl #0x30ed6c
00670760  18 10 94 e5                                      ldr r1, [r4, #0x18]
00670764  00 b0 a0 e1                                      mov fp, r0
00670768  08 00 a0 e1                                      mov r0, r8
0067076c  7e 79 f2 eb                                      bl #0x30ed6c
00670770  00 10 a0 e1                                      mov r1, r0
00670774  0b 00 a0 e1                                      mov r0, fp
00670778  09 79 f2 eb                                      bl #0x30eba4
0067077c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00670780  00 b0 a0 e1                                      mov fp, r0
00670784  07 00 a0 e1                                      mov r0, r7
00670788  77 79 f2 eb                                      bl #0x30ed6c
0067078c  00 10 a0 e1                                      mov r1, r0
00670790  0b 00 a0 e1                                      mov r0, fp
00670794  02 79 f2 eb                                      bl #0x30eba4
00670798  38 10 94 e5                                      ldr r1, [r4, #0x38]
0067079c  00 79 f2 eb                                      bl #0x30eba4
006707a0  00 10 a0 e1                                      mov r1, r0
006707a4  05 00 a0 e1                                      mov r0, r5
006707a8  6f 79 f2 eb                                      bl #0x30ed6c
006707ac  00 10 a0 e1                                      mov r1, r0
006707b0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006707b4  fa 78 f2 eb                                      bl #0x30eba4
006707b8  0c 00 8d e5                                      str r0, [sp, #0xc]
006707bc  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006707c0  76 30 ef e6                                      uxtb r3, r6
006707c4  0c 00 53 e1                                      cmp r3, ip
006707c8  9c ff ff 3a                                      blo #0x670640
006707cc  20 00 9d e5                                      ldr r0, [sp, #0x20]
006707d0  08 20 9d e5                                      ldr r2, [sp, #8]
006707d4  50 30 9d e5                                      ldr r3, [sp, #0x50]
006707d8  01 00 80 e2                                      add r0, r0, #1
006707dc  70 10 9d e5                                      ldr r1, [sp, #0x70]
006707e0  20 00 8d e5                                      str r0, [sp, #0x20]
006707e4  00 20 83 e5                                      str r2, [r3]
006707e8  04 90 83 e5                                      str sb, [r3, #4]
006707ec  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006707f0  01 00 50 e1                                      cmp r0, r1
006707f4  08 c0 83 e5                                      str ip, [r3, #8]
006707f8  2f 00 00 2a                                      bhs #0x6708bc
006707fc  74 20 9d e5                                      ldr r2, [sp, #0x74]
00670800  54 00 9d e5                                      ldr r0, [sp, #0x54]
00670804  78 10 9d e5                                      ldr r1, [sp, #0x78]
00670808  02 30 83 e0                                      add r3, r3, r2
0067080c  50 30 8d e5                                      str r3, [sp, #0x50]
00670810  7c c0 9d e5                                      ldr ip, [sp, #0x7c]
00670814  58 30 9d e5                                      ldr r3, [sp, #0x58]
00670818  01 00 80 e0                                      add r0, r0, r1
0067081c  54 00 8d e5                                      str r0, [sp, #0x54]
00670820  0c 30 83 e0                                      add r3, r3, ip
00670824  58 30 8d e5                                      str r3, [sp, #0x58]
00670828  66 ff ff ea                                      b #0x6705c8
0067082c  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
00670830  00 00 50 e3                                      cmp r0, #0
00670834  0e 00 00 0a                                      beq #0x670874
00670838  90 10 9d e5                                      ldr r1, [sp, #0x90]
0067083c  00 40 91 e5                                      ldr r4, [r1]
00670840  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00670844  1f 20 03 e2                                      and r2, r3, #0x1f
00670848  01 00 52 e3                                      cmp r2, #1
0067084c  6f 00 00 8a                                      bhi #0x670a10
00670850  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00670854  20 00 13 e3                                      tst r3, #0x20
00670858  03 00 00 0a                                      beq #0x67086c
0067085c  00 30 94 e5                                      ldr r3, [r4]
00670860  04 00 a0 e1                                      mov r0, r4
00670864  0f e0 a0 e1                                      mov lr, pc
00670868  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0067086c  00 30 a0 e3                                      mov r3, #0
00670870  13 30 c4 e5                                      strb r3, [r4, #0x13]
00670874  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
00670878  00 00 52 e3                                      cmp r2, #0
0067087c  0e 00 00 0a                                      beq #0x6708bc
00670880  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00670884  00 40 93 e5                                      ldr r4, [r3]
00670888  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0067088c  1f 20 03 e2                                      and r2, r3, #0x1f
00670890  01 00 52 e3                                      cmp r2, #1
00670894  58 00 00 8a                                      bhi #0x6709fc
00670898  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0067089c  20 00 13 e3                                      tst r3, #0x20
006708a0  03 00 00 0a                                      beq #0x6708b4
006708a4  00 30 94 e5                                      ldr r3, [r4]
006708a8  04 00 a0 e1                                      mov r0, r4
006708ac  0f e0 a0 e1                                      mov lr, pc
006708b0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006708b4  00 30 a0 e3                                      mov r3, #0
006708b8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006708bc  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
006708c0  00 00 51 e3                                      cmp r1, #0
006708c4  0a 00 00 0a                                      beq #0x6708f4
006708c8  94 20 9d e5                                      ldr r2, [sp, #0x94]
006708cc  88 30 9d e5                                      ldr r3, [sp, #0x88]
006708d0  02 42 93 e7                                      ldr r4, [r3, r2, lsl #4]
006708d4  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006708d8  1f 20 03 e2                                      and r2, r3, #0x1f
006708dc  01 00 52 e3                                      cmp r2, #1
006708e0  31 00 00 9a                                      bls #0x6709ac
006708e4  01 20 42 e2                                      sub r2, r2, #1
006708e8  1f 30 c3 e3                                      bic r3, r3, #0x1f
006708ec  03 30 82 e1                                      orr r3, r2, r3
006708f0  13 30 c4 e5                                      strb r3, [r4, #0x13]
006708f4  a4 c0 9d e5                                      ldr ip, [sp, #0xa4]
006708f8  00 00 5c e3                                      cmp ip, #0
006708fc  09 00 00 0a                                      beq #0x670928
00670900  84 00 9d e5                                      ldr r0, [sp, #0x84]
00670904  14 40 90 e5                                      ldr r4, [r0, #0x14]
00670908  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0067090c  1f 20 03 e2                                      and r2, r3, #0x1f
00670910  01 00 52 e3                                      cmp r2, #1
00670914  1e 00 00 9a                                      bls #0x670994
00670918  01 20 42 e2                                      sub r2, r2, #1
0067091c  1f 30 c3 e3                                      bic r3, r3, #0x1f
00670920  03 30 82 e1                                      orr r3, r2, r3
00670924  13 30 c4 e5                                      strb r3, [r4, #0x13]
00670928  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0067092c  00 00 51 e3                                      cmp r1, #0
00670930  09 00 00 0a                                      beq #0x67095c
00670934  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
00670938  14 40 92 e5                                      ldr r4, [r2, #0x14]
0067093c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00670940  1f 20 03 e2                                      and r2, r3, #0x1f
00670944  01 00 52 e3                                      cmp r2, #1
00670948  1d 00 00 9a                                      bls #0x6709c4
0067094c  01 20 42 e2                                      sub r2, r2, #1
00670950  1f 30 c3 e3                                      bic r3, r3, #0x1f
00670954  03 30 82 e1                                      orr r3, r2, r3
00670958  13 30 c4 e5                                      strb r3, [r4, #0x13]
0067095c  bc d0 8d e2                                      add sp, sp, #0xbc
00670960  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00670964  00 90 a0 e3                                      mov sb, #0
00670968  08 90 8d e5                                      str sb, [sp, #8]
0067096c  0c 90 8d e5                                      str sb, [sp, #0xc]
00670970  95 ff ff ea                                      b #0x6707cc
00670974  84 30 9d e5                                      ldr r3, [sp, #0x84]
00670978  88 c0 9d e5                                      ldr ip, [sp, #0x88]
0067097c  0c 20 d3 e5                                      ldrb r2, [r3, #0xc]
00670980  01 20 82 e2                                      add r2, r2, #1
00670984  72 30 ef e6                                      uxtb r3, r2
00670988  03 32 8c e0                                      add r3, ip, r3, lsl #4
0067098c  ac 30 8d e5                                      str r3, [sp, #0xac]
00670990  af fd ff ea                                      b #0x670054
00670994  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00670998  20 00 13 e3                                      tst r3, #0x20
0067099c  25 00 00 1a                                      bne #0x670a38
006709a0  00 30 a0 e3                                      mov r3, #0
006709a4  13 30 c4 e5                                      strb r3, [r4, #0x13]
006709a8  de ff ff ea                                      b #0x670928
006709ac  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006709b0  20 00 13 e3                                      tst r3, #0x20
006709b4  1a 00 00 1a                                      bne #0x670a24
006709b8  00 30 a0 e3                                      mov r3, #0
006709bc  13 30 c4 e5                                      strb r3, [r4, #0x13]
006709c0  cb ff ff ea                                      b #0x6708f4
006709c4  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006709c8  20 00 13 e3                                      tst r3, #0x20
006709cc  1e 00 00 1a                                      bne #0x670a4c
006709d0  00 30 a0 e3                                      mov r3, #0
006709d4  13 30 c4 e5                                      strb r3, [r4, #0x13]
006709d8  df ff ff ea                                      b #0x67095c
006709dc  00 00 a0 e3                                      mov r0, #0
006709e0  30 00 8d e5                                      str r0, [sp, #0x30]
006709e4  40 00 8d e5                                      str r0, [sp, #0x40]
006709e8  44 00 8d e5                                      str r0, [sp, #0x44]
006709ec  34 00 8d e5                                      str r0, [sp, #0x34]
006709f0  38 00 8d e5                                      str r0, [sp, #0x38]
006709f4  3c 00 8d e5                                      str r0, [sp, #0x3c]
006709f8  c5 fe ff ea                                      b #0x670514
006709fc  01 20 42 e2                                      sub r2, r2, #1
00670a00  1f 30 c3 e3                                      bic r3, r3, #0x1f
00670a04  03 30 82 e1                                      orr r3, r2, r3
00670a08  13 30 c4 e5                                      strb r3, [r4, #0x13]
00670a0c  aa ff ff ea                                      b #0x6708bc
00670a10  01 20 42 e2                                      sub r2, r2, #1
00670a14  1f 30 c3 e3                                      bic r3, r3, #0x1f
00670a18  03 30 82 e1                                      orr r3, r2, r3
00670a1c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00670a20  93 ff ff ea                                      b #0x670874
00670a24  00 30 94 e5                                      ldr r3, [r4]
00670a28  04 00 a0 e1                                      mov r0, r4
00670a2c  0f e0 a0 e1                                      mov lr, pc
00670a30  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00670a34  df ff ff ea                                      b #0x6709b8
00670a38  00 30 94 e5                                      ldr r3, [r4]
00670a3c  04 00 a0 e1                                      mov r0, r4
00670a40  0f e0 a0 e1                                      mov lr, pc
00670a44  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00670a48  d4 ff ff ea                                      b #0x6709a0
00670a4c  00 30 94 e5                                      ldr r3, [r4]
00670a50  04 00 a0 e1                                      mov r0, r4
00670a54  0f e0 a0 e1                                      mov lr, pc
00670a58  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00670a5c  db ff ff ea                                      b #0x6709d0

; FUNCTION 0x0064a6e4, declared_size=2312, range_size=2312, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMesh5morphEj
; demangled: glitch::collada::CMorphingMesh::morph(unsigned int)
; decoder-mode: arm
0064a6e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064a6e8  24 30 90 e5                                      ldr r3, [r0, #0x24]
0064a6ec  6c d0 4d e2                                      sub sp, sp, #0x6c
0064a6f0  20 10 8d e5                                      str r1, [sp, #0x20]
0064a6f4  00 30 93 e5                                      ldr r3, [r3]
0064a6f8  01 20 a0 e1                                      mov r2, r1
0064a6fc  00 60 a0 e1                                      mov r6, r0
0064a700  03 10 a0 e1                                      mov r1, r3
0064a704  64 00 8d e2                                      add r0, sp, #0x64
0064a708  00 30 93 e5                                      ldr r3, [r3]
0064a70c  0f e0 a0 e1                                      mov lr, pc
0064a710  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0064a714  64 40 9d e5                                      ldr r4, [sp, #0x64]
0064a718  00 00 54 e3                                      cmp r4, #0
0064a71c  01 00 00 0a                                      beq #0x64a728
0064a720  04 00 a0 e1                                      mov r0, r4
0064a724  96 4b f3 eb                                      bl #0x31d584
0064a728  28 20 94 e5                                      ldr r2, [r4, #0x28]
0064a72c  24 40 94 e5                                      ldr r4, [r4, #0x24]
0064a730  24 30 96 e5                                      ldr r3, [r6, #0x24]
0064a734  fe 15 a0 e3                                      mov r1, #0x3f800000
0064a738  24 40 8d e5                                      str r4, [sp, #0x24]
0064a73c  28 50 96 e5                                      ldr r5, [r6, #0x28]
0064a740  04 10 83 e5                                      str r1, [r3, #4]
0064a744  30 10 96 e5                                      ldr r1, [r6, #0x30]
0064a748  05 50 63 e0                                      rsb r5, r3, r5
0064a74c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0064a750  04 30 91 e5                                      ldr r3, [r1, #4]
0064a754  c5 51 a0 e1                                      asr r5, r5, #3
0064a758  02 20 60 e0                                      rsb r2, r0, r2
0064a75c  00 00 53 e3                                      cmp r3, #0
0064a760  28 20 8d e5                                      str r2, [sp, #0x28]
0064a764  0c 00 00 1a                                      bne #0x64a79c
0064a768  01 00 55 e3                                      cmp r5, #1
0064a76c  0a 00 00 9a                                      bls #0x64a79c
0064a770  01 40 a0 e3                                      mov r4, #1
0064a774  24 70 96 e5                                      ldr r7, [r6, #0x24]
0064a778  84 31 87 e0                                      add r3, r7, r4, lsl #3
0064a77c  04 10 93 e5                                      ldr r1, [r3, #4]
0064a780  04 00 97 e5                                      ldr r0, [r7, #4]
0064a784  08 0f f3 eb                                      bl #0x30e3ac
0064a788  01 40 84 e2                                      add r4, r4, #1
0064a78c  05 00 54 e1                                      cmp r4, r5
0064a790  04 00 87 e5                                      str r0, [r7, #4]
0064a794  f6 ff ff 1a                                      bne #0x64a774
0064a798  01 00 00 ea                                      b #0x64a7a4
0064a79c  00 00 55 e3                                      cmp r5, #0
0064a7a0  08 02 00 0a                                      beq #0x64afc8
0064a7a4  24 a0 96 e5                                      ldr sl, [r6, #0x24]
0064a7a8  bd 17 03 e3                                      movw r1, #0x37bd
0064a7ac  86 15 43 e3                                      movt r1, #0x3586
0064a7b0  04 00 9a e5                                      ldr r0, [sl, #4]
0064a7b4  02 01 c0 e3                                      bic r0, r0, #0x80000000
0064a7b8  7b 10 f3 eb                                      bl #0x30e9ac
0064a7bc  00 00 50 e3                                      cmp r0, #0
0064a7c0  00 70 a0 03                                      moveq r7, #0
0064a7c4  01 40 a0 03                                      moveq r4, #1
0064a7c8  10 00 00 0a                                      beq #0x64a810
0064a7cc  00 40 a0 e3                                      mov r4, #0
0064a7d0  04 00 00 ea                                      b #0x64a7e8
0064a7d4  04 00 98 e5                                      ldr r0, [r8, #4]
0064a7d8  02 01 c0 e3                                      bic r0, r0, #0x80000000
0064a7dc  72 10 f3 eb                                      bl #0x30e9ac
0064a7e0  00 00 50 e3                                      cmp r0, #0
0064a7e4  b2 01 00 0a                                      beq #0x64aeb4
0064a7e8  01 40 84 e2                                      add r4, r4, #1
0064a7ec  bd 17 03 e3                                      movw r1, #0x37bd
0064a7f0  84 71 a0 e1                                      lsl r7, r4, #3
0064a7f4  05 00 54 e1                                      cmp r4, r5
0064a7f8  86 15 43 e3                                      movt r1, #0x3586
0064a7fc  07 80 8a e0                                      add r8, sl, r7
0064a800  f3 ff ff 1a                                      bne #0x64a7d4
0064a804  85 71 a0 e1                                      lsl r7, r5, #3
0064a808  07 a0 8a e0                                      add sl, sl, r7
0064a80c  01 40 85 e2                                      add r4, r5, #1
0064a810  00 30 9a e5                                      ldr r3, [sl]
0064a814  20 20 9d e5                                      ldr r2, [sp, #0x20]
0064a818  60 00 8d e2                                      add r0, sp, #0x60
0064a81c  03 10 a0 e1                                      mov r1, r3
0064a820  00 30 93 e5                                      ldr r3, [r3]
0064a824  0f e0 a0 e1                                      mov lr, pc
0064a828  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0064a82c  60 00 9d e5                                      ldr r0, [sp, #0x60]
0064a830  14 a0 90 e5                                      ldr sl, [r0, #0x14]
0064a834  52 4b f3 eb                                      bl #0x31d584
0064a838  01 10 a0 e3                                      mov r1, #1
0064a83c  14 00 9a e5                                      ldr r0, [sl, #0x14]
0064a840  a5 5c fd eb                                      bl #0x5a1adc
0064a844  14 80 8a e2                                      add r8, sl, #0x14
0064a848  04 30 98 e5                                      ldr r3, [r8, #4]
0064a84c  00 c0 96 e5                                      ldr ip, [r6]
0064a850  06 10 a0 e1                                      mov r1, r6
0064a854  03 30 80 e0                                      add r3, r0, r3
0064a858  1c 30 8d e5                                      str r3, [sp, #0x1c]
0064a85c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0064a860  5c 00 8d e2                                      add r0, sp, #0x5c
0064a864  be b0 d8 e1                                      ldrh fp, [r8, #0xe]
0064a868  0f e0 a0 e1                                      mov lr, pc
0064a86c  14 f0 9c e5                                      ldr pc, [ip, #0x14]
0064a870  24 10 9d e5                                      ldr r1, [sp, #0x24]
0064a874  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0064a878  5c 90 9d e5                                      ldr sb, [sp, #0x5c]
0064a87c  91 2b 21 e0                                      mla r1, r1, fp, r2
0064a880  00 00 59 e3                                      cmp sb, #0
0064a884  10 10 8d e5                                      str r1, [sp, #0x10]
0064a888  01 00 00 0a                                      beq #0x64a894
0064a88c  09 00 a0 e1                                      mov r0, sb
0064a890  3b 4b f3 eb                                      bl #0x31d584
0064a894  14 90 99 e5                                      ldr sb, [sb, #0x14]
0064a898  04 10 a0 e3                                      mov r1, #4
0064a89c  2c 90 8d e5                                      str sb, [sp, #0x2c]
0064a8a0  14 00 99 e5                                      ldr r0, [sb, #0x14]
0064a8a4  51 5c fd eb                                      bl #0x5a19f0
0064a8a8  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
0064a8ac  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0064a8b0  14 90 89 e2                                      add sb, sb, #0x14
0064a8b4  be c0 d9 e1                                      ldrh ip, [sb, #0xe]
0064a8b8  04 30 99 e5                                      ldr r3, [sb, #4]
0064a8bc  14 c0 8d e5                                      str ip, [sp, #0x14]
0064a8c0  03 30 80 e0                                      add r3, r0, r3
0064a8c4  24 20 96 e5                                      ldr r2, [r6, #0x24]
0064a8c8  9e 3c 2e e0                                      mla lr, lr, ip, r3
0064a8cc  44 30 8d e5                                      str r3, [sp, #0x44]
0064a8d0  40 e0 8d e5                                      str lr, [sp, #0x40]
0064a8d4  07 30 82 e0                                      add r3, r2, r7
0064a8d8  04 c0 93 e5                                      ldr ip, [r3, #4]
0064a8dc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0064a8e0  0b 30 a0 e1                                      mov r3, fp
0064a8e4  00 c0 8d e5                                      str ip, [sp]
0064a8e8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0064a8ec  0e 00 a0 e1                                      mov r0, lr
0064a8f0  14 10 9d e5                                      ldr r1, [sp, #0x14]
0064a8f4  04 c0 8d e5                                      str ip, [sp, #4]
0064a8f8  8f fc ff eb                                      bl #0x649b3c
0064a8fc  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0064a900  04 30 9a e5                                      ldr r3, [sl, #4]
0064a904  04 20 90 e5                                      ldr r2, [r0, #4]
0064a908  03 30 02 e0                                      and r3, r2, r3
0064a90c  02 08 13 e3                                      tst r3, #0x20000
0064a910  35 00 00 0a                                      beq #0x64a9ec
0064a914  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0064a918  0c a0 da e5                                      ldrb sl, [sl, #0xc]
0064a91c  01 30 83 e2                                      add r3, r3, #1
0064a920  73 30 ef e6                                      uxtb r3, r3
0064a924  03 02 99 e7                                      ldr r0, [sb, r3, lsl #4]
0064a928  03 b2 89 e0                                      add fp, sb, r3, lsl #4
0064a92c  00 00 50 e3                                      cmp r0, #0
0064a930  2d 00 00 0a                                      beq #0x64a9ec
0064a934  01 a0 8a e2                                      add sl, sl, #1
0064a938  7a a0 ef e6                                      uxtb sl, sl
0064a93c  0a 32 98 e7                                      ldr r3, [r8, sl, lsl #4]
0064a940  0a 92 88 e0                                      add sb, r8, sl, lsl #4
0064a944  00 00 53 e3                                      cmp r3, #0
0064a948  27 00 00 0a                                      beq #0x64a9ec
0064a94c  04 10 a0 e3                                      mov r1, #4
0064a950  26 5c fd eb                                      bl #0x5a19f0
0064a954  04 20 9b e5                                      ldr r2, [fp, #4]
0064a958  be 30 db e1                                      ldrh r3, [fp, #0xe]
0064a95c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0064a960  02 20 80 e0                                      add r2, r0, r2
0064a964  48 20 8d e5                                      str r2, [sp, #0x48]
0064a968  9c 23 23 e0                                      mla r3, ip, r3, r2
0064a96c  01 10 a0 e3                                      mov r1, #1
0064a970  0a 02 98 e7                                      ldr r0, [r8, sl, lsl #4]
0064a974  34 30 8d e5                                      str r3, [sp, #0x34]
0064a978  57 5c fd eb                                      bl #0x5a1adc
0064a97c  24 30 96 e5                                      ldr r3, [r6, #0x24]
0064a980  04 10 99 e5                                      ldr r1, [sb, #4]
0064a984  be 20 d9 e1                                      ldrh r2, [sb, #0xe]
0064a988  07 70 83 e0                                      add r7, r3, r7
0064a98c  04 c0 97 e5                                      ldr ip, [r7, #4]
0064a990  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0064a994  01 70 80 e0                                      add r7, r0, r1
0064a998  00 c0 8d e5                                      str ip, [sp]
0064a99c  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0064a9a0  02 30 a0 e1                                      mov r3, r2
0064a9a4  34 00 9d e5                                      ldr r0, [sp, #0x34]
0064a9a8  14 10 9d e5                                      ldr r1, [sp, #0x14]
0064a9ac  9e 72 22 e0                                      mla r2, lr, r2, r7
0064a9b0  04 c0 8d e5                                      str ip, [sp, #4]
0064a9b4  60 fc ff eb                                      bl #0x649b3c
0064a9b8  00 00 57 e3                                      cmp r7, #0
0064a9bc  08 00 00 0a                                      beq #0x64a9e4
0064a9c0  00 70 99 e5                                      ldr r7, [sb]
0064a9c4  13 20 d7 e5                                      ldrb r2, [r7, #0x13]
0064a9c8  1f 30 02 e2                                      and r3, r2, #0x1f
0064a9cc  01 00 53 e3                                      cmp r3, #1
0064a9d0  75 01 00 9a                                      bls #0x64afac
0064a9d4  01 10 43 e2                                      sub r1, r3, #1
0064a9d8  1f 30 c2 e3                                      bic r3, r2, #0x1f
0064a9dc  03 30 81 e1                                      orr r3, r1, r3
0064a9e0  13 30 c7 e5                                      strb r3, [r7, #0x13]
0064a9e4  3c b0 8d e5                                      str fp, [sp, #0x3c]
0064a9e8  03 00 00 ea                                      b #0x64a9fc
0064a9ec  00 00 a0 e3                                      mov r0, #0
0064a9f0  3c 00 8d e5                                      str r0, [sp, #0x3c]
0064a9f4  48 00 8d e5                                      str r0, [sp, #0x48]
0064a9f8  34 00 8d e5                                      str r0, [sp, #0x34]
0064a9fc  04 00 55 e1                                      cmp r5, r4
0064aa00  c0 00 00 9a                                      bls #0x64ad08
0064aa04  58 10 8d e2                                      add r1, sp, #0x58
0064aa08  84 71 a0 e1                                      lsl r7, r4, #3
0064aa0c  38 10 8d e5                                      str r1, [sp, #0x38]
0064aa10  18 50 8d e5                                      str r5, [sp, #0x18]
0064aa14  04 00 00 ea                                      b #0x64aa2c
0064aa18  18 20 9d e5                                      ldr r2, [sp, #0x18]
0064aa1c  01 40 84 e2                                      add r4, r4, #1
0064aa20  08 70 87 e2                                      add r7, r7, #8
0064aa24  02 00 54 e1                                      cmp r4, r2
0064aa28  b6 00 00 2a                                      bhs #0x64ad08
0064aa2c  24 50 96 e5                                      ldr r5, [r6, #0x24]
0064aa30  00 10 a0 e3                                      mov r1, #0
0064aa34  07 30 85 e0                                      add r3, r5, r7
0064aa38  04 00 93 e5                                      ldr r0, [r3, #4]
0064aa3c  52 0d f3 eb                                      bl #0x30df8c
0064aa40  00 00 50 e3                                      cmp r0, #0
0064aa44  f3 ff ff 1a                                      bne #0x64aa18
0064aa48  07 30 95 e7                                      ldr r3, [r5, r7]
0064aa4c  38 00 9d e5                                      ldr r0, [sp, #0x38]
0064aa50  20 20 9d e5                                      ldr r2, [sp, #0x20]
0064aa54  03 10 a0 e1                                      mov r1, r3
0064aa58  00 30 93 e5                                      ldr r3, [r3]
0064aa5c  0f e0 a0 e1                                      mov lr, pc
0064aa60  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0064aa64  58 00 9d e5                                      ldr r0, [sp, #0x58]
0064aa68  14 20 90 e5                                      ldr r2, [r0, #0x14]
0064aa6c  0c 20 8d e5                                      str r2, [sp, #0xc]
0064aa70  c3 4a f3 eb                                      bl #0x31d584
0064aa74  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0064aa78  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0064aa7c  00 00 53 e3                                      cmp r3, #0
0064aa80  14 c0 8c e2                                      add ip, ip, #0x14
0064aa84  10 c0 8d e5                                      str ip, [sp, #0x10]
0064aa88  08 00 00 0a                                      beq #0x64aab0
0064aa8c  00 50 98 e5                                      ldr r5, [r8]
0064aa90  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0064aa94  1f 20 03 e2                                      and r2, r3, #0x1f
0064aa98  01 00 52 e3                                      cmp r2, #1
0064aa9c  c3 00 00 9a                                      bls #0x64adb0
0064aaa0  01 20 42 e2                                      sub r2, r2, #1
0064aaa4  1f 30 c3 e3                                      bic r3, r3, #0x1f
0064aaa8  03 20 82 e1                                      orr r2, r2, r3
0064aaac  13 20 c5 e5                                      strb r2, [r5, #0x13]
0064aab0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0064aab4  01 10 a0 e3                                      mov r1, #1
0064aab8  14 00 92 e5                                      ldr r0, [r2, #0x14]
0064aabc  06 5c fd eb                                      bl #0x5a1adc
0064aac0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0064aac4  24 20 96 e5                                      ldr r2, [r6, #0x24]
0064aac8  00 10 a0 e3                                      mov r1, #0
0064aacc  04 30 9c e5                                      ldr r3, [ip, #4]
0064aad0  07 20 82 e0                                      add r2, r2, r7
0064aad4  04 a0 92 e5                                      ldr sl, [r2, #4]
0064aad8  03 30 80 e0                                      add r3, r0, r3
0064aadc  1c 30 8d e5                                      str r3, [sp, #0x1c]
0064aae0  0a 00 a0 e1                                      mov r0, sl
0064aae4  be b0 dc e1                                      ldrh fp, [ip, #0xe]
0064aae8  27 0d f3 eb                                      bl #0x30df8c
0064aaec  00 00 50 e3                                      cmp r0, #0
0064aaf0  21 00 00 1a                                      bne #0x64ab7c
0064aaf4  fe 15 a0 e3                                      mov r1, #0x3f800000
0064aaf8  0a 00 a0 e1                                      mov r0, sl
0064aafc  22 0d f3 eb                                      bl #0x30df8c
0064ab00  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0064ab04  00 00 50 e3                                      cmp r0, #0
0064ab08  24 00 9d e5                                      ldr r0, [sp, #0x24]
0064ab0c  90 1b 25 e0                                      mla r5, r0, fp, r1
0064ab10  ac 00 00 0a                                      beq #0x64adc8
0064ab14  28 20 9d e5                                      ldr r2, [sp, #0x28]
0064ab18  00 00 52 e3                                      cmp r2, #0
0064ab1c  16 00 00 0a                                      beq #0x64ab7c
0064ab20  30 70 8d e5                                      str r7, [sp, #0x30]
0064ab24  40 80 9d e5                                      ldr r8, [sp, #0x40]
0064ab28  14 70 9d e5                                      ldr r7, [sp, #0x14]
0064ab2c  28 90 9d e5                                      ldr sb, [sp, #0x28]
0064ab30  00 a0 a0 e3                                      mov sl, #0
0064ab34  00 10 95 e5                                      ldr r1, [r5]
0064ab38  00 00 98 e5                                      ldr r0, [r8]
0064ab3c  18 10 f3 eb                                      bl #0x30eba4
0064ab40  00 00 88 e5                                      str r0, [r8]
0064ab44  04 10 95 e5                                      ldr r1, [r5, #4]
0064ab48  04 00 98 e5                                      ldr r0, [r8, #4]
0064ab4c  14 10 f3 eb                                      bl #0x30eba4
0064ab50  04 00 88 e5                                      str r0, [r8, #4]
0064ab54  08 10 95 e5                                      ldr r1, [r5, #8]
0064ab58  08 00 98 e5                                      ldr r0, [r8, #8]
0064ab5c  10 10 f3 eb                                      bl #0x30eba4
0064ab60  01 a0 8a e2                                      add sl, sl, #1
0064ab64  09 00 5a e1                                      cmp sl, sb
0064ab68  08 00 88 e5                                      str r0, [r8, #8]
0064ab6c  0b 50 85 e0                                      add r5, r5, fp
0064ab70  07 80 88 e0                                      add r8, r8, r7
0064ab74  ee ff ff 1a                                      bne #0x64ab34
0064ab78  30 70 9d e5                                      ldr r7, [sp, #0x30]
0064ab7c  34 00 9d e5                                      ldr r0, [sp, #0x34]
0064ab80  00 00 50 e3                                      cmp r0, #0
0064ab84  87 00 00 0a                                      beq #0x64ada8
0064ab88  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0064ab8c  04 30 91 e5                                      ldr r3, [r1, #4]
0064ab90  02 08 13 e3                                      tst r3, #0x20000
0064ab94  83 00 00 0a                                      beq #0x64ada8
0064ab98  0c 30 d1 e5                                      ldrb r3, [r1, #0xc]
0064ab9c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0064aba0  01 30 83 e2                                      add r3, r3, #1
0064aba4  73 30 ef e6                                      uxtb r3, r3
0064aba8  0c 30 8d e5                                      str r3, [sp, #0xc]
0064abac  03 02 92 e7                                      ldr r0, [r2, r3, lsl #4]
0064abb0  03 52 82 e0                                      add r5, r2, r3, lsl #4
0064abb4  00 00 50 e3                                      cmp r0, #0
0064abb8  7a 00 00 0a                                      beq #0x64ada8
0064abbc  01 10 a0 e3                                      mov r1, #1
0064abc0  be b0 d5 e1                                      ldrh fp, [r5, #0xe]
0064abc4  c4 5b fd eb                                      bl #0x5a1adc
0064abc8  24 30 96 e5                                      ldr r3, [r6, #0x24]
0064abcc  04 20 95 e5                                      ldr r2, [r5, #4]
0064abd0  00 10 a0 e3                                      mov r1, #0
0064abd4  07 30 83 e0                                      add r3, r3, r7
0064abd8  04 a0 93 e5                                      ldr sl, [r3, #4]
0064abdc  02 20 80 e0                                      add r2, r0, r2
0064abe0  30 20 8d e5                                      str r2, [sp, #0x30]
0064abe4  0a 00 a0 e1                                      mov r0, sl
0064abe8  e7 0c f3 eb                                      bl #0x30df8c
0064abec  00 00 50 e3                                      cmp r0, #0
0064abf0  be 50 d5 e1                                      ldrh r5, [r5, #0xe]
0064abf4  2f 00 00 1a                                      bne #0x64acb8
0064abf8  0a 00 a0 e1                                      mov r0, sl
0064abfc  fe 15 a0 e3                                      mov r1, #0x3f800000
0064ac00  e1 0c f3 eb                                      bl #0x30df8c
0064ac04  24 30 9d e5                                      ldr r3, [sp, #0x24]
0064ac08  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0064ac0c  00 00 50 e3                                      cmp r0, #0
0064ac10  93 c5 25 e0                                      mla r5, r3, r5, ip
0064ac14  b5 00 00 1a                                      bne #0x64aef0
0064ac18  28 10 9d e5                                      ldr r1, [sp, #0x28]
0064ac1c  00 00 51 e3                                      cmp r1, #0
0064ac20  24 00 00 0a                                      beq #0x64acb8
0064ac24  34 80 9d e5                                      ldr r8, [sp, #0x34]
0064ac28  4c 70 8d e5                                      str r7, [sp, #0x4c]
0064ac2c  00 90 a0 e3                                      mov sb, #0
0064ac30  50 40 8d e5                                      str r4, [sp, #0x50]
0064ac34  01 70 a0 e1                                      mov r7, r1
0064ac38  54 60 8d e5                                      str r6, [sp, #0x54]
0064ac3c  04 10 95 e5                                      ldr r1, [r5, #4]
0064ac40  0a 00 a0 e1                                      mov r0, sl
0064ac44  48 10 f3 eb                                      bl #0x30ed6c
0064ac48  08 10 95 e5                                      ldr r1, [r5, #8]
0064ac4c  00 60 a0 e1                                      mov r6, r0
0064ac50  0a 00 a0 e1                                      mov r0, sl
0064ac54  44 10 f3 eb                                      bl #0x30ed6c
0064ac58  0b 10 95 e6                                      ldr r1, [r5], fp
0064ac5c  00 40 a0 e1                                      mov r4, r0
0064ac60  0a 00 a0 e1                                      mov r0, sl
0064ac64  40 10 f3 eb                                      bl #0x30ed6c
0064ac68  00 10 a0 e1                                      mov r1, r0
0064ac6c  00 00 98 e5                                      ldr r0, [r8]
0064ac70  cb 0f f3 eb                                      bl #0x30eba4
0064ac74  06 10 a0 e1                                      mov r1, r6
0064ac78  00 00 88 e5                                      str r0, [r8]
0064ac7c  04 00 98 e5                                      ldr r0, [r8, #4]
0064ac80  c7 0f f3 eb                                      bl #0x30eba4
0064ac84  04 10 a0 e1                                      mov r1, r4
0064ac88  04 00 88 e5                                      str r0, [r8, #4]
0064ac8c  08 00 98 e5                                      ldr r0, [r8, #8]
0064ac90  c3 0f f3 eb                                      bl #0x30eba4
0064ac94  08 00 88 e5                                      str r0, [r8, #8]
0064ac98  14 20 9d e5                                      ldr r2, [sp, #0x14]
0064ac9c  01 90 89 e2                                      add sb, sb, #1
0064aca0  07 00 59 e1                                      cmp sb, r7
0064aca4  02 80 88 e0                                      add r8, r8, r2
0064aca8  e3 ff ff 1a                                      bne #0x64ac3c
0064acac  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
0064acb0  50 40 9d e5                                      ldr r4, [sp, #0x50]
0064acb4  54 60 9d e5                                      ldr r6, [sp, #0x54]
0064acb8  30 30 9d e5                                      ldr r3, [sp, #0x30]
0064acbc  00 00 53 e3                                      cmp r3, #0
0064acc0  38 00 00 0a                                      beq #0x64ada8
0064acc4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0064acc8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0064accc  0c 52 90 e7                                      ldr r5, [r0, ip, lsl #4]
0064acd0  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0064acd4  1f 20 03 e2                                      and r2, r3, #0x1f
0064acd8  01 00 52 e3                                      cmp r2, #1
0064acdc  7c 00 00 9a                                      bls #0x64aed4
0064ace0  01 20 42 e2                                      sub r2, r2, #1
0064ace4  1f 30 c3 e3                                      bic r3, r3, #0x1f
0064ace8  03 30 82 e1                                      orr r3, r2, r3
0064acec  13 30 c5 e5                                      strb r3, [r5, #0x13]
0064acf0  18 20 9d e5                                      ldr r2, [sp, #0x18]
0064acf4  01 40 84 e2                                      add r4, r4, #1
0064acf8  10 80 9d e5                                      ldr r8, [sp, #0x10]
0064acfc  02 00 54 e1                                      cmp r4, r2
0064ad00  08 70 87 e2                                      add r7, r7, #8
0064ad04  48 ff ff 3a                                      blo #0x64aa2c
0064ad08  48 30 9d e5                                      ldr r3, [sp, #0x48]
0064ad0c  00 00 53 e3                                      cmp r3, #0
0064ad10  09 00 00 0a                                      beq #0x64ad3c
0064ad14  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0064ad18  00 40 9c e5                                      ldr r4, [ip]
0064ad1c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0064ad20  1f 20 03 e2                                      and r2, r3, #0x1f
0064ad24  01 00 52 e3                                      cmp r2, #1
0064ad28  5b 00 00 9a                                      bls #0x64ae9c
0064ad2c  01 20 42 e2                                      sub r2, r2, #1
0064ad30  1f 30 c3 e3                                      bic r3, r3, #0x1f
0064ad34  03 30 82 e1                                      orr r3, r2, r3
0064ad38  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064ad3c  44 00 9d e5                                      ldr r0, [sp, #0x44]
0064ad40  00 00 50 e3                                      cmp r0, #0
0064ad44  09 00 00 0a                                      beq #0x64ad70
0064ad48  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0064ad4c  14 40 91 e5                                      ldr r4, [r1, #0x14]
0064ad50  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0064ad54  1f 20 03 e2                                      and r2, r3, #0x1f
0064ad58  01 00 52 e3                                      cmp r2, #1
0064ad5c  48 00 00 9a                                      bls #0x64ae84
0064ad60  01 20 42 e2                                      sub r2, r2, #1
0064ad64  1f 30 c3 e3                                      bic r3, r3, #0x1f
0064ad68  03 30 82 e1                                      orr r3, r2, r3
0064ad6c  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064ad70  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0064ad74  00 00 52 e3                                      cmp r2, #0
0064ad78  08 00 00 0a                                      beq #0x64ada0
0064ad7c  00 40 98 e5                                      ldr r4, [r8]
0064ad80  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0064ad84  1f 20 03 e2                                      and r2, r3, #0x1f
0064ad88  01 00 52 e3                                      cmp r2, #1
0064ad8c  36 00 00 9a                                      bls #0x64ae6c
0064ad90  01 20 42 e2                                      sub r2, r2, #1
0064ad94  1f 30 c3 e3                                      bic r3, r3, #0x1f
0064ad98  03 30 82 e1                                      orr r3, r2, r3
0064ad9c  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064ada0  6c d0 8d e2                                      add sp, sp, #0x6c
0064ada4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0064ada8  10 80 9d e5                                      ldr r8, [sp, #0x10]
0064adac  19 ff ff ea                                      b #0x64aa18
0064adb0  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0064adb4  20 00 13 e3                                      tst r3, #0x20
0064adb8  40 00 00 1a                                      bne #0x64aec0
0064adbc  00 e0 a0 e3                                      mov lr, #0
0064adc0  13 e0 c5 e5                                      strb lr, [r5, #0x13]
0064adc4  39 ff ff ea                                      b #0x64aab0
0064adc8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0064adcc  00 00 53 e3                                      cmp r3, #0
0064add0  69 ff ff 0a                                      beq #0x64ab7c
0064add4  40 80 9d e5                                      ldr r8, [sp, #0x40]
0064add8  30 70 8d e5                                      str r7, [sp, #0x30]
0064addc  00 90 a0 e3                                      mov sb, #0
0064ade0  4c 40 8d e5                                      str r4, [sp, #0x4c]
0064ade4  03 70 a0 e1                                      mov r7, r3
0064ade8  50 60 8d e5                                      str r6, [sp, #0x50]
0064adec  04 10 95 e5                                      ldr r1, [r5, #4]
0064adf0  0a 00 a0 e1                                      mov r0, sl
0064adf4  dc 0f f3 eb                                      bl #0x30ed6c
0064adf8  08 10 95 e5                                      ldr r1, [r5, #8]
0064adfc  00 60 a0 e1                                      mov r6, r0
0064ae00  0a 00 a0 e1                                      mov r0, sl
0064ae04  d8 0f f3 eb                                      bl #0x30ed6c
0064ae08  0b 10 95 e6                                      ldr r1, [r5], fp
0064ae0c  00 40 a0 e1                                      mov r4, r0
0064ae10  0a 00 a0 e1                                      mov r0, sl
0064ae14  d4 0f f3 eb                                      bl #0x30ed6c
0064ae18  00 10 a0 e1                                      mov r1, r0
0064ae1c  00 00 98 e5                                      ldr r0, [r8]
0064ae20  5f 0f f3 eb                                      bl #0x30eba4
0064ae24  06 10 a0 e1                                      mov r1, r6
0064ae28  00 00 88 e5                                      str r0, [r8]
0064ae2c  04 00 98 e5                                      ldr r0, [r8, #4]
0064ae30  5b 0f f3 eb                                      bl #0x30eba4
0064ae34  04 10 a0 e1                                      mov r1, r4
0064ae38  04 00 88 e5                                      str r0, [r8, #4]
0064ae3c  08 00 98 e5                                      ldr r0, [r8, #8]
0064ae40  57 0f f3 eb                                      bl #0x30eba4
0064ae44  08 00 88 e5                                      str r0, [r8, #8]
0064ae48  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0064ae4c  01 90 89 e2                                      add sb, sb, #1
0064ae50  07 00 59 e1                                      cmp sb, r7
0064ae54  0c 80 88 e0                                      add r8, r8, ip
0064ae58  e3 ff ff 1a                                      bne #0x64adec
0064ae5c  30 70 9d e5                                      ldr r7, [sp, #0x30]
0064ae60  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
0064ae64  50 60 9d e5                                      ldr r6, [sp, #0x50]
0064ae68  43 ff ff ea                                      b #0x64ab7c
0064ae6c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0064ae70  20 00 13 e3                                      tst r3, #0x20
0064ae74  42 00 00 1a                                      bne #0x64af84
0064ae78  00 30 a0 e3                                      mov r3, #0
0064ae7c  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064ae80  c6 ff ff ea                                      b #0x64ada0
0064ae84  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0064ae88  20 00 13 e3                                      tst r3, #0x20
0064ae8c  37 00 00 1a                                      bne #0x64af70
0064ae90  00 30 a0 e3                                      mov r3, #0
0064ae94  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064ae98  b4 ff ff ea                                      b #0x64ad70
0064ae9c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0064aea0  20 00 13 e3                                      tst r3, #0x20
0064aea4  2c 00 00 1a                                      bne #0x64af5c
0064aea8  00 30 a0 e3                                      mov r3, #0
0064aeac  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064aeb0  a1 ff ff ea                                      b #0x64ad3c
0064aeb4  01 40 84 e2                                      add r4, r4, #1
0064aeb8  08 a0 a0 e1                                      mov sl, r8
0064aebc  53 fe ff ea                                      b #0x64a810
0064aec0  00 30 95 e5                                      ldr r3, [r5]
0064aec4  05 00 a0 e1                                      mov r0, r5
0064aec8  0f e0 a0 e1                                      mov lr, pc
0064aecc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064aed0  b9 ff ff ea                                      b #0x64adbc
0064aed4  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0064aed8  20 00 13 e3                                      tst r3, #0x20
0064aedc  2d 00 00 1a                                      bne #0x64af98
0064aee0  00 10 a0 e3                                      mov r1, #0
0064aee4  13 10 c5 e5                                      strb r1, [r5, #0x13]
0064aee8  10 80 9d e5                                      ldr r8, [sp, #0x10]
0064aeec  c9 fe ff ea                                      b #0x64aa18
0064aef0  28 00 9d e5                                      ldr r0, [sp, #0x28]
0064aef4  00 00 50 e3                                      cmp r0, #0
0064aef8  6e ff ff 0a                                      beq #0x64acb8
0064aefc  4c 70 8d e5                                      str r7, [sp, #0x4c]
0064af00  34 80 9d e5                                      ldr r8, [sp, #0x34]
0064af04  14 70 9d e5                                      ldr r7, [sp, #0x14]
0064af08  28 90 9d e5                                      ldr sb, [sp, #0x28]
0064af0c  00 a0 a0 e3                                      mov sl, #0
0064af10  00 10 95 e5                                      ldr r1, [r5]
0064af14  00 00 98 e5                                      ldr r0, [r8]
0064af18  21 0f f3 eb                                      bl #0x30eba4
0064af1c  00 00 88 e5                                      str r0, [r8]
0064af20  04 10 95 e5                                      ldr r1, [r5, #4]
0064af24  04 00 98 e5                                      ldr r0, [r8, #4]
0064af28  1d 0f f3 eb                                      bl #0x30eba4
0064af2c  04 00 88 e5                                      str r0, [r8, #4]
0064af30  08 10 95 e5                                      ldr r1, [r5, #8]
0064af34  08 00 98 e5                                      ldr r0, [r8, #8]
0064af38  19 0f f3 eb                                      bl #0x30eba4
0064af3c  01 a0 8a e2                                      add sl, sl, #1
0064af40  09 00 5a e1                                      cmp sl, sb
0064af44  08 00 88 e5                                      str r0, [r8, #8]
0064af48  0b 50 85 e0                                      add r5, r5, fp
0064af4c  07 80 88 e0                                      add r8, r8, r7
0064af50  ee ff ff 1a                                      bne #0x64af10
0064af54  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
0064af58  56 ff ff ea                                      b #0x64acb8
0064af5c  00 30 94 e5                                      ldr r3, [r4]
0064af60  04 00 a0 e1                                      mov r0, r4
0064af64  0f e0 a0 e1                                      mov lr, pc
0064af68  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064af6c  cd ff ff ea                                      b #0x64aea8
0064af70  00 30 94 e5                                      ldr r3, [r4]
0064af74  04 00 a0 e1                                      mov r0, r4
0064af78  0f e0 a0 e1                                      mov lr, pc
0064af7c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064af80  c2 ff ff ea                                      b #0x64ae90
0064af84  00 30 94 e5                                      ldr r3, [r4]
0064af88  04 00 a0 e1                                      mov r0, r4
0064af8c  0f e0 a0 e1                                      mov lr, pc
0064af90  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064af94  b7 ff ff ea                                      b #0x64ae78
0064af98  00 30 95 e5                                      ldr r3, [r5]
0064af9c  05 00 a0 e1                                      mov r0, r5
0064afa0  0f e0 a0 e1                                      mov lr, pc
0064afa4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064afa8  cc ff ff ea                                      b #0x64aee0
0064afac  12 30 d7 e5                                      ldrb r3, [r7, #0x12]
0064afb0  20 00 13 e3                                      tst r3, #0x20
0064afb4  07 00 00 1a                                      bne #0x64afd8
0064afb8  00 30 a0 e3                                      mov r3, #0
0064afbc  13 30 c7 e5                                      strb r3, [r7, #0x13]
0064afc0  3c b0 8d e5                                      str fp, [sp, #0x3c]
0064afc4  8c fe ff ea                                      b #0x64a9fc
0064afc8  24 a0 96 e5                                      ldr sl, [r6, #0x24]
0064afcc  05 70 a0 e1                                      mov r7, r5
0064afd0  01 40 a0 e3                                      mov r4, #1
0064afd4  0d fe ff ea                                      b #0x64a810
0064afd8  00 30 97 e5                                      ldr r3, [r7]
0064afdc  07 00 a0 e1                                      mov r0, r7
0064afe0  0f e0 a0 e1                                      mov lr, pc
0064afe4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064afe8  f2 ff ff ea                                      b #0x64afb8
