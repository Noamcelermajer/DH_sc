#include "character_coordinator.hpp"

#include <cstdio>
#include <stdexcept>
#include <vector>

using namespace dh2::character;
namespace {
void check(bool value, const char* message) {
    if (!value) throw std::runtime_error(message);
}
struct Fixture {
    Coordinator character{0x100000001ull, 1};
    Facts facts{};
    SpawnFacts spawn{};
    std::vector<std::uint32_t> timer_order;
    unsigned facts_reads = 0;
    unsigned service_calls = 0;
    bool change_idle_on_stop = false;
    bool nested_gate_event = false;
    bool throw_animation = false;
    bool throw_expiry = false;
    bool mutate_timer_event = false;
    bool test_growth_inside_expiry = false;
    std::uint32_t captured_gate = 0;
    std::uintptr_t timer_payload = 0;

    Fixture() {
        facts.is_player = 1;
        facts.idle = 11; facts.walk = 22; facts.run = 33;
        facts.attack_static = 44; facts.attack_moving = 55;
        facts.walk_threshold = .45f; facts.run_threshold = .85f;
        facts.walk_speed = 1.3f;
        facts.heading[0] = .5f;
        character.bind({this, read_facts, {this, service}, before, after});
    }
    static Facts read_facts(void* context) {
        auto& fixture = *static_cast<Fixture*>(context);
        ++fixture.facts_reads;
        return fixture.facts;
    }
    static void service(void* context, State* state, const Request* request) {
        auto& fixture = *static_cast<Fixture*>(context);
        check(state == &fixture.character.state, "borrowed Character owner differs");
        ++fixture.service_calls;
        if (request->service == set_animation) {
            if (fixture.throw_animation) throw std::runtime_error("injected backend failure");
            state->current_animation = request->argument[0];
        } else if (request->service == stop && fixture.change_idle_on_stop) {
            fixture.facts.idle = 99;
            fixture.facts.heading[0] = 0;
            fixture.character.refresh_facts();
        } else if (request->service == raise_event) {
            const auto event = std::uint32_t(request->argument[0]);
            if (event == 0x3f)
                check(fixture.character.event(event) == 1, "nested stop event failed");
            if (event == 0x1d && fixture.nested_gate_event) {
                const auto cause = fixture.character.event_cause();
                check(cause == 0xc351, "outer event cause is missing");
                check(fixture.character.event(0x2c) == 0, "nested gate event failed");
                check(fixture.character.event_cause() == cause,
                      "nested event did not restore outer cause");
            }
        }
    }
    static void before(void* context, Coordinator& owner, std::int32_t event,
                       Timer32& timer, std::uint32_t gate) {
        auto& fixture = *static_cast<Fixture*>(context);
        check(&owner == &fixture.character && event == 0x2a,
              "expiry owner or captured event differs");
        check(owner.timers().update_depth == 1, "timer storage is not borrowed");
        fixture.captured_gate = gate;
        fixture.timer_payload = reinterpret_cast<std::uintptr_t>(&timer);
        fixture.timer_order.push_back(1);
        if (fixture.mutate_timer_event) timer.event = 0x2c;
        if (fixture.test_growth_inside_expiry) {
            // One repeating timer occupies the sole slot. Source Start refuses
            // allocation during Update, preserving the live expiry pointer.
            check(owner.start_timer(10, 0, 0x2a, 0) == -3,
                  "expiry relocated borrowed timer storage");
            check(owner.timers().slots == &timer, "expiry timer pointer moved");
        }
        if (fixture.throw_expiry) throw std::runtime_error("injected AI expiry failure");
    }
    static void after(void* context, Coordinator& owner, std::int32_t event,
                      Timer32& timer, std::uint32_t gate) {
        auto& fixture = *static_cast<Fixture*>(context);
        check(event == 0x2a && gate == fixture.captured_gate,
              "captured expiry inputs were changed");
        check(reinterpret_cast<std::uintptr_t>(&timer) == fixture.timer_payload,
              "timer payload identity differs");
        check(owner.state.attack_gate == (gate & ~1u),
              "state gate was not cleared after expiry hook forwarding");
        fixture.timer_order.push_back(2);
        if (fixture.test_growth_inside_expiry) owner.stop_timer(timer.id);
    }
};
}

