#pragma once
#include "player_save_load_owner_v1.hpp"
#include <filesystem>
#include <memory>
#include <string>
#include <vector>

namespace dh2::native::player_profile {
struct Receipt {
 std::int32_t slot=-1,character_class=-1,level=0,difficulty=0;
 std::uint32_t source_level_id=0,sections=0,field_reads=0,file_opens=0;
 bool loaded=false;
};
// Read-only campaign import transport for PlayerInfo's metadata Save (+680).
// Character's gameplay Save (+14e8), inventory/properties/VM remain distinct.
// No inferred selected slot, Character association, save writer or new profile.
class Metadata {
 struct Impl;std::unique_ptr<Impl> impl_;
public:
 Metadata();~Metadata();
 Metadata(const Metadata&)=delete;Metadata& operator=(const Metadata&)=delete;
 bool load(std::int32_t selected_slot,const std::filesystem::path& directory,
           const data::CharacterTable&,std::int32_t& source_current_difficulty,
           std::string&);
 const Receipt& receipt()const noexcept;
 const data::PlayerSavegameV1& save()const noexcept;
 std::uintptr_t profile_identity()const noexcept;
 std::uintptr_t save_identity()const noexcept;
};
// Source filename/index/reader kernels execute. Platform I/O is a declared
// adapter; a missing/corrupt primary fails explicitly (backup recovery unbound).
// Named writer thunks are retained, but writes explicitly reject until
// source metadata writer/persistence bodies bind. No personal name is logged.
}
