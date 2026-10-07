; Exact recovered ARM function blocks; each byte row was checked against the APK ELF range.
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80

; FUNCTION 0x0053115c, declared_size=32, range_size=32, mode=arm
; class-group: global-functions
; alias: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGetJNIEnv
; demangled: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGetJNIEnv
; decoder-mode: arm
0053115c  10 30 9f e5                                      ldr r3, [pc, #0x10]
00531160  10 20 9f e5                                      ldr r2, [pc, #0x10]
00531164  03 30 8f e0                                      add r3, pc, r3
00531168  02 20 93 e7                                      ldr r2, [r3, r2]
0053116c  00 00 82 e5                                      str r0, [r2]
00531170  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00531174  2c 39 46 00 94 4a 00 00                          .byte 0x2c, 0x39, 0x46, 0x00, 0x94, 0x4a, 0x00, 0x00


; FUNCTION 0x00531150, declared_size=4, range_size=4, mode=arm
; class-group: global-functions
; alias: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGameRenderer
; demangled: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGameRenderer
; decoder-mode: arm
00531150  1e ff 2f e1                                      bx lr


; FUNCTION 0x00531154, declared_size=4, range_size=4, mode=arm
; class-group: global-functions
; alias: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeConfig
; demangled: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeConfig
; decoder-mode: arm
00531154  1e ff 2f e1                                      bx lr


; FUNCTION 0x005b1838, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8endSceneEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::endScene()
; decoder-mode: arm
005b1838  10 40 2d e9                                      push {r4, lr}
005b183c  00 40 a0 e1                                      mov r4, r0
005b1840  00 30 90 e5                                      ldr r3, [r0]
005b1844  0f e0 a0 e1                                      mov lr, pc
005b1848  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b184c  50 74 f5 eb                                      bl #0x30e994
005b1850  04 00 a0 e1                                      mov r0, r4
005b1854  b1 e4 ff eb                                      bl #0x5aab20
005b1858  01 00 a0 e3                                      mov r0, #1
005b185c  10 80 bd e8                                      pop {r4, pc}


; FUNCTION 0x005af20c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE11swapBuffersEi
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::swapBuffers(int)
; decoder-mode: arm
005af20c  10 40 2d e9                                      push {r4, lr}
005af210  00 30 90 e5                                      ldr r3, [r0]
005af214  0f e0 a0 e1                                      mov lr, pc
005af218  18 f2 93 e5                                      ldr pc, [r3, #0x218]
005af21c  10 80 bd e8                                      pop {r4, pc}


; FUNCTION 0x005aefac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::COpenGLES2Driver
; alias: _ZN6glitch5video16COpenGLES2Driver15swapBuffersImplEi
; demangled: glitch::video::COpenGLES2Driver::swapBuffersImpl(int)
; decoder-mode: arm
005aefac  00 00 a0 e3                                      mov r0, #0
005aefb0  1e ff 2f e1                                      bx lr


; FUNCTION 0x005af06c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE15swapBuffersImplEi
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::swapBuffersImpl(int)
; decoder-mode: arm
005af06c  00 00 51 e3                                      cmp r1, #0
005af070  10 40 2d e9                                      push {r4, lr}
005af074  02 00 00 0a                                      beq #0x5af084
005af078  00 30 90 e5                                      ldr r3, [r0]
005af07c  0f e0 a0 e1                                      mov lr, pc
005af080  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
005af084  01 00 a0 e3                                      mov r0, #1
005af088  10 80 bd e8                                      pop {r4, pc}


; FUNCTION 0x005aab20, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver8endSceneEv
; demangled: glitch::video::IVideoDriver::endScene()
; decoder-mode: arm
005aab20  10 40 2d e9                                      push {r4, lr}
005aab24  08 d0 4d e2                                      sub sp, sp, #8
005aab28  00 40 a0 e1                                      mov r4, r0
005aab2c  66 81 01 eb                                      bl #0x60b0cc
005aab30  80 e0 94 e5                                      ldr lr, [r4, #0x80]
005aab34  84 c0 94 e5                                      ldr ip, [r4, #0x84]
005aab38  78 20 94 e5                                      ldr r2, [r4, #0x78]
005aab3c  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
005aab40  00 10 a0 e1                                      mov r1, r0
005aab44  50 00 84 e2                                      add r0, r4, #0x50
005aab48  00 e0 8d e5                                      str lr, [sp]
005aab4c  04 c0 8d e5                                      str ip, [sp, #4]
005aab50  a9 bf 04 eb                                      bl #0x6da9fc
005aab54  01 00 a0 e3                                      mov r0, #1
005aab58  08 d0 8d e2                                      add sp, sp, #8
005aab5c  10 80 bd e8                                      pop {r4, pc}


; FUNCTION 0x005adb9c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver5flushEv
; demangled: glitch::video::IVideoDriver::flush()
; decoder-mode: arm
005adb9c  42 ff ff ea                                      b #0x5ad8ac

