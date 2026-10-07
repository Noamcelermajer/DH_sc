#include "world.hpp"
#include "source_layout_adapter.h"

#include <cmath>
#include <cstddef>
#include <cstdio>
#include <cstring>

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
