#include "world.hpp"
#include "source_layout_adapter.h"

#include <cmath>
#include <cstddef>
#include <cstdio>
#include <cstring>
#include <cctype>
#include <vector>

namespace {
void set_error(char* output, std::size_t capacity, const char* message) {
    if (!output || !capacity) return;
    std::snprintf(output, capacity, "%s", message ? message : "Source layout rejected");
}

void write_word(std::uint8_t* output, std::uint32_t value) {
    output[0] = static_cast<std::uint8_t>(value);
    output[1] = static_cast<std::uint8_t>(value >> 8);
    output[2] = static_cast<std::uint8_t>(value >> 16);
    output[3] = static_cast<std::uint8_t>(value >> 24);
}

bool write_float(std::uint8_t* output, float value) {
    if (!std::isfinite(value)) return false;
    std::uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof(bits));
    write_word(output, bits);
    return true;
}

bool parse_entrypoint_id(const char* text, std::int32_t& result) {
    if (!text || !*text) return false;
    std::uint32_t value = 0;
    for (const auto* p = reinterpret_cast<const unsigned char*>(text); *p; ++p) {
        if (*p < '0' || *p > '9') return false;
        const auto digit = static_cast<std::uint32_t>(*p - '0');
        if (value > (static_cast<std::uint32_t>(INT32_MAX) - digit) / 10) return false;
        value = value * 10 + digit;
    }
    result = static_cast<std::int32_t>(value);
    return true;
}

bool condition_absent(const char* value) {
    if (!value) return true;
    while (*value && std::isspace(static_cast<unsigned char>(*value))) ++value;
    const char* end = value + std::strlen(value);
    while (end != value && std::isspace(static_cast<unsigned char>(end[-1]))) --end;
    if (end == value) return true;
    static constexpr char invalid[] = "invalid";
    if (end - value != static_cast<std::ptrdiff_t>(sizeof(invalid) - 1)) return false;
    for (std::size_t i = 0; i < sizeof(invalid) - 1; ++i)
        if (static_cast<char>(std::tolower(static_cast<unsigned char>(value[i]))) != invalid[i])
            return false;
    return true;
}

bool unconditional(const dh2::world::Object& object) {
    return condition_absent(dh2_world_field(&object, "activate_cond")) &&
        condition_absent(dh2_world_field(&object, "deactivate_cond"));
}

void write_dword(std::uint8_t* output, std::uint32_t value) {
    write_word(output, value);
}

bool write_entrypoint(std::uint8_t* record, const dh2::world::Object& object) {
    std::int32_t id = 0;
    (void)parse_entrypoint_id(dh2_world_field(&object, "entrypointID"), id);
    std::uint32_t id_bits = 0;
    std::memcpy(&id_bits, &id, sizeof(id_bits));
    write_dword(record, id_bits);
    write_dword(record + 4, object.module_index);
    const auto name_length = std::strlen(object.name);
    std::memcpy(record + 8, object.name, name_length);
    std::size_t offset = 72;
    for (unsigned axis = 0; axis < 3; ++axis, offset += 4)
        if (!write_float(record + offset, object.local.position[axis])) return false;
    for (unsigned axis = 0; axis < 3; ++axis, offset += 4)
        if (!write_float(record + offset, object.local.rotation_degrees[axis])) return false;
    for (unsigned axis = 0; axis < 3; ++axis, offset += 4)
        if (!write_float(record + offset, object.local.scale[axis])) return false;
    for (unsigned axis = 0; axis < 3; ++axis, offset += 4)
        if (!write_float(record + offset, object.world_position[axis])) return false;
    // The importer currently accepts only translation-only module placement.
    // Consequently world rotation and scale equal the object-local values.
    for (unsigned axis = 0; axis < 3; ++axis, offset += 4)
        if (!write_float(record + offset, object.local.rotation_degrees[axis])) return false;
    for (unsigned axis = 0; axis < 3; ++axis, offset += 4)
        if (!write_float(record + offset, object.local.scale[axis])) return false;
    return true;
}
}

