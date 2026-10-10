#pragma once
#include "player_savegame_v1.hpp"
#include "player_save_section_writers_v1.hpp"
#include "quest_table_bindings_v1.hpp"
#include "fresh_inventory_owned_v4.hpp"
#include "../../../../../level-world/current_level_quest_event_v1.hpp"
#include "../../../../../level-world/character_kill_quest_tail_v1.hpp"
extern "C" {
#include "../../../../../pydata-constants/constants.h"
}
#include <memory>
#include <string>
#include <vector>

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
struct QuestReadV1 {
 std::int32_t id=-1,state=-1,priority=-1;
 std::array<std::int32_t,4> text_ids{{-1,-1,-1,-1}};
 std::string objective_description;
};
enum class QuestUpdateActiveOutcomeV1 : std::uint8_t {
 inactive, objectives_pending, completion_script_running, state_transitioned
};
struct QuestUpdateActiveResultV1 {
 QuestUpdateActiveOutcomeV1 outcome=QuestUpdateActiveOutcomeV1::inactive;
 std::uintptr_t quest_identity=0;
 std::int32_t prior_state=-1,new_state=-1;
 std::string active_script,post_active_script;
};
// Quest::UpdateActive is called by the current Level's frame owner. The native
// owner evaluates its canonical ObjectiveList and resolves the source script
// names; the Level provider borrows the one ScriptManager and performs the
// canonical Quest::SetState(7) transition (including its ordering/effects).
// No second VM, objective list, or quest-state store is introduced here.
struct QuestUpdateActiveServicesV1 {
 void* context=nullptr;
 bool (*script_is_running)(void*,const std::string&,bool&,std::string&)=nullptr;
 // Borrowed Application time snapshot for Quest::SetState's +4 store.
 std::int32_t application_time=0;
 bool application_time_valid=false;
 // Quest::ExecScript calls the same ScriptManager StartScript(id,-1,true).
 bool (*start_script)(void*,const std::string&,std::int32_t argument,
                      bool flag,std::string&)=nullptr;
};
enum class QuestLookupStatusV1 : std::uint8_t {
 unavailable, missing, compile_required, source_fault, found
};
class Owner;
// Adapter context for ConditionData's QuestStateLookup callback. The pointers
// borrow the process globals selected by Character::SG_GetQuestByID; keep them
// live so difficulty/online changes are observed without a second quest store.
struct QuestLookupContextV1 {
 Owner* owner=nullptr;
 const std::int32_t* current_difficulty=nullptr;
 const std::uint8_t* online=nullptr;
 QuestLookupStatusV1 status=QuestLookupStatusV1::unavailable;
};
bool quest_state_lookup_v1(void*,std::int32_t quest_id,
                           std::int32_t* state) noexcept;
