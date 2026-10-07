#pragma once

#include "crypt_generated_spawnpoints_v1.hpp"
#include "source_handle_ledger_v1.hpp"

#include <cstddef>
#include <cstdint>
#include <string>
#include <vector>

namespace dh2::data {
struct CharacterTable;
struct Dictionary;
}

namespace dh2::world {

struct GeneratedCryptActorHandleV1 {
  std::uint32_t module_index = 0;
  std::uint32_t source_record = 0;
  std::uint32_t dact_record = 0;
  std::int32_t source_handle = -1;
  std::string name;
};

// Imports the generated Level and exact source MGPs, then projects the
// currently modeled direct-Monster subset to the native DACT v1/v2 format.
// Known factories, conditions and scripts are counted as deferred. Unknown
// Character templates and unsupported direct actors fail closed.
bool compile_generated_crypt_dact_v1(
    const std::uint8_t* level_xml, std::size_t level_size,
    const char* level_name, const char* level_source_path,
    const GeneratedMgpView* mgps, std::size_t mgp_count,
    const dh2::data::CharacterTable& characters,
    const dh2::data::Dictionary& models,
    const source_handle_ledger_v1::Ledger& handle_ledger,
    std::vector<GeneratedCryptActorHandleV1>& actor_sources,
    std::vector<std::uint8_t>& output, std::size_t& actor_count,
    std::size_t& deferred_count, std::string& error);

}  // namespace dh2::world
