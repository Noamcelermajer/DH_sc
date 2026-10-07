#pragma once
#include "properties.hpp"
#include "player_skill_tables_adapter.hpp"
#include "player_ai_death_v1.hpp"
#include "player_enemy_kill_credit_v1.hpp"
#include <memory>
#include <vector>
#include <string>
struct AAssetManager;
struct dh2_pycst_view;
namespace dh2::character {class Coordinator;struct Timer32;}
namespace dh2::character_ai_initialization {struct State;}
namespace dh2::object_update_culling {struct Object;}
namespace dh2::data {class PlayerSavegameV1;struct AiProps;}
namespace dh2::data {class FreshInventoryOwnedV4;}
namespace dh2::data {struct AiTables;struct AnimationTables;}
namespace dh2::data::savegame_options_v1 {class Owner;}
namespace dh2::native::debug_files {class Backend;}
namespace dh2::native::player_skills {
struct Bindings {
    std::uintptr_t character=0,ai=0;
    std::shared_ptr<void> ai_lifetime;
    character_ai_initialization::State* source_ai=nullptr;
    character::set_target::OwnerFacts* target_owner=nullptr;
    player_ai_death_v1::DeadFields* dead_fields=nullptr;
    const std::uintptr_t* group_identity=nullptr;
    const data::AiTables* ai_tables=nullptr;
    const data::AnimationTables* animation_tables=nullptr;
    std::uintptr_t* self_fx=nullptr;
    std::uintptr_t* state_fx=nullptr;
    std::uintptr_t* highlight_fx=nullptr;
    void* character_queries_context=nullptr;
    int (*is_player)(void*,std::uintptr_t,std::uint32_t*,std::string&)=nullptr;
    const data::AiProps* declaration=nullptr;
    const std::uint32_t* dead=nullptr;
    const object_update_culling::Object* object=nullptr;
    std::uintptr_t controller=0;
    std::shared_ptr<const player_skill_tables_adapter::Tables> tables;
    std::shared_ptr<const void> catalogue_lifetime;
    data::PropertyRules* rules=nullptr;
    data::PropertyState* properties=nullptr;
    data::PropertySheet* shared_property_temp=nullptr;
    std::shared_ptr<data::PlayerSavegameV1> savegame;
    std::uintptr_t* application_singleton=nullptr;
    const data::savegame_options_v1::Owner* saved_options=nullptr;
    // Existing offline session projection. Full COnline/networking remains
    // pending; a reached online remote-object query must fail explicitly.
    std::uintptr_t online_identity=0;
    const std::uint8_t* online=nullptr;
    std::uint8_t* mana_exempt_14f0=nullptr;
    const std::int32_t* current_difficulty=nullptr;
    const data::ClassTables* classes=nullptr;
    const std::vector<std::string>* fields=nullptr;
    const dh2_pycst_view* design=nullptr;
    const dh2_pycst_view* ai_constants=nullptr;
    const dh2_pycst_view* faery_constants=nullptr;
    character::Coordinator* coordinator=nullptr;
    debug_files::Backend* debug=nullptr;
    AAssetManager* assets=nullptr;
    std::vector<std::uint8_t> (*read)(AAssetManager*,const std::string&)=nullptr;
};
// Sole per-Prince skill VM/preparation owner, borrowing current properties,
// Coordinator and immutable catalogue. Full Player AIS/savegame/skill-use
// lifecycle remains unfinished. Keep the two unrelated script Value ABIs in
// their respective translation units; neither is reinterpreted as the other.
class Runtime {
public:
    static std::unique_ptr<Runtime> create(Bindings,std::string&);
    ~Runtime();
    Runtime(const Runtime&)=delete;Runtime& operator=(const Runtime&)=delete;
    void update();
    // Character::SG_SetSkillInSlot mutates the canonical Save map, then calls
    // CharAI::UpdateSkills. This invokes that tail through the retained Player
    // VM/update owner and reports failure to the synchronous UI action.
    bool update_after_saved_skill_slot_write(std::string& error);
    // Source Character::IncSkill over the same retained Save, skill VM,
    // property/buff view and caller-supplied canonical V4 inventory.
    bool train_skill(std::uint32_t skill_index,bool test_only,
                     data::FreshInventoryOwnedV4&,std::uint32_t& source_return,
                     std::string& error);
    // Source CharAI::OnDied only. Character::Kill/rewards/event2 caller is a
    // separate integration boundary; this retains the same AIS and VM.
    void died(std::uintptr_t killer);
    // One reached Character::Kill episode, after its initial DropLoot attempt.
    // Reuses the live CharAI, Player AIS/Session, Coordinator, source target,
    // and PropertyView. Renderer callback only projects the direct target write.
    player_enemy_kill_credit_v1::Status credit_enemy_kill(
        std::uintptr_t victim,std::uintptr_t killer,std::uint32_t kill_force,
        const data::AggroTable& victim_outgoing,std::uint32_t controller_forced,
        std::uint32_t global_blocked,void* renderer_context,
        int (*clear_renderer_selection)(void*,std::uintptr_t),
        player_enemy_kill_credit_v1::Result*,std::string& error);
    void state_service(std::uint32_t service);
    void timer(std::uint32_t id);
    void buff_expired(const character::Timer32&);
    bool ai_timer(std::int32_t event,const character::Timer32&);
    bool initialized()const noexcept;
    void restore(AAssetManager*,const void* ai_owner,const void* catalogue_owner);
    std::string cooldown_probe(std::uint32_t delay_ms);
    std::string check_probe(std::uint32_t slot);
    std::string mana_probe(std::uint32_t raw_amount);
    std::string scalar_probe(std::int32_t value,bool write);
private:
    struct Impl;
    explicit Runtime(std::unique_ptr<Impl>);
    std::unique_ptr<Impl> impl_;
};
// One GL/game owning thread. Provider globals/storage remain live through calls
// and VM close. Runtime must retire before properties/timers/Debug are reset.
}
