#pragma once

#include "../../../../../../port/game-data/properties.hpp"
#include "../../../../../../port/game-data/skill_tables.hpp"
#include "../../../../../../port/level-world/character_ai_initialization.hpp"
#include "../../../../../../port/level-world/character_ai_set_skills_and_spells.hpp"
#include "../../../../../../port/level-world/debug_switches_runtime.hpp"
extern "C" {
#include "../../../../../../port/pydata-constants/constants.h"
}

#include <cstdint>
#include <string>
#include <vector>

namespace dh2::native::ghost_skills {

// Borrowed live source/native owners. Property IDs 28 and 29 are resolved from
// this view at each original Character list-getter boundary. The AIS string is
// the same stable object owned by pending/active script initialization.
struct Bindings {
    character_ai_initialization::State* ai;
    data::PropertyView* properties;
    const data::SkillTables* skills;
    const data::FaeryTables* faeries;
    std::string* ais_script_path;
    std::uint32_t assert_level;
    const dh2_pycst_view* faery_constants;
    debug_switches::Globals* debug_globals;
    const debug_switches::Services* debug_services;
    void* init_vcb_context;
    std::int32_t (*init_vcb)(void*, std::uintptr_t active_ais);
};

struct Result {
    character_ai_set_skills_and_spells::Status source_status;
    character_ai_set_skills_and_spells::Result source;
    std::int32_t skill_list_property;
    std::int32_t faery_list_property;
    std::uint32_t arguments_created;
    std::uint32_t arguments_destroyed;
    std::uint32_t debug_loads;
    std::uint32_t debug_queries;
    std::uint32_t init_vcb_calls;
};

struct DeathCleanupResult {
    character_ai_set_skills_and_spells::List list{};
    std::uint32_t slots_examined = 0;
    std::uint32_t null_slots = 0;
    std::uint32_t completed = 0;
};

enum class Status : std::int32_t {
    complete = 0,
    invalid_argument = 1,
    invalid_source_tables = 2,
    property_failed = 3,
    source_failed = 4,
    unsupported_script_dependency = 5,
    service_failed = 6,
};

// Per-CharAI persistent native vector owner. It implements the exact cached
// Ghost branch (empty default SkillList and five zero-length Fake_* faeries)
// through the source SetSkillsAndSpells caller. Any non-null script load,
// DeclareSkill call, or skill-script allocation is an explicit failure until
// those providers are connected to the retained source VM.
class Runtime {
public:
    Runtime() = default;
    ~Runtime();
    Runtime(const Runtime&) = delete;
    Runtime& operator=(const Runtime&) = delete;
    Runtime(Runtime&&) = delete;
    Runtime& operator=(Runtime&&) = delete;

    Status prepare(const Bindings&, Result&);
    const std::vector<std::uintptr_t>& skill_scripts() const { return skill_scripts_; }
    const std::vector<std::uintptr_t>& faery_scripts() const { return faery_scripts_; }
    // Source _SkillCleanUp/_SpellCleanUp list prefix over these exact owned
    // vectors. Null entries are skipped as the source does. Non-null entries
    // require the actual CharAISkillScript cleanup owner and fail closed here.
    Status cleanup_death_list(character_ai_set_skills_and_spells::List,
                              DeathCleanupResult&) const noexcept;

private:
    struct ScratchArguments;
    static std::int32_t invoke(void*, character_ai_set_skills_and_spells::State*,
                               const character_ai_set_skills_and_spells::Request*,
                               character_ai_set_skills_and_spells::Response*);
    static std::int32_t get_faery_count(void*, character_faery_selection::Character*,
                                        const character_faery_selection::Request*,
                                        character_faery_selection::Response*);
    static std::int32_t report_faery_assertion(void*, character_faery_selection::Character*,
                                               const character_faery_selection::Request*);
    std::int32_t perform(character_ai_set_skills_and_spells::State&,
                         const character_ai_set_skills_and_spells::Request&,
                         character_ai_set_skills_and_spells::Response&);
    bool build_selector_tables(const Bindings&);
    void sync_vectors(character_ai_set_skills_and_spells::State&);

    const Bindings* active_bindings_ = nullptr;
    Result* active_result_ = nullptr;
    character_faery_selection::Tables selector_tables_{};
    character_faery_selection::Globals selector_globals_{};
    character_faery_selection::Services selector_services_{};
    character_ai_set_skills_and_spells::FaeryBinding::FullWidthScriptNames full_width_names_{};
    std::vector<character_faery_selection::FaeryListRow> selector_lists_;
    std::vector<character_faery_selection::FaeryRow> selector_faeries_;
    std::vector<std::uintptr_t> faery_script_names_;
    std::vector<std::uintptr_t> skill_scripts_;
    std::vector<std::uintptr_t> faery_scripts_;
    std::string saved_ais_path_;
    bool path_snapshot_live_ = false;
    std::vector<ScratchArguments*> arguments_;
    Status operation_failure_ = Status::service_failed;
    bool prepared_ = false;
};

} // namespace dh2::native::ghost_skills
