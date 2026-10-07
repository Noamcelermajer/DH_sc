; Source: lib/armeabi-v7a/libDungeonHunter2.so
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; ARM/Thumb-independent address space: ARM mode instructions.

; CResFileManager::postLoadProcess, function start 0x00658c90
; Root comes from [CResFile +0x24] then [resource object +0x20].
; Image count is root +0x4c; image table is root +0x50.
00658cc4: ldr      r1, [r1, #4]
00658cc8: ldr      ip, [sl, #0x24]
00658ccc: ldr      r3, [r4, r5]
00658cd0: str      lr, [sp, #0x7c]
00658cd4: ldr      r4, [ip, #0x20]
...
00658d70: ldr      sb, [r4, #0x4c]
...
00658e34: ldr      r4, [r5, #0x50]
00658e38: add      r4, r4, r7
00658e3c: ldr      r3, [r4, #0xc]
00658e40: cmp      r3, #0
00658e44: bne      #0x658e24
; Configured resource-factory pointer at manager +0x24; virtual slot at vptr +8.
00658e58: ldr      r0, [fp, #0x24]
00658e64: ldr      ip, [r0]
00658e68: mov      r1, r0
00658e6c: ldr      r0, [sp, #0x20]
00658e70: mov      r2, sl
00658e74: str      lr, [sp]
00658e78: stmib    sp, {r0, r4}
00658e80: mov      lr, pc
00658e84: ldr      pc, [ip, #8]
; On non-null result: retain it, replace SImage +0x10, release old value.
00658e90: ldr      r3, [sp, #0x38]
00658e94: cmp      r3, #0
00658e98: beq      #0x658e24
00658e9c: ldr      r2, [r3, #4]
00658ea0: add      r2, r2, #1
00658ea4: str      r2, [r3, #4]
00658ea8: ldr      r0, [r4, #0x10]
00658eac: str      r3, [r4, #0x10]
00658eb0: cmp      r0, #0
00658eb8: bl       #0x31d584

; postLoadProcess resets sb to the image-row stride before resolving indices.
00658ef0: ldr      r2, [pc, #0x590]
00658ef4: mov      r7, #0
...
00658f0c: mov      fp, r7
00658f10: mov      sb, #0x14
...
; Parameter row is 24 bytes. Convert types 11..14 through +0x14 value object.
00658f38: ldr      r1, [r5, #0x10]
...
00658f4c: ldr      ip, [r5, #0x14]
00658f50: add      ip, ip, r3
00658f54: ldr      r0, [ip, #8]
00658f58: cmp      r0, #0xa
00658f5c: bls      #0x658f88
00658f60: cmp      r0, #0xe
00658f64: bhi      #0x658f88
00658f68: ldr      r0, [ip, #0x14]
00658f6c: ldr      r0, [r0]
00658f70: ldr      ip, [r0]
00658f74: cmn      ip, #1
00658f78: ldrne    lr, [r4, #0x50]
00658f7c: streq    fp, [r0]
00658f80: mlane    ip, sb, ip, lr
00658f84: strne    ip, [r0]
; fp is the incoming CResFileManager*; therefore 0xffffffff takes a distinct
; manager-pointer path, not an ordinary image-row pointer conversion.

; CResFactory::getTexture, 0x00659704. Demangled symbol includes final SImage*.
; Its +0x08 string is forwarded to getTextureImpl; +0x00 is mode-gated.
00659720: ldr      r5, [sp, #0x24]
00659724: ldr      r2, [r0]
0065972c: ldrb     ip, [r2, #0x29]
00659730: ldr      r2, [sp, #0x28]
00659734: cmp      ip, #0
00659738: ldrne    ip, [r2]
0065973c: ldr      lr, [r2, #8]
00659740: mov      r2, r3
00659744: ldr      r3, [sp, #0x20]
00659748: stm      sp, {r5, lr}
0065974c: str      ip, [sp, #8]
00659750: bl       #0x6594a0

; CResFactory::getTextureImpl. Cached name lookup at 0x5ed210; miss path calls
; CResFile virtual slot +0x34 to obtain a file, then texture-manager file load.
00659504: mov      r0, r5
00659508: mov      r1, sb
0065950c: ldr      r2, [sp, #0xa0]
00659510: mov      r3, fp
00659514: bl       #0x5ed210
...
006595dc: mov      r0, r3
006595e0: mov      r1, sl
006595e4: ldr      r3, [r3]
006595e8: add      r2, sp, #0x1c
006595ec: mov      lr, pc
006595f0: ldr      pc, [r3, #0x34]
...
00659690: mov      r2, r6
00659694: mov      r3, fp
00659698: add      r0, sp, #0x18
0065969c: mov      ip, #0
006596a0: mov      r1, sb
006596a4: str      ip, [sp]
006596a8: bl       #0x5ed0c4

; collada::createMaterial, 0x00631ce8. The SImage* value is dereferenced at
; +0x10; the result is passed to typed texture parameter setter 0x5cd324.
0063218c: ldr      r0, [sl, r7, lsl #2]
00632198: ldr      r0, [r0]
006321a4: cmp      r0, #0
006321a8: beq      #0x6321dc
006321ac: ldr      r0, [r0, #0x10]
006321b4: str      r0, [sp, #0x40]
006321b8: ldrne    ip, [r0, #4]
006321bc: addne    ip, ip, #1
006321c0: strne    ip, [r0, #4]
006321c4: ldr      r0, [r4]
006321c8: bl       #0x5cd324

; CResFactory vtable symbol 0x00983040; ABI function slot at +0x10.
; VA 0x00983050, file offset 0x00982050, word 0x00659704, R_ARM_RELATIVE.
