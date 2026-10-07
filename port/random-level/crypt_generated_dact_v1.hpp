#pragma once

#include "../game-data/data.hpp"
#include "../world-data/world.hpp"

#include <cstddef>
#include <cstdint>
#include <string>
#include <vector>

namespace dh2::random_level {

enum class CryptGeneratedDactStatusV1 : std::uint32_t {
  ok,
  argument,
  incomplete_module_gameplay,
  invalid_source_order,
  unsupported_type,
  unsupported_spawn_policy,
  character_data,
  unsupported_transform,
  duplicate_identity,
  limit,
  allocation
};

enum class CryptGeneratedDactSkipReasonV1 : std::uint32_t {
  non_character,
  known_factory_template,
  conditional_object,
  scripted_object,
  object_manager_duplicate
};

struct CryptGeneratedDactRetainedSourceV1 {
  std::uint32_t module_index = 0;
  std::uint32_t source_record = 0;
  std::string name;
};

struct CryptGeneratedDactSourceV1 {
  std::uint32_t module_index = 0;
  std::uint32_t source_record = 0;
  std::uint32_t dact_record = 0;
  std::string name;
  std::string character;
  std::string model;
};

struct CryptGeneratedDactSkippedV1 {
  std::uint32_t module_index = 0;
  std::uint32_t source_record = 0;
  CryptGeneratedDactSkipReasonV1 reason =
      CryptGeneratedDactSkipReasonV1::non_character;
  std::string name;
};

struct CryptGeneratedDactV1 {
  // Current native object loader format: DACT v1 for unconditional rows or
  // DACT v2 when source-authored Limbus/auto_spawn=0 actors are retained.
  std::vector<std::uint8_t> bytes;
  // In-memory provenance. DACT itself stores room/module and object name, but
  // has no source_record or stable numeric ObjectManager-handle field.
  std::vector<CryptGeneratedDactSourceV1> source_order;
  std::vector<CryptGeneratedDactSkippedV1> skipped;
};

struct CryptGeneratedDactDiagnosticV1 {
  CryptGeneratedDactStatusV1 status = CryptGeneratedDactStatusV1::ok;
  std::uint32_t module_index = 0xffffffffU;
  std::uint32_t source_record = 0xffffffffU;
  char message[192] = {};
};

// Project source-ordered MGP GameObjects from an already imported generated
// SourceLevel into the runtime DACT actor subset. Only direct Monster records
// with resolved CharacterTable data are emitted. Known non-direct Character
// factories, conditions and scripts are returned as skipped provenance; an
// unknown Character template or invalid direct actor fails the whole compile.
// Module placement must already satisfy world-data's translation-only rule.
CryptGeneratedDactStatusV1 crypt_compile_generated_dact_v1(
    const world::SourceLevel& source,
    const data::CharacterTable& characters,
    const data::Dictionary& models,
    CryptGeneratedDactV1& output,
    CryptGeneratedDactDiagnosticV1* diagnostic = nullptr,
    const std::vector<CryptGeneratedDactRetainedSourceV1>* retained_sources =
        nullptr) noexcept;

}  // namespace dh2::random_level
