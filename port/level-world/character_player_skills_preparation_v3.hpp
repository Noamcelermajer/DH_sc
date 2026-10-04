#pragma once
#include "player_skill_tables_adapter.hpp"
#include "../game-data/properties.hpp"
#include <memory>
#include <vector>

namespace dh2::character_player_skills_preparation_v3 {
namespace source=character_ai_set_skills_and_spells;
namespace constructor=character_ai_skill_script_constructor;
// Native-width owned argument projection, not an sfc::Value ABI overlay.
struct Value {
    enum class Type { string, integer, number } type;
    std::string text;
    std::uint32_t word=0;
};
struct Arguments {std::uintptr_t identity=0;std::vector<Value> values;};
struct Services {
    void* context=nullptr;
    // Mandatory reached Debug load/query, AIS path capture/set, Lua load/call,
    // and InitVCB providers. `arguments` is null for the no-args overload.
    // Nonzero/throw stops the port; Load.loaded==0 is a normal source result.
    std::int32_t (*invoke)(void*,source::State*,const source::Request*,
                         const Arguments*,source::Response*)=nullptr;
    character_faery_selection::Services faery{};
    // Keeps application contexts alive; it does not own the borrowed property
    // view or its arrays. Close any VM whose finalizers query this Owner while
    // Owner is still alive, before releasing it; this token must not postpone
    // such VM close until owned vectors/instances have been destroyed.
    std::shared_ptr<void> lifetime;
};
struct Inputs {
    std::uintptr_t character=0,active_ais=0;
    data::PropertyView* properties=nullptr;
    std::uint32_t assert_level=0;
};
class Owner {
public:
    static std::unique_ptr<Owner> create(std::shared_ptr<const player_skill_tables_adapter::Tables>,
                                      const Inputs&,const Services&,std::string&);
    ~Owner();
    Owner(const Owner&)=delete;Owner& operator=(const Owner&)=delete;
    Owner(Owner&&)=delete;Owner& operator=(Owner&&)=delete;
    source::Status prepare(source::Result*);
    // Provider may update the source owner/active-AIS/assert facts. Vector and
    // faery-binding storage are owned here and must not be replaced or freed.
    source::State& state();
    const std::vector<std::uintptr_t>& slots(source::List)const;
    const constructor::State* instance(std::uintptr_t)const;
    const Arguments* instance_arguments(std::uintptr_t)const;
private:
    struct Impl;
    explicit Owner(std::unique_ptr<Impl>);
    std::unique_ptr<Impl> impl_;
};
// One owning thread. Borrowed Inputs storage and all provider contexts stay
// live through calls and Owner destruction; do not destroy Owner/reenter its
// prepare from a callback. Busy reentry is rejected before output writes.
// Output remains live through all synchronous callbacks. Destruction performs
// storage retirement only; it cannot close an application-owned VM/provider.
// Properties are read afresh at each source getter. Owner identity changes
// cannot silently reuse this actor's PropertyView; they fail explicitly.
// Owns stable nullable vectors, instances, Arguments and path leases adapted
// from Adam c3ae797. Reuses our maintained source callers/selector/constructor.
// This preparation adapter adds zero original-body credit, no player VM/FSM,
// and no Android wiring. Completed source effects survive provider failures.
} // namespace dh2::character_player_skills_preparation_v3
