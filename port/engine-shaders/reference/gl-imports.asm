; Exact imported GL PLT stubs from the original APK ELF.
; Each 12-byte range is SHA-256 checked against the ELF extracted from the APK.
; ARM mode, little-endian; address labels are ELF virtual addresses.

; glGetShaderInfoLog@plt va=0x0030dfbc size=12 sha256=41e5947c7e7ce026bf4f10dd7233de3f459f291086077e5588de1bdce51b4b90 calls=0x006df4d4
glGetShaderInfoLog@plt:
0030dfbc  06 c6 8f e2                                      add ip, pc, #0x600000
0030dfc0  86 ca 8c e2                                      add ip, ip, #0x86000
0030dfc4  9c fb bc e5                                      ldr pc, [ip, #0xb9c]!

; glGetProgramInfoLog@plt va=0x0030e214 size=12 sha256=52b797c8d3136a498069731019e494c7bb7ed217de06426fb9f498adedcea549 calls=0x006df444,0x006dea60,0x006dead8
glGetProgramInfoLog@plt:
0030e214  06 c6 8f e2                                      add ip, pc, #0x600000
0030e218  86 ca 8c e2                                      add ip, ip, #0x86000
0030e21c  0c fa bc e5                                      ldr pc, [ip, #0xa0c]!

; glGetActiveAttrib@plt va=0x0030e01c size=12 sha256=cde7b382263e63496528dfc688758b0fbcfcd737c41c5b22ebcdcdade8c40c3d calls=0x006dec00
glGetActiveAttrib@plt:
0030e01c  06 c6 8f e2                                      add ip, pc, #0x600000
0030e020  86 ca 8c e2                                      add ip, ip, #0x86000
0030e024  5c fb bc e5                                      ldr pc, [ip, #0xb5c]!

; glDeleteProgram@plt va=0x0030e0a0 size=12 sha256=cceaa686936ab2964c023f98294e49ee55f3878d46c8c09198c255aac5806fc6 calls=0x006de90c,0x006df1e4,0x006df2ac
glDeleteProgram@plt:
0030e0a0  06 c6 8f e2                                      add ip, pc, #0x600000
0030e0a4  86 ca 8c e2                                      add ip, ip, #0x86000
0030e0a8  04 fb bc e5                                      ldr pc, [ip, #0xb04]!

; glGetUniformLocation@plt va=0x0030e13c size=12 sha256=44888879a57c56dd0abb34a9a3bcb16c18bae8921686b162d2735423a0da8324 calls=0x006ded84
glGetUniformLocation@plt:
0030e13c  06 c6 8f e2                                      add ip, pc, #0x600000
0030e140  86 ca 8c e2                                      add ip, ip, #0x86000
0030e144  9c fa bc e5                                      ldr pc, [ip, #0xa9c]!

; glGetProgramiv@plt va=0x0030e28c size=12 sha256=3db4917e3b69d3ea11710b7317f799306f8fbd4e2ab332b4d8f8b42d546b65ad calls=0x006dea20,0x006dea40,0x006deab0,0x006deb00,0x006deb14,0x006deb30,0x006deb60
glGetProgramiv@plt:
0030e28c  06 c6 8f e2                                      add ip, pc, #0x600000
0030e290  86 ca 8c e2                                      add ip, ip, #0x86000
0030e294  bc f9 bc e5                                      ldr pc, [ip, #0x9bc]!

; glCompileShader@plt va=0x0030e46c size=12 sha256=697c116426ee3ce6b2cf283d56da92d12be283d9f7d573263cf5d8feb1111b3e calls=0x006df3e8
glCompileShader@plt:
0030e46c  06 c6 8f e2                                      add ip, pc, #0x600000
0030e470  86 ca 8c e2                                      add ip, ip, #0x86000
0030e474  7c f8 bc e5                                      ldr pc, [ip, #0x87c]!

; glCreateShader@plt va=0x0030e538 size=12 sha256=6a291cf621a9bbf37570d4980e08a89a89f037bae22c95b1d7d8174aaf96640f calls=0x006df584
glCreateShader@plt:
0030e538  06 c6 8f e2                                      add ip, pc, #0x600000
0030e53c  86 ca 8c e2                                      add ip, ip, #0x86000
0030e540  f4 f7 bc e5                                      ldr pc, [ip, #0x7f4]!

; glDeleteShader@plt va=0x0030e628 size=12 sha256=d6c2e0668d0be45f034c692950c12ae79c34b22d7ad98df219a0591955ba2835 calls=0x006df608
glDeleteShader@plt:
0030e628  06 c6 8f e2                                      add ip, pc, #0x600000
0030e62c  86 ca 8c e2                                      add ip, ip, #0x86000
0030e630  54 f7 bc e5                                      ldr pc, [ip, #0x754]!

; glGetActiveUniform@plt va=0x0030e6d0 size=12 sha256=6506da6956f6f13ed124eff516da4c67f3a7ab0d9d85a028277a5d9b4ab399bf calls=0x006ded0c
glGetActiveUniform@plt:
0030e6d0  06 c6 8f e2                                      add ip, pc, #0x600000
0030e6d4  86 ca 8c e2                                      add ip, ip, #0x86000
0030e6d8  e4 f6 bc e5                                      ldr pc, [ip, #0x6e4]!

; glGetAttribLocation@plt va=0x0030e73c size=12 sha256=333ba8aec01675bee34f1088c1fff4b6d8563abf4794b87ae12b1602431a7a61 calls=0x006dec20
glGetAttribLocation@plt:
0030e73c  06 c6 8f e2                                      add ip, pc, #0x600000
0030e740  86 ca 8c e2                                      add ip, ip, #0x86000
0030e744  9c f6 bc e5                                      ldr pc, [ip, #0x69c]!

; glAttachShader@plt va=0x0030ebf8 size=12 sha256=ed882102c72d187d09a2a514f80dcd9e0e28728040e5face3e2771f91e63dfac calls=0x006df274,0x006df284
glAttachShader@plt:
0030ebf8  06 c6 8f e2                                      add ip, pc, #0x600000
0030ebfc  86 ca 8c e2                                      add ip, ip, #0x86000
0030ec00  74 f3 bc e5                                      ldr pc, [ip, #0x374]!

; glCreateProgram@plt va=0x0030ec1c size=12 sha256=7d354761688da2ec623345176b0e1d3143c19e9055b6d7f29faa5c1e550b8377 calls=0x006de8e8
glCreateProgram@plt:
0030ec1c  06 c6 8f e2                                      add ip, pc, #0x600000
0030ec20  86 ca 8c e2                                      add ip, ip, #0x86000
0030ec24  5c f3 bc e5                                      ldr pc, [ip, #0x35c]!

; glGetShaderiv@plt va=0x0030ed54 size=12 sha256=9db9ff836647179831e6c4df38ba73d7b9a709dda3a6796bcf521b6a0bf4f786 calls=0x006df3fc,0x006df410,0x006df454,0x006df4e4
glGetShaderiv@plt:
0030ed54  06 c6 8f e2                                      add ip, pc, #0x600000
0030ed58  86 ca 8c e2                                      add ip, ip, #0x86000
0030ed5c  8c f2 bc e5                                      ldr pc, [ip, #0x28c]!

; glLinkProgram@plt va=0x0030ed78 size=12 sha256=37edee1e059da44ccfecccf9d1a9bd6be0fd268d8c2c1b0cbaf2e6dc387ac42a calls=0x006dea08
glLinkProgram@plt:
0030ed78  06 c6 8f e2                                      add ip, pc, #0x600000
0030ed7c  86 ca 8c e2                                      add ip, ip, #0x86000
0030ed80  74 f2 bc e5                                      ldr pc, [ip, #0x274]!

; glShaderSource@plt va=0x0030ed84 size=12 sha256=330cc20a8ca59b504a6a23468629c719810ec06f943fac7f2d02b11a44f2fe00 calls=0x006df5a0
glShaderSource@plt:
0030ed84  06 c6 8f e2                                      add ip, pc, #0x600000
0030ed88  86 ca 8c e2                                      add ip, ip, #0x86000
0030ed8c  6c f2 bc e5                                      ldr pc, [ip, #0x26c]!

