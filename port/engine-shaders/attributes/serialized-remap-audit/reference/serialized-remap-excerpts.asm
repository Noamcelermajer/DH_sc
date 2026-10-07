; Supplementary serialized vertex-remap evidence.
; Source: ARM ELF32 little-endian libDungeonHunter2.so.
; Each instruction includes exact file-backed bytes decoded from the ELF.
; See ../remap-ranges.json for source hashes, VA mappings and exact range hashes.
;
; --- get_visual_scene_lookup: Root visual-scene count/pointer and 16-byte record indexing.
; VA 0x0060e54c..0x0060e570 (exclusive), file 0x60e54c, SHA-256 e629c6c37bcb70c63b21671327c46d29959c9b6fd8367c28c4c90bede5d5e424
0060e54c  00 30 90 e5  ldr      r3, [r0]
0060e550  24 30 93 e5  ldr      r3, [r3, #0x24]
0060e554  20 30 93 e5  ldr      r3, [r3, #0x20]
0060e558  98 20 93 e5  ldr      r2, [r3, #0x98]
0060e55c  00 00 52 e3  cmp      r2, #0
0060e560  9c 00 93 c5  ldrgt    r0, [r3, #0x9c]
0060e564  00 00 a0 d3  movle    r0, #0
0060e568  01 02 80 c0  addgt    r0, r0, r1, lsl #4
0060e56c  1e ff 2f e1  bx       lr
;
; --- visual_scene_node_array: SVisualScene count/pointer, node traversal and 0x50-byte SNode stride.
; VA 0x0061b8bc..0x0061b958 (exclusive), file 0x61b8bc, SHA-256 172ab19a3fd25ada4002abe03b4eac21edf0bc11951fd9a37d6759f36505a74f
0061b8bc  f0 47 2d e9  push     {r4, r5, r6, r7, r8, sb, sl, lr}
0061b8c0  00 70 52 e2  subs     r7, r2, #0
0061b8c4  00 80 a0 e1  mov      r8, r0
0061b8c8  01 a0 a0 e1  mov      sl, r1
0061b8cc  03 40 a0 e1  mov      r4, r3
0061b8d0  22 00 00 0a  beq      #0x61b960
0061b8d4  00 00 53 e3  cmp      r3, #0
0061b8d8  22 00 00 0a  beq      #0x61b968
0061b8dc  00 30 94 e5  ldr      r3, [r4]
0061b8e0  04 00 a0 e1  mov      r0, r4
0061b8e4  04 10 97 e5  ldr      r1, [r7, #4]
0061b8e8  0f e0 a0 e1  mov      lr, pc
0061b8ec  28 f0 93 e5  ldr      pc, [r3, #0x28]
0061b8f0  08 30 97 e5  ldr      r3, [r7, #8]
0061b8f4  00 00 53 e3  cmp      r3, #0
0061b8f8  16 00 00 da  ble      #0x61b958
0061b8fc  00 50 a0 e3  mov      r5, #0
0061b900  05 60 a0 e1  mov      r6, r5
0061b904  0c 20 97 e5  ldr      r2, [r7, #0xc]
0061b908  04 30 a0 e1  mov      r3, r4
0061b90c  0a 10 a0 e1  mov      r1, sl
0061b910  05 20 82 e0  add      r2, r2, r5
0061b914  08 00 a0 e1  mov      r0, r8
0061b918  75 fe ff eb  bl       #0x61b2f4
0061b91c  00 30 94 e5  ldr      r3, [r4]
0061b920  00 90 a0 e1  mov      sb, r0
0061b924  00 10 a0 e1  mov      r1, r0
0061b928  04 00 a0 e1  mov      r0, r4
0061b92c  0f e0 a0 e1  mov      lr, pc
0061b930  5c f0 93 e5  ldr      pc, [r3, #0x5c]
0061b934  00 30 99 e5  ldr      r3, [sb]
0061b938  01 60 86 e2  add      r6, r6, #1
0061b93c  50 50 85 e2  add      r5, r5, #0x50
0061b940  0c 00 13 e5  ldr      r0, [r3, #-0xc]
0061b944  00 00 89 e0  add      r0, sb, r0
0061b948  0d 07 f4 eb  bl       #0x31d584
0061b94c  08 30 97 e5  ldr      r3, [r7, #8]
0061b950  03 00 56 e1  cmp      r6, r3
0061b954  ea ff ff ba  blt      #0x61b904
;
; --- node_typed_reference_array: SNode typed-reference count/pointer, 8-byte entries and type dispatch.
; VA 0x0061b314..0x0061b39c (exclusive), file 0x61b314, SHA-256 47a50d0d5a57dad6250cc46bd34404062f914d12fd2c33fe154a50d0fbaaf438
0061b314  4c 30 94 e5  ldr      r3, [r4, #0x4c]
0061b318  00 00 53 e3  cmp      r3, #0
0061b31c  54 01 00 0a  beq      #0x61b874
0061b320  04 30 90 e5  ldr      r3, [r0, #4]
0061b324  00 10 a0 e1  mov      r1, r0
0061b328  03 00 a0 e1  mov      r0, r3
0061b32c  00 30 93 e5  ldr      r3, [r3]
0061b330  0f e0 a0 e1  mov      lr, pc
0061b334  40 f0 93 e5  ldr      pc, [r3, #0x40]
0061b338  00 60 a0 e1  mov      r6, r0
0061b33c  40 10 94 e5  ldr      r1, [r4, #0x40]
0061b340  00 00 51 e3  cmp      r1, #0
0061b344  3a 00 00 da  ble      #0x61b434
0061b348  38 30 8d e2  add      r3, sp, #0x38
0061b34c  3c c0 8d e2  add      ip, sp, #0x3c
0061b350  00 50 a0 e3  mov      r5, #0
0061b354  08 30 8d e5  str      r3, [sp, #8]
0061b358  0c c0 8d e5  str      ip, [sp, #0xc]
0061b35c  06 70 a0 e1  mov      r7, r6
0061b360  44 20 94 e5  ldr      r2, [r4, #0x44]
0061b364  85 61 a0 e1  lsl      r6, r5, #3
0061b368  85 31 92 e7  ldr      r3, [r2, r5, lsl #3]
0061b36c  06 20 82 e0  add      r2, r2, r6
0061b370  01 30 43 e2  sub      r3, r3, #1
0061b374  0c 00 53 e3  cmp      r3, #0xc
0061b378  03 f1 8f 90  addls    pc, pc, r3, lsl #2
0061b37c  28 00 00 ea  b        #0x61b424
0061b380  31 01 00 ea  b        #0x61b84c
0061b384  e5 00 00 ea  b        #0x61b720
0061b388  bf 00 00 ea  b        #0x61b68c
0061b38c  b4 00 00 ea  b        #0x61b664
0061b390  23 00 00 ea  b        #0x61b424
0061b394  22 00 00 ea  b        #0x61b424
0061b398  21 00 00 ea  b        #0x61b424
;
; --- node_type3_geometry_dispatch: Type code 3 passes its geometry payload to constructGeometry.
; VA 0x0061b68c..0x0061b6a8 (exclusive), file 0x61b68c, SHA-256 e1a5013e0ad0ee3cd3df4e236e5223d684b843d294dd5e0ac1f400d56408457e
0061b68c  04 30 92 e5  ldr      r3, [r2, #4]
0061b690  0c 00 9d e5  ldr      r0, [sp, #0xc]
0061b694  08 10 a0 e1  mov      r1, r8
0061b698  0b 20 a0 e1  mov      r2, fp
0061b69c  00 a0 8d e5  str      sl, [sp]
0061b6a0  04 fe ff eb  bl       #0x61aeb8
0061b6a4  3c 00 9d e5  ldr      r0, [sp, #0x3c]
;
; --- geometry_instance_record_setup: Geometry-instance argument and initial record setup.
; VA 0x0061aeb8..0x0061aee8 (exclusive), file 0x61aeb8, SHA-256 a16de9391b82924256f99606c131c56371a2b9fdc799b6dda34ce221b4c2944b
0061aeb8  f0 4f 2d e9  push     {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061aebc  00 90 a0 e1  mov      sb, r0
0061aec0  00 00 a0 e3  mov      r0, #0
0061aec4  00 00 89 e5  str      r0, [sb]
0061aec8  03 60 a0 e1  mov      r6, r3
0061aecc  00 30 93 e5  ldr      r3, [r3]
0061aed0  04 c0 96 e5  ldr      ip, [r6, #4]
0061aed4  34 d0 4d e2  sub      sp, sp, #0x34
0061aed8  00 00 53 e1  cmp      r3, r0
0061aedc  01 50 a0 e1  mov      r5, r1
0061aee0  01 c0 8c e2  add      ip, ip, #1
0061aee4  10 20 8d e5  str      r2, [sp, #0x10]
;
; --- geometry_per_buffer_material_loop: Per-buffer material count at +0x0c; 0x3c-byte material stride; virtual factory slot +0x24.
; VA 0x0061af38..0x0061b020 (exclusive), file 0x61af38, SHA-256 0b5e74a14dcefa4c434330cd334f526c442ef12b18b45ece3282cc91e5869e6f
0061af38  47 00 00 0a  beq      #0x61b05c
0061af3c  0c 30 96 e5  ldr      r3, [r6, #0xc]
0061af40  00 00 53 e3  cmp      r3, #0
0061af44  44 00 00 da  ble      #0x61b05c
0061af48  00 70 a0 e3  mov      r7, #0
0061af4c  1c 00 8d e2  add      r0, sp, #0x1c
0061af50  07 40 a0 e1  mov      r4, r7
0061af54  07 80 a0 e1  mov      r8, r7
0061af58  24 a0 8d e2  add      sl, sp, #0x24
0061af5c  20 b0 8d e2  add      fp, sp, #0x20
0061af60  14 00 8d e5  str      r0, [sp, #0x14]
0061af64  06 70 a0 e1  mov      r7, r6
0061af68  30 00 00 ea  b        #0x61b030
0061af6c  04 20 96 e5  ldr      r2, [r6, #4]
0061af70  01 20 82 e2  add      r2, r2, #1
0061af74  43 ff ff eb  bl       #0x61ac88
0061af78  00 20 a0 e1  mov      r2, r0
0061af7c  0a 00 a0 e1  mov      r0, sl
0061af80  58 10 9d e5  ldr      r1, [sp, #0x58]
0061af84  10 30 9d e5  ldr      r3, [sp, #0x10]
0061af88  db 06 01 eb  bl       #0x65cafc
0061af8c  04 e0 95 e5  ldr      lr, [r5, #4]
0061af90  00 c0 99 e5  ldr      ip, [sb]
0061af94  06 30 a0 e1  mov      r3, r6
0061af98  0e 10 a0 e1  mov      r1, lr
0061af9c  00 e0 9e e5  ldr      lr, [lr]
0061afa0  00 00 5c e3  cmp      ip, #0
0061afa4  0b 00 a0 e1  mov      r0, fp
0061afa8  24 60 9e e5  ldr      r6, [lr, #0x24]
0061afac  1c c0 8d e5  str      ip, [sp, #0x1c]
0061afb0  04 e0 9c 15  ldrne    lr, [ip, #4]
0061afb4  05 20 a0 e1  mov      r2, r5
0061afb8  3c 80 88 e2  add      r8, r8, #0x3c
0061afbc  01 e0 8e 12  addne    lr, lr, #1
0061afc0  04 e0 8c 15  strne    lr, [ip, #4]
0061afc4  14 c0 9d e5  ldr      ip, [sp, #0x14]
0061afc8  08 40 8d e5  str      r4, [sp, #8]
0061afcc  04 a0 8d e5  str      sl, [sp, #4]
0061afd0  00 c0 8d e5  str      ip, [sp]
0061afd4  00 c0 a0 e3  mov      ip, #0
0061afd8  0c c0 8d e5  str      ip, [sp, #0xc]
0061afdc  36 ff 2f e1  blx      r6
0061afe0  1c 00 9d e5  ldr      r0, [sp, #0x1c]
0061afe4  00 00 50 e3  cmp      r0, #0
0061afe8  00 00 00 0a  beq      #0x61aff0
0061afec  64 09 f4 eb  bl       #0x31d584
0061aff0  00 c0 99 e5  ldr      ip, [sb]
0061aff4  04 10 a0 e1  mov      r1, r4
0061aff8  0b 30 a0 e1  mov      r3, fp
0061affc  0a 20 a0 e1  mov      r2, sl
0061b000  0c 00 a0 e1  mov      r0, ip
0061b004  00 c0 9c e5  ldr      ip, [ip]
0061b008  0f e0 a0 e1  mov      lr, pc
0061b00c  20 f0 9c e5  ldr      pc, [ip, #0x20]
0061b010  0b 00 a0 e1  mov      r0, fp
0061b014  94 7c fd eb  bl       #0x57a26c
0061b018  0a 00 a0 e1  mov      r0, sl
0061b01c  f1 d6 f3 eb  bl       #0x310be8
;
; --- factory_profile_technique_subrecord_loop: Profile descriptor selection, technique rows, nested subrecords and map-set call.
; VA 0x0063459c..0x00634780 (exclusive), file 0x63459c, SHA-256 65dce8890f8d2d84ce46342960c2d6707d76bd5c45f03c61ef8c6a07a064c8f5
0063459c  07 00 10 e3  tst      r0, #7
006345a0  1c 70 84 12  addne    r7, r4, #0x1c
006345a4  02 00 00 1a  bne      #0x6345b4
006345a8  18 00 10 e3  tst      r0, #0x18
006345ac  24 70 84 12  addne    r7, r4, #0x24
006345b0  df 00 00 0a  beq      #0x634934
006345b4  40 20 8d e2  add      r2, sp, #0x40
006345b8  3c 50 8d e2  add      r5, sp, #0x3c
006345bc  02 10 a0 e1  mov      r1, r2
006345c0  05 00 a0 e1  mov      r0, r5
006345c4  1c 20 8d e5  str      r2, [sp, #0x1c]
006345c8  5b ab fe eb  bl       #0x5df33c
006345cc  3c 20 9d e5  ldr      r2, [sp, #0x3c]
006345d0  00 00 52 e3  cmp      r2, #0
006345d4  28 20 8d e5  str      r2, [sp, #0x28]
006345d8  03 00 00 0a  beq      #0x6345ec
006345dc  00 30 92 e5  ldr      r3, [r2]
006345e0  01 30 83 e2  add      r3, r3, #1
006345e4  00 30 82 e5  str      r3, [r2]
006345e8  28 20 9d e5  ldr      r2, [sp, #0x28]
006345ec  44 30 9d e5  ldr      r3, [sp, #0x44]
006345f0  28 00 8d e2  add      r0, sp, #0x28
006345f4  44 20 8d e5  str      r2, [sp, #0x44]
006345f8  28 30 8d e5  str      r3, [sp, #0x28]
006345fc  1a 17 fd eb  bl       #0x57a26c
00634600  05 00 a0 e1  mov      r0, r5
00634604  18 17 fd eb  bl       #0x57a26c
00634608  34 30 94 e5  ldr      r3, [r4, #0x34]
0063460c  00 00 53 e3  cmp      r3, #0
00634610  d2 00 00 0a  beq      #0x634960
00634614  70 30 9d e5  ldr      r3, [sp, #0x70]
00634618  78 20 9d e5  ldr      r2, [sp, #0x78]
0063461c  34 00 8d e2  add      r0, sp, #0x34
00634620  00 30 93 e5  ldr      r3, [r3]
00634624  03 10 a0 e1  mov      r1, r3
00634628  00 30 93 e5  ldr      r3, [r3]
0063462c  0f e0 a0 e1  mov      lr, pc
00634630  14 f0 93 e5  ldr      pc, [r3, #0x14]
00634634  34 00 9d e5  ldr      r0, [sp, #0x34]
00634638  14 30 90 e5  ldr      r3, [r0, #0x14]
0063463c  00 00 53 e3  cmp      r3, #0
00634640  38 30 8d e5  str      r3, [sp, #0x38]
00634644  00 20 93 15  ldrne    r2, [r3]
00634648  01 20 82 12  addne    r2, r2, #1
0063464c  00 20 83 15  strne    r2, [r3]
00634650  34 00 9d 15  ldrne    r0, [sp, #0x34]
00634654  00 00 50 e3  cmp      r0, #0
00634658  00 00 00 0a  beq      #0x634660
0063465c  c8 a3 f3 eb  bl       #0x31d584
00634660  00 c0 97 e5  ldr      ip, [r7]
00634664  00 00 5c e3  cmp      ip, #0
00634668  14 c0 8d e5  str      ip, [sp, #0x14]
0063466c  38 80 8d d2  addle    r8, sp, #0x38
00634670  42 00 00 da  ble      #0x634780
00634674  00 60 a0 e3  mov      r6, #0
00634678  30 20 8d e2  add      r2, sp, #0x30
0063467c  10 60 8d e5  str      r6, [sp, #0x10]
00634680  38 80 8d e2  add      r8, sp, #0x38
00634684  0c 20 8d e5  str      r2, [sp, #0xc]
00634688  04 30 97 e5  ldr      r3, [r7, #4]
0063468c  40 00 9d e5  ldr      r0, [sp, #0x40]
00634690  06 10 93 e7  ldr      r1, [r3, r6]
00634694  1e 80 fe eb  bl       #0x5d4714
00634698  ff 00 50 e3  cmp      r0, #0xff
0063469c  00 a0 a0 e1  mov      sl, r0
006346a0  2f 00 00 0a  beq      #0x634764
006346a4  04 30 97 e5  ldr      r3, [r7, #4]
006346a8  06 30 83 e0  add      r3, r3, r6
006346ac  04 90 93 e5  ldr      sb, [r3, #4]
006346b0  00 00 59 e3  cmp      sb, #0
006346b4  2a 00 00 da  ble      #0x634764
006346b8  00 50 a0 e3  mov      r5, #0
006346bc  05 40 a0 e1  mov      r4, r5
006346c0  00 10 a0 e3  mov      r1, #0
006346c4  24 00 a0 e3  mov      r0, #0x24
006346c8  b7 fe fb eb  bl       #0x5341ac
006346cc  08 10 a0 e1  mov      r1, r8
006346d0  00 b0 a0 e1  mov      fp, r0
006346d4  9f b0 fd eb  bl       #0x5a0958
006346d8  00 00 5b e3  cmp      fp, #0
006346dc  30 b0 8d e5  str      fp, [sp, #0x30]
006346e0  00 30 9b 15  ldrne    r3, [fp]
006346e4  0b 00 a0 01  moveq    r0, fp
006346e8  00 c0 a0 e3  mov      ip, #0
006346ec  01 30 83 12  addne    r3, r3, #1
006346f0  00 30 8b 15  strne    r3, [fp]
006346f4  04 30 97 e5  ldr      r3, [r7, #4]
006346f8  30 00 9d 15  ldrne    r0, [sp, #0x30]
006346fc  08 10 a0 e1  mov      r1, r8
00634700  06 30 83 e0  add      r3, r3, r6
00634704  08 20 93 e5  ldr      r2, [r3, #8]
00634708  05 20 82 e0  add      r2, r2, r5
0063470c  0c 00 92 e9  ldmib    r2, {r2, r3}
00634710  00 c0 8d e5  str      ip, [sp]
00634714  fb af fd eb  bl       #0x5a0708
00634718  74 20 ef e6  uxtb     r2, r4
0063471c  44 00 9d e5  ldr      r0, [sp, #0x44]
00634720  0c 30 9d e5  ldr      r3, [sp, #0xc]
00634724  0a 10 a0 e1  mov      r1, sl
00634728  39 ac fe eb  bl       #0x5df814
0063472c  30 30 9d e5  ldr      r3, [sp, #0x30]
00634730  01 40 84 e2  add      r4, r4, #1
00634734  0c 50 85 e2  add      r5, r5, #0xc
00634738  00 00 53 e3  cmp      r3, #0
0063473c  03 00 a0 e1  mov      r0, r3
00634740  05 00 00 0a  beq      #0x63475c
00634744  00 20 93 e5  ldr      r2, [r3]
00634748  01 20 42 e2  sub      r2, r2, #1
0063474c  00 00 52 e3  cmp      r2, #0
00634750  00 20 83 e5  str      r2, [r3]
00634754  00 00 00 1a  bne      #0x63475c
00634758  d4 66 f3 eb  bl       #0x30e2b0
0063475c  09 00 54 e1  cmp      r4, sb
00634760  d6 ff ff 1a  bne      #0x6346c0
00634764  10 20 9d e5  ldr      r2, [sp, #0x10]
00634768  14 30 9d e5  ldr      r3, [sp, #0x14]
0063476c  0c 60 86 e2  add      r6, r6, #0xc
00634770  01 20 82 e2  add      r2, r2, #1
00634774  03 00 52 e1  cmp      r2, r3
00634778  10 20 8d e5  str      r2, [sp, #0x10]
0063477c  c1 ff ff 1a  bne      #0x634688
;
; --- vertex_attribute_map_set_pair_semantics: Pair byte +1 is looked up as stream code; byte +0 is destination map slot.
; VA 0x005a0720..0x005a0778 (exclusive), file 0x5a0720, SHA-256 e76f9c586f2b6e9cf6d8c4a700d8cf81f95e51386916adece61d2a39b549d39b
005a0720  20 80 dd e5  ldrb     r8, [sp, #0x20]
005a0724  00 00 91 e5  ldr      r0, [r1]
005a0728  15 00 00 0a  beq      #0x5a0784
005a072c  14 50 80 e2  add      r5, r0, #0x14
005a0730  00 00 00 ea  b        #0x5a0738
005a0734  00 00 96 e5  ldr      r0, [r6]
005a0738  05 20 a0 e1  mov      r2, r5
005a073c  10 30 90 e5  ldr      r3, [r0, #0x10]
005a0740  01 10 d4 e5  ldrb     r1, [r4, #1]
005a0744  d8 00 00 eb  bl       #0x5a0aac
005a0748  00 30 96 e5  ldr      r3, [r6]
005a074c  10 20 93 e5  ldr      r2, [r3, #0x10]
005a0750  14 30 83 e2  add      r3, r3, #0x14
005a0754  00 30 63 e0  rsb      r3, r3, r0
005a0758  02 00 50 e1  cmp      r0, r2
005a075c  05 00 00 0a  beq      #0x5a0778
005a0760  00 20 d4 e5  ldrb     r2, [r4]
005a0764  43 32 a0 e1  asr      r3, r3, #4
005a0768  00 00 58 e3  cmp      r8, #0
005a076c  02 20 8a e0  add      r2, sl, r2
005a0770  00 50 a0 11  movne    r5, r0
005a0774  04 30 c2 e5  strb     r3, [r2, #4]
;
; --- CColladaFactory virtual-call slot (data, not instructions)
; vtable _ZTVN6glitch7collada15CColladaFactoryE at VA 0x0097b7d8; object vptr starts at symbol+8.
; constructGeometry loads vptr slot +0x24, corresponding to vtable symbol+0x2c / VA 0x0097b804.
; file 0x97a804; bytes 20 45 63 00; little-endian word 0x00634520.
; .rel.dyn relocation is R_ARM_RELATIVE (type 23, symbol index 0); stored word is addend.
