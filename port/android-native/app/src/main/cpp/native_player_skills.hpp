#pragma once
#include "properties.hpp"
#include "player_skill_tables_adapter.hpp"
#include <memory>
#include <vector>
#include <string>
struct AAssetManager;
struct dh2_pycst_view;
namespace dh2::character {class Coordinator;}
namespace dh2::data {class PlayerSavegameV1;}
namespace dh2::native::debug_files {class Backend;}
namespace dh2::native::player_skills {
struct Bindings {
    std::uintptr_t character=0,ai=0;
    std::shared_ptr<void> ai_lifetime;
    std::shared_ptr<const player_skill_tables_adapter::Tables> tables;
    std::shared_ptr<const void> catalogue_lifetime;
    data::PropertyRules* rules=nullptr;
    data::PropertyState* properties=nullptr;
    data::PropertySheet* shared_property_temp=nullptr;
    std::shared_ptr<data::PlayerSavegameV1> savegame;
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
    void timer(std::uint32_t id);
    void restore(AAssetManager*,const void* ai_owner,const void* catalogue_owner);
    std::string cooldown_probe(std::uint32_t delay_ms);
    std::string check_probe(std::uint32_t slot);
private:
    struct Impl;
    explicit Runtime(std::unique_ptr<Impl>);
    std::unique_ptr<Impl> impl_;
};
// One GL/game owning thread. Provider globals/storage remain live through calls
// and VM close. Runtime must retire before properties/timers/Debug are reset.
}
