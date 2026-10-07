; Evidence source: lib/armeabi-v7a/libDungeonHunter2.so extracted from the verified APK.
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; PT_LOAD mapping: executable PT_LOAD p_vaddr=0x0, p_offset=0x0, p_filesz=0x955130.
; Every excerpt below is inside that segment; bytes are from file offset p_offset + (VA - p_vaddr).
; Full function range sizes and SHA-256 hashes are in ../original-functions.json.
; Listing is a focused excerpt, not a full-library disassembly.

; PVR loader delegates its data transfer to IImageLoader::loadData
; excerpt VA=0x006062ac..0x006062d0 (end exclusive), file_offset=0x6062ac
006062ac  04 00 a0 e1  mov      r0, r4
006062b0  06 20 a0 e1  mov      r2, r6
006062b4  07 30 a0 e1  mov      r3, r7
006062b8  08 10 a0 e1  mov      r1, r8
006062bc  38 d0 8d e5  str      sp, [sp, #0x38]
006062c0  40 c0 8d e5  str      ip, [sp, #0x40]
006062c4  34 a0 8d e5  str      sl, [sp, #0x34]
006062c8  3c 60 8d e5  str      r6, [sp, #0x3c]
006062cc  3f 08 00 eb  bl       #0x6083d0

; IImageLoader::loadData constructs ITextureDataLoading and invokes its mip/surface loader
; excerpt VA=0x0060855c..0x006085c0 (end exclusive), file_offset=0x60855c
0060855c  00 30 a0 e3  mov      r3, #0
00608560  05 00 a0 e1  mov      r0, r5
00608564  2e 30 cd e5  strb     r3, [sp, #0x2e]
00608568  0c 30 8d e5  str      r3, [sp, #0xc]
0060856c  10 30 8d e5  str      r3, [sp, #0x10]
00608570  14 30 8d e5  str      r3, [sp, #0x14]
00608574  18 30 8d e5  str      r3, [sp, #0x18]
00608578  1c 30 8d e5  str      r3, [sp, #0x1c]
0060857c  20 30 8d e5  str      r3, [sp, #0x20]
00608580  24 30 8d e5  str      r3, [sp, #0x24]
00608584  28 30 8d e5  str      r3, [sp, #0x28]
00608588  2c 30 cd e5  strb     r3, [sp, #0x2c]
0060858c  2d 30 cd e5  strb     r3, [sp, #0x2d]
00608590  2f fc ff eb  bl       #0x607654
00608594  a0 32 9f e5  ldr      r3, [pc, #0x2a0]
00608598  04 20 a0 e1  mov      r2, r4
0060859c  09 10 a0 e1  mov      r1, sb
006085a0  03 30 8f e0  add      r3, pc, r3
006085a4  50 40 83 e2  add      r4, r3, #0x50
006085a8  05 00 a0 e1  mov      r0, r5
006085ac  07 30 a0 e1  mov      r3, r7
006085b0  00 a0 8d e5  str      sl, [sp]
006085b4  0c 40 8d e5  str      r4, [sp, #0xc]
006085b8  29 fd ff eb  bl       #0x607a64
006085bc  00 b0 a0 e1  mov      fp, r0

; ITextureDataLoading::load reads an item and calls pixel_format::convert
; excerpt VA=0x00607b30..0x00607c24 (end exclusive), file_offset=0x607b30
00607b30  07 20 a0 e1  mov      r2, r7
00607b34  08 10 a0 e1  mov      r1, r8
00607b38  00 30 94 e5  ldr      r3, [r4]
00607b3c  04 00 a0 e1  mov      r0, r4
00607b40  0f e0 a0 e1  mov      lr, pc
00607b44  0c f0 93 e5  ldr      pc, [r3, #0xc]
00607b48  00 00 50 e3  cmp      r0, #0
00607b4c  38 00 00 0a  beq      #0x607c34
00607b50  10 30 94 e5  ldr      r3, [r4, #0x10]
00607b54  07 10 a0 e1  mov      r1, r7
00607b58  06 00 a0 e1  mov      r0, r6
00607b5c  0c 30 d3 e5  ldrb     r3, [r3, #0xc]
00607b60  00 00 53 e3  cmp      r3, #0
00607b64  32 00 00 0a  beq      #0x607c34
00607b68  20 30 96 e5  ldr      r3, [r6, #0x20]
00607b6c  24 b0 96 e5  ldr      fp, [r6, #0x24]
00607b70  28 70 96 e5  ldr      r7, [r6, #0x28]
00607b74  53 35 a0 e1  asr      r3, r3, r5
00607b78  5b b5 a0 e1  asr      fp, fp, r5
00607b7c  01 00 53 e3  cmp      r3, #1
00607b80  01 30 a0 b3  movlt    r3, #1
00607b84  01 00 5b e3  cmp      fp, #1
00607b88  01 b0 a0 b3  movlt    fp, #1
00607b8c  37 75 b0 e1  lsrs     r7, r7, r5
00607b90  1c 30 8d e5  str      r3, [sp, #0x1c]
00607b94  38 20 96 e5  ldr      r2, [r6, #0x38]
00607b98  0c 30 94 e5  ldr      r3, [r4, #0xc]
00607b9c  01 70 a0 03  moveq    r7, #1
00607ba0  52 22 e5 e7  ubfx     r2, r2, #4, #6
00607ba4  04 30 93 e5  ldr      r3, [r3, #4]
00607ba8  20 20 8d e5  str      r2, [sp, #0x20]
00607bac  1c 20 94 e5  ldr      r2, [r4, #0x1c]
00607bb0  14 90 94 e5  ldr      sb, [r4, #0x14]
00607bb4  28 20 8d e5  str      r2, [sp, #0x28]
00607bb8  18 e0 94 e5  ldr      lr, [r4, #0x18]
00607bbc  18 30 8d e5  str      r3, [sp, #0x18]
00607bc0  2c e0 8d e5  str      lr, [sp, #0x2c]
00607bc4  4e 8a ff eb  bl       #0x5ea504
00607bc8  24 00 8d e5  str      r0, [sp, #0x24]
00607bcc  08 20 94 e5  ldr      r2, [r4, #8]
00607bd0  02 00 a0 e1  mov      r0, r2
00607bd4  00 20 92 e5  ldr      r2, [r2]
00607bd8  0f e0 a0 e1  mov      lr, pc
00607bdc  14 f0 92 e5  ldr      pc, [r2, #0x14]
00607be0  2c e0 9d e5  ldr      lr, [sp, #0x2c]
00607be4  18 30 9d e5  ldr      r3, [sp, #0x18]
00607be8  9b 07 0c e0  mul      ip, fp, r7
00607bec  00 e0 8d e5  str      lr, [sp]
00607bf0  24 e0 9d e5  ldr      lr, [sp, #0x24]
00607bf4  10 00 8d e5  str      r0, [sp, #0x10]
00607bf8  09 10 a0 e1  mov      r1, sb
00607bfc  04 e0 8d e5  str      lr, [sp, #4]
00607c00  1c e0 9d e5  ldr      lr, [sp, #0x1c]
00607c04  03 00 a0 e1  mov      r0, r3
00607c08  28 20 9d e5  ldr      r2, [sp, #0x28]
00607c0c  20 30 9d e5  ldr      r3, [sp, #0x20]
00607c10  08 e0 8d e5  str      lr, [sp, #8]
00607c14  0c c0 8d e5  str      ip, [sp, #0xc]
00607c18  63 c6 ff eb  bl       #0x5f95ac
00607c1c  00 00 50 e3  cmp      r0, #0
00607c20  03 00 00 1a  bne      #0x607c34

; pixel_format::convert: same-format copy branch and compressed-source branch
; excerpt VA=0x005f95ec..0x005f9808 (end exclusive), file_offset=0x5f95ec
005f95ec  07 00 5a e1  cmp      sl, r7
005f95f0  6a 00 00 0a  beq      #0x5f97a0
005f95f4  58 61 9d e5  ldr      r6, [sp, #0x158]
005f95f8  06 00 58 e1  cmp      r8, r6
005f95fc  81 00 00 0a  beq      #0x5f9808
005f9600  58 be 9f e5  ldr      fp, [pc, #0xe58]
005f9604  28 10 a0 e3  mov      r1, #0x28
005f9608  91 07 06 e0  mul      r6, r1, r7
005f960c  0b 20 95 e7  ldr      r2, [r5, fp]
005f9610  06 30 92 e7  ldr      r3, [r2, r6]
005f9614  06 60 82 e0  add      r6, r2, r6
005f9618  08 00 13 e3  tst      r3, #8
005f961c  0c 00 00 0a  beq      #0x5f9654
005f9620  77 30 ff e6  uxth     r3, r7
005f9624  27 00 53 e3  cmp      r3, #0x27
005f9628  59 00 00 0a  beq      #0x5f9794
005f962c  00 00 a0 e3  mov      r0, #0
005f9630  c3 d0 ff eb  bl       #0x5ed944
005f9634  07 11 90 e7  ldr      r1, [r0, r7, lsl #2]
005f9638  24 0e 9f e5  ldr      r0, [pc, #0xe24]
005f963c  03 20 a0 e3  mov      r2, #3
005f9640  00 00 8f e0  add      r0, pc, r0
005f9644  a7 45 00 eb  bl       #0x60ace8
005f9648  00 00 a0 e3  mov      r0, #0
005f964c  4d df 8d e2  add      sp, sp, #0x134
005f9650  f0 8f bd e8  pop      {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005f9654  91 0a 01 e0  mul      r1, r1, sl
005f9658  01 20 92 e7  ldr      r2, [r2, r1]
005f965c  08 00 12 e3  tst      r2, #8
005f9660  5a 00 00 1a  bne      #0x5f97d0
005f9664  04 00 13 e3  tst      r3, #4
005f9668  11 00 00 0a  beq      #0x5f96b4
005f966c  04 00 12 e3  tst      r2, #4
005f9670  0f 00 00 1a  bne      #0x5f96b4
005f9674  0a 00 a0 e1  mov      r0, sl
005f9678  28 30 8d e5  str      r3, [sp, #0x28]
005f967c  b4 d0 ff eb  bl       #0x5ed954
005f9680  14 20 d6 e5  ldrb     r2, [r6, #0x14]
005f9684  28 30 9d e5  ldr      r3, [sp, #0x28]
005f9688  00 21 82 e1  orr      r2, r2, r0, lsl #2
005f968c  04 20 42 e2  sub      r2, r2, #4
005f9690  05 00 52 e3  cmp      r2, #5
005f9694  02 f1 8f 90  addls    pc, pc, r2, lsl #2
005f9698  01 01 00 ea  b        #0x5f9aa4
005f969c  cf 00 00 ea  b        #0x5f99e0
005f96a0  05 01 00 ea  b        #0x5f9abc
005f96a4  fe 00 00 ea  b        #0x5f9aa4
005f96a8  fd 00 00 ea  b        #0x5f9aa4
005f96ac  9a 00 00 ea  b        #0x5f991c
005f96b0  6d 00 00 ea  b        #0x5f986c
005f96b4  0b 10 95 e7  ldr      r1, [r5, fp]
005f96b8  28 00 a0 e3  mov      r0, #0x28
005f96bc  90 17 2c e0  mla      ip, r0, r7, r1
005f96c0  90 1a 21 e0  mla      r1, r0, sl, r1
005f96c4  14 00 dc e5  ldrb     r0, [ip, #0x14]
005f96c8  14 10 d1 e5  ldrb     r1, [r1, #0x14]
005f96cc  00 00 51 e1  cmp      r1, r0
005f96d0  1c 00 00 0a  beq      #0x5f9748
005f96d4  03 10 82 e1  orr      r1, r2, r3
005f96d8  02 10 11 e2  ands     r1, r1, #2
005f96dc  58 00 00 1a  bne      #0x5f9844
005f96e0  0a 00 4a e2  sub      r0, sl, #0xa
005f96e4  01 00 50 e3  cmp      r0, #1
005f96e8  f3 01 00 9a  bls      #0x5f9ebc
005f96ec  58 e1 9d e5  ldr      lr, [sp, #0x158]
005f96f0  08 40 8d e5  str      r4, [sp, #8]
005f96f4  38 50 9d e5  ldr      r5, [sp, #0x38]
005f96f8  64 41 9d e5  ldr      r4, [sp, #0x164]
005f96fc  0a 00 a0 e1  mov      r0, sl
005f9700  08 10 a0 e1  mov      r1, r8
005f9704  5c 20 9d e5  ldr      r2, [sp, #0x5c]
005f9708  07 30 a0 e1  mov      r3, r7
005f970c  00 e0 8d e5  str      lr, [sp]
005f9710  04 90 8d e5  str      sb, [sp, #4]
005f9714  0c 40 8d e5  str      r4, [sp, #0xc]
005f9718  10 50 8d e5  str      r5, [sp, #0x10]
005f971c  31 ee ff eb  bl       #0x5f4fe8
005f9720  c9 ff ff ea  b        #0x5f964c
005f9724  07 00 a0 e1  mov      r0, r7
005f9728  04 10 a0 e1  mov      r1, r4
005f972c  ee d0 ff eb  bl       #0x5edaec
005f9730  00 90 a0 e1  mov      sb, r0
005f9734  ac ff ff ea  b        #0x5f95ec
005f9738  04 10 a0 e1  mov      r1, r4
005f973c  ea d0 ff eb  bl       #0x5edaec
005f9740  5c 00 8d e5  str      r0, [sp, #0x5c]
005f9744  a6 ff ff ea  b        #0x5f95e4
005f9748  40 00 12 e3  tst      r2, #0x40
005f974c  e0 ff ff 1a  bne      #0x5f96d4
005f9750  40 00 13 e3  tst      r3, #0x40
005f9754  de ff ff 1a  bne      #0x5f96d4
005f9758  01 00 13 e3  tst      r3, #1
005f975c  01 00 00 0a  beq      #0x5f9768
005f9760  01 00 12 e3  tst      r2, #1
005f9764  da ff ff 0a  beq      #0x5f96d4
005f9768  02 00 57 e3  cmp      r7, #2
005f976c  02 00 5a 13  cmpne    sl, #2
005f9770  d7 ff ff 0a  beq      #0x5f96d4
005f9774  04 00 51 e3  cmp      r1, #4
005f9778  01 f1 8f 90  addls    pc, pc, r1, lsl #2
005f977c  34 00 00 ea  b        #0x5f9854
005f9780  6b 01 00 ea  b        #0x5f9d34
005f9784  30 01 00 ea  b        #0x5f9c4c
005f9788  f7 00 00 ea  b        #0x5f9b6c
005f978c  2e 01 00 ea  b        #0x5f9c4c
005f9790  f5 00 00 ea  b        #0x5f9b6c
005f9794  cc 1c 9f e5  ldr      r1, [pc, #0xccc]
005f9798  01 10 8f e0  add      r1, pc, r1
005f979c  a5 ff ff ea  b        #0x5f9638
005f97a0  04 40 8d e5  str      r4, [sp, #4]
005f97a4  38 50 9d e5  ldr      r5, [sp, #0x38]
005f97a8  64 41 9d e5  ldr      r4, [sp, #0x164]
005f97ac  0a 00 a0 e1  mov      r0, sl
005f97b0  08 10 a0 e1  mov      r1, r8
005f97b4  5c 20 9d e5  ldr      r2, [sp, #0x5c]
005f97b8  58 31 9d e5  ldr      r3, [sp, #0x158]
005f97bc  00 90 8d e5  str      sb, [sp]
005f97c0  08 40 8d e5  str      r4, [sp, #8]
005f97c4  0c 50 8d e5  str      r5, [sp, #0xc]
005f97c8  0f d3 ff eb  bl       #0x5ee40c
005f97cc  9e ff ff ea  b        #0x5f964c
005f97d0  58 e1 9d e5  ldr      lr, [sp, #0x158]
005f97d4  08 40 8d e5  str      r4, [sp, #8]
005f97d8  38 50 9d e5  ldr      r5, [sp, #0x38]
005f97dc  64 41 9d e5  ldr      r4, [sp, #0x164]
005f97e0  0a 00 a0 e1  mov      r0, sl
005f97e4  08 10 a0 e1  mov      r1, r8
005f97e8  5c 20 9d e5  ldr      r2, [sp, #0x5c]
005f97ec  07 30 a0 e1  mov      r3, r7
005f97f0  00 e0 8d e5  str      lr, [sp]
005f97f4  04 90 8d e5  str      sb, [sp, #4]
005f97f8  0c 40 8d e5  str      r4, [sp, #0xc]
005f97fc  10 50 8d e5  str      r5, [sp, #0x10]
005f9800  23 10 00 eb  bl       #0x5fd894
005f9804  90 ff ff ea  b        #0x5f964c

; pixel_format::convert: direct copy call
; excerpt VA=0x005f97a0..0x005f97cc (end exclusive), file_offset=0x5f97a0
005f97a0  04 40 8d e5  str      r4, [sp, #4]
005f97a4  38 50 9d e5  ldr      r5, [sp, #0x38]
005f97a8  64 41 9d e5  ldr      r4, [sp, #0x164]
005f97ac  0a 00 a0 e1  mov      r0, sl
005f97b0  08 10 a0 e1  mov      r1, r8
005f97b4  5c 20 9d e5  ldr      r2, [sp, #0x5c]
005f97b8  58 31 9d e5  ldr      r3, [sp, #0x158]
005f97bc  00 90 8d e5  str      sb, [sp]
005f97c0  08 40 8d e5  str      r4, [sp, #8]
005f97c4  0c 50 8d e5  str      r5, [sp, #0xc]
005f97c8  0f d3 ff eb  bl       #0x5ee40c

; pixel_format::convert: call to pixel_format::decompress
; excerpt VA=0x005f97d0..0x005f9808 (end exclusive), file_offset=0x5f97d0
005f97d0  58 e1 9d e5  ldr      lr, [sp, #0x158]
005f97d4  08 40 8d e5  str      r4, [sp, #8]
005f97d8  38 50 9d e5  ldr      r5, [sp, #0x38]
005f97dc  64 41 9d e5  ldr      r4, [sp, #0x164]
005f97e0  0a 00 a0 e1  mov      r0, sl
005f97e4  08 10 a0 e1  mov      r1, r8
005f97e8  5c 20 9d e5  ldr      r2, [sp, #0x5c]
005f97ec  07 30 a0 e1  mov      r3, r7
005f97f0  00 e0 8d e5  str      lr, [sp]
005f97f4  04 90 8d e5  str      sb, [sp, #4]
005f97f8  0c 40 8d e5  str      r4, [sp, #0xc]
005f97fc  10 50 8d e5  str      r5, [sp, #0x10]
005f9800  23 10 00 eb  bl       #0x5fd894
005f9804  90 ff ff ea  b        #0x5f964c

; pixel_format::decompress: source E_PIXEL_FORMAT 24-27 selection and caller-buffer PVRTC call
; excerpt VA=0x005fd894..0x005fd960 (end exclusive), file_offset=0x5fd894
005fd894  f0 4f 2d e9  push     {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005fd898  11 c0 40 e2  sub      ip, r0, #0x11
005fd89c  24 d0 4d e2  sub      sp, sp, #0x24
005fd8a0  03 00 5c e3  cmp      ip, #3
005fd8a4  00 40 a0 e1  mov      r4, r0
005fd8a8  1c 10 8d e5  str      r1, [sp, #0x1c]
005fd8ac  02 a0 a0 e1  mov      sl, r2
005fd8b0  03 60 a0 e1  mov      r6, r3
005fd8b4  48 70 9d e5  ldr      r7, [sp, #0x48]
005fd8b8  4c 90 9d e5  ldr      sb, [sp, #0x4c]
005fd8bc  50 50 9d e5  ldr      r5, [sp, #0x50]
005fd8c0  54 80 9d e5  ldr      r8, [sp, #0x54]
005fd8c4  58 b0 dd e5  ldrb     fp, [sp, #0x58]
005fd8c8  2d 00 00 9a  bls      #0x5fd984
005fd8cc  05 10 a0 e1  mov      r1, r5
005fd8d0  85 c0 ff eb  bl       #0x5edaec
005fd8d4  0a 00 50 e1  cmp      r0, sl
005fd8d8  21 00 00 1a  bne      #0x5fd964
005fd8dc  15 30 44 e2  sub      r3, r4, #0x15
005fd8e0  02 00 53 e3  cmp      r3, #2
005fd8e4  54 00 00 9a  bls      #0x5fda3c
005fd8e8  06 00 a0 e1  mov      r0, r6
005fd8ec  05 10 a0 e1  mov      r1, r5
005fd8f0  7d c0 ff eb  bl       #0x5edaec
005fd8f4  0e 00 56 e3  cmp      r6, #0xe
005fd8f8  09 00 50 01  cmpeq    r0, sb
005fd8fc  00 a0 a0 e1  mov      sl, r0
005fd900  25 00 00 1a  bne      #0x5fd99c
005fd904  18 10 44 e2  sub      r1, r4, #0x18
005fd908  01 00 51 e3  cmp      r1, #1
005fd90c  00 10 a0 83  movhi    r1, #0
005fd910  01 10 a0 93  movls    r1, #1
005fd914  1c 00 9d e5  ldr      r0, [sp, #0x1c]
005fd918  05 20 a0 e1  mov      r2, r5
005fd91c  08 30 a0 e1  mov      r3, r8
005fd920  00 70 8d e5  str      r7, [sp]
005fd924  8f 87 02 eb  bl       #0x69f768
005fd928  07 10 a0 e1  mov      r1, r7
005fd92c  00 00 5b e3  cmp      fp, #0
005fd930  01 40 a0 03  moveq    r4, #1
005fd934  0f 00 00 0a  beq      #0x5fd978
005fd938  0a 20 a0 e1  mov      r2, sl
005fd93c  06 30 a0 e1  mov      r3, r6
005fd940  0e 00 a0 e3  mov      r0, #0xe
005fd944  48 70 8d e5  str      r7, [sp, #0x48]
005fd948  4c 90 8d e5  str      sb, [sp, #0x4c]
005fd94c  50 50 8d e5  str      r5, [sp, #0x50]
005fd950  54 80 8d e5  str      r8, [sp, #0x54]
005fd954  58 b0 8d e5  str      fp, [sp, #0x58]
005fd958  24 d0 8d e2  add      sp, sp, #0x24
005fd95c  f0 4f bd e8  pop      {r4, r5, r6, r7, r8, sb, sl, fp, lr}

; pixel_format::decompress: allocated temporary-buffer PVRTC call and follow-up conversion
; excerpt VA=0x005fd99c..0x005fda38 (end exclusive), file_offset=0x5fd99c
005fd99c  b8 00 9f e5  ldr      r0, [pc, #0xb8]
005fd9a0  b8 10 9f e5  ldr      r1, [pc, #0xb8]
005fd9a4  02 20 a0 e3  mov      r2, #2
005fd9a8  00 00 8f e0  add      r0, pc, r0
005fd9ac  01 10 8f e0  add      r1, pc, r1
005fd9b0  cc 34 00 eb  bl       #0x60ace8
005fd9b4  05 01 a0 e1  lsl      r0, r5, #2
005fd9b8  00 10 a0 e3  mov      r1, #0
005fd9bc  98 00 00 e0  mul      r0, r8, r0
005fd9c0  f8 d9 fc eb  bl       #0x5341a8
005fd9c4  18 10 44 e2  sub      r1, r4, #0x18
005fd9c8  00 c0 a0 e1  mov      ip, r0
005fd9cc  01 00 51 e3  cmp      r1, #1
005fd9d0  00 10 a0 83  movhi    r1, #0
005fd9d4  01 10 a0 93  movls    r1, #1
005fd9d8  1c 00 9d e5  ldr      r0, [sp, #0x1c]
005fd9dc  05 20 a0 e1  mov      r2, r5
005fd9e0  08 30 a0 e1  mov      r3, r8
005fd9e4  00 c0 8d e5  str      ip, [sp]
005fd9e8  18 c0 8d e5  str      ip, [sp, #0x18]
005fd9ec  5d 87 02 eb  bl       #0x69f768
005fd9f0  18 c0 9d e5  ldr      ip, [sp, #0x18]
005fd9f4  00 00 5c e3  cmp      ip, #0
005fd9f8  0c 10 a0 01  moveq    r1, ip
005fd9fc  ca ff ff 0a  beq      #0x5fd92c
005fda00  0c 10 a0 e1  mov      r1, ip
005fda04  0a 20 a0 e1  mov      r2, sl
005fda08  06 30 a0 e1  mov      r3, r6
005fda0c  0e 00 a0 e3  mov      r0, #0xe
005fda10  18 c0 8d e5  str      ip, [sp, #0x18]
005fda14  80 02 8d e8  stm      sp, {r7, sb}
005fda18  08 50 8d e5  str      r5, [sp, #8]
005fda1c  0c 80 8d e5  str      r8, [sp, #0xc]
005fda20  10 b0 8d e5  str      fp, [sp, #0x10]
005fda24  e0 ee ff eb  bl       #0x5f95ac
005fda28  18 c0 9d e5  ldr      ip, [sp, #0x18]
005fda2c  00 40 a0 e1  mov      r4, r0
005fda30  0c 00 a0 e1  mov      r0, ip
005fda34  9f 41 f4 eb  bl       #0x30e0b8
