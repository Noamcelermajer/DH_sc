#include "../crypt_module_catalog_v1.hpp"

#include <fstream>
#include <iostream>
#include <iterator>
#include <string>
#include <tuple>

namespace {

int fail(const std::string& message) {
  std::cerr << "FAIL: " << message << '\n';
  return 1;
}

std::string read_file(const std::filesystem::path& path) {
  std::ifstream input(path, std::ios::binary);
  if (!input) return {};
  return {std::istreambuf_iterator<char>(input), std::istreambuf_iterator<char>()};
}

}  // namespace

int main(int argc, char** argv) {
  using namespace dh2::random_level;
  if (argc != 2) {
    return fail("usage: crypt_module_catalog_v1 <cache/files>");
  }

  const CryptModuleAssetKeyV1 key_a{"straight_c_ns", "crypt_straight_c_ns_01.mgp",
                                    "crypt_straight_c_ns_01.mvp"};
  const CryptModuleAssetKeyV1 key_b{"straight_c_ns", "crypt_straight_c_ns_02.mgp",
                                    "crypt_straight_c_ns_01.mvp"};
  const CryptModuleAssetKeyLessV1 less;
  if (!less(key_a, key_b) || less(key_b, key_a)) {
    return fail("catalogue identity must preserve the exact name/gameplay/visual triple");
  }

  const std::filesystem::path cache_root(argv[1]);
  const auto rule_path = cache_root / "data" / "scene" / "007_crypt_01.rule.xml";
  const auto rule_xml = read_file(rule_path);
  if (rule_xml.empty()) return fail("could not read 007_crypt_01.rule.xml");

  const auto parsed = parse_crypt_rule_v1(rule_xml);
  if (!parsed) return fail("Crypt rule parse failed: " + parsed.error);

  const auto modules_root = cache_root / "data" / "3d" / "modules" / "crypt";
  const CryptModuleAssetPathsV1 paths{
      modules_root / "mgx", modules_root / "mgp", modules_root / "mvp",
      modules_root / "mvx", modules_root / "mgx" / "mgxlist.txt"};
  const auto catalogue = build_crypt_module_catalogue_v1(*parsed.document, paths);

  if (!catalogue.catalogue_issues.empty()) {
    for (const auto& issue : catalogue.catalogue_issues) std::cerr << "catalogue: " << issue << '\n';
    return fail("catalogue-level issue(s) found");
  }
  if (catalogue.mgx_list_entry_count != 21) {
    return fail("expected the source mgxlist to contain 21 definitions; found " +
                std::to_string(catalogue.mgx_list_entry_count));
  }
  if (catalogue.rule_candidates.empty()) return fail("Crypt rules contain no active list candidates");
  if (catalogue.assets_by_exact_key.empty()) return fail("catalogue has no exact-triple keys");

  for (const auto& candidate : catalogue.rule_candidates) {
    const auto found = catalogue.assets_by_exact_key.find(candidate.key);
    if (found == catalogue.assets_by_exact_key.end()) {
      return fail("candidate omitted from exact-triple catalogue");
    }
    if (!found->second.is_complete) {
      std::cerr << candidate.list_name << '[' << candidate.list_index << "] ("
                << candidate.key.name << ", " << candidate.key.gameplay << ", "
                << candidate.key.visual << ")\n";
      for (const auto& issue : found->second.issues) std::cerr << "  " << issue << '\n';
      return fail("candidate is not completely bound to source assets");
    }
    if (!found->second.mgx.has_grid_geometry ||
        !found->second.mvx_module.has_grid_geometry) {
      return fail("resolved module lost its MGX/MVX grid geometry");
    }
    if (found->second.xrefobject.empty() || found->second.dae.empty()) {
      return fail("resolved MVX scene root is missing xrefobject/dae");
    }
  }
  if (catalogue.unresolved_candidate_count() != 0) {
    return fail("unresolved candidates reported after complete binding");
  }

  std::cout << "Crypt module catalogue: " << catalogue.rule_candidates.size()
            << " active rule entries, " << catalogue.assets_by_exact_key.size()
            << " exact triples, " << catalogue.mgx_list_entry_count
            << " source MGX definitions; all candidates bound to exact MGX/MGP/MVP/MVX files"
            << " with parsed MGX links, MVX scene roots and matching grid geometry.\n";
  return 0;
}