extern "C" int dh2_world_compile_static_layout(const std::uint8_t* mlx,
    std::size_t mlx_size, const char* level_name, const char* source_path,
    std::uint8_t* output, std::size_t output_capacity, std::size_t* output_size,
    char* error, std::size_t error_capacity) {
    if (output_size) *output_size = 0;
    if (error && error_capacity) error[0] = 0;
    if (!mlx || !mlx_size || !level_name || !*level_name || !source_path || !output ||
        !output_size) {
        set_error(error, error_capacity, "Missing original source layout input/output");
        return 0;
    }

    dh2::world::SourceLevel source{};
    dh2::world::Diagnostic diagnostic{};
    const auto status = dh2_world_import_level(&source, level_name, source_path,
        mlx, mlx_size, &diagnostic);
    if (status != dh2::world::Error::ok) {
        set_error(error, error_capacity, diagnostic.message);
        dh2_world_free(&source);
        return 0;
    }
    if (!source.module_count || source.module_count > 256) {
        set_error(error, error_capacity, "Source Module count is outside the runtime limit");
        dh2_world_free(&source);
        return 0;
    }

    const auto required = std::size_t(24) + std::size_t(source.module_count) * 128;
    if (output_capacity < required) {
        set_error(error, error_capacity, "Source layout output buffer is too small");
        dh2_world_free(&source);
        return 0;
    }
    std::memset(output, 0, required);
    std::memcpy(output, "DWLD", 4);
    write_word(output + 4, 1);
    write_word(output + 8, source.module_count);
    // The Level and Module records do not define an entrypoint. The runtime
    // owner fills these coordinates from its selected SpawnPoint source.
    for (std::uint32_t i = 0; i < source.module_count; ++i) {
        const auto& module = source.modules[i];
        for (unsigned axis = 0; axis < 3; ++axis) {
            if (module.record.local.rotation_degrees[axis] != 0.0f ||
                module.record.local.scale[axis] != 1.0f) {
                set_error(error, error_capacity,
                    "Source Module rotation or scale is not supported by DWLD v1");
                dh2_world_free(&source);
                return 0;
            }
        }
        if (!module.catalogue_node_id || !*module.catalogue_node_id) {
            set_error(error, error_capacity, "Source Module has no catalogue node ID");
            dh2_world_free(&source);
            return 0;
        }
        const auto length = std::strlen(module.catalogue_node_id);
        if (length >= 112) {
            set_error(error, error_capacity, "Source Module catalogue node ID is too long");
            dh2_world_free(&source);
            return 0;
        }
        auto* record = output + 24 + std::size_t(i) * 128;
        std::memcpy(record, module.catalogue_node_id, length);
        for (unsigned axis = 0; axis < 3; ++axis) {
            if (!write_float(record + 112 + axis * 4, module.record.local.position[axis])) {
                set_error(error, error_capacity, "Source Module position is non-finite");
                dh2_world_free(&source);
                return 0;
            }
        }
        write_word(record + 124, 0);
    }
    *output_size = required;
    dh2_world_free(&source);
    return 1;
}

