#include "../crypt_mgx_connectivity_v1.hpp"

#include <array>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <iterator>
#include <map>
#include <string>
#include <utility>
#include <vector>

namespace {

using dh2::random_level::CryptMgxModuleV1;
using dh2::random_level::DirectionV1;

struct ExpectedExit {
  const char* object_name;
  DirectionV1 direction;
};

struct ExpectedModule {
  const char* filename;
  std::vector<ExpectedExit> exits;
};

const std::array<ExpectedModule, 21> kExpectedModules = {{
    {"boss_room.mgx", {{"_exit_south_09", DirectionV1::south}}},
    {"cemetery_entrance.mgx", {{"_exit_north_07", DirectionV1::north}}},
    {"corner_ne.mgx", {{"_exit_east_05", DirectionV1::east},
                        {"_exit_north_03", DirectionV1::north}}},
    {"corner_nw.mgx", {{"_exit_west_06", DirectionV1::west},
                        {"_exit_north_02", DirectionV1::north}}},
    {"corner_se.mgx", {{"_exit_east_04", DirectionV1::east},
                        {"_exit_south_05", DirectionV1::south}}},
    {"corner_sw.mgx", {{"_exit_west_08", DirectionV1::west},
                        {"_exit_south_07", DirectionV1::south}}},
    {"deadend_e.mgx", {{"_exit_east_09", DirectionV1::east}}},
    {"deadend_n.mgx", {{"_exit_north_04", DirectionV1::north}}},
    {"deadend_w.mgx", {{"_exit_west_07", DirectionV1::west}}},
    {"entrance_n.mgx", {{"_exit_north_99", DirectionV1::north}}},
    {"entrance_s.mgx", {{"_exit_south_04", DirectionV1::south}}},
    {"kings_chamber_s.mgx", {{"_exit_south_03", DirectionV1::south}}},
    {"straight_a_ew.mgx", {{"_exit_east_01", DirectionV1::east},
                            {"_exit_west_01", DirectionV1::west}}},
    {"straight_b_ew.mgx", {{"_exit_east_08", DirectionV1::east},
                            {"_exit_west_04", DirectionV1::west}}},
    {"straight_b_ns.mgx", {{"_exit_north_06", DirectionV1::north},
                            {"_exit_south_08", DirectionV1::south}}},
    {"straight_c_ew.mgx", {{"_exit_east_02", DirectionV1::east},
                            {"_exit_west_02", DirectionV1::west}}},
    {"straight_c_ns.mgx", {{"_exit_south_10", DirectionV1::south}}},
    {"straight_d_ew.mgx", {{"_exit_west_03", DirectionV1::west},
                            {"_exit_east_03", DirectionV1::east}}},
    {"straight_ns.mgx", {{"_exit_north_05", DirectionV1::north},
                          {"_exit_south_06", DirectionV1::south}}},
    {"t_nse.mgx", {{"_exit_south_01", DirectionV1::south},
                   {"_exit_east_07", DirectionV1::east},
                   {"_exit_north_01", DirectionV1::north}}},
    {"t_sew.mgx", {{"_exit_west_05", DirectionV1::west},
                   {"_exit_east_06", DirectionV1::east},
                   {"_exit_south_02", DirectionV1::south}}},
}};

int checks = 0;

bool check(bool condition, const std::string& description) {
  ++checks;
  if (!condition) std::cerr << "FAIL: " << description << '\n';
  return condition;
}

bool read_file(const std::filesystem::path& path, std::string& output) {
  std::ifstream input(path, std::ios::binary);
  if (!input) return false;
  output.assign(std::istreambuf_iterator<char>(input), std::istreambuf_iterator<char>());
  return true;
}

std::size_t direction_index(DirectionV1 direction) {
  switch (direction) {
    case DirectionV1::north: return 0;
    case DirectionV1::east: return 1;
    case DirectionV1::south: return 2;
    case DirectionV1::west: return 3;
  }
  return 4;
}

std::size_t direction_pair_index(DirectionV1 first, DirectionV1 second) {
  return direction_index(first) * 4 + direction_index(second);
}

}  // namespace

