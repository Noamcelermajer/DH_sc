#include "character_coordinator.hpp"

#include <algorithm>
#include <limits>
#include <new>
#include <stdexcept>
#include <utility>

namespace dh2::character {

struct Coordinator::Scope {
    Coordinator& coordinator;
    Facts* previous_facts;
    std::uint32_t previous_cause;

    Scope(Coordinator& owner, Facts& facts, std::uint32_t cause)
        : coordinator(owner), previous_facts(owner.active_facts_),
          previous_cause(owner.event_cause_) {
        owner.active_facts_ = &facts;
        owner.event_cause_ = cause;
    }
    ~Scope() {
        coordinator.active_facts_ = previous_facts;
        coordinator.event_cause_ = previous_cause;
    }
};

Coordinator::Coordinator(std::uintptr_t owner, std::uint32_t initial_timers) {
    reset_timers(owner, initial_timers);
}

void Coordinator::bind(const CoordinatorBindings& bindings) {
    if (active_facts_ || timers_.update_depth)
        throw std::logic_error("Character bindings cannot change during dispatch");
    if (!bindings.facts || !bindings.services.invoke)
        throw std::invalid_argument("Character facts and services are required");
    bindings_ = bindings;
}

bool Coordinator::bound() const {
    return bindings_.facts && bindings_.services.invoke;
}

Services Coordinator::state_services() { return {this, invoke_service}; }
TimerServices32 Coordinator::timer_services() {
    return {this, timer_expired, grow_timers, 0};
}

void Coordinator::invoke_service(void* context, State* state,
                                 const Request* request) {
    auto& coordinator = *static_cast<Coordinator*>(context);
    if (state != &coordinator.state || !request || !coordinator.bound())
        throw std::logic_error("Character service owner is invalid");
    coordinator.bindings_.services.invoke(
        coordinator.bindings_.services.context, state, request);
}

void Coordinator::refresh_facts() {
    if (active_facts_) *active_facts_ = bindings_.facts(bindings_.context);
}

int Coordinator::event(std::uint32_t event_id, std::uint64_t payload) {
    if (!bound()) return -1;
    if ((state.current == 0 || state.current == 1) &&
        bindings_.spawn_facts) return spawn_event(event_id);
    auto facts = bindings_.facts(bindings_.context);
    Scope scope(*this, facts, event_id);
    const bool selected_skill_state=state.current==3||state.current==4||
        state.current==5||state.current==6;
    if(state.current==6||(event_id==0xc355&&selected_skill_state)){
        auto* projection=bindings_.skill_projection;
        if(!projection||projection->machine!=&state)return -1;
        character_skill_state_dispatch_v1::Result result{};
        const auto status=character_skill_state_dispatch_v1::event(&state,event_id,
            event_id==0x28?reinterpret_cast<const char*>(static_cast<std::uintptr_t>(payload)):nullptr,
            &result);
        if(status!=character_skill_state_dispatch_v1::Status::complete)return -1;
        if(result.next<0)return 0;
        const auto services=state_services();
        return dh2_character_skill_state_transition(&state,&facts,projection,
            result.next,static_cast<std::int32_t>(event_id),payload,&services);
    }
    const auto services = state_services();
    return dh2_character_state_event(&state, &facts, event_id, payload, &services);
}

int Coordinator::transition(std::int32_t next, std::int32_t event_id,
                            std::uint64_t payload) {
    if (!bound()) return -1;
    auto facts = bindings_.facts(bindings_.context);
    Scope scope(*this, facts, static_cast<std::uint32_t>(event_id));
    const auto services = state_services();
    if(state.current==6||next==6){
        auto* projection=bindings_.skill_projection;
        if(!projection||projection->machine!=&state)return -1;
        return dh2_character_skill_state_transition(&state,&facts,projection,next,
            event_id,payload,&services);
    }
    return dh2_character_state_transition(&state, &facts, next, event_id,
                                          payload, &services);
}

int Coordinator::update_state(std::uint32_t dt_ms) {
    if (!bound()) return -1;
    if ((state.current == 0 || state.current == 1) &&
        bindings_.spawn_facts) {
        const auto spawn = bindings_.spawn_facts(bindings_.context);
        const int result = dh2_character_spawn_update(&state, &spawn);
        if (result == 0) state.elapsed_ms += dt_ms;
        return result;
    }
    if(state.current==6){
        if(!bindings_.skill_projection||bindings_.skill_projection->machine!=&state)
            return -1;
        character_skill_state_dispatch_v1::Result result{};
        if(character_skill_state_dispatch_v1::update(&state,&result)!=
           character_skill_state_dispatch_v1::Status::complete)return -1;
        state.elapsed_ms+=dt_ms;
        return 1;
    }
    auto facts = bindings_.facts(bindings_.context);
    Scope scope(*this, facts, event_cause_);
    const auto services = state_services();
    return dh2_character_state_update(&state, &facts, dt_ms, &services);
}

int Coordinator::spawn_transition(std::int32_t next) {
    if (!bound() || !bindings_.spawn_facts) return -1;
    auto facts = bindings_.facts(bindings_.context);
    const auto spawn = bindings_.spawn_facts(bindings_.context);
    Scope scope(*this, facts, 0);
    const auto services = state_services();
    return dh2_character_spawn_transition(&state, &facts, &spawn, next, &services);
}

int Coordinator::spawn_event(std::uint32_t event_id, const char* exact_name) {
    if (!bound() || !bindings_.spawn_facts) return -1;
    auto facts = bindings_.facts(bindings_.context);
    const auto spawn = bindings_.spawn_facts(bindings_.context);
    Scope scope(*this, facts, event_id);
    const auto services = state_services();
    return dh2_character_spawn_event(&state, &facts, &spawn, event_id,
                                    exact_name, &services);
}

int Coordinator::grow_timers(void* context, TimerStore32* store,
                             std::uint32_t minimum) {
    auto& coordinator = *static_cast<Coordinator*>(context);
    if (store != &coordinator.timers_ || store->update_depth) return 0;
    const auto doubled = static_cast<std::uint64_t>(store->capacity) * 2;
    const auto capacity = std::max<std::uint64_t>(minimum,
        std::max<std::uint64_t>(20, std::min<std::uint64_t>(doubled,
            std::numeric_limits<std::int32_t>::max())));
    try {
        coordinator.timer_storage_.resize(static_cast<std::size_t>(capacity));
    } catch (const std::bad_alloc&) {
        return 0;
    } catch (const std::length_error&) {
        return 0;
    }
    store->slots = coordinator.timer_storage_.data();
    store->capacity = static_cast<std::uint32_t>(capacity);
    return 1;
}

void Coordinator::timer_expired(void* context, std::uintptr_t owner,
                                std::int32_t event_id, Timer32* timer) {
    auto& coordinator = *static_cast<Coordinator*>(context);
    if (owner != coordinator.owner() || !timer || !coordinator.bound())
        throw std::logic_error("Character timer owner is invalid");
    const auto gate = coordinator.state.attack_gate;
    if (coordinator.bindings_.before_timer_event)
        coordinator.bindings_.before_timer_event(coordinator.bindings_.context,
            coordinator, event_id, *timer, gate);
    const auto route = coordinator.bindings_.route_timer_event
        ? coordinator.bindings_.route_timer_event(coordinator.bindings_.context,
            coordinator, event_id, *timer, gate)
        : TimerRouting::machine;
    if (route == TimerRouting::machine) {
        if (coordinator.event(static_cast<std::uint32_t>(event_id),
                              reinterpret_cast<std::uintptr_t>(timer)) < 0)
            throw std::runtime_error("Character timer state forwarding failed");
    } else if (route != TimerRouting::delivered) {
        throw std::runtime_error("Character timer source routing failed");
    }
    if (coordinator.bindings_.after_timer_event)
        coordinator.bindings_.after_timer_event(coordinator.bindings_.context,
            coordinator, event_id, *timer, gate);
}

int Coordinator::update_timers(std::uint32_t dt_ms, std::uint32_t script_blocked) {
    if (!bound()) return -1;
    const auto services = timer_services();
    const auto previous_depth = timers_.update_depth;
    try {
        return dh2_character_timers_update(&timers_, dt_ms, script_blocked, &services);
    } catch (...) {
        // The host may report a service failure with an exception. Keep already
        // completed state/timer side effects, but release the native borrow.
        timers_.update_depth = previous_depth;
        throw;
    }
}

std::int32_t Coordinator::start_timer(std::uint32_t duration_ms,
    std::int32_t repeat, std::int32_t event_id, std::uintptr_t user_ref) {
    if (!bound()) return -1;
    const auto services = timer_services();
    return dh2_character_timer_start(&timers_, duration_ms, repeat, event_id,
                                     user_ref, &services);
}

int Coordinator::pause_timer(std::uint32_t id, std::uint32_t paused) {
    return dh2_character_timer_pause(&timers_, id, paused);
}
int Coordinator::stop_timer(std::uint32_t id) {
    return dh2_character_timer_stop(&timers_, id);
}
int Coordinator::stop_timers() { return dh2_character_timers_stop_all(&timers_); }

void Coordinator::reset_timers(std::uintptr_t owner, std::uint32_t initial_timers) {
    if (active_facts_ || timers_.update_depth)
        throw std::logic_error("Character timer storage is borrowed");
    if (!owner || !initial_timers ||
        initial_timers > std::uint32_t(std::numeric_limits<std::int32_t>::max()))
        throw std::invalid_argument("Character timer owner and capacity are required");
    std::vector<Timer32> fresh(initial_timers);
    timer_storage_ = std::move(fresh);
    timers_ = {timer_storage_.data(), 0, initial_timers, owner, 0, 0};
}

} // namespace dh2::character
