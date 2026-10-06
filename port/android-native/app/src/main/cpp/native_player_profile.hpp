#pragma once
#include "player_save_load_owner_v1.hpp"
#include <filesystem>
#include <memory>
#include <string>
#include <vector>

namespace dh2::data {struct LevelTables;struct WorldMapTables;}
namespace dh2::native::player_profile {
struct Receipt {
 std::int32_t slot=-1,character_class=-1,level=0,difficulty=0;
 std::uint32_t source_level_id=0,sections=0,field_reads=0,file_opens=0;
 bool loaded=false;
};
struct TransportBindings {
 std::filesystem::path directory;
 const data::CharacterTable* characters=nullptr;
 std::int32_t* current_difficulty=nullptr;
 // Gameplay section readers and init/quest/network operations must be actual
 // selected implementations. This service's lease survives each delivery.
 data::PlayerSaveLoadServicesV1 continuation;
 // Explicit source NativeCreateSaveSlot transport only. Missing primaries
 // construct a real empty profile; existing primaries reject. Metadata's
 // read-only import always leaves this false.
 bool create_new=false;
 // Optional pair borrowed from the world's actual retained data owners.
 // Reached InitLevelStates/LVLS use the same gameplay Save's six arrays.
 const data::LevelTables* levels=nullptr;
 const data::WorldMapTables* world_map=nullptr;
};
// One retained LoadOwner over a caller's existing Save and canonical +8
// profile slot. The transport owns I/O/callback backing only. It creates no
// Save, inventory, properties, VM, RNG or timer owner. Those borrowed objects
// and bound tables/globals must outlive this transport and synchronous calls.
class Transport {
 struct Impl;std::shared_ptr<Impl> impl_;
 std::unique_ptr<data::PlayerSaveLoadOwnerV1> loader_;
public:
 Transport(data::PlayerSavegameV1&,data::PlayerSaveProfileV1&);
 ~Transport();
 Transport(const Transport&)=delete;Transport& operator=(const Transport&)=delete;
 // Rebind table/global/service providers after a world backing replacement.
 // A callback cannot rebind the active transport. A retained profile keeps
 // its original bytes even when the Save slot or directory later changes.
 bool bind(TransportBindings,std::string&);
 // Exact registered metadata saveAll assembly / same-index publication,
 // followed by explicit atomic durable native new-file persistence. Normal
 // import/gameplay transports reject writes until their writer closure binds.
 bool save_all(std::string&);
 data::PlayerSaveLoadOwnerV1& loader() noexcept;
 const Receipt& receipt()const noexcept;
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
