#!/usr/bin/env python3
"""Remaster shaders: normal-map relief for the game's lit shader (REMASTER.md, "Normal maps").

  py -3 tools/trackb/remaster_shaders.py --data <files dir of a game data copy>

Reads GL_Diffuse_L1_iPhone_VS/FS.glsl and ProfileCOMMON_emul_VS/FS.glsl (its lit, textured variants: characters, skinned
meshes) from <data>/shaders.pak (the user's own game data; the shader text is game data and
is not kept in this repository), applies the edits below and writes <data>/data/port/remaster_shaders.zip. The game mounts
that zip before shaders.pak (Application init, port setting "normalmaps"), so these files replace the originals while
the original pak stays untouched.

Edits (every original variant keeps its behaviour while NormalStrength is 0, the value of a material without a normal
map):
  VS: three varyings carry the world position, the world normal and the vector to Light0 that main() already computes.
  FS: when NormalStrength > 0 the normal map (NormalSampler, tangent space, 0.5 + n/2) is turned into world space with a
      tangent frame built from screen-space derivatives of the position and the texture coordinates (no tangents in the
      meshes needed), and the final colour is scaled by 1 + strength * (N'.L - N.L), L being Light0's direction tipped towards a fixed oblique one: baked lightmaps, vertex colours and
      the per-vertex light stay as they were, the surface gains relief against Light0. NormalGreen (+1 / -1) flips the
      green channel for maps of the other convention.
"""
import argparse
import io
import os
import sys
import zipfile

VS_NAME = 'GL_Diffuse_L1_iPhone_VS.glsl'
FS_NAME = 'GL_Diffuse_L1_iPhone_FS.glsl'
PC_VS_NAME = 'ProfileCOMMON_emul_VS.glsl'
PC_FS_NAME = 'ProfileCOMMON_emul_FS.glsl'

VS_VARYINGS = '''
// DH2 remaster: normal-map relief (tools/trackb/remaster_shaders.py)
varying highp vec3 vNmWorldPos;
varying mediump vec3 vNmWorldNormal;
varying mediump vec3 vNmLightVec;
'''

FS_HEAD = '''#ifdef GL_ES
#extension GL_OES_standard_derivatives : enable
#endif
'''

FS_DECLS = '''
// DH2 remaster: normal-map relief (tools/trackb/remaster_shaders.py)
varying highp vec3 vNmWorldPos;
varying mediump vec3 vNmWorldNormal;
varying mediump vec3 vNmLightVec;
uniform lowp sampler2D NormalSampler;
uniform mediump float NormalStrength;
uniform mediump float NormalGreen;
'''

FS_RELIEF = '''	// DH2 remaster: normal-map relief. Lightmap, vertex colour and per-vertex light stay; the colour follows how far the
	// mapped normal turns towards or away from Light0 compared with the geometric normal.
	if (NormalStrength > 0.0)
	{
		mediump vec3 nm = texture2D(NormalSampler, vTexCoord0.xy).xyz * 2.0 - 1.0;
		nm.y *= (NormalGreen < 0.0) ? -1.0 : 1.0;
		mediump vec3 N = normalize(vNmWorldNormal);
		highp vec3 dp1 = dFdx(vNmWorldPos);
		highp vec3 dp2 = dFdy(vNmWorldPos);
		highp vec2 duv1 = dFdx(vTexCoord0.xy);
		highp vec2 duv2 = dFdy(vTexCoord0.xy);
		highp vec3 dp2perp = cross(dp2, N);
		highp vec3 dp1perp = cross(N, dp1);
		highp vec3 T = dp2perp * duv1.x + dp1perp * duv2.x;
		highp vec3 B = dp2perp * duv1.y + dp1perp * duv2.y;
		highp float invmax = inversesqrt(max(max(dot(T, T), dot(B, B)), 1e-12));
		mediump vec3 Np = normalize(T * (invmax * nm.x) + B * (invmax * nm.y) + N * nm.z);
		if (NormalStrength > 9.0)  // diagnostic (normalstrength >= 1000): the mapped normal as a colour, the light as alpha-less tint
		{
			gl_FragColor = vec4(Np * 0.5 + 0.5, 1.0);
			return;
		}
		// The relief light: Light0's direction tipped towards a fixed oblique direction (world is Z-up; from the upper left of
		// the usual camera, like the light painted into the textures). A light from straight above shows almost no relief.
		mediump vec3 L = normalize(normalize(vNmLightVec) + vec3(-0.55, 0.55, 0.35));
		mediump float relief = 1.0 + NormalStrength * (dot(Np, L) - dot(N, L));
		color.xyz *= clamp(relief, 0.5, 1.5);
	}

'''


