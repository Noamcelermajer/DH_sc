#pragma once
#include "player_skill_session_v1.hpp"
#include "character_ai_update_all_skills.hpp"
#include "character_ai_skill_script_update.hpp"
#include <memory>

namespace dh2::player_skill_update_session_v1 {
struct Result {
    character_ai_update_all_skills::Status status{};
    character_ai_update_all_skills::Result source{};
    std::uint32_t callbacks=0,lua_errors=0;
    int last_lua_status=0;
};
// Composition adapter: uses the selected source list/FSM/update callers and
// the same retained preparation arguments and VM. No extra frame/timer store.
// ReturnValues owns native projected storage, not a 112B ARM Value overlay.
// The indexed VM protocol retains zero/one result in one actual Lua call;
// multiple returns reject explicitly until a full-result observer is provided.
class Runtime {
public:
    Runtime(player_skill_session_v1::Session&,
            character_player_skills_preparation_v3::Owner&,
            std::uintptr_t ai,std::uintptr_t character,const std::int32_t& state);
    ~Runtime();
    Runtime(const Runtime&)=delete;Runtime& operator=(const Runtime&)=delete;
    int update(Result&,std::string& error);
    std::size_t retained_failed_returns()const noexcept;
private:
    struct Impl;
    std::unique_ptr<Impl> impl_;
};
// Borrowed VM/preparation/state/control/output live through synchronous calls.
// One owning thread; no same Runtime reentry/destruction. Close VM before the
// borrowed preparation owner retires. Port failures retain completed Lua and
// ReturnValues effects; no invented rollback or cleanup runs after failure.
}
