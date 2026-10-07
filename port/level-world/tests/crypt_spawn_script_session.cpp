#include "../crypt_spawn_script_session.hpp"
#include "../character_factory.hpp"
#include <array>
#include <cstdio>
#include <cstring>
#include <fstream>
#include <iterator>
#include <stdexcept>
#include <vector>

namespace {
using namespace dh2::character;
using namespace dh2::character::crypt_scripts;
using namespace dh2_script_runtime;
void require(bool value, const char* message) {
    if (!value) throw std::runtime_error(message);
}
std::vector<std::uint8_t> read(const char* path) {
    std::ifstream input(path, std::ios::binary);
    require(bool(input), "original script table file is missing");
    return {std::istreambuf_iterator<char>(input), {}};
}
struct Fixture {
    SpawnSession session;
    std::array<State, 2> states{};
    Facts facts{};
    SpawnFacts spawn{};
    std::array<factory::ActorRef, 2> actors{};
    std::array<ObjectSeed, 2> seeds{};
    std::array<std::vector<std::uint8_t>, 4> tables;
    std::vector<Event> calls;
    std::vector<Request> services;
    int result_override = 2;
    bool reenter = false, throw_service = false;
    Fixture(char** paths) {
        for (std::size_t i = 0; i < tables.size(); ++i) tables[i] = read(paths[i]);
        facts.idle = 210;
        spawn.spawn_animation = 213;
        spawn.visual_present = 1;
        spawn.raw_fade_in_argument = 3000;
        const char* names[] = {"_prim_Monster_SURPRISE_01", "_prim_Monster_SURPRISE_02"};
        for (std::size_t i = 0; i < states.size(); ++i) {
            states[i].current = 0;
            std::strcpy(seeds[i].name, names[i]);
            std::strcpy(seeds[i].gametype, "Character");
            std::strcpy(seeds[i].ai_state, "Limbus");
            actors[i] = {seeds[i].name, &states[i], &facts, &spawn,
                         factory::source_character_registered_states};
        }
    }
    static void service(void* raw, State* state, const Request* request) {
        auto& owner = *static_cast<Fixture*>(raw);
        owner.services.push_back(*request);
        if (request->service == set_animation) state->current_animation = request->argument[0];
        if (request->service == init_physical_object) state->body_present = 1;
    }
    static int dispatch(void* raw, const Event& event) {
        auto& owner = *static_cast<Fixture*>(raw);
        const auto* scheduler = owner.session.runtime();
        const auto* marker = find_object(scheduler, event.detail);
        require(marker && !marker->spawn_state_requested && marker->transition_count == 0,
                "service must run before scheduler shadow state is committed");
        require(event.type == EVENT_CHARACTER_SPAWN_STATE_REQUESTED && event.command_id == 30 &&
                event.script_id == 17 && scheduler->tasks[0].pc == event.program_counter,
                "synchronous command boundary identity");
        owner.calls.push_back(event);
        if (owner.reenter) {
            std::string error;
            require(!owner.session.advance(0, error), "recursive advance must fail closed");
            require(!owner.session.activate(), "recursive activation must fail closed");
            const auto* before = owner.session.runtime();
            require(!owner.load(error), "recursive load must retain borrowed tables");
            owner.session.clear();
            require(owner.session.runtime() == before, "recursive clear must retain borrowed tables");
        }
        if (owner.throw_service) throw std::runtime_error("expected fixture service exception");
        if (owner.result_override != 2) return owner.result_override;
        const Services services{&owner, service};
        return static_cast<int>(factory::request_spawn_character(owner.actors.data(),
            std::uint32_t(owner.actors.size()), event.detail, &services));
    }
    bool load(std::string& error, const char* script = "GhostAmbush01") {
        return session.load(tables[0], tables[1], tables[2], tables[3], seeds.data(),
            std::uint32_t(seeds.size()), "_prim_TriggerZone_GhostAmbush01", script,
            1, {this, dispatch}, error);
    }
    void start() {
        std::string error;
        require(load(error), error.c_str());
        require(session.runtime()->common_table->script_count == 15 &&
                session.runtime()->level_table->script_count == 25,
                "entire original paired tables must be decoded");
        require(session.activate() && session.running(), "one-shot trigger activation");
        require(session.advance(0, error), error.c_str());
        require(calls.empty(), "initial source Wait must not spawn immediately");
    }
    void tick(std::uint32_t dt) {
        std::string error;
        require(session.advance(dt, error), error.c_str());
    }
};
}