struct QuestTextServicesV1 {
 void* context=nullptr;
 bool (*string_id)(void*,std::int32_t,std::string&,std::string&)=nullptr;
};
// Compile-time population must come from the same active Level whose event
// table receives Character::Kill. This typed snapshot replaces the easy-to-
// misuse raw count for production wiring; it does not manufacture a Level.
struct ClearEnemiesPopulationSnapshotV1 {
 std::uintptr_t event_owner_identity=0;
 std::uintptr_t level_identity=0;
 std::int32_t level_id=-1;
 std::int32_t loaded_match_count=-1;
};
struct ClearEnemiesPopulationServicesV1 {
 void* context=nullptr;
 bool (*read_current_level_population)(void*,std::uintptr_t expected_event_owner,
                                       std::uintptr_t expected_level_identity,
                                       std::int32_t property_id,
                                       ClearEnemiesPopulationSnapshotV1&,
                                       std::string&)=nullptr;
 // Must come from the current NativeLevelQuery owner, not from a cached ID.
 std::uintptr_t expected_level_identity=0;
};
// KillXEnemies uses the same source TestCharPropId population query; the
// distinct alias keeps call sites clear while preserving one typed contract.
using KillEnemiesPopulationServicesV1=ClearEnemiesPopulationServicesV1;
struct ClearEnemyTemplatePopulationServicesV1 {
 void* context=nullptr;
 bool (*read_current_level_population)(void*,std::uintptr_t expected_event_owner,
                                       std::uintptr_t expected_level_identity,
                                       std::int32_t template_id,
                                       ClearEnemiesPopulationSnapshotV1&,
                                       std::string&)=nullptr;
 std::uintptr_t expected_level_identity=0;
};
// Source ObjectiveList::GetDesc semantics: preserve child order, resolve only
// positive text IDs, omit empty results, and separate visible lines by '\n'.
bool compose_objective_description_v1(const std::vector<std::int32_t>&,
                                      const QuestTextServicesV1&,
                                      std::string&,std::string&);
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
 // Borrow a Quest already published in this Save's source log. `ordinal` is
 // the SG_GetQuestByID vector index; the returned text IDs/priority are read
 // from that Quest's retained immutable pydata row, never a second catalogue.
 bool read_quest(std::uint32_t log,std::uint32_t difficulty,
                 std::uint32_t ordinal,QuestReadV1&,std::string&,
                 const QuestTextServicesV1* text=nullptr) const;
 // SG_GetQuestByID's source ordinal lookup against this Save's selected log.
 // A valid but unpublished ordinal reports compile_required; this adapter
 // intentionally never invokes CompileQuests(false).
 bool lookup_quest_state(std::int32_t quest_id,std::int32_t difficulty,
                         bool online,std::int32_t* state,
                         QuestLookupStatusV1&) const noexcept;
