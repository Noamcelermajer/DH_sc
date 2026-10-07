#include "crypt_generated_source_dact_v1.hpp"

#include "../random-level/crypt_generated_dact_v1.hpp"
#include "../world-data/world.hpp"

#include <algorithm>
#include <cstring>
#include <utility>
#include <vector>

namespace dh2::world {
namespace {

struct SourceOwner {
  SourceLevel value{};
  ~SourceOwner() { dh2_world_free(&value); }
};

}  // namespace

bool compile_generated_crypt_dact_v1(
    const std::uint8_t* level_xml, std::size_t level_size,
    const char* level_name, const char* level_source_path,
    const GeneratedMgpView* mgps, std::size_t mgp_count,
    const dh2::data::CharacterTable& characters,
    const dh2::data::Dictionary& models,
    const source_handle_ledger_v1::Ledger& handle_ledger,
    std::vector<GeneratedCryptActorHandleV1>& actor_sources,
    std::vector<std::uint8_t>& output, std::size_t& actor_count,
    std::size_t& deferred_count, std::string& error) {
  actor_sources.clear();
  output.clear();
  actor_count = 0;
  deferred_count = 0;
  error.clear();
  if (!level_xml || !level_size || !level_name || !*level_name ||
      !level_source_path || !mgps) {
    error = "Generated Crypt DACT input is incomplete";
    return false;
  }

  SourceOwner source;
  Diagnostic diagnostic{};
  if (dh2_world_import_level(&source.value, level_name, level_source_path,
          level_xml, level_size, &diagnostic) != Error::ok) {
    error = diagnostic.message[0] ? diagnostic.message
                                  : "Generated Crypt Level XML import failed";
    return false;
  }
  if (!source.value.module_count || source.value.module_count > 256 ||
      mgp_count != source.value.module_count) {
    error = "Generated Crypt needs one ordered MGP for every Module";
    return false;
  }

  for (std::uint32_t i = 0; i < source.value.module_count; ++i) {
    if (!mgps[i].source_path || !mgps[i].data || !mgps[i].size) {
      error = "Generated Crypt MGP input is incomplete";
      return false;
    }
    const auto status = dh2_world_import_module_objects(&source.value, i,
        RecordKind::mgp, mgps[i].source_path, mgps[i].data, mgps[i].size,
        &diagnostic);
    if (status != Error::ok) {
      error = diagnostic.message[0] ? diagnostic.message
                                    : "Generated Crypt MGP import failed";
      return false;
    }
  }

  std::vector<dh2::random_level::CryptGeneratedDactRetainedSourceV1>
      retained_characters;
  retained_characters.reserve(source.value.entity_count);
  for (std::uint32_t index = 0; index < source.value.entity_count; ++index) {
    const auto& object = source.value.entities[index];
    if (object.kind != RecordKind::mgp || !object.gametype ||
        std::strcmp(object.gametype, "Character") != 0) continue;
    const auto found = std::find_if(handle_ledger.occurrences.begin(),
        handle_ledger.occurrences.end(), [&](const auto& occurrence) {
          return occurrence.source.kind == RecordKind::mgp &&
              occurrence.source.module_index == object.module_index &&
              occurrence.source.record_index == object.source_record &&
              occurrence.source.name == (object.name ? object.name : "") &&
              occurrence.source.gametype == "Character";
        });
    if (found == handle_ledger.occurrences.end()) {
      error = "Generated Crypt Character is absent from the source handle ledger";
      return false;
    }
    const auto duplicate_count = std::count_if(handle_ledger.occurrences.begin(),
        handle_ledger.occurrences.end(), [&](const auto& occurrence) {
          return occurrence.source.kind == RecordKind::mgp &&
              occurrence.source.module_index == object.module_index &&
              occurrence.source.record_index == object.source_record &&
              occurrence.source.name == (object.name ? object.name : "") &&
              occurrence.source.gametype == "Character";
        });
    if (duplicate_count != 1) {
      error = "Generated Crypt Character maps to multiple source registrations";
      return false;
    }
    if (!found->duplicate_name) {
      retained_characters.push_back({object.module_index, object.source_record,
                                     object.name ? object.name : ""});
    }
  }

  dh2::random_level::CryptGeneratedDactV1 projected;
  dh2::random_level::CryptGeneratedDactDiagnosticV1 projection_diagnostic{};
  const auto status = dh2::random_level::crypt_compile_generated_dact_v1(
      source.value, characters, models, projected, &projection_diagnostic,
      &retained_characters);
  if (status != dh2::random_level::CryptGeneratedDactStatusV1::ok) {
    error = projection_diagnostic.message[0]
        ? projection_diagnostic.message
        : "Generated Crypt actor projection failed";
    return false;
  }
  actor_sources.reserve(projected.source_order.size());
  for (std::size_t index = 0; index < projected.source_order.size(); ++index) {
    const auto& source_actor = projected.source_order[index];
    const auto found = std::find_if(handle_ledger.occurrences.begin(),
        handle_ledger.occurrences.end(), [&](const auto& occurrence) {
          return occurrence.source.kind == RecordKind::mgp &&
              occurrence.source.module_index == source_actor.module_index &&
              occurrence.source.record_index == source_actor.source_record &&
              occurrence.source.name == source_actor.name &&
              occurrence.source.gametype == "Character";
        });
    if (found == handle_ledger.occurrences.end() || found->duplicate_name ||
        found->handle < 0) {
      actor_sources.clear();
      error = "Generated Crypt DACT actor does not own its source handle";
      return false;
    }
    actor_sources.push_back({source_actor.module_index,
        source_actor.source_record, static_cast<std::uint32_t>(index),
        found->handle, source_actor.name});
  }
  actor_count = actor_sources.size();
  deferred_count = projected.skipped.size();
  output = std::move(projected.bytes);
  return true;
}

}  // namespace dh2::world
