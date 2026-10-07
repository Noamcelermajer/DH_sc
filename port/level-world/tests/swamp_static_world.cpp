#include "../world.hpp"

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <iterator>
#include <stdexcept>
#include <string>
#include <vector>

namespace {
std::vector<std::uint8_t> read(const char* path) {
    std::ifstream file(path, std::ios::binary);
    return {std::istreambuf_iterator<char>(file), {}};
}
void require(bool condition, const char* message) {
    if (!condition) throw std::runtime_error(message);
}
}

int main(int argc, char** argv) {
    if (argc != 4) {
        std::cerr << "usage: swamp_static_world_audit swamp.bdae 001_swamp.dwld 001_swamp.spwn\n";
        return 2;
    }
    try {
        const auto bres_bytes = read(argv[1]);
        const auto descriptor = read(argv[2]);
        const auto spawn_bytes = read(argv[3]);
        dh2::resources::BresView bres{};
        require(dh2_bres_open(&bres, bres_bytes.data(), bres_bytes.size()) ==
                dh2::resources::BresError::ok, "SWAMP BRES rejected");

        dh2::world::Level level;
        std::string error;
        require(dh2::world::load(bres, descriptor.data(), descriptor.size(), level, error),
                error.c_str());
        require(level.rooms == 9 && level.scene.instances.size() > 100 &&
                level.native_floor && level.native_floor->records.size() >= 9,
                "SWAMP module/world closure is incomplete");

        unsigned water_floors = 0, hole_floors = 0;
        for (const auto& floor : level.native_floor->records) {
            water_floors += (floor->flags.floor & 2u) != 0;
            hole_floors += (floor->flags.floor & 1u) != 0;
        }
        require(water_floors && hole_floors, "SWAMP water/hole floor flags were not decoded");
        for (const auto& instance : level.scene.instances) {
            dh2::assets::Mesh mesh{};
            require(dh2_mesh_open(&mesh, &bres, instance.geometry) == dh2::assets::Error::ok,
                    "SWAMP visual mesh rejected");
            require(mesh.primitives == instance.materials.size(),
                    "SWAMP material binding count differs");
            for (unsigned primitive_index = 0; primitive_index < mesh.primitives; ++primitive_index) {
                dh2::assets::Primitive primitive{};
                require(dh2_mesh_primitive(&mesh, primitive_index, &primitive) ==
                        dh2::assets::Error::ok, "SWAMP primitive rejected");
                const auto& material = level.scene.materials.at(instance.materials[primitive_index]);
                require(material.id == primitive.material,
                        "SWAMP source material binding differs from primitive symbol");
            }
        }

        std::vector<dh2::world::EntryPoint> entries;
        require(dh2::world::load_entrypoints(spawn_bytes.data(), spawn_bytes.size(),
                level.rooms, entries, error), error.c_str());
        require(entries.size() == 3 && entries[0].id == 0 && entries[1].id == 3 &&
                entries[2].id == 13, "SWAMP supported spawn IDs changed");
        dh2::world::SpawnSelection start;
        require(dh2::world::select_entrypoint(level, entries, 0, start, error), error.c_str());
        require(start.source.name == "_prim_EntryPoint" && start.floor_snapped &&
                std::all_of(start.position.begin(), start.position.end(),
                    [](float value) { return std::isfinite(value); }),
                "SWAMP entrypoint zero did not resolve to source floor");

        std::cout << "{\"rooms\":" << level.rooms << ",\"floors\":"
                  << level.native_floor->records.size() << ",\"visual_instances\":"
                  << level.scene.instances.size() << ",\"water_floors\":" << water_floors
                  << ",\"hole_floors\":" << hole_floors
                  << ",\"material_mismatches\":0"
                  << ",\"entrypoints\":[0,3,13],\"entrypoint_zero_floor_snapped\":true}\n";
        return 0;
    } catch (const std::exception& exception) {
        std::cerr << exception.what() << '\n';
        return 1;
    }
}
