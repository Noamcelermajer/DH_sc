#include "world.hpp"
#include "../world-data/source_layout_adapter.h"

#include <cstdint>
#include <cstring>
#include <string>
#include <utility>
#include <vector>

namespace dh2::world {
namespace {
std::uint32_t word(const std::uint8_t* p) {
    return p[0] | (std::uint32_t(p[1]) << 8) |
           (std::uint32_t(p[2]) << 16) | (std::uint32_t(p[3]) << 24);
}
void store_float(std::uint8_t* p, float value) {
    std::uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof(bits));
    p[0] = static_cast<std::uint8_t>(bits);
    p[1] = static_cast<std::uint8_t>(bits >> 8);
    p[2] = static_cast<std::uint8_t>(bits >> 16);
    p[3] = static_cast<std::uint8_t>(bits >> 24);
}
}

bool compile_source_layout(const std::uint8_t* mlx, std::size_t mlx_size,
                           const std::uint8_t* spawnpoints, std::size_t spawn_size,
                           std::int32_t entrypoint_id,
                           std::vector<std::uint8_t>& descriptor, std::string& error) {
    descriptor.clear();
    error.clear();
    constexpr std::size_t max_size = 24 + 256 * 128;
    std::vector<std::uint8_t> result(max_size);
    std::size_t result_size = 0;
    char message[160]{};
    if (!dh2_world_compile_static_layout(mlx, mlx_size, "SWAMP",
            "data/scene/001_swamp.mlx", result.data(), result.size(),
            &result_size, message, sizeof(message))) {
        error = message[0] ? message : "Original source MLX import failed";
        return false;
    }
    result.resize(result_size);

    const auto rooms = word(result.data() + 8);
    std::vector<EntryPoint> entries;
    if (!load_entrypoints(spawnpoints, spawn_size, rooms, entries, error)) return false;
    const EntryPoint* selected = nullptr;
    for (const auto& entry : entries) {
        if (entry.id != entrypoint_id) continue;
        if (selected) {
            error = "Duplicate source SpawnPoint entrypoint ID";
            return false;
        }
        selected = &entry;
    }
    if (!selected) {
        error = "Source SpawnPoint entrypoint ID is absent";
        return false;
    }
    for (unsigned axis = 0; axis < 3; ++axis)
        store_float(result.data() + 12 + axis * 4, selected->world.position[axis]);
    descriptor = std::move(result);
    error.clear();
    return true;
}
}