// Source Quest::UpdateActive decision against this Save's canonical
// ObjectiveList. The per-frame caller supplies its existing Level
// ScriptManager services and Application time snapshot. Canonical QEST state,
// current-quest field, and supported objective detach effects stay in Owner.
 bool update_active(std::uintptr_t quest_identity,std::uint32_t log,
                    std::uint32_t difficulty,
                    const QuestUpdateActiveServicesV1&,
                    QuestUpdateActiveResultV1&,std::string&);
 // Narrow QuestSavegame::UpdateQuests adapter for a caller's existing
 // Character/Level frame. Iterates the selected canonical Save log and
 // difficulty in published order, updating Active quests only; it owns no
 // clock and does not create another Quest/ScriptManager collection.
 bool update_active_log(std::uint32_t log,std::uint32_t difficulty,
                        const QuestUpdateActiveServicesV1&,
                        std::vector<QuestUpdateActiveResultV1>&,
                        std::string&);
 // Borrow the campaign's existing absolute stream. No second cursor or profile
 // is created; failed loads retain its byte position and canonical field prefix.
 // Full reads use real typed readers. Reached source assertion/logger providers
 // remain unbound and fail explicitly. Compile/events/rewards stay separate.
 bool load_quests(Cursor&,std::string&);
 // Source PlayerSavegame::__SaveQuests over the same Save and its selected
 // embedded log. The caller supplies the existing QEST payload stream; no
 // quest copy or second persistence owner is created.
 bool save_quests(const data::player_save_section_writers_v1::WriteServicesV1&,
                  std::string&);
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
 // Character::Kill's existing tail emits these source event records. The
 // adapter below borrows the same current-Level EventManager as loot events.
 using KillObjectiveStartScript=GatherLootStartScript;
 // Objective::SetIsCompleted writes canonical Objective+0x14 once, then
 // starts its optional pydata+12 completion script through the same manager.
 bool complete_objective(std::uintptr_t quest_identity,
                         std::uint32_t objective_ordinal,
                         void* script_context,KillObjectiveStartScript,
                         std::string&);
 bool compile_kill_x_enemies_objective(std::uintptr_t quest_identity,
                                       std::uint32_t objective_ordinal,
                                       std::int32_t current_level_id,
                                       std::int32_t loaded_match_count,
                                       void* script_context,
                                       KillObjectiveStartScript,
                                       std::string&);
 // Production entry point. As for ClearEnemies, the provider must query the
 // current Level's loaded TestCharPropId set and report the same event owner.
 bool compile_kill_x_enemies_objective_from_level(
                                       std::uintptr_t quest_identity,
                                       std::uint32_t objective_ordinal,
                                       const KillEnemiesPopulationServicesV1&,
                                       void* script_context,
                                       KillObjectiveStartScript,
                                       std::string&);
 // ObjectiveList::Compile source-order adapter for the selected KillXEnemies
 // Objective provider. It invalidates the canonical list, compiles supported
 // type-0 children through the actual Level population query, and registers
 // them only for state 6. Any other child dispatch fails closed.
 bool compile_kill_x_enemies_objective_list_v1(
                                       std::uintptr_t quest_identity,
                                       const KillEnemiesPopulationServicesV1&,
                                       void* script_context,
                                       KillObjectiveStartScript,
                                       std::string&);
 bool register_kill_x_enemies_objective(std::uintptr_t quest_identity,
                                        std::uint32_t objective_ordinal,
                                        void* script_context,
                                        KillObjectiveStartScript,
                                        std::string&);
 bool unregister_kill_x_enemies_objective(std::uintptr_t quest_identity,
                                          std::uint32_t objective_ordinal,
                                          std::string&);
 // ClearEnemies is the sibling SavedQty receiver: it uses the same retained
 // Objective record/progress kernel, but its source selector and event key are
 // distinct from KillXEnemies.
 bool compile_clear_enemies_objective(std::uintptr_t quest_identity,
                                      std::uint32_t objective_ordinal,
                                      std::int32_t current_level_id,
                                      std::int32_t loaded_match_count,
                                      void* script_context,
                                      KillObjectiveStartScript,
                                      std::string&);
 // Production entry point. The callback must atomically query the current
 // Level's loaded TestCharPropId population and identify the event owner it
 // queried. Missing/stale providers fail before mutating the canonical record.
 bool compile_clear_enemies_objective_from_level(
                                      std::uintptr_t quest_identity,
                                      std::uint32_t objective_ordinal,
                                      const ClearEnemiesPopulationServicesV1&,
                                      void* script_context,
                                      KillObjectiveStartScript,
                                      std::string&);
 bool register_clear_enemies_objective(std::uintptr_t quest_identity,
                                       std::uint32_t objective_ordinal,
                                       void* script_context,
                                       KillObjectiveStartScript,
                                       std::string&);
 bool unregister_clear_enemies_objective(std::uintptr_t quest_identity,
                                         std::uint32_t objective_ordinal,
                                         std::string&);
 // Adjacent ClearEnemyTemplate uses the same event/progress owner but its
 // source TestCharTemplate selector and population query remain distinct.
 bool compile_clear_enemy_template_objective_from_level(
                                      std::uintptr_t quest_identity,
                                      std::uint32_t objective_ordinal,
                                      const ClearEnemyTemplatePopulationServicesV1&,
                                      void* script_context,
                                      KillObjectiveStartScript,
                                      std::string&);
 bool register_clear_enemy_template_objective(std::uintptr_t quest_identity,
                                      std::uint32_t objective_ordinal,
                                      void* script_context,
                                      KillObjectiveStartScript,
                                      std::string&);
 bool unregister_clear_enemy_template_objective(std::uintptr_t quest_identity,
                                      std::uint32_t objective_ordinal,
                                      std::string&);
 bool raise_character_kill_event(character_kill_quest_tail_v1::Event&,
                                 std::string&);
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
 // ObjectiveList::Register/Unregister substep for the compiled combat-event
 // objective owners implemented here. Caller has already stored Quest state;
 // entering state 6 is called after ExecScript(0), leaving state 6 before its
 // state script. Unsupported compiled Objective kinds remain fail-closed.
 bool transition_combat_objective_registration(std::uintptr_t quest_identity,
                                          std::int32_t prior_state,
                                          std::int32_t stored_state,
                                          void* script_context,
                                          KillObjectiveStartScript,
                                          std::string&);
 bool close(std::string&);
 bool owns_save(const data::PlayerSavegameV1*) const noexcept;
 const Receipt& receipt() const noexcept;
 data::quest_runtime_fields_v1::Record* resolve(const data::quest_savegame_v1::QuestRef*) noexcept;
};
}
