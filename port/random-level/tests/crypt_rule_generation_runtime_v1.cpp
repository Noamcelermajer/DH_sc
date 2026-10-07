#include "../crypt_rule_generation_runtime_v1.hpp"

#include <algorithm>
#include <cstdint>
#include <iostream>
#include <memory>
#include <string>
#include <utility>
#include <vector>

namespace {

using namespace dh2::random_level;

struct Block {
  std::string name;
  std::vector<SourceRuleExitCandidateV1> step_exits;
  std::vector<SourceRuleExitCandidateV1> one_step_candidates;
  std::vector<CryptDirectionKeyV1> directions;
};

struct Rule {
  int id = 0;
  std::vector<const Rule*> children;
  CryptPathRuntimeV1* path_runtime = nullptr;
};

struct Tile {
  int id = 0;
  const Block* block = nullptr;
};

struct Mock {
  CryptTileMapV1 map;
  Block root_block{"root", {}, {}, {}};
  Block module_block{"module", {}, {}, {}};
  Block end_block{"end", {}, {}, {}};
  Rule root_rule{100, {}, nullptr};
  Rule fail_rule{0, {}, nullptr};
  Rule success_rule{1, {}, nullptr};
  Rule grandchild_rule{2, {}, nullptr};
  std::vector<std::unique_ptr<Tile>> tiles;
  std::vector<int> created;
  std::vector<int> destroyed;
  std::vector<int> unspawned;
  std::vector<int> neighbor_rollbacks;
  CryptRuleGenerationCallbacksV1* execution_callbacks = nullptr;
  CryptRuleGenerationResultV1 generation_result;
  std::uint32_t rng_state_after = 0;
  std::uint32_t seed = 0;
};

SourceRuleExitCandidateV1 make_exit(std::size_t index, std::string target) {
  SourceRuleExitCandidateV1 candidate;
  candidate.source_exit_index = index;
  candidate.destination_block_name = target;
  candidate.elem.name = std::move(target);
  return candidate;
}

CryptRuleCallbackStatusV1 step_exits(
    void*, const CryptRuleExecutionFrameV1& frame,
    std::vector<SourceRuleExitCandidateV1>& exits) {
  const auto* tile = static_cast<const Tile*>(frame.tile);
  exits = tile->block->step_exits;
  return CryptRuleCallbackStatusV1::ready;
}

CryptRuleChildCreateStatusV1 create_child(
    void* context, const CryptRuleExecutionFrameV1& parent,
    std::size_t child_rule_index, RandomGeneratorV1&,
    CryptRuleExecutionFrameV1& child) {
  auto& mock = *static_cast<Mock*>(context);
  const auto* parent_rule = static_cast<const Rule*>(parent.rule);
  if (child_rule_index >= parent_rule->children.size()) {
    return CryptRuleChildCreateStatusV1::error;
  }
  const Rule* child_rule = parent_rule->children[child_rule_index];
  child.rule = child_rule;
  child.child_rule_count = child_rule->children.size();
  child.path_runtime = child_rule->path_runtime;
  mock.created.push_back(child_rule->id);
  return CryptRuleChildCreateStatusV1::created;
}

CryptRuleBlockLookupStatusV1 resolve_block(void* context,
                                           const SourceListElemV1& elem,
                                           const void** block) {
  auto& mock = *static_cast<Mock*>(context);
  if (elem.name == mock.module_block.name) {
    *block = &mock.module_block;
    return CryptRuleBlockLookupStatusV1::found;
  }
  if (elem.name == mock.end_block.name) {
    *block = &mock.end_block;
    return CryptRuleBlockLookupStatusV1::found;
  }
  return CryptRuleBlockLookupStatusV1::missing;
}

CryptRuleCallbackStatusV1 candidate_exits(
    void*, const CryptRuleExecutionFrameV1&, const void* block,
    std::size_t, std::vector<SourceRuleExitCandidateV1>& exits) {
  exits = static_cast<const Block*>(block)->one_step_candidates;
  return CryptRuleCallbackStatusV1::ready;
}

CryptRuleCallbackStatusV1 opposite_anchor_direction(
    void*, const CryptRuleExecutionFrameV1&, std::size_t,
    CryptDirectionKeyV1& opposite_direction) {
  opposite_direction = 7;
  return CryptRuleCallbackStatusV1::ready;
}

CryptRuleCallbackStatusV1 module_exit_directions(
    void*, const void* block,
    std::vector<CryptDirectionKeyV1>& directions) {
  directions = static_cast<const Block*>(block)->directions;
  return CryptRuleCallbackStatusV1::ready;
}

CryptRuleSpawnStatusV1 try_spawn(
    void* context, const CryptRuleExecutionFrameV1&,
    std::size_t, const void* block,
    const SourceRuleExitCandidateV1&, CryptRuleSpawnedTileV1& spawned) {
  auto& mock = *static_cast<Mock*>(context);
  auto tile = std::make_unique<Tile>();
  tile->id = static_cast<int>(mock.tiles.size() + 1);
  tile->block = static_cast<const Block*>(block);
  if (!mock.map.try_place(tile.get(), 1, 0, 1, 1)) {
    return CryptRuleSpawnStatusV1::rejected;
  }
  spawned.tile = tile.get();
  spawned.token = tile.get();
  mock.tiles.push_back(std::move(tile));
  return CryptRuleSpawnStatusV1::spawned;
}

CryptRuleGenerationResultV1 recurse_child(
    void* context, const CryptRuleExecutionFrameV1& child,
    RandomGeneratorV1& random) {
  auto& mock = *static_cast<Mock*>(context);
  return execute_crypt_rule_step_v1(child, *mock.execution_callbacks, random);
}

bool unspawn(void* context, const CryptRuleSpawnedTileV1& spawned) {
  auto& mock = *static_cast<Mock*>(context);
  const auto* tile = static_cast<const Tile*>(spawned.token);
  const bool removed = mock.map.remove(tile, 1, 0, 1, 1);
  mock.unspawned.push_back(tile->id);
  return removed;
}

bool destroy_child(void* context,
                   const CryptRuleExecutionFrameV1& child) {
  auto& mock = *static_cast<Mock*>(context);
  mock.destroyed.push_back(static_cast<const Rule*>(child.rule)->id);
  return true;
}

bool remove_neighbors(void* context, const void* tile_handle) {
  auto& mock = *static_cast<Mock*>(context);
  mock.neighbor_rollbacks.push_back(static_cast<const Tile*>(tile_handle)->id);
  return true;
}

RootBlockLookupResultV1 lookup_root(void* context, std::string_view name) {
  auto& mock = *static_cast<Mock*>(context);
  if (name == mock.root_block.name) {
    return {RootBlockLookupStatusV1::found, &mock.root_block};
  }
  return {RootBlockLookupStatusV1::missing, nullptr};
}

RootPlacementStepStatusV1 place_root_and_step(
    void* context, const void* block, const CryptListEntryV1&,
    const RootPlacementOriginV1& origin) {
  auto& mock = *static_cast<Mock*>(context);
  if (origin.x != 0 || origin.y != 0 || origin.z != 0 ||
      block != &mock.root_block) {
    return RootPlacementStepStatusV1::error;
  }
  auto tile = std::make_unique<Tile>();
  tile->id = 0;
  tile->block = &mock.root_block;
  if (!mock.map.try_place(tile.get(), 0, 0, 1, 1)) {
    return RootPlacementStepStatusV1::error;
  }
  const Tile* root_tile = tile.get();
  mock.tiles.push_back(std::move(tile));

  RandomGeneratorV1 random(mock.seed);
  CryptRuleExecutionFrameV1 root_frame;
  root_frame.rule = &mock.root_rule;
  root_frame.tile = root_tile;
  root_frame.child_rule_count = mock.root_rule.children.size();
  mock.generation_result = execute_crypt_rule_step_v1(
      root_frame, *mock.execution_callbacks, random);
  mock.rng_state_after = random.state();
  return mock.generation_result.status == CryptRuleGenerationStatusV1::success
             ? RootPlacementStepStatusV1::success
             : RootPlacementStepStatusV1::candidate_failed;
}

bool expect(bool condition, const char* message, int& checks) {
  ++checks;
  if (!condition) std::cerr << "FAIL: " << message << '\n';
  return condition;
}

}  // namespace

