; APK-matched range: lib/armeabi-v7a/libDungeonHunter2.so
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; FUNCTION: vox::VoxNativeSubDecoder::IsExtraSegmentNeeded(vox::TransitionRule*)
; ELF VA/file offset: 0x00884470; size: 0x78; SHA-256: 98c39eff5b9f58db344510faf32f2d44f03b8d8984340f3c1fb7d748dcbda0bd

00884470 <_ZN3vox19VoxNativeSubDecoder20IsExtraSegmentNeededEPNS_14TransitionRuleE>:
  884470: e92d4010      push {r4, lr}
  884474: e5903094      ldr r3, [r0, #0x94]
  884478: e3530000      cmp r3, #0
  88447c: da00000e      ble 0x8844bc
  884480: e3510000      cmp r1, #0
  884484: 0a00000f      beq 0x8844c8
  884488: e5913004      ldr r3, [r1, #4]
  88448c: e3530000      cmp r3, #0
  884490: 1a000007      bne 0x8844b4
  884494: e5910018      ldr r0, [r1, #0x18]
  884498: e3a01000      mov r1, #0
  88449c: e1a04003      mov r4, r3
  8844a0: ebea2794      bl 0x30e2f8 <__aeabi_fcmpgt@plt>
  8844a4: e3500000      cmp r0, #0
  8844a8: 13a04001      movne r4, #1
  8844ac: e6ef0074      uxtb r0, r4
  8844b0: e8bd8010      pop {r4, pc}
  8844b4: e3a00001      mov r0, #1
  8844b8: e8bd8010      pop {r4, pc}
  8844bc: 13a00000      movne r0, #0
  8844c0: 03a00001      moveq r0, #1
  8844c4: e8bd8010      pop {r4, pc}
  8844c8: e5903070      ldr r3, [r0, #0x70]
  8844cc: e3530001      cmp r3, #1
  8844d0: 0afffff7      beq 0x8844b4
  8844d4: e5900080      ldr r0, [r0, #0x80]
  8844d8: e3500001      cmp r0, #1
  8844dc: 13a00000      movne r0, #0
  8844e0: 03a00001      moveq r0, #1
  8844e4: e8bd8010      pop {r4, pc}
