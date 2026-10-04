#include "../native_debug_files.hpp"
#include "../native_ghost_skills.hpp"

#include "port/game-data/data.hpp"
#include "port/level-world/debug_switches_runtime.hpp"
extern "C" {
#include "port/pydata-constants/constants.h"
}

#include <array>
#include <cstdint>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <iterator>
#include <stdexcept>
#include <string>
#include <vector>

namespace data = dh2::data;
namespace native = dh2::native::ghost_skills;

namespace {
std::vector<std::uint8_t> read_file(const char* path) {
    std::ifstream input(path, std::ios::binary);
    if (!input) throw std::runtime_error(std::string("cannot read ") + path);
    return {std::istreambuf_iterator<char>(input), std::istreambuf_iterator<char>()};
}
data::Bytes bytes(const std::vector<std::uint8_t>& value) {
    return {value.data(), value.size()};
}
void require(bool value, const char* message) {
    if (!value) throw std::runtime_error(message);
}
std::size_t row_id(const data::CharacterTable& table, const char* name) {
    for (std::size_t i = 0; i < table.names.size(); ++i)
        if (table.names[i] == name) return i;
    throw std::runtime_error(std::string("missing Character row ") + name);
}
std::size_t property_id(const data::CharacterTable& table, const char* name) {
    for (std::size_t i = 0; i < table.fields.size(); ++i)
        if (table.fields[i] == name) return i;
    throw std::runtime_error(std::string("missing property ") + name);
}

struct InitVcbFixture { std::uintptr_t expected_active = 0; unsigned calls = 0; };
std::int32_t init_vcb(void* raw, std::uintptr_t active) {
    if (!raw) return 1;
    auto& fixture = *static_cast<InitVcbFixture*>(raw);
    if (active != fixture.expected_active) return 1;
    ++fixture.calls;
    return 0;
}

void run_actor(const char* name, std::size_t row_index,
               const data::CharacterTable& character_table,
               const data::PropertyRules& rules,
               const data::SkillTables& skills, const data::FaeryTables& faeries,
               const dh2_pycst_view& constants,
               dh2::native::debug_files::Backend& debug) {
    data::PropertyState properties{};
    data::reset_properties(rules, properties, &character_table.rows[row_index]);
    std::string error;
    require(data::recalc_properties(rules, properties, error), error.c_str());
    require(properties.resolved[28] == -1 && properties.resolved[29] == -1,
            "Crypt Ghost authored SkillTree/FaeryList defaults changed");
    auto property_view = data::property_view(rules, properties);

    dh2::character_ai_initialization::State ai{};
    ai.identity = reinterpret_cast<std::uintptr_t>(&ai);
    ai.owner_04 = reinterpret_cast<std::uintptr_t>(&properties);
    ai.active_ais_1c = ai.identity + 0x100;
    InitVcbFixture vcb{ai.active_ais_1c, 0};
    std::string ais_path = "data/scripts/ai/";
    native::Runtime runtime;
    native::Bindings bindings{&ai, &property_view, &skills, &faeries, &ais_path,
                              0, &constants, &debug.globals(), &debug.services(),
                              &vcb, init_vcb};
    native::Result first{};
    require(runtime.prepare(bindings, first) == native::Status::complete,
            "source Ghost skill/five-null-faery preparation failed");
    require(runtime.skill_scripts().empty() && runtime.faery_scripts().size() == 5,
            "native CharAI vectors differ from the source empty/default records");
    for (const auto identity : runtime.faery_scripts())
        require(identity == 0, "a zero-length Fake_* spell acquired a script object");
    require(first.source.skill_slots == 0 && first.source.faery_slots == 5 &&
            first.source.null_appends == 5 && first.source.declarations == 0 &&
            first.source.script_allocations == 0,
            "SetSkills source result counters changed");
    require(first.skill_list_property == -1 && first.faery_list_property == -1,
            "live PropertyView getters did not preserve raw -1 list IDs");
    require(first.arguments_created == 2 && first.arguments_destroyed == 2,
            "source temporary Arguments lifetime/order differs");
    require(first.debug_loads == 2 && first.debug_queries == 2,
            "source debug load/query phases were skipped");
    require(first.init_vcb_calls == 1 && vcb.calls == 1,
            "fresh active AIS InitVCB callback was not invoked");
    require(ais_path == "data/scripts/ai/",
            "AIS script path was not restored after the source call");

    const auto first_snapshot = runtime.faery_scripts();
    native::Result repeated{};
    require(runtime.prepare(bindings, repeated) == native::Status::complete,
            "repeated source preparation failed");
    require(runtime.faery_scripts() == first_snapshot && repeated.source.faery_slots == 0 &&
            repeated.source.null_appends == 0 && repeated.init_vcb_calls == 1 &&
            vcb.calls == 2,
            "repeated preparation rebuilt or changed the existing faery vector");
    require(repeated.arguments_created == 1 && repeated.arguments_destroyed == 1,
            "repeat call did not retain the source's empty skill-list Arguments phase");
    require(ais_path == "data/scripts/ai/", "repeat call did not restore the AIS path");
    std::cout << "ghost=" << name << " first_slots=0/5 repeated_slots="
              << repeated.source.faery_slots << " vcb=" << vcb.calls << '\n';
}
} // namespace

