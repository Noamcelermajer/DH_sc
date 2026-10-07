; Exact byte-checked ARM excerpt for SEffect profile/technique and pass traversal.
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Complete GLES2 renderer function SHA-256: 3669e766eac04456a732fe9a392b2df6d711dce39992a2e692ae7743fc339e3c
; Excerpt VA: 0x0063631c..0x006364c8 (end-exclusive)
; Excerpt byte SHA-256: 0fd7b1909adbc4e6a42c61420a7470c0ac611efa8c4047f7aef89cdd61559325
; Rows were decoded with llvm-objdump and byte-compared against the APK ELF PT_LOAD mapping.

0063631c  60 c0 9d e5  ldr	r12, [sp, #0x60]
00636320  10 c0 9c e5  ldr	r12, [r12, #0x10]
00636324  28 c0 8d e5  str	r12, [sp, #0x28]
00636328  20 00 9c e5  ldr	r0, [r12, #0x20]
0063632c  38 00 8d e5  str	r0, [sp, #0x38]
00636330  28 30 9c e5  ldr	r3, [r12, #0x28]
00636334  50 20 bd e7  sbfx	r2, r0, #0x0, #0x1e
00636338  00 00 53 e3  cmp	r3, #0
0063633c  00 30 a0 d3  movle	r3, #0
00636340  01 30 a0 c3  movgt	r3, #1
00636344  00 00 52 e3  cmp	r2, #0
00636348  50 30 8d e5  str	r3, [sp, #0x50]
0063634c  09 00 00 da  ble	0x636378 <boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)+0x190> @ imm = #0x24
00636350  54 00 9d e5  ldr	r0, [sp, #0x54]
00636354  00 30 a0 e3  mov	r3, #0
00636358  03 10 a0 e1  mov	r1, r3
0063635c  03 11 80 e7  str	r1, [r0, r3, lsl #2]
00636360  01 30 83 e2  add	r3, r3, #1
00636364  02 00 53 e1  cmp	r3, r2
00636368  fb ff ff 1a  bne	0x63635c <boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)+0x174> @ imm = #-0x14
0063636c  28 10 9d e5  ldr	r1, [sp, #0x28]
00636370  20 10 91 e5  ldr	r1, [r1, #0x20]
00636374  38 10 8d e5  str	r1, [sp, #0x38]
00636378  38 20 9d e5  ldr	r2, [sp, #0x38]
0063637c  00 00 52 e3  cmp	r2, #0
00636380  00 80 a0 d3  movle	r8, #0
00636384  6c 00 00 da  ble	0x63653c <boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)+0x354> @ imm = #0x1b0
00636388  50 c0 9d e5  ldr	r12, [sp, #0x50]
0063638c  00 30 a0 e3  mov	r3, #0
00636390  a4 00 8d e2  add	r0, sp, #164
00636394  01 c0 2c e2  eor	r12, r12, #1
00636398  18 30 8d e5  str	r3, [sp, #0x18]
0063639c  1c 30 8d e5  str	r3, [sp, #0x1c]
006363a0  20 30 8d e5  str	r3, [sp, #0x20]
006363a4  03 80 a0 e1  mov	r8, r3
006363a8  48 c0 8d e5  str	r12, [sp, #0x48]
006363ac  78 a0 8d e2  add	r10, sp, #120
006363b0  9c b0 8d e2  add	r11, sp, #156
006363b4  14 00 8d e5  str	r0, [sp, #0x14]
006363b8  24 90 9d e5  ldr	r9, [sp, #0x24]
006363bc  13 00 00 ea  b	0x636410 <boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)+0x228> @ imm = #0x4c
006363c0  18 10 9d e5  ldr	r1, [sp, #0x18]
006363c4  54 00 9d e5  ldr	r0, [sp, #0x54]
006363c8  01 00 80 e0  add	r0, r0, r1
006363cc  30 00 8d e5  str	r0, [sp, #0x30]
006363d0  30 10 9d e5  ldr	r1, [sp, #0x30]
006363d4  00 50 91 e5  ldr	r5, [r1]
006363d8  00 00 55 e3  cmp	r5, #0
006363dc  1f 00 00 0a  beq	0x636460 <boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)+0x278> @ imm = #0x7c
006363e0  20 20 9d e5  ldr	r2, [sp, #0x20]
006363e4  1c c0 9d e5  ldr	r12, [sp, #0x1c]
006363e8  18 00 9d e5  ldr	r0, [sp, #0x18]
006363ec  38 30 9d e5  ldr	r3, [sp, #0x38]
006363f0  01 20 82 e2  add	r2, r2, #1
006363f4  0c c0 8c e2  add	r12, r12, #12
006363f8  04 00 80 e2  add	r0, r0, #4
006363fc  03 00 52 e1  cmp	r2, r3
00636400  20 20 8d e5  str	r2, [sp, #0x20]
00636404  1c c0 8d e5  str	r12, [sp, #0x1c]
00636408  18 00 8d e5  str	r0, [sp, #0x18]
0063640c  4a 00 00 0a  beq	0x63653c <boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)+0x354> @ imm = #0x128
00636410  28 10 9d e5  ldr	r1, [sp, #0x28]
00636414  34 20 9d e5  ldr	r2, [sp, #0x34]
00636418  1c c0 9d e5  ldr	r12, [sp, #0x1c]
0063641c  24 30 91 e5  ldr	r3, [r1, #0x24]
00636420  00 00 52 e3  cmp	r2, #0
00636424  0c 70 83 e0  add	r7, r3, r12
00636428  e4 ff ff 1a  bne	0x6363c0 <boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)+0x1d8> @ imm = #-0x70
0063642c  1c 20 9d e5  ldr	r2, [sp, #0x1c]
00636430  09 00 a0 e1  mov	r0, r9
00636434  02 10 93 e7  ldr	r1, [r3, r2]
00636438  c2 95 fe eb  bl	0x5dbb48 <glitch::video::CMaterialRendererManager::getTechniqueID(char const*) const> @ imm = #-0x5a8f8
0063643c  54 c0 9d e5  ldr	r12, [sp, #0x54]
00636440  18 30 9d e5  ldr	r3, [sp, #0x18]
00636444  03 00 8c e7  str	r0, [r12, r3]
00636448  03 00 8c e0  add	r0, r12, r3
0063644c  30 00 8d e5  str	r0, [sp, #0x30]
00636450  30 10 9d e5  ldr	r1, [sp, #0x30]
00636454  00 50 91 e5  ldr	r5, [r1]
00636458  00 00 55 e3  cmp	r5, #0
0063645c  df ff ff 1a  bne	0x6363e0 <boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)+0x1f8> @ imm = #-0x84
00636460  09 00 a0 e1  mov	r0, r9
00636464  00 10 97 e5  ldr	r1, [r7]
00636468  01 20 a0 e3  mov	r2, #1
0063646c  e6 9c fe eb  bl	0x5dd80c <glitch::video::CMaterialRendererManager::beginTechnique(char const*, bool)> @ imm = #-0x58c68
00636470  00 00 50 e3  cmp	r0, #0
00636474  d9 ff ff 0a  beq	0x6363e0 <boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)+0x1f8> @ imm = #-0x9c
00636478  04 20 97 e5  ldr	r2, [r7, #0x4]
0063647c  00 00 52 e3  cmp	r2, #0
00636480  10 20 8d e5  str	r2, [sp, #0x10]
00636484  25 00 00 da  ble	0x636520 <boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)+0x338> @ imm = #0x94
00636488  05 60 a0 e1  mov	r6, r5
0063648c  08 40 97 e5  ldr	r4, [r7, #0x8]
00636490  3c 30 9d e5  ldr	r3, [sp, #0x3c]
00636494  4c 00 9d e5  ldr	r0, [sp, #0x4c]
00636498  05 40 84 e0  add	r4, r4, r5
0063649c  04 20 a0 e1  mov	r2, r4
006364a0  d8 10 93 e5  ldr	r1, [r3, #0xd8]
006364a4  a1 f9 ff eb  bl	0x634b30 <glitch::collada::SProfileGLES2Traits::createShader(glitch::video::IShaderManager*, glitch::collada::SPass<glitch::collada::SRenderStatesProgrammable>&)> @ imm = #-0x197c
006364a8  a0 30 9d e5  ldr	r3, [sp, #0xa0]
006364ac  1c 10 84 e2  add	r1, r4, #28
006364b0  0a 00 a0 e1  mov	r0, r10
006364b4  00 00 53 e3  cmp	r3, #0
006364b8  9c 30 8d e5  str	r3, [sp, #0x9c]
006364bc  04 20 93 15  ldrne	r2, [r3, #0x4]
006364c0  01 60 86 e2  add	r6, r6, #1
006364c4  74 50 85 e2  add	r5, r5, #116