int main() {
    try {
        Coordinator unbound(1);
        check(unbound.event(0xc351) == -1 && unbound.state.current == -1,
              "unbound event mutated state");
        bool rejected = false;
        try { unbound.bind({}); } catch (const std::invalid_argument&) { rejected = true; }
        check(rejected, "missing source services accepted");

        Fixture movement;
        check(movement.character.transition(3) == 1 &&
              movement.character.state.current_animation == 11, "Idle focus failed");
        movement.character.state.attack_gate = 7;
        movement.character.state.heading_active = 1;
        movement.nested_gate_event = true;
        check(movement.character.event(0xc351) == 1 &&
              movement.character.state.current == 4 &&
              movement.character.state.current_animation == 22 &&
              movement.character.state.move_type == 1 &&
              movement.character.state.cached_speed == 1.3f &&
              movement.character.state.attack_gate == 3 &&
              movement.character.event_cause() == 0, "source Move/reentry failed");
        movement.nested_gate_event = false;
        movement.change_idle_on_stop = true;
        movement.character.state.heading_active = 0;
        check(movement.character.update_state(16) == 1 &&
              movement.character.state.current == 3 &&
              movement.character.state.current_animation == 99,
              "Stop producer refresh was not consumed by nested Idle focus");

        Fixture timers;
        timers.character.state.current = 5;
        timers.character.state.attack_gate = 7;
        timers.mutate_timer_event = true;
        check(timers.character.start_timer(10, 0, 0x2a, 0x12345678) == 0,
              "source timer allocation failed");
        check(timers.character.update_timers(10, 1) == 1 &&
              timers.character.timers().slots[0].elapsed_ms == 0 &&
              timers.timer_order.empty(), "script blocking changed timer clock");
        check(timers.character.pause_timer(0, 1) == 1 &&
              timers.character.update_timers(10, 0) == 1 && timers.timer_order.empty(),
              "paused timer expired");
        check(timers.character.pause_timer(0, 0) == 1 &&
              timers.character.update_timers(10, 0) == 1 &&
              timers.timer_order == std::vector<std::uint32_t>({1, 2}) &&
              timers.character.state.attack_gate == 6 &&
              timers.character.timers().update_depth == 0,
              "expiry routing did not use captured source event");

        Fixture growth;
        growth.character.state.current = 5;
        growth.character.state.attack_gate = 7;
        growth.test_growth_inside_expiry = true;
        check(growth.character.start_timer(10, -1, 0x2a, 0) == 0 &&
              growth.character.update_timers(10, 0) == 1,
              "borrowed timer growth gate failed");
        check(growth.character.start_timer(20, 0, 0x2a, 0) == 0 &&
              growth.character.start_timer(20, 0, 0x2a, 0) == 1 &&
              growth.character.timers().count == 2 &&
              growth.character.timers().capacity >= 2,
              "free-slot reuse or safe timer growth failed");

        Fixture failure;
        failure.throw_animation = true;
        rejected = false;
        try { failure.character.transition(3, 0xc351); }
        catch (const std::runtime_error&) { rejected = true; }
        check(rejected && failure.character.event_cause() == 0,
              "service failure did not restore event scope");
        const auto reads = failure.facts_reads;
        failure.character.refresh_facts();
        check(failure.facts_reads == reads, "failed dispatch retained dangling facts");
        failure.throw_animation = false;
        failure.character.state.current = 5;
        failure.throw_expiry = true;
        check(failure.character.start_timer(10, 0, 0x2a, 0) == 0,
              "failure timer could not start");
        rejected = false;
        try { failure.character.update_timers(10, 0); }
        catch (const std::runtime_error&) { rejected = true; }
        check(rejected && failure.character.timers().update_depth == 0,
              "expiry exception leaked timer borrow");
        failure.character.reset_timers(2);
        check(failure.character.owner() == 2 && !failure.character.timers().count,
              "timer reset failed after recovered borrow");

        Fixture spawning;
        spawning.facts.is_player=0;
        spawning.spawn.spawn_animation=88;
        spawning.spawn.visual_present=1;
        spawning.spawn.raw_fade_in_argument=3000;
        spawning.spawn.can_respawn=1;
        spawning.character.bind({&spawning,Fixture::read_facts,{&spawning,Fixture::service},
            nullptr,nullptr,[](void* raw){return static_cast<Fixture*>(raw)->spawn;}});
        check(spawning.character.spawn_transition(0)==1&&spawning.character.state.flags==0,
              "source Limbus focus failed");
        check(spawning.character.update_state(999999)==0&&spawning.character.state.current==0,
              "Limbus invented timed transition");
        check(spawning.character.start_timer(10,0,0x2f,0)==0&&
              spawning.character.update_timers(10,0)==1&&spawning.character.state.current==1&&
              spawning.character.state.current_animation==88,
              "captured respawn timer did not reach source Spawn");
        check(spawning.character.spawn_event(0x28,"is_interactive_extra")==0&&
              spawning.character.spawn_event(0x28,"is_interactive")==1&&
              spawning.character.state.body_present==1&&
              (spawning.character.state.flags&0x2000u),"named Spawn event differs");
        check(spawning.character.event(0x22)==1&&spawning.character.state.current==3&&
              spawning.character.state.current_animation==11,
              "finite Spawn completion did not enter source Idle");

        std::printf("{\"source_state_move_idle\":true,\"synchronous_reentry\":true,"
                    "\"facts_refresh\":true,\"captured_expiry_event\":true,"
                    "\"expiry_hook_before_state\":true,\"script_blocking_and_pause\":true,"
                    "\"spawn_timer_and_named_event\":true,"
                    "\"safe_growth\":true,\"exception_borrow_cleanup\":true}\n");
        return 0;
    } catch (const std::exception& error) {
        std::fprintf(stderr, "character coordinator: %s\n", error.what());
        return 1;
    }
}
