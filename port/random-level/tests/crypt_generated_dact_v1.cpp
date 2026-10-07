#include "../crypt_generated_dact_v1.hpp"

#include <algorithm>
#include <array>
#include <cstdint>
#include <cstring>
#include <fstream>
#include <iostream>
#include <iterator>
#include <cstdlib>
#include <stdexcept>
#include <string>
#include <vector>

namespace {
using namespace dh2;

std::vector<std::uint8_t> read(const std::string& path) {
  std::ifstream file(path, std::ios::binary);
  if (!file) throw std::runtime_error("Unable to open: " + path);
  return {std::istreambuf_iterator<char>(file), {}};
}

void require(bool condition, const char* message) {
  if (!condition) throw std::runtime_error(message);
}

std::uint32_t word(const std::uint8_t* p) {
  return static_cast<std::uint32_t>(p[0]) |
      (static_cast<std::uint32_t>(p[1]) << 8) |
      (static_cast<std::uint32_t>(p[2]) << 16) |
      (static_cast<std::uint32_t>(p[3]) << 24);
}

void load_tables(const std::string& assets, data::CharacterTable& characters,
                 data::Dictionary& models) {
  const auto properties = read(assets + "/data/character_properties_pyarray.bin");
  const auto character_names = read(assets + "/data/character_properties_pyarraynames.bin");
  const auto character_fields = read(assets + "/data/character_properties_pystructnames.bin");
  const auto model_names = read(assets + "/data/character_models_dictionary_pyarraynames.bin");
  const auto model_values = read(assets + "/data/character_models_dictionary_pyarray.bin");
  std::string error;
  require(data::load_characters({properties.data(), properties.size()},
                                {character_names.data(), character_names.size()},
                                {character_fields.data(), character_fields.size()},
                                characters, error), error.c_str());
  require(data::load_dictionary({model_names.data(), model_names.size()},
                                {model_values.data(), model_values.size()},
                                models, error), error.c_str());
}

std::vector<std::array<std::uint8_t, 256>> actor_rows(
    const std::vector<std::uint8_t>& dact) {
  require(dact.size() >= 16 && std::memcmp(dact.data(), "DACT", 4) == 0,
          "DACT header rejected");
  const auto count = word(dact.data() + 8);
  require(dact.size() == 16 + static_cast<std::uint64_t>(count) * 256,
          "DACT record size rejected");
  std::vector<std::array<std::uint8_t, 256>> result;
  for (std::uint32_t i = 0; i < count; ++i) {
    const auto* row = dact.data() + 16 + i * 256;
    if (word(row) != 1) continue;
    std::array<std::uint8_t, 256> copy{};
    std::memcpy(copy.data(), row, copy.size());
    result.push_back(copy);
  }
  return result;
}

const world::Object* object_at(const world::SourceLevel& source,
                               std::uint32_t module,
                               std::uint32_t source_record) {
  for (std::uint32_t i = 0; i < source.entity_count; ++i) {
    const auto& object = source.entities[i];
    if (object.kind == world::RecordKind::mgp &&
        object.module_index == module && object.source_record == source_record)
      return &object;
  }
  return nullptr;
}

bool has_skip(const random_level::CryptGeneratedDactV1& result,
              std::uint32_t module, std::uint32_t record,
              random_level::CryptGeneratedDactSkipReasonV1 reason) {
  for (const auto& skipped : result.skipped)
    if (skipped.module_index == module && skipped.source_record == record &&
        skipped.reason == reason)
      return true;
  return false;
}

void set_field(world::Object& object, const char* field_name,
               const char* value) {
  for (std::uint32_t i = 0; i < object.field_count; ++i) {
    if (std::strcmp(object.fields[i].name, field_name) == 0) {
      object.fields[i].value = const_cast<char*>(value);
      return;
    }
  }
  throw std::runtime_error("Expected source field missing for test mutation");
}

void add_field(world::Object& object, const char* field_name,
               const char* value) {
  auto* grown = static_cast<world::Field*>(std::realloc(
      object.fields, (object.field_count + 1) * sizeof(world::Field)));
  require(grown != nullptr, "Test source field allocation failed");
  object.fields = grown;
  const auto key_length = std::strlen(field_name) + 1;
  const auto value_length = std::strlen(value) + 1;
  auto* key = static_cast<char*>(std::malloc(key_length));
  auto* text = static_cast<char*>(std::malloc(value_length));
  require(key && text, "Test source field text allocation failed");
  std::memcpy(key, field_name, key_length);
  std::memcpy(text, value, value_length);
  object.fields[object.field_count++] = {key, text};
}

void remove_last_field(world::Object& object) {
  require(object.field_count > 0, "No test source field to remove");
  auto& field = object.fields[--object.field_count];
  std::free(field.name);
  std::free(field.value);
  field = {};
}

void test_fail_closed(world::SourceLevel& source,
                      const data::CharacterTable& characters,
                      const data::Dictionary& models) {
  random_level::CryptGeneratedDactV1 output;
  random_level::CryptGeneratedDactDiagnosticV1 diagnostic{};
  auto* direct = const_cast<world::Object*>(object_at(source, 3, 3));
  require(direct != nullptr, "Synthetic script test actor missing");
  const auto* old_ai = dh2_world_field(direct, "ai_state");
  set_field(*direct, "ai_state", "Attack");
  // Unsupported actor states fail the transaction and expose no partial DACT.
  auto status = random_level::crypt_compile_generated_dact_v1(
      source, characters, models, output, &diagnostic);
  require(status == random_level::CryptGeneratedDactStatusV1::unsupported_spawn_policy,
          "Unsupported source AI state was accepted");
  require(output.bytes.empty(), "Failed DACT compile exposed partial bytes");
  set_field(*direct, "ai_state", old_ai ? old_ai : "");

  add_field(*direct, "script", "unsafe.lua");
  status = random_level::crypt_compile_generated_dact_v1(
      source, characters, models, output, &diagnostic);
  require(status == random_level::CryptGeneratedDactStatusV1::ok &&
              output.source_order.size() == 12 &&
              has_skip(output, 3, 3,
                       random_level::CryptGeneratedDactSkipReasonV1::scripted_object),
          "Scripted direct Monster was not omitted from DACT");
  remove_last_field(*direct);

  const auto* old_template = dh2_world_field(direct, "_templateName");
  set_field(*direct, "_templateName", "UnreviewedActorType");
  status = random_level::crypt_compile_generated_dact_v1(
      source, characters, models, output, &diagnostic);
  require(status == random_level::CryptGeneratedDactStatusV1::unsupported_type &&
              output.bytes.empty(),
          "Unknown Character factory type was guessed into DACT");
  set_field(*direct, "_templateName", old_template);

  // An active condition on a direct Monster is reported and omitted.
  auto* conditional = const_cast<world::Object*>(object_at(source, 7, 18));
  require(conditional != nullptr, "Conditional Crypt actor missing");
  const auto* old_condition = dh2_world_field(conditional, "activate_cond");
  set_field(*conditional, "activate_cond", "invalid");
  status = random_level::crypt_compile_generated_dact_v1(
      source, characters, models, output, &diagnostic);
  require(status == random_level::CryptGeneratedDactStatusV1::ok,
          "Removing a condition from a supported Monster failed");
  require(!has_skip(output, 7, 18,
                    random_level::CryptGeneratedDactSkipReasonV1::conditional_object),
          "Inactive condition marker was treated as executable");
  set_field(*conditional, "activate_cond", old_condition);

  // Conditions and scripts are never turned into unconditional DACT rows.
  // The shipped Crypt condition remains present and omitted in the baseline.
  status = random_level::crypt_compile_generated_dact_v1(
      source, characters, models, output, &diagnostic);
  require(status == random_level::CryptGeneratedDactStatusV1::ok &&
              has_skip(output, 7, 18,
                       random_level::CryptGeneratedDactSkipReasonV1::conditional_object),
          "Source conditional Monster was not explicitly deferred");

  auto* module = source.modules;
  const auto old_scale = module[0].record.local.scale[0];
  module[0].record.local.scale[0] = 2.0f;
  status = random_level::crypt_compile_generated_dact_v1(
      source, characters, models, output, &diagnostic);
  require(status == random_level::CryptGeneratedDactStatusV1::incomplete_module_gameplay &&
              output.bytes.empty(),
          "Scaled module placement was not rejected");
  module[0].record.local.scale[0] = old_scale;
  const auto old_rotation = module[0].record.local.rotation_degrees[2];
  module[0].record.local.rotation_degrees[2] = 90.0f;
  status = random_level::crypt_compile_generated_dact_v1(
      source, characters, models, output, &diagnostic);
  require(status == random_level::CryptGeneratedDactStatusV1::incomplete_module_gameplay &&
              output.bytes.empty(),
          "Rotated module placement was not rejected");
  module[0].record.local.rotation_degrees[2] = old_rotation;
}
}  // namespace

