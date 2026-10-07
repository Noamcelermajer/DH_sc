; Post-load morph-controller geometry-index link excerpt, decoded from APK-matched ARM ELF.
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF member: lib/armeabi-v7a/libDungeonHunter2.so
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; File-backed executable PT_LOAD maps p_offset=p_vaddr=0; file offset equals ELF VA.
; Function: glitch::collada::CResFileManager::postLoadProcess(CResFile*, IReadFile*)
; Function VA=0x00658c90, size=0x810, full-range SHA-256=e85095e743755648b2ca68999ddaca7fa1155ab335ee435b585ad2b7a1b13ad2
; Excerpt VA [0x006591f8,0x00659264). ARM mode. Instruction bytes are little-endian.
006591f8  05 00 a0 e1  mov	r0, r5
006591fc  08 10 a0 e1  mov	r1, r8
00659200  8b d4 fe eb  bl	0x60e434 <_ZNK6glitch7collada16CColladaDatabase13getControllerEi> @ imm = #-0x4add4
00659204  00 30 90 e5  ldr	r3, [r0]
00659208  01 00 53 e3  cmp	r3, #1
0065920c  f6 ff ff 1a  bne	0x6591ec <_ZN6glitch7collada15CResFileManager15postLoadProcessEPNS0_8CResFileEPNS_2io9IReadFileE+0x55c> @ imm = #-0x28
00659210  08 90 90 e5  ldr	r9, [r0, #0x8]
00659214  10 a0 99 e5  ldr	r10, [r9, #0x10]
00659218  00 00 5a e3  cmp	r10, #0
0065921c  f2 ff ff da  ble	0x6591ec <_ZN6glitch7collada15CResFileManager15postLoadProcessEPNS0_8CResFileEPNS_2io9IReadFileE+0x55c> @ imm = #-0x38
00659220  00 60 a0 e3  mov	r6, #0
00659224  02 00 00 ea  b	0x659234 <_ZN6glitch7collada15CResFileManager15postLoadProcessEPNS0_8CResFileEPNS_2io9IReadFileE+0x5a4> @ imm = #0x8
00659228  01 60 86 e2  add	r6, r6, #1
0065922c  0a 00 56 e1  cmp	r6, r10
00659230  ed ff ff 0a  beq	0x6591ec <_ZN6glitch7collada15CResFileManager15postLoadProcessEPNS0_8CResFileEPNS_2io9IReadFileE+0x55c> @ imm = #-0x4c
00659234  40 30 9d e5  ldr	r3, [sp, #0x40]
00659238  14 70 99 e5  ldr	r7, [r9, #0x14]
0065923c  24 30 93 e5  ldr	r3, [r3, #0x24]
00659240  06 11 97 e7  ldr	r1, [r7, r6, lsl #2]
00659244  20 30 93 e5  ldr	r3, [r3, #0x20]
00659248  68 30 93 e5  ldr	r3, [r3, #0x68]
0065924c  03 00 51 e1  cmp	r1, r3
00659250  f4 ff ff 8a  bhi	0x659228 <_ZN6glitch7collada15CResFileManager15postLoadProcessEPNS0_8CResFileEPNS_2io9IReadFileE+0x598> @ imm = #-0x30
00659254  05 00 a0 e1  mov	r0, r5
00659258  6f d4 fe eb  bl	0x60e41c <_ZNK6glitch7collada16CColladaDatabase11getGeometryEi> @ imm = #-0x4ae44
0065925c  06 01 87 e7  str	r0, [r7, r6, lsl #2]
00659260  f0 ff ff ea  b	0x659228 <_ZN6glitch7collada15CResFileManager15postLoadProcessEPNS0_8CResFileEPNS_2io9IReadFileE+0x598> @ imm = #-0x40
