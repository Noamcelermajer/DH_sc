// Port addition (remaster, not in the binary; REMASTER.md "Normal maps"): normal maps for the game's lit materials.
//
// Dh2InstallRemaster (called by Application::InitWin32 just before shaders.pak is mounted):
//   * mounts data/port/remaster_shaders.zip first, so its GL_Diffuse_L1 shaders (tools/trackb/remaster_shaders.py: the
//     original shaders plus a NormalSampler relief term) replace the ones in shaders.pak;
//   * installs the collada material hook: a material whose shader has a NormalSampler uniform and whose DiffuseSampler
//     texture X.tga has a sibling X_n.tga gets that texture, NormalStrength and NormalGreen. Materials without a normal
//     map keep NormalStrength 0, which the shader treats as "unchanged".
// Port settings: normalmaps (1 = on, 0 = original shaders, read at start), normalstrength (percent, default 100),
// normalgreen (1 = OpenGL green-up maps, -1 = DirectX green-down).
#include <cctype>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "core-platform/port_settings.hpp"
#include "glitch-shared/shared_string_heap.hpp"
#include "glitch-scene-collada-gui/collada/CColladaFactory.hpp"
#include "glitch-video/deps/gl_function_table.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_parameters.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-core-io/io/interfaces.hpp"

extern bool g_dh2HdTextures;  // core-platform filesystem_base.cpp: the HD texture layer (data/hd/) is in use
extern const char* RES_PATH;  // the files dir (core-platform app_entry; the runner's --data)

namespace {

constexpr const char* kShaderZip = "data/port/remaster_shaders.zip";
glitch::io::IFileSystem* g_fileSystem = nullptr;
int g_attached = 0;

void AttachNormalMap(glitch::video::IVideoDriver* driver, glitch::video::CMaterial* material) {
    if (driver == nullptr || material == nullptr || g_fileSystem == nullptr || !material->m_renderer) {
        return;
    }
    glitch::video::CMaterialRenderer* renderer = material->m_renderer.get();
    const uint16_t normalId = renderer->getParameterID("NormalSampler", 0);
    if (normalId == 0xffff) {
        return;
    }
    // The diffuse slot: the renderer names its texture slots after the effect's parameters, not the shader uniforms, so it is
    // found among the sampler entries (kind 2): a name with "diffuse" in it, else the first one that is not the normal map,
    // the lightmap, the alpha or the specular map.
    uint16_t diffuseId = 0xffff;
    uint16_t fallbackId = 0xffff;
    for (std::size_t i = 0; i < renderer->m_entryStorage.size(); ++i) {
        const glitch::video::detail::SParameterEntry& entry = renderer->m_entryStorage[i];
        if (entry.kind != 2 || i == normalId || entry.name == nullptr) {
            continue;
        }
        std::string lower = static_cast<const glitch::core::detail::SSharedStringData*>(entry.name)->text();
        for (char& c : lower) c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
#ifdef DH2_HOST_RUNNER
        if (std::getenv("DH2_NM_LOG") != nullptr) std::fprintf(stdout, "NMLOG sampler %u %s\n", static_cast<unsigned>(i), lower.c_str());
#endif
        if (lower.find("diffuse") != std::string::npos) {
            diffuseId = static_cast<uint16_t>(i);
            break;
        }
        if (fallbackId == 0xffff && lower.find("light") == std::string::npos && lower.find("alpha") == std::string::npos &&
            lower.find("spec") == std::string::npos && lower.find("normal") == std::string::npos) {
            fallbackId = static_cast<uint16_t>(i);
        }
    }
    if (diffuseId == 0xffff) {
        diffuseId = fallbackId;
    }
    if (diffuseId == 0xffff) {
        return;
    }
    boost::intrusive_ptr<glitch::video::ITexture> diffuse;
    if (!material->parameters.getParameter(diffuseId, 0u, diffuse) || !diffuse) {
        return;
    }
    const std::string& name = diffuse->m_name;
    const std::size_t dot = name.rfind('.');
    const std::string normalPath = (dot == std::string::npos ? name : name.substr(0, dot)) + "_n.tga";
    // existFile adds no prefix; the map lives in the HD layer (data/hd/3d/textures/) or next to the diffuse texture
    const std::string root = RES_PATH != nullptr ? RES_PATH : "";
    const std::size_t at = normalPath.find("3d/textures/");
    const bool exists = g_fileSystem->existFile((root + normalPath).c_str()) ||
                        (g_dh2HdTextures && at != std::string::npos &&
                         g_fileSystem->existFile((root + normalPath.substr(0, at) + "hd/" + normalPath.substr(at)).c_str()));
#ifdef DH2_HOST_RUNNER
    if (std::getenv("DH2_NM_LOG") != nullptr) {
        std::fprintf(stdout, "NMLOG material diffuse=%s normal=%s exists=%d\n", name.c_str(), normalPath.c_str(), exists ? 1 : 0);
    }
#endif
    if (!exists) {
        return;
    }
    boost::intrusive_ptr<glitch::video::ITexture> normal = driver->m_textureManager->getTexture(normalPath.c_str(), static_cast<const char*>(nullptr));
    if (!normal) {
        return;
    }
    material->parameters.setParameter(normalId, 0u, normal);
    const uint16_t strengthId = renderer->getParameterID("NormalStrength", 0);
    if (strengthId != 0xffff) {
        const bool ok = material->parameters.setParameter(strengthId, 0u, static_cast<float>(dh2port::Get("normalstrength", 100)) / 100.0f);
#ifdef DH2_HOST_RUNNER
        if (std::getenv("DH2_NM_LOG") != nullptr) {
            const glitch::video::detail::SParameterEntry& e = renderer->m_entryStorage[strengthId];
            float back = -1.0f;
            material->parameters.getParameter(strengthId, 0u, back);
            std::fprintf(stdout, "NMLOG strength id %u kind %u type %u set %d read %f\n", strengthId, e.kind, e.type, ok ? 1 : 0, back);
        }
#endif
    }
    const uint16_t greenId = renderer->getParameterID("NormalGreen", 0);
    if (greenId != 0xffff) {
        material->parameters.setParameter(greenId, 0u, dh2port::Get("normalgreen", 1) < 0 ? -1.0f : 1.0f);
    }
    ++g_attached;
}

}  // namespace

