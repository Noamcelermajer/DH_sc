#pragma once

#include "character_state.hpp"
#include "character_timers.hpp"
#include <vector>

namespace dh2::character {

class Coordinator;
enum class TimerRouting { machine, delivered, failed };

// Runtime composition of the recovered state and timer kernels. This is a
// native owner, not an original Character/CharAI memory-layout overlay.
struct CoordinatorBindings {
    void* context = nullptr;
    Facts (*facts)(void*) = nullptr;
    Services services{};
    // Character/AI timer forwarding remains a host service. The before hook
    // runs synchronously before the state event even if the host's AI virtual
    // callback is suppressed. The captured event cannot be changed by a hook
    // mutating Timer32.event. Both hooks may reenter this same coordinator.
    void (*before_timer_event)(void*, Coordinator&, std::int32_t,
                               Timer32&, std::uint32_t gate_before) = nullptr;
    void (*after_timer_event)(void*, Coordinator&, std::int32_t,
                              Timer32&, std::uint32_t gate_before) = nullptr;
    SpawnFacts (*spawn_facts)(void*) = nullptr;
    // Source Character::RaiseEvent/CharAI dispatch may deliver an event without
    // forwarding to SM_RaiseEvent (for example 0x33/0x34 and direct buff 0x36).
    // Runs between existing before/after observers. Default preserves the
    // existing machine route. Failed/throw preserves timer/provider effects
    // and stops before machine forwarding and the after observer.
    TimerRouting (*route_timer_event)(void*, Coordinator&, std::int32_t,
                                      Timer32&, std::uint32_t gate_before) = nullptr;
};

class Coordinator {
    struct Scope;
    std::vector<Timer32> timer_storage_;
    TimerStore32 timers_{};
    CoordinatorBindings bindings_{};
    Facts* active_facts_ = nullptr;
    std::uint32_t event_cause_ = 0;

    static void invoke_service(void*, State*, const Request*);
    static int grow_timers(void*, TimerStore32*, std::uint32_t);
    static void timer_expired(void*, std::uintptr_t, std::int32_t, Timer32*);
    Services state_services();
    TimerServices32 timer_services();

public:
    State state;

    explicit Coordinator(std::uintptr_t owner, std::uint32_t initial_timers = 20);
    Coordinator(const Coordinator&) = delete;
    Coordinator& operator=(const Coordinator&) = delete;
    Coordinator(Coordinator&&) = delete;
    Coordinator& operator=(Coordinator&&) = delete;

    // Host backends retain scene, playback, physics, AI and renderer ownership.
    // Both the facts producer and synchronous state services are required.
    void bind(const CoordinatorBindings& bindings);
    bool bound() const;
    std::uintptr_t owner() const { return timers_.owner; }
    std::uint32_t event_cause() const { return event_cause_; }
    const TimerStore32& timers() const { return timers_; }

    // Used by a host service that changes a producer (e.g. Stop clears heading)
    // before the state kernel reads its borrowed Facts again. Nested scopes
    // restore the outer facts/event cause, including when a callback throws.
    void refresh_facts();
    int event(std::uint32_t event, std::uint64_t payload = 0);
    int transition(std::int32_t next, std::int32_t event = 0,
                   std::uint64_t payload = 0);
    int spawn_transition(std::int32_t next);
    int spawn_event(std::uint32_t event, const char* exact_event_name = nullptr);
    int update_state(std::uint32_t dt_ms);
    int update_timers(std::uint32_t dt_ms, std::uint32_t script_blocked);
    std::int32_t start_timer(std::uint32_t duration_ms, std::int32_t repeat,
                             std::int32_t event, std::uintptr_t user_ref);
    int pause_timer(std::uint32_t id, std::uint32_t paused);
    int stop_timer(std::uint32_t id);
    int stop_timers();

    // Fresh level/session allocation; forbidden inside a borrowed state or
    // timer update. In-process Activity recreation may instead retain timers.
    void reset_timers(std::uintptr_t owner, std::uint32_t initial_timers = 20);
};

} // namespace dh2::character