int main(int argc, char** argv) {
    try {
        if (argc != 13) throw std::runtime_error(
            "expected six Skill/Faery table files, three Character files, Faery constants, debug seed, output directory");
        std::array<std::vector<std::uint8_t>, 11> input;
        for (std::size_t i = 0; i < input.size(); ++i) input[i] = read_file(argv[i + 1]);

        data::SkillTables skills;
        data::FaeryTables faeries;
        data::CharacterTable characters;
        data::PropertyRules rules;
        std::string error;
        require(data::load_skill_tables(bytes(input[0]), bytes(input[1]), bytes(input[2]), skills, error), error.c_str());
        require(data::load_faery_tables(bytes(input[3]), bytes(input[4]), bytes(input[5]), faeries, error), error.c_str());
        require(data::load_characters(bytes(input[6]), bytes(input[7]), bytes(input[8]), characters, error), error.c_str());
        require(data::load_property_rules(characters, rules, error), error.c_str());
        require(skills.skill_lists.size() == 36 && skills.skills.size() == 127 &&
                faeries.faery_lists.size() == 4 && faeries.faeries.size() == 16,
                "real Skill/Faery table dimensions changed");
        require(skills.skill_lists[3].name == "DEFAULT" && skills.skill_lists[3].members.empty(),
                "source default SkillList row changed");
        require(faeries.faery_lists[0].name == "DEFAULT" &&
                faeries.faery_lists[0].members == std::vector<std::int32_t>{2, 4, 5, 6, 3},
                "source default FaeryList row changed");
        const std::array<const char*, 5> fake_names{
            "Fake_Celest", "Fake_Rocky", "Fake_Wetty", "Fake_Windy", "Fake_Hotty"};
        for (std::size_t i = 0; i < fake_names.size(); ++i) {
            const auto index = static_cast<std::size_t>(faeries.faery_lists[0].members[i]);
            require(index < faeries.faeries.size() && faeries.faeries[index].table_name == fake_names[i] &&
                    faeries.faeries[index].spell_script_length == 0 &&
                    faeries.faeries[index].spell_script.empty(),
                    "authored fake-faery source null gate changed");
        }

        dh2_pycst_view constants{};
        require(dh2_pycst_open(&constants, input[9].data(),
                               static_cast<std::uint32_t>(input[9].size())) == 0,
                "Faery constants cache did not parse");
        dh2_pycst_result count{};
        require(dh2_pycst_get(&constants, "FaeryTypes", 10, "COUNT", 5, &count) == 0 &&
                count.found && count.value == 5,
                "source FaeryTypes/COUNT value changed");

        const auto debug_dir = std::filesystem::absolute(argv[12]);
        std::filesystem::create_directories(debug_dir);
        dh2::native::debug_files::Backend debug;
        require(debug.initialize(debug_dir, input[10].data(), input[10].size(), error), error.c_str());
        const auto ghost = row_id(characters, "Crypt_Ghost");
        const auto ghost_re = row_id(characters, "Crypt_Ghost_RE");
        const auto skill_tree = property_id(characters, "SkillTree");
        const auto faery_list = property_id(characters, "FaeryList");
        require(skill_tree == 28 && faery_list == 29,
                "CharacterProperties property identifiers changed");

        run_actor("Crypt_Ghost", ghost, characters, rules, skills, faeries, constants, debug);
        run_actor("Crypt_Ghost_RE", ghost_re, characters, rules, skills, faeries, constants, debug);
        std::cout << "{\"validation\":\"PASS\",\"cache_tables\":\"real\","
                     "\"actors\":2,\"source_vectors\":\"0 skills / 5 null faeries\","
                     "\"repeat_preserves_faeries\":true,\"unsupported_nonnull_script\":\"fail-closed\"}\n";
        return 0;
    } catch (const std::exception& error) {
        std::cerr << error.what() << '\n';
        return 1;
    }
}
