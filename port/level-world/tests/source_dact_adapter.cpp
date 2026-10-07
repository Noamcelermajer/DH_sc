#include "../world.hpp"
#include "../../game-data/data.hpp"

#include <algorithm>
#include <array>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <iterator>
#include <stdexcept>
#include <string>
#include <vector>

namespace {
std::vector<std::uint8_t> read(const std::string& path) {
    std::ifstream file(path, std::ios::binary);
    if (!file) throw std::runtime_error("Unable to open: " + path);
    return {std::istreambuf_iterator<char>(file), {}};
}

void require(bool condition, const char* message) {
    if (!condition) throw std::runtime_error(message);
}
}

int main(int argc, char** argv) {
    if (argc != 3) {
        std::cerr << "usage: source_dact_adapter_audit original-cache-root android-assets-root\n";
        return 2;
    }
    try {
        const std::string cache_root = argv[1];
        const std::string assets_root = argv[2];
        const auto mlx = read(cache_root + "/data/scene/001_swamp.mlx");
        const auto expected = read(assets_root + "/worlds/001_swamp.dact");

        const auto character_records = read(assets_root + "/data/character_properties_pyarray.bin");
        const auto character_names = read(assets_root + "/data/character_properties_pyarraynames.bin");
        const auto character_fields = read(assets_root + "/data/character_properties_pystructnames.bin");
        const auto model_names = read(assets_root + "/data/character_models_dictionary_pyarraynames.bin");
        const auto model_values = read(assets_root + "/data/character_models_dictionary_pyarray.bin");
        dh2::data::CharacterTable characters;
        dh2::data::Dictionary models;
        std::string error;
        require(dh2::data::load_characters(
                    {character_records.data(), character_records.size()},
                    {character_names.data(), character_names.size()},
                    {character_fields.data(), character_fields.size()}, characters, error),
                error.c_str());
        require(dh2::data::load_dictionary(
                    {model_names.data(), model_names.size()},
                    {model_values.data(), model_values.size()}, models, error), error.c_str());

        constexpr std::array<const char*, 9> names = {
            "obj_4of4_brdwalk_sw_00.mgp",
            "obj_3of4_brdwalk_sw_00.mgp",
            "obj_1of4_brdwalk_nse_00.mgp",
            "corner_ruin_ws_00.mgp",
            "merchantcamp_ruins_swe_00.mgp",
            "corner_brdwalk_se_00.mgp",
            "deadend_brdwalk_w_00.mgp",
            "bossroom_ruins_ns_.mgp",
            "obj_2of4_brdwalk_sw_00.mgp"
        };
        std::array<std::vector<std::uint8_t>, names.size()> mgp_bytes;
        std::array<std::string, names.size()> paths;
        std::array<dh2::world::SourceMgpView, names.size()> mgps{};
        for (std::size_t i = 0; i < names.size(); ++i) {
            paths[i] = std::string("data/3d/modules/swamp/mgp/") + names[i];
            mgp_bytes[i] = read(cache_root + "/" + paths[i]);
            mgps[i] = {paths[i].c_str(), mgp_bytes[i].data(), mgp_bytes[i].size()};
        }

        std::vector<std::uint8_t> compiled;
        require(dh2::world::compile_source_dact(mlx.data(), mlx.size(), mgps.data(),
                    mgps.size(), characters, models, compiled, error),
                error.c_str());
        require(compiled.size() == 1296, "source DACT byte count differs from five v1 rows");
        require(compiled == expected, "source MGP actors differ from checked-in DACT v1 bytes");

        auto changed_bytes = mgp_bytes;
        auto changed_mgps = mgps;
        std::string changed_mgp(changed_bytes[2].begin(), changed_bytes[2].end());
        constexpr char target[] = "name=\"_prim_Monster_53_03_001\"";
        const auto actor = changed_mgp.find(target);
        require(actor != std::string::npos &&
                    changed_mgp.find(target, actor + sizeof(target) - 1) == std::string::npos,
                "expected exactly one supported source actor for mutation");
        const auto probability_offset = changed_mgp.find("spawn_prob", actor);
        const auto close = changed_mgp.find("/>", actor);
        require(probability_offset != std::string::npos && close != std::string::npos &&
                    probability_offset < close,
                "expected the selected actor's explicit default spawn probability");
        const auto value_begin = changed_mgp.find('"', probability_offset);
        require(value_begin != std::string::npos && value_begin < close,
                "selected actor spawn probability has no value");
        const auto value_end = changed_mgp.find('"', value_begin + 1);
        require(value_end == value_begin + 4 && value_end < close &&
                    changed_mgp.compare(value_begin + 1, 3, "100") == 0,
                "expected canonical spawn probability 100");
        changed_mgp.replace(value_begin + 1, 3, "50");
        changed_bytes[2].assign(changed_mgp.begin(), changed_mgp.end());
        changed_mgps[2].data = changed_bytes[2].data();
        changed_mgps[2].size = changed_bytes[2].size();
        compiled.assign(1, 0xff);
        error.clear();
        require(!dh2::world::compile_source_dact(mlx.data(), mlx.size(), changed_mgps.data(),
                    changed_mgps.size(), characters, models, compiled, error),
                "eligible source actor with unsupported spawn_prob was accepted");
        require(compiled.empty(), "failed source DACT compilation exposed partial bytes");
        require(error.find("spawn_prob") != std::string::npos,
                "spawn probability mutation did not fail closed");

        std::cout << "source DACT adapter: byte-exact five-row match; spawn_prob mutation rejected\n";
        return 0;
    } catch (const std::exception& exception) {
        std::cerr << exception.what() << '\n';
        return 1;
    }
}