def insert_after(text, anchor, addition, label):
    i = text.find(anchor)
    if i < 0:
        sys.exit('anchor not found (%s): %r' % (label, anchor))
    j = i + len(anchor)
    return text[:j] + addition + text[j:]


def insert_before(text, anchor, addition, label, start=0):
    i = text.find(anchor, start)
    if i < 0:
        sys.exit('anchor not found (%s): %r' % (label, anchor))
    return text[:i] + addition + text[i:]


def patch_vs(src):
    src = insert_after(src, 'varying mediump vec4 vTexCoord0;', VS_VARYINGS, 'vs varyings')
    src = insert_after(src, 'highp vec3 worldSpacePos = (matWorld * Vertex).xyz;',
                       '\n\tvNmWorldPos = worldSpacePos;\n\tvNmWorldNormal = transformedNormal;', 'vs position')
    src = insert_before(src, '// Light Attenuation', 'vNmLightVec = Light0Vec;\n    ', 'vs light vector')
    return src


def patch_fs(src):
    src = FS_HEAD + src
    src = insert_after(src, 'varying mediump vec4 vTexCoord0;', FS_DECLS, 'fs declarations')
    main = src.find('void main()')
    src = insert_before(src, '#ifdef SP', FS_RELIEF, 'fs relief', main)
    return src


def guarded(block):
    return '#if defined LIGHTING && defined TEXTURED' + block + '#endif\n'


def patch_pc_vs(src):
    """ProfileCOMMON_emul (characters, skinned meshes, props): the lit, textured variants carry the relief varyings."""
    src = insert_after(src, 'varying lowp vec4 vColor0;', '\n' + guarded(VS_VARYINGS), 'pc vs varyings')
    src = insert_after(src, 'vec3 Light0Vec = Light0Position.xyz - worldPosition.xyz * Light0Position.w;',
                       '\n#ifdef TEXTURED\n    vNmWorldPos = worldPosition.xyz;\n    vNmWorldNormal = transformedNormal;\n'
                       '    vNmLightVec = Light0Vec;\n#endif', 'pc vs assignments')
    return src


def patch_pc_fs(src):
    src = FS_HEAD + src
    src = insert_after(src, 'varying lowp vec4 vColor0;', '\n' + guarded(FS_DECLS), 'pc fs declarations')
    main = src.find('void main()')
    src = insert_before(src, '#ifdef ALPHATEST', guarded('\n' + FS_RELIEF), 'pc fs relief', main)
    return src


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--data', required=True, help='files dir of a game data copy (holds shaders.pak and data/)')
    a = ap.parse_args()
    with zipfile.ZipFile(os.path.join(a.data, 'shaders.pak')) as z:
        vs = z.read(VS_NAME).decode('latin-1')
        fs = z.read(FS_NAME).decode('latin-1')
        pc_vs = z.read(PC_VS_NAME).decode('latin-1')
        pc_fs = z.read(PC_FS_NAME).decode('latin-1')
    out_dir = os.path.join(a.data, 'data', 'port')
    os.makedirs(out_dir, exist_ok=True)
    out = os.path.join(out_dir, 'remaster_shaders.zip')
    with zipfile.ZipFile(out, 'w', zipfile.ZIP_DEFLATED) as z:
        z.writestr(VS_NAME, patch_vs(vs).encode('latin-1'))
        z.writestr(FS_NAME, patch_fs(fs).encode('latin-1'))
        z.writestr(PC_VS_NAME, patch_pc_vs(pc_vs).encode('latin-1'))
        z.writestr(PC_FS_NAME, patch_pc_fs(pc_fs).encode('latin-1'))
    print('wrote', out)


if __name__ == '__main__':
    main()