extern "C" int dh2_world_compile_static_spawnpoints(const std::uint8_t* mlx,
    std::size_t mlx_size, const char* level_name, const char* source_path,
    const dh2_world_source_mgp* mgps, std::size_t mgp_count,
    std::uint8_t* output, std::size_t output_capacity, std::size_t* output_size,
    char* error, std::size_t error_capacity) {
    if (output_size) *output_size = 0;
    if (error && error_capacity) error[0] = 0;
    if (!mlx || !mlx_size || !level_name || !*level_name || !source_path ||
        !mgps || !output || !output_size) {
        set_error(error, error_capacity, "Missing original SpawnPoint source input/output");
        return 0;
    }

    dh2::world::SourceLevel source{};
    dh2::world::Diagnostic diagnostic{};
    auto status = dh2_world_import_level(&source, level_name, source_path,
        mlx, mlx_size, &diagnostic);
    if (status != dh2::world::Error::ok) {
        set_error(error, error_capacity, diagnostic.message);
        dh2_world_free(&source);
        return 0;
    }
    if (!source.module_count || source.module_count > 256 || mgp_count != source.module_count) {
        set_error(error, error_capacity, "Source MGP list must contain one file per MLX Module");
        dh2_world_free(&source);
        return 0;
    }

    // Import in source-module order. This keeps the original importer as the
    // authority for path validation, transforms, record parsing and provenance.
    for (std::uint32_t i = 0; i < source.module_count; ++i) {
        if (!mgps[i].source_path || !mgps[i].data || !mgps[i].size) {
            set_error(error, error_capacity, "Source MGP input is incomplete");
            dh2_world_free(&source);
            return 0;
        }
        status = dh2_world_import_module_objects(&source, i, dh2::world::RecordKind::mgp,
            mgps[i].source_path, mgps[i].data, mgps[i].size, &diagnostic);
        if (status != dh2::world::Error::ok) {
            set_error(error, error_capacity, diagnostic.message);
            dh2_world_free(&source);
            return 0;
        }
    }

    constexpr std::size_t header_size = 16;
    constexpr std::size_t record_size = 144;
    constexpr std::size_t entrypoint_count = 3;
    constexpr std::size_t required = header_size + entrypoint_count * record_size;
    if (output_capacity < required) {
        set_error(error, error_capacity, "SpawnPoint output buffer is too small");
        dh2_world_free(&source);
        return 0;
    }

    constexpr std::int32_t supported_ids[] = {0, 3, 13};
    bool found[entrypoint_count] = {};
    const dh2::world::Object* selected[entrypoint_count] = {};
    for (std::uint32_t i = 0; i < source.entity_count; ++i) {
        const auto& object = source.entities[i];
        if (std::strcmp(object.gametype, "SpawnPoint")) continue;

        std::int32_t id = 0;
        const auto* id_text = dh2_world_field(&object, "entrypointID");
        if (!parse_entrypoint_id(id_text, id)) {
            set_error(error, error_capacity, "SpawnPoint entrypointID is missing or malformed");
            dh2_world_free(&source);
            return 0;
        }
        int supported_index = -1;
        for (int n = 0; n < static_cast<int>(entrypoint_count); ++n)
            if (supported_ids[n] == id) supported_index = n;

        const bool is_unconditional = unconditional(object);
        if (supported_index >= 0) {
            if (found[supported_index]) {
                set_error(error, error_capacity, "Duplicate supported SpawnPoint entrypoint ID");
                dh2_world_free(&source);
                return 0;
            }
            if (!is_unconditional || !object.name || !*object.name ||
                std::strlen(object.name) >= 64) {
                set_error(error, error_capacity,
                    "Supported SpawnPoint must be uniquely named and unconditional");
                dh2_world_free(&source);
                return 0;
            }
            const auto* script = dh2_world_field(&object, "script");
            if (script && *script) {
                set_error(error, error_capacity, "Supported SpawnPoint script is not represented by SPWN v1");
                dh2_world_free(&source);
                return 0;
            }
            found[supported_index] = true;
            selected[supported_index] = &object;
            continue;
        }

        // SWAMP has condition-driven transition points with IDs 1 and 4.
        // The existing SPWN v1 owner cannot evaluate conditions, so defer
        // only those known conditional groups. Any new/unconditional record
        // is rejected instead of silently changing level transitions.
        if ((id == 1 || id == 4) && !is_unconditional) continue;
        set_error(error, error_capacity, "Unsupported unconditional or conditional SpawnPoint record");
        dh2_world_free(&source);
        return 0;
    }
    for (std::size_t i = 0; i < entrypoint_count; ++i) {
        if (!found[i] || !selected[i]) {
            set_error(error, error_capacity, "Required unconditional SpawnPoint ID is absent");
            dh2_world_free(&source);
            return 0;
        }
    }

    std::vector<std::uint8_t> serialized(required, 0);
    std::memcpy(serialized.data(), "SPWN", 4);
    write_word(serialized.data() + 4, 1);
    write_word(serialized.data() + 8, static_cast<std::uint32_t>(entrypoint_count));
    write_word(serialized.data() + 12, 0);
    for (std::size_t i = 0; i < entrypoint_count; ++i) {
        auto* record = serialized.data() + header_size + i * record_size;
        if (std::strlen(selected[i]->name) >= 64) {
            set_error(error, error_capacity, "SpawnPoint name exceeds SPWN v1 limit");
            dh2_world_free(&source);
            return 0;
        }
        if (!write_entrypoint(record, *selected[i])) {
            set_error(error, error_capacity, "SpawnPoint transform is non-finite");
            dh2_world_free(&source);
            return 0;
        }
        for (std::size_t offset = 72; offset < record_size; offset += 4) {
            // write_float rejects non-finite values; the source importer should
            // already enforce this, but keep the serialization boundary checked.
            std::uint32_t bits = 0;
            std::memcpy(&bits, record + offset, sizeof(bits));
            float value = 0;
            std::memcpy(&value, &bits, sizeof(value));
            if (!std::isfinite(value)) {
                set_error(error, error_capacity, "SpawnPoint transform is non-finite");
                dh2_world_free(&source);
                return 0;
            }
        }
    }
    std::memcpy(output, serialized.data(), required);
    *output_size = required;
    dh2_world_free(&source);
    return 1;
}