void Dh2InstallRemaster(glitch::io::IFileSystem* fileSystem) {
    // HD textures (data/hd/): ETC2 is core in OpenGL ES 3.0; without it the original textures stay.
    const char* version = reinterpret_cast<const char*>(glitch::video::deps::activeGLFunctionTable().getString
                                                            ? glitch::video::deps::activeGLFunctionTable().getString(0x1f02) : nullptr);
    const char* extensions = reinterpret_cast<const char*>(glitch::video::deps::activeGLFunctionTable().getString
                                                               ? glitch::video::deps::activeGLFunctionTable().getString(0x1f03) : nullptr);
    const bool etc2 = (version != nullptr && std::strstr(version, "OpenGL ES 3") != nullptr) ||
                      (extensions != nullptr && (std::strstr(extensions, "GL_OES_compressed_ETC2_RGB8_texture") != nullptr ||
                                                 std::strstr(extensions, "GL_ANGLE_compressed_texture_etc") != nullptr));
    g_dh2HdTextures = etc2 && dh2port::Get("hdtextures", 1) != 0;
    std::fprintf(stdout, "[remaster] HD textures: %s (setting %d, ETC2 %s)\n", g_dh2HdTextures ? "on" : "off", dh2port::Get("hdtextures", 1),
                 etc2 ? "yes" : "no");

    // Normal maps: the shader zip lives in the files dir (RES_PATH), like data/port/ui_layouts.txt.
    const std::string zip = std::string(RES_PATH != nullptr ? RES_PATH : "") + kShaderZip;
    const bool found = fileSystem != nullptr && fileSystem->existFile(zip.c_str());
    std::fprintf(stdout, "[remaster] normal maps: setting %d, %s %s\n", dh2port::Get("normalmaps", 1), zip.c_str(), found ? "found" : "not found");
    if (!found || dh2port::Get("normalmaps", 1) == 0 || !fileSystem->addZipFileArchive(zip.c_str(), true, false)) {
        return;
    }
    g_fileSystem = fileSystem;
    glitch::collada::g_dh2MaterialCreatedHook = &AttachNormalMap;
}