int main() {
  int checks = 0;
  bool ok = true;
  Mock mock;

  mock.root_block.step_exits = {make_exit(0, "module")};
  mock.module_block.step_exits = {make_exit(0, "module"),
                                  make_exit(1, "end")};
  mock.module_block.one_step_candidates = {
      make_exit(9, "forbidden_start_room"), make_exit(0, "next")};
  mock.end_block.step_exits = {};
  mock.end_block.one_step_candidates = {};
  mock.root_rule.children = {&mock.fail_rule, &mock.success_rule};
  mock.fail_rule.children = {&mock.grandchild_rule};

  CryptRuleGenerationCallbacksV1 callbacks;
  callbacks.context = &mock;
  callbacks.step_exits = &step_exits;
  callbacks.create_child_rule = &create_child;
  callbacks.resolve_block = &resolve_block;
  callbacks.candidate_exits = &candidate_exits;
  callbacks.opposite_anchor_direction = &opposite_anchor_direction;
  callbacks.module_exit_directions = &module_exit_directions;
  callbacks.try_spawn = &try_spawn;
  callbacks.recurse_child = &recurse_child;
  callbacks.unspawn = &unspawn;
  callbacks.destroy_child_rule = &destroy_child;
  callbacks.remove_neighbors = &remove_neighbors;
  mock.execution_callbacks = &callbacks;

  // Select a seed whose first shuffled 1-child/2-rule row assigns rule 0. The
  // recursive branch then fails at its grandchild, exercising both local
  // Unspawn and reverse child teardown before the next distribution row wins.
  mock.seed = 0;
  for (;; ++mock.seed) {
    auto catalog = enumerate_source_rule_distributions_v1(1, 2);
    RandomGeneratorV1 probe(mock.seed);
    if (!shuffle_source_rule_distributions_v1(catalog, probe)) return 2;
    if (catalog.records[0].bytes[0] == 0) break;
    if (mock.seed == UINT32_MAX) return 2;
  }

  RootRuleRuntimeCallbacksV1 root_callbacks;
  root_callbacks.context = &mock;
  root_callbacks.lookup_block = &lookup_root;
  root_callbacks.place_root_and_step = &place_root_and_step;
  const std::vector<CryptListEntryV1> root_candidates = {
      {"root", "gameplay", "visual"}};
  const auto root_result =
      execute_crypt_root_rule_v1(root_candidates, root_callbacks);

  ok &= expect(root_result.status == RootRuleRuntimeStatusV1::success,
               "root helper delegates the chosen root into recursive Step",
               checks);
  ok &= expect(mock.generation_result.status ==
                   CryptRuleGenerationStatusV1::success,
               "second shuffled assignment completes the generated branch",
               checks);
  ok &= expect(mock.generation_result.rows_tried == 3 &&
                   mock.generation_result.row_rollbacks == 2,
               "nested and parent distribution rows both roll back",
               checks);
  ok &= expect(mock.created == std::vector<int>({0, 2, 1}),
               "child impls are created in table-assignment order", checks);
  ok &= expect(mock.destroyed == std::vector<int>({2, 0}),
               "failed row destroys nested then parent child impl", checks);
  ok &= expect(mock.unspawned == std::vector<int>({2}),
               "failed recursive Step immediately unspawns its candidate",
               checks);
  ok &= expect(mock.neighbor_rollbacks.size() == 2 &&
                   static_cast<const Tile*>(mock.tiles[0].get())->id == 0 &&
                   mock.neighbor_rollbacks[0] == mock.unspawned[0] &&
                   mock.neighbor_rollbacks[1] == 0,
               "row cleanup follows reverse destruction and removes neighbors",
               checks);
  ok &= expect(mock.generation_result.one_step_candidates_tried == 2 &&
                   mock.generation_result.spawned_tiles == 2,
               "common _start filtering skips the forbidden candidate",
               checks);
  ok &= expect(mock.map.peek(0, 0) == mock.tiles[0].get() &&
                   mock.map.peek(1, 0) == mock.tiles.back().get(),
               "failed placement is removed and successful MGX cells remain",
               checks);

  RandomGeneratorV1 expected_random(mock.seed);
  const auto expected_draw = expected_random.bounded(2);
  ok &= expect(expected_draw.has_value() &&
                   expected_random.state() == mock.rng_state_after,
               "nested execution preserves the shared RNG draw order", checks);

  Mock path_mock;
  path_mock.root_block.step_exits = {make_exit(0, "module")};
  path_mock.module_block.one_step_candidates = {make_exit(0, "next")};
  path_mock.module_block.directions = {1};
  CryptPathRuntimeV1 path_state;
  path_state.chosen_length = 1;
  path_state.dont_go_back = false;
  Rule path_rule{3, {}, &path_state};
  path_mock.root_rule.children = {&path_rule};
  auto path_root = std::make_unique<Tile>();
  path_root->id = 0;
  path_root->block = &path_mock.root_block;
  const Tile* path_root_handle = path_root.get();
  path_mock.tiles.push_back(std::move(path_root));
  ok &= expect(path_mock.map.try_place(path_root_handle, 0, 0, 1, 1),
               "Path fixture reserves its root tile", checks);
  CryptRuleGenerationCallbacksV1 path_callbacks = callbacks;
  path_callbacks.context = &path_mock;
  path_mock.execution_callbacks = &path_callbacks;
  CryptRuleExecutionFrameV1 path_root_frame;
  path_root_frame.rule = &path_mock.root_rule;
  path_root_frame.tile = path_root_handle;
  path_root_frame.child_rule_count = 1;
  RandomGeneratorV1 path_random(7);
  const auto path_result = execute_crypt_rule_step_v1(
      path_root_frame, path_callbacks, path_random);
  ok &= expect(path_result.status == CryptRuleGenerationStatusV1::success &&
                   path_state.current_step == 0 && path_state.direction ==
                       kCryptNoDirectionV1,
               "PathRuntime accepts a one-exit terminal without recursing",
               checks);
  ok &= expect(path_mock.map.peek(1, 0) != nullptr,
               "terminal Path placement remains in MGX occupancy", checks);

  if (!ok) return 1;
  std::cout << "Crypt rule generation runtime v1: " << checks
            << " checks passed\n";
  return 0;
}