int main(int argc, char** argv) {
  using namespace dh2::random_level;
  if (argc != 2) {
    std::cerr << "usage: crypt_mgx_connectivity_v1 <cache/data/3d/modules/crypt/mgx>\n";
    return 2;
  }

  bool ok = true;
  const std::filesystem::path directory(argv[1]);
  std::vector<CryptMgxModuleV1> modules;
  std::map<std::string, std::size_t> direction_counts;
  std::size_t exit_count = 0;

  for (const auto& expected : kExpectedModules) {
    const auto path = directory / expected.filename;
    std::string xml;
    ok &= check(read_file(path, xml), std::string("read cached ") + expected.filename);
    if (xml.empty()) continue;
    const auto parsed = parse_crypt_mgx_v1(expected.filename, xml);
    ok &= check(static_cast<bool>(parsed), std::string("parse cached ") + expected.filename);
    if (!parsed) {
      std::cerr << expected.filename << ": " << parsed.error << '\n';
      continue;
    }
    auto module = parsed.module;
    ok &= check(module.unit_width == 4800.0 && module.unit_height == 4800.0,
                std::string("Crypt module dimensions in ") + expected.filename);
    ok &= check(module.exits.size() == expected.exits.size(),
                std::string("source exit count in ") + expected.filename);
    const auto compare_count = module.exits.size() < expected.exits.size()
                                   ? module.exits.size()
                                   : expected.exits.size();
    for (std::size_t i = 0; i < compare_count; ++i) {
      const auto& actual = module.exits[i];
      ok &= check(actual.object_name == expected.exits[i].object_name,
                  std::string("source exit name in ") + expected.filename);
      ok &= check(actual.direction == expected.exits[i].direction,
                  std::string("source direction in ") + expected.filename);
      ok &= check(actual.link_type == "Crypt",
                  std::string("source link token in ") + expected.filename);
      ++direction_counts[direction_name_v1(actual.direction)];
      ++exit_count;
    }
    modules.push_back(std::move(module));
  }

  ok &= check(modules.size() == kExpectedModules.size(), "all 21 cached Crypt MGX definitions load");
  ok &= check(exit_count == 35, "all 35 source link exits load");
  ok &= check(direction_counts["north"] == 8 && direction_counts["east"] == 9 &&
                  direction_counts["south"] == 10 && direction_counts["west"] == 8,
              "Crypt source exit direction inventory");

  const auto adjacency = enumerate_crypt_exit_adjacencies_v1(modules);
  std::array<std::size_t, 16> directional_pairs{};
  std::map<std::pair<std::size_t, std::size_t>, bool> module_pairs;
  for (const auto& edge : adjacency) {
    const auto& first = modules[edge.first_module].exits[edge.first_exit];
    const auto& second = modules[edge.second_module].exits[edge.second_exit];
    ++directional_pairs[direction_pair_index(first.direction, second.direction)];
    module_pairs[{edge.first_module, edge.second_module}] = true;
  }
  ok &= check(adjacency.size() == 160,
              "160 link-token/equal-opposite-direction candidate exit pairs across unordered definitions");
  ok &= check(module_pairs.size() == 132, "132 unordered module-definition pairs have an exit candidate");
  ok &= check(directional_pairs[direction_pair_index(DirectionV1::north, DirectionV1::south)] == 51 &&
                  directional_pairs[direction_pair_index(DirectionV1::south, DirectionV1::north)] == 32 &&
                  directional_pairs[direction_pair_index(DirectionV1::east, DirectionV1::west)] == 37 &&
                  directional_pairs[direction_pair_index(DirectionV1::west, DirectionV1::east)] == 40,
              "candidate exit pairs follow opposite-direction source rule");

  const CryptMgxExitV1 east{"east", "Crypt", DirectionV1::east};
  const CryptMgxExitV1 west{"west", "Crypt", DirectionV1::west};
  const CryptMgxExitV1 north{"north", "Crypt", DirectionV1::north};
  const CryptMgxExitV1 different_token{"west", "CryptOther", DirectionV1::west};
  const CryptMgxExitV1 different_case_token{"west", "crypt", DirectionV1::west};
  ok &= check(crypt_exits_compatible_v1(east, west), "equal link token and opposite east/west connect");
  ok &= check(!crypt_exits_compatible_v1(east, north), "non-opposite directions do not connect");
  ok &= check(!crypt_exits_compatible_v1(east, different_token), "different link tokens do not connect");
  ok &= check(!crypt_exits_compatible_v1(east, different_case_token),
              "source link tokens use byte-exact comparison");

  constexpr std::string_view sample =
      "<?xml version=\"1.0\"?><Module unit_width=\"4800\" unit_height=\"4800\">"
      "<!-- generated -->"
      "<GameObject name=\"x\" gametype=\"LiNk\" direction=\"east\" linktype=\"Crypt\"/>"
      "<GameObject gametype=\"decoration\"/>"
      "</Module><!-- exporter trailer -->";
  const auto sample_result = parse_crypt_mgx_v1("sample", sample);
  ok &= check(sample_result && sample_result.module.exits.size() == 1,
              "native case-insensitive gametype=link selection and ignored non-link object");
  const auto malformed = parse_crypt_mgx_v1(
      "bad", "<Module unit_width=\"4800\" unit_height=\"4800\">"
            "<GameObject name=\"x\" gametype=\"link\" linktype=\"Crypt\"/>"
            "</Module>");
  ok &= check(!malformed, "malformed link exits fail closed when direction is missing");

  std::cout << "{\"validation\":\"" << (ok ? "PASS" : "FAIL")
            << "\",\"checks\":" << checks << ",\"modules\":" << modules.size()
            << ",\"exits\":" << exit_count << ",\"candidate_exit_pairs\":" << adjacency.size()
            << ",\"candidate_module_pairs\":" << module_pairs.size()
            << ",\"stage\":\"mgx-exit-adjacency-only\"}\n";
  return ok ? 0 : 1;
}