int main(int argc, char** argv) {
    try {
        require(argc == 5, "expected four original script-table paths");
        std::string error;
        Fixture normal(argv + 1);
        normal.start();
        normal.tick(249);
        require(normal.calls.empty() && normal.states[0].current == 0, "Wait250 lower boundary");
        normal.tick(1);
        require(normal.calls.empty(), "Wait reaching duration updates then returns this source pass");
        normal.tick(0);
        require(normal.calls.size() == 1 && normal.calls[0].time_ms == 250 &&
                normal.calls[0].program_counter == 1 && normal.states[0].current == 1 &&
                normal.states[1].current == 0, "first source spawn at250 independent actors");
        require(normal.states[0].current_animation == 213 && !normal.states[0].body_present,
                "source Spawn animation starts before completion fallback body");
        require(!normal.session.activate(), "one-shot activation must not restart active script");
        normal.tick(74);
        require(normal.calls.size() == 1, "Wait75 lower boundary");
        normal.tick(1);
        require(normal.calls.size() == 1, "second Wait reaching duration does not dispatch in same pass");
        normal.tick(0);
        require(normal.calls.size() == 2 && normal.calls[1].time_ms == 325 &&
                normal.calls[1].program_counter == 3 && normal.states[1].current == 1 &&
                normal.session.dispatch_count() == 2 && !normal.session.running(),
                "second source spawn at325 completes original program");
        const Services services{&normal, Fixture::service};
        for (auto& actor : normal.states) {
            require(dh2_character_spawn_event(&actor, &normal.facts, &normal.spawn,
                    0x22, nullptr, &services) == 1 && actor.current == 3 && actor.body_present &&
                    actor.current_animation == 210, "finite animation completion creates body then Idle");
        }
        require(!normal.session.activate(), "completed one-shot remains consumed");
        const auto* retained = normal.session.runtime();
        require(!normal.load(error, "Gate1Open") && normal.session.runtime() == retained &&
                normal.session.dispatch_count() == 2, "unsupported commands reject atomically");
        normal.tables[3].pop_back();
        require(!normal.load(error) && normal.session.runtime() == retained,
                "malformed full table must retain previous session");

        Fixture absent(argv + 1);
        std::strcpy(absent.seeds[1].name, "_prim_monster_SURPRISE_02");
        absent.start(); absent.tick(250); absent.tick(0); absent.tick(75); absent.tick(0);
        require(absent.calls.size() == 1 && absent.session.dispatch_count() == 1 &&
                absent.states[1].current == 0 && !absent.session.running(),
                "exact lookup miss must skip callback without fabricating actor state");

        Fixture miss(argv + 1);
        miss.result_override = 0; miss.start(); miss.tick(250); miss.tick(0); miss.tick(75); miss.tick(0);
        require(miss.calls.size() == 2 && miss.session.dispatch_count() == 0 &&
                miss.states[0].current == 0 && miss.states[1].current == 0 &&
                !find_object(miss.session.runtime(), miss.seeds[0].name)->spawn_state_requested,
                "bound service lookup miss must not commit shadow state");

        Fixture fail(argv + 1);
        fail.result_override = -1; fail.start();
        fail.tick(250);
        require(!fail.session.advance(0, error) && !fail.session.ready() &&
                fail.calls.size() == 1 && fail.session.dispatch_count() == 0 &&
                !fail.session.advance(75, error) && fail.states[1].current == 0,
                "service failure stops later source commands");

        Fixture recursive(argv + 1);
        recursive.reenter = true; recursive.start(); recursive.tick(250); recursive.tick(0); recursive.tick(75); recursive.tick(0);
        require(recursive.session.dispatch_count() == 2 && !recursive.session.running(),
                "reentry rejection must not invalidate active storage or normal completion");

        Fixture thrown(argv + 1);
        thrown.throw_service = true; thrown.start();
        thrown.tick(250);
        bool caught = false;
        try { thrown.tick(0); } catch (const std::runtime_error&) { caught = true; }
        require(caught && !thrown.session.ready() && !thrown.session.advance(75, error),
                "exceptional service must make session terminal and release borrow guard");
        require(thrown.load(error), "terminal session can be replaced after callback exits");
        thrown.session.clear();
        require(!thrown.session.ready() && !thrown.session.runtime(), "decoded storage disposal");

        Fixture fixed_tick(argv + 1);
        fixed_tick.start();
        for (unsigned i = 0; i < 14; ++i) fixed_tick.tick(25);
        require(fixed_tick.calls.size() == 2 && fixed_tick.calls[0].time_ms == 275 &&
                fixed_tick.calls[1].time_ms == 350, "original pre-update blocking check and current-tick Wait update");

        std::puts("Crypt Spawn script session checks passed: original15+25 tables; GhostAmbush01 Wait250/75; synchronous Character factory; exact misses; failures; reentry; owned lifetime");
        return 0;
    } catch (const std::exception& error) {
        std::fprintf(stderr, "Crypt script session: %s\n", error.what());
        return 1;
    }
}