int main(int argc, char** argv) {
  if (argc != 3) {
    std::cerr << "usage: crypt_generated_dact_v1 cache-root android-assets-root\n";
    return 2;
  }
  try {
    const std::string cache_root = argv[1];
    const std::string assets = argv[2];
    const auto worlds = assets + "/worlds";
    const auto mlx = read(worlds + "/x07_crypt_backup.mlx");
    world::SourceLevel source{};
    world::Diagnostic source_diagnostic{};
    require(dh2_world_import_level(&source, "CRYPT",
                "data/scene/x07_crypt_backup.mlx", mlx.data(), mlx.size(),
                &source_diagnostic) == world::Error::ok,
            source_diagnostic.message);

    for (std::uint32_t i = 0; i < source.module_count; ++i) {
      const auto& module = source.modules[i];
      const auto mgp = read(cache_root + "/" + module.cache_mgp);
      require(dh2_world_import_module_objects(&source, i,
                  world::RecordKind::mgp, module.cache_mgp, mgp.data(),
                  mgp.size(), &source_diagnostic) == world::Error::ok,
              source_diagnostic.message);
    }

    data::CharacterTable characters;
    data::Dictionary models;
    load_tables(assets, characters, models);

    random_level::CryptGeneratedDactV1 generated;
    random_level::CryptGeneratedDactDiagnosticV1 diagnostic{};
    const auto status = random_level::crypt_compile_generated_dact_v1(
        source, characters, models, generated, &diagnostic);
    require(status == random_level::CryptGeneratedDactStatusV1::ok,
            diagnostic.message);
    require(generated.source_order.size() == 13,
            "Fixed Crypt direct-Monster count differs from source evidence");
    const auto skipped_count = [&](random_level::CryptGeneratedDactSkipReasonV1 reason) {
      return static_cast<std::size_t>(std::count_if(
          generated.skipped.begin(), generated.skipped.end(),
          [reason](const auto& row) { return row.reason == reason; }));
    };
    require(source.entity_count == 82 && generated.skipped.size() == 69 &&
                skipped_count(random_level::CryptGeneratedDactSkipReasonV1::non_character) == 50 &&
                skipped_count(random_level::CryptGeneratedDactSkipReasonV1::known_factory_template) == 17 &&
                skipped_count(random_level::CryptGeneratedDactSkipReasonV1::conditional_object) == 2,
            "Fixed Crypt MGP projection/deferred record accounting changed");
    require(generated.bytes.size() == 16 + 13 * 256 &&
                word(generated.bytes.data() + 4) == 2 &&
                word(generated.bytes.data() + 8) == 13,
            "Generated DACT v2 header/size rejected");

    constexpr std::array<std::pair<unsigned, unsigned>, 13> expected_source = {{
        {0, 4}, {0, 5}, {0, 9}, {0, 10}, {0, 11}, {0, 12},
        {3, 3}, {3, 4}, {3, 6},
        {7, 12}, {7, 13}, {7, 20}, {7, 21},
    }};
    for (std::size_t i = 0; i < expected_source.size(); ++i) {
      const auto& row = generated.source_order[i];
      require(row.module_index == expected_source[i].first &&
                  row.source_record == expected_source[i].second &&
                  row.dact_record == i,
              "Generated DACT rows lost source module/file order");
      const auto* original = object_at(source, row.module_index, row.source_record);
      require(original && row.name == original->name,
              "Generated DACT row lost its source name identity");
    }
    require(has_skip(generated, 7, 18,
                     random_level::CryptGeneratedDactSkipReasonV1::conditional_object) &&
                has_skip(generated, 7, 19,
                     random_level::CryptGeneratedDactSkipReasonV1::conditional_object),
            "Condition-gated Crypt boss actors were not deferred");

    const auto expected = read(worlds + "/crypt01.dact");
    const auto expected_actors = actor_rows(expected);
    require(expected_actors.size() == generated.source_order.size(),
            "Current fixed Crypt DACT actor subset count differs");
    for (std::size_t i = 0; i < expected_actors.size(); ++i) {
      require(std::memcmp(generated.bytes.data() + 16 + i * 256,
                          expected_actors[i].data(), 256) == 0,
              "Generated source-MGP actor row differs from fixed Crypt DACT");
    }

    test_fail_closed(source, characters, models);
    dh2_world_free(&source);
    std::cout << "generated Crypt DACT actor subset: 13/82 source MGP objects, byte-exact with fixed DACT; "
                 "50 non-Character, 17 factory-template and 2 conditional rows deferred; guards pass\n";
    return 0;
  } catch (const std::exception& exception) {
    std::cerr << exception.what() << '\n';
    return 1;
  }
}
