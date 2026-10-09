#pragma once
#include "player_savegame_v1.hpp"
#include "quest_table_bindings_v1.hpp"
#include "fresh_inventory_owned_v4.hpp"
#include "../../../../../level-world/current_level_quest_event_v1.hpp"
extern "C" {
#include "../../../../../pydata-constants/constants.h"
}
#include <memory>
#include <string>

namespace dh2::native::quests {
class Cursor;
struct Constants {
 dh2_pycst_view view{};
 std::shared_ptr<const void> owner;
};
struct Receipt {
 std::array<std::uint32_t,2> published{},reinitialized{},destroyed{};
 std::uint32_t constant_queries=0;
 std::uint32_t unpublished_destroyed=0;
 std::uint32_t quest_payloads=0,objective_payloads=0;
};
// One allocator/factory context for this actual gameplay Save's embedded logs.
// It retains the same immutable Quest definitions/constants generation. Source
// InitQuests creates three difficulty vectors per log using genuine recovered
// factories. Payloads borrow one external campaign cursor and selected readers.
// Quest compilation/scripts/events and source assertion policy remain unbound;
// reached requests fail explicitly. No VM or second quest store is made.
class Owner {
 struct Impl;
 std::unique_ptr<Impl> impl_;
public:
 Owner(std::shared_ptr<data::PlayerSavegameV1>,data::quest_table_bindings_v1::View,Constants);
 ~Owner();
 Owner(const Owner&)=delete;Owner& operator=(const Owner&)=delete;
 bool initialize(std::uint32_t log,std::string&);
 // Borrow the campaign's existing absolute stream. No second cursor or profile
 // is created; failed loads retain its byte position and canonical field prefix.
 // Full reads use real typed readers. Reached source assertion/logger providers
 // remain unbound and fail explicitly. Compile/events/rewards stay separate.
 bool load_quests(Cursor&,std::string&);
 // One current-Level EventManager receiver table, owned beside this Save's
 // canonical quest/objective records. Callbacks borrow those records; this
 // seam owns no duplicate objective state or second event queue.
 using LevelEventRuntime=level_world::current_level_quest_event_v1::Runtime;
 using LevelEvent=level_world::current_level_quest_event_v1::Event;
 using LevelEventReceiver=level_world::current_level_quest_event_v1::Receiver;
 using LevelEventStatus=level_world::current_level_quest_event_v1::Status;
 using LevelEventResult=level_world::current_level_quest_event_v1::Result;
 bool attach_current_level_receiver(std::int32_t event_type,std::uintptr_t receiver,
                                    std::int32_t priority,void* context,
                                    LevelEventReceiver,std::string&);
 bool detach_current_level_receiver(std::int32_t event_type,std::uintptr_t receiver,
                                    std::string&);
 bool delay_detach_current_level_receiver(std::int32_t event_type,
                                          std::uintptr_t receiver,std::string&);
 bool raise_current_level_event(LevelEvent&,std::string&);
 bool flush_current_level_detaches(std::string&);
 // Reached Objective_GatherLoot::Register continuation. The identity must be
 // an already compiled Record in this owner's canonical factory arena; the
 // same Character inventory owns list+0x30 and supplies FindItem quantity.
 // Objective::Compile/Register callers are not yet wired, so absent or
 // uncompiled records reject rather than manufacturing an objective.
 // Receives the recovered pydata script id; its caller must apply the source
 // script base before dispatching ScriptManager::StartScript.
 using GatherLootStartScript=bool (*)(void*,std::int32_t,std::string&);
 bool register_gather_loot_objective(std::uintptr_t objective_identity,
                                     data::FreshInventoryOwnedV4& inventory,
                                     void* script_context,GatherLootStartScript,
                                     std::string&);
 bool unregister_gather_loot_objective(std::uintptr_t objective_identity,
                                       std::string&);
 // Objective_GatherLoot::Compile over the Quest's existing objective list.
 // current_level_id must be the actual Level field at +0x3c; no level or
 // inventory is synthesized. Other compiled objective kinds fail closed.
 bool compile_gather_loot_objectives(std::uintptr_t quest_identity,
                                     data::FreshInventoryOwnedV4& inventory,
                                     std::int32_t current_level_id,
                                     void* script_context,GatherLootStartScript,
                                     std::string&);
 // The full Quest::SetState owner stores state before calling this objective
 // substep. It supplies the prior state to preserve state-6 enter/leave order;
 // Quest scripts, UI, and save/current-quest side effects remain caller-owned.
 bool transition_gather_loot_registration(std::uintptr_t quest_identity,
                                          std::int32_t prior_state,
                                          std::int32_t stored_state,
                                          data::FreshInventoryOwnedV4& inventory,
                                          void* script_context,GatherLootStartScript,
                                          std::string&);
 bool close(std::string&);
 bool owns_save(const data::PlayerSavegameV1*) const noexcept;
 const Receipt& receipt() const noexcept;
 data::quest_runtime_fields_v1::Record* resolve(const data::quest_savegame_v1::QuestRef*) noexcept;
};
}
