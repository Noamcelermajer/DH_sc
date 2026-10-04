#include "../monster_external_script_session.hpp"

#include <cstdio>
#include <fstream>
#include <iterator>
#include <stdexcept>
#include <string>
#include <vector>

using namespace dh2::monster_external_script;

namespace {
constexpr std::uintptr_t owner = 0x1234567800000011ull;
constexpr std::uintptr_t enemy = 0x2345678900000023ull;
constexpr std::uintptr_t other = 0x3456789a00000035ull;

void require(bool value, const char* reason) {
    if (!value) throw std::runtime_error(reason);
}
std::string read(const char* path) {
    std::ifstream stream(path, std::ios::binary);
    require(bool(stream), "original script fixture missing");
    return {std::istreambuf_iterator<char>(stream), {}};
}
Source source(const std::string& bytes) { return {bytes.data(), bytes.size()}; }

struct Fixture {
    Session* session = nullptr;
    Source commons{}, monster{};
    std::vector<std::string> trace;
    std::uintptr_t target = 0;
    std::int32_t state = 3;
    std::uint32_t path = 0, has_target_override = 0;
    bool override_has_target = false;
    bool property_fails = false;
    bool set_fails_after_mutation = false;
    bool head_throws = false;
    bool reenter = false;
    bool change_target_during_path = false;
    bool store_other_target = false;
    Status reenter_dispatch{}, reenter_reset{}, reenter_initialize{};
    std::uintptr_t last_face = 0, last_move = 0;
    unsigned property_reads = 0, faces = 0, moves = 0;
};

Fixture& actor(void* raw, std::uintptr_t identity) {
    require(identity == owner, "borrowed owner identity changed");
    return *static_cast<Fixture*>(raw);
}
std::int32_t structure(void* raw, const char* category, const char* member,
                        std::int32_t* value) {
    auto& fixture = *static_cast<Fixture*>(raw);
    fixture.trace.emplace_back("Struct");
    require(std::string(category) == "CharacterProperties" && std::string(member) == "SkillTree",
            "original load-time field query changed");
    *value = 28;  // Exact original static field table; provider remains borrowed.
    return 0;
}
std::int32_t property(void* raw, std::uintptr_t identity, std::int32_t id, float* value) {
    auto& fixture = actor(raw, identity);
    fixture.trace.emplace_back("Prop");
    require(id == 28, "SkillTree property key changed");
    ++fixture.property_reads;
    *value = -256.0f;
    return fixture.property_fails ? 1 : 0;
}
std::int32_t constant(void* raw, const char* category, const char* member,
                       std::int32_t* value) {
    auto& fixture = *static_cast<Fixture*>(raw);
    fixture.trace.emplace_back("Idle");
    require(std::string(category) == "AIStates" && std::string(member) == "Idle",
            "original Idle query changed");
    *value = 3;
    return 0;
}
Services bind(Fixture&);
std::int32_t has_target(void* raw, std::uintptr_t identity, std::uint32_t* value) {
    auto& fixture = actor(raw, identity);
    fixture.trace.emplace_back("HasTarget");
    if (fixture.reenter) {
        std::string error;
        fixture.reenter_dispatch = fixture.session->dispatch(Event::enemy_spotted, enemy, error);
        fixture.reenter_reset = fixture.session->reset(error);
        fixture.reenter_initialize = fixture.session->initialize(fixture.commons, fixture.monster, bind(fixture), error);
    }
    *value = fixture.override_has_target ? fixture.has_target_override : fixture.target != 0;
    return 0;
}
std::int32_t get_target(void* raw, std::uintptr_t identity, std::uintptr_t* value) {
    auto& fixture = actor(raw, identity);
    fixture.trace.emplace_back("GetTarget");
    *value = fixture.target;
    return 0;
}
std::int32_t get_state(void* raw, std::uintptr_t identity, std::int32_t* value) {
    auto& fixture = actor(raw, identity);
    fixture.trace.emplace_back("State");
    *value = fixture.state;
    return 0;
}
std::int32_t has_path(void* raw, std::uintptr_t identity, std::uint32_t* value) {
    auto& fixture = actor(raw, identity);
    fixture.trace.emplace_back("Path");
    if (fixture.change_target_during_path) fixture.target = other;
    *value = fixture.path;
    return 0;
}
std::int32_t set_target(void* raw, std::uintptr_t identity, std::uintptr_t target) {
    auto& fixture = actor(raw, identity);
    fixture.trace.emplace_back("SetTarget");
    require(target == enemy, "enemy opaque identity lost through Lua table");
    fixture.target = fixture.store_other_target ? other : target;
    return fixture.set_fails_after_mutation ? 1 : 0;
}
std::int32_t head_to(void* raw, std::uintptr_t identity, std::uintptr_t target) {
    auto& fixture = actor(raw, identity);
    fixture.trace.emplace_back("HeadTo");
    if (fixture.head_throws) throw std::runtime_error("native HeadTo exception");
    fixture.last_face = target;
    ++fixture.faces;
    return 0;
}
std::int32_t move_to(void* raw, std::uintptr_t identity, std::uintptr_t target) {
    auto& fixture = actor(raw, identity);
    fixture.trace.emplace_back("MoveTo");
    fixture.last_move = target;
    ++fixture.moves;
    return 0;
}
Services bind(Fixture& fixture) {
    return {&fixture, owner, structure, property, constant, has_target, get_target,
            get_state, has_path, set_target, head_to, move_to};
}
void initialized(Session& session, Fixture& fixture, Source commons, Source monster) {
    fixture.session = &session;
    fixture.commons = commons;
    fixture.monster = monster;
    std::string error;
    require(session.initialize(commons, monster, bind(fixture), error) == Status::complete && error.empty(),
            "original monster session initialization failed");
    require(session.statistics().source_libraries_opened == 4 &&
                session.statistics().source_functions_bound == 35,
            "AIS BindFunction must open the four source libraries and register 35 ordered globals");
    require(fixture.trace == std::vector<std::string>{"Struct", "Prop"} && fixture.property_reads == 1,
            "original top-level query order or unintended OnInit changed");
    fixture.trace.clear();
}
void trace(const Fixture& fixture, std::initializer_list<const char*> expected) {
    std::vector<std::string> values(expected.begin(), expected.end());
    require(fixture.trace == values, "original Lua callback service order changed");
}
}  // namespace

int main(int argc, char** argv) {
    try {
        require(argc == 3, "pass unchanged original commons and monster paths");
        const auto commons_bytes = read(argv[1]), monster_bytes = read(argv[2]);
        const auto commons = source(commons_bytes), monster = source(monster_bytes);
        unsigned cases = 0;
        std::string error;
        Session session;
        Fixture fixture;
        initialized(session, fixture, commons, monster);
        require(session.ready() && session.statistics().lua_memory_used > 0, "owned Lua state absent");
        require(std::string(session.source_alias(Event::enemy_spotted)) == "monster_OnEnemySpotted" &&
                    std::string(session.source_alias(Event::target_out_of_range)) == "monster_OnTargetOutOfRange" &&
                    session.source_alias(static_cast<Event>(999)) == nullptr,
                "original VFTable aliases must remain owned and visible");
        ++cases;

        fixture.store_other_target = true;
        require(session.dispatch(Event::enemy_spotted, enemy, error) == Status::complete &&
                    fixture.target == other && fixture.last_face == enemy && fixture.faces == 1,
                "spotted callback must face its original parameter after live target mutation");
        trace(fixture, {"HasTarget", "SetTarget", "HeadTo"});
        require(session.statistics().projected_object_table_arguments == 2,
                "enemy must reach both native object actions as original table type7");
        ++cases;
        fixture.trace.clear();
        require(session.dispatch(Event::enemy_spotted, enemy, error) == Status::complete && fixture.faces == 1,
                "existing target prevents replacement or facing");
        trace(fixture, {"HasTarget"});
        ++cases;

        fixture.trace.clear(); fixture.state = 4;
        require(session.dispatch(Event::target_out_of_range, 0, error) == Status::complete,
                "non-Idle callback failed");
        trace(fixture, {"State", "Idle"});
        ++cases;
        fixture.trace.clear(); fixture.state = 3; fixture.path = 1;
        require(session.dispatch(Event::target_out_of_range, 0, error) == Status::complete && fixture.moves == 0,
                "existing path should gate movement");
        trace(fixture, {"State", "Idle", "Path"});
        ++cases;
        fixture.trace.clear(); fixture.path = 0; fixture.target = enemy;
        fixture.change_target_during_path = true;
        require(session.dispatch(Event::target_out_of_range, 0, error) == Status::complete &&
                    fixture.last_move == other && fixture.moves == 1,
                "GetTarget must be read after HasPath and retain its full opaque identity");
        trace(fixture, {"State", "Idle", "Path", "GetTarget", "MoveTo"});
        require(session.statistics().projected_object_table_arguments == 3,
                "GetTarget wrapper must reach MoveTo as original table type7");
        ++cases;
        fixture.trace.clear(); fixture.change_target_during_path = false; fixture.target = 0;
        require(session.dispatch(Event::target_out_of_range, 0, error) == Status::complete && fixture.moves == 1,
                "MoveTo(nil) should take source non-object no-op overload");
        trace(fixture, {"State", "Idle", "Path", "GetTarget"});
        ++cases;

        fixture.trace.clear();
        require(session.dispatch(static_cast<Event>(999), enemy, error) == Status::unsupported_callback &&
                    fixture.trace.empty() && session.ready(), "unknown callback must fail before native services");
        ++cases;
        require(session.dispatch(Event::enemy_spotted, 0, error) == Status::invalid_argument &&
                    fixture.trace.empty() && session.ready(), "missing enemy must fail before script dispatch");
        ++cases;

        fixture.reenter = true; fixture.store_other_target = false;
        require(session.dispatch(Event::enemy_spotted, enemy, error) == Status::complete &&
                    fixture.reenter_dispatch == Status::busy && fixture.reenter_reset == Status::busy &&
                    fixture.reenter_initialize == Status::busy && session.ready(),
                "all session mutation reentry must be rejected without destroying active VM");
        trace(fixture, {"HasTarget", "SetTarget", "HeadTo"});
        ++cases;
        fixture.reenter = false; fixture.trace.clear();

        const std::string malformed = "function broken(";
        const auto before = session.statistics();
        const char* retained_alias = session.source_alias(Event::enemy_spotted);
        require(session.initialize(commons, source(malformed), bind(fixture), error) == Status::script_error &&
                    session.ready() && session.statistics().completed_callbacks == before.completed_callbacks &&
                    session.source_alias(Event::enemy_spotted) == retained_alias,
                "malformed candidate must preserve earlier VM and alias map");
        ++cases;
        fixture.property_fails = true;
        require(session.initialize(commons, monster, bind(fixture), error) == Status::script_error && session.ready(),
                "load-time provider failure must preserve earlier VM");
        ++cases;
        fixture.property_fails = false;
        require(session.initialize(commons, monster, bind(fixture), error, 1) == Status::allocation_failed && session.ready(),
                "candidate allocation rejection must preserve earlier VM");
        ++cases;
        const std::string memory_stress = "local unused='" + std::string(100000, 'x') + "';";
        require(session.initialize(commons, source(memory_stress), bind(fixture), error, 65536) == Status::script_error &&
                    error.find("not enough memory") != std::string::npos && session.ready(),
                "actual Lua allocation failure must preserve the prior VM");
        ++cases;
        const unsigned char bytecode[]{0x1b, 'L', 'u', 'a'};
        require(session.initialize(commons, {bytecode, sizeof(bytecode)}, bind(fixture), error) == Status::invalid_argument &&
                    session.ready(), "session is source-only");
        ++cases;

        Session copied_session; Fixture copied_fixture;
        auto copied_services = bind(copied_fixture);
        require(copied_session.initialize(commons, monster, copied_services, error) == Status::complete,
                "copied service initialization");
        copied_services.has_target = nullptr;
        copied_fixture.trace.clear();
        require(copied_session.dispatch(Event::enemy_spotted, enemy, error) == Status::complete &&
                    copied_fixture.target == enemy, "service table must be copied rather than borrowed stack storage");
        ++cases;
        require(session.reset(error) == Status::complete && !session.ready() && copied_session.ready() &&
                    copied_session.dispatch(Event::target_out_of_range, 0, error) == Status::complete,
                "one session teardown must not invalidate another VM/map/context");
        ++cases;
        require(session.dispatch(Event::enemy_spotted, enemy, error) == Status::not_ready,
                "closed session rejects dispatch");
        ++cases;

        Session missing; Fixture missing_fixture;
        auto missing_services = bind(missing_fixture);
        missing_services.has_target = nullptr;
        require(missing.initialize(commons, monster, missing_services, error) == Status::complete &&
                    missing.dispatch(Event::enemy_spotted, enemy, error) == Status::script_error && !missing.ready() &&
                    missing.statistics().failed_callbacks == 1 &&
                    missing.dispatch(Event::enemy_spotted, enemy, error) == Status::not_ready,
                "missing used service faults session and prevents accidental replay");
        ++cases;

        Session unsupported_global; Fixture unsupported_fixture;
        const auto unsupported_services=bind(unsupported_fixture);
        const std::string unsupported_common_text="Trace('no source Trace provider')";
        const auto unsupported_common=source(unsupported_common_text);
        const auto unsupported_create=unsupported_global.create(unsupported_services,error);
        const auto unsupported_bind=unsupported_global.bind_functions(error);
        const auto unsupported_count=unsupported_global.statistics().source_functions_bound;
        const auto unsupported_load=unsupported_global.load_common(unsupported_common,error);
        require(unsupported_create==Status::complete&&unsupported_bind==Status::complete&&
                    unsupported_count==35&&unsupported_load==Status::script_error&&
                    unsupported_global.stage()==Stage::faulted&&!unsupported_global.ready()&&
                    error.find("unsupported source script function: Trace")!=std::string::npos,
                "registered but unavailable Trace must stop the pending source VM with an explicit error");
        ++cases;

        Session numeric_arity; Fixture numeric_fixture;
        const std::string numeric_arity_script =
            "AddToVFTable('OnEnemySpotted','monster_OnEnemySpotted')\n"
            "AddToVFTable('OnTargetOutOfRange','monster_OnTargetOutOfRange')\n"
            "function monster_OnEnemySpotted(enemy)\n"
            " if BitAnd()==nil and BitAnd(1)==nil and BitAnd(7,3)==3 and BitOr(4,1)==5 then SetTarget(enemy) end\n"
            "end\n"
            "function monster_OnTargetOutOfRange() end\n";
        require(numeric_arity.initialize(commons, source(numeric_arity_script), bind(numeric_fixture), error) ==
                    Status::complete &&
                    numeric_arity.dispatch(Event::enemy_spotted, enemy, error) == Status::complete &&
                    numeric_fixture.target == enemy,
                "registered numeric helpers must preserve zero-result invalid arity and valid results");
        ++cases;

        Session short_circuit; Fixture short_fixture; short_fixture.state = 4;
        auto short_services = bind(short_fixture); short_services.has_path = nullptr;
        require(short_circuit.initialize(commons, monster, short_services, error) == Status::complete,
                "unused service should not be a load requirement");
        short_fixture.trace.clear();
        require(short_circuit.dispatch(Event::target_out_of_range, 0, error) == Status::complete,
                "unused HasPath must not be called for non-Idle state");
        trace(short_fixture, {"State", "Idle"});
        ++cases;

        Session failing; Fixture failing_fixture; failing_fixture.set_fails_after_mutation = true;
        initialized(failing, failing_fixture, commons, monster);
        require(failing.dispatch(Event::enemy_spotted, enemy, error) == Status::script_error &&
                    failing_fixture.target == enemy && failing_fixture.faces == 0 && !failing.ready(),
                "action failure must retain prior native effect and stop later action");
        trace(failing_fixture, {"HasTarget", "SetTarget"});
        ++cases;
        Session throwing; Fixture throwing_fixture; throwing_fixture.head_throws = true;
        initialized(throwing, throwing_fixture, commons, monster);
        require(throwing.dispatch(Event::enemy_spotted, enemy, error) == Status::script_error &&
                    throwing_fixture.target == enemy && error.find("native HeadTo exception") != std::string::npos,
                "C++ callback exception must become protected Lua error without crossing C trampoline");
        trace(throwing_fixture, {"HasTarget", "SetTarget", "HeadTo"});
        ++cases;
        Session malformed_bool; Fixture bool_fixture;
        bool_fixture.override_has_target = true; bool_fixture.has_target_override = 2;
        initialized(malformed_bool, bool_fixture, commons, monster);
        require(malformed_bool.dispatch(Event::enemy_spotted, enemy, error) == Status::script_error && bool_fixture.faces == 0,
                "invalid adapter bool must not silently choose a gameplay branch");
        ++cases;
        require(throwing.initialize(commons, monster, bind(copied_fixture), error) == Status::complete && throwing.ready() &&
                    throwing.statistics().failed_callbacks == 0,
                "explicit source reinitialization recovers faulted session");
        ++cases;

        Session staged; Fixture staged_fixture; staged_fixture.session = &staged;
        staged_fixture.commons = commons; staged_fixture.monster = monster;
        const auto staged_services = bind(staged_fixture);
        require(staged.create(staged_services, error) == Status::complete &&
                    staged.stage() == Stage::created && !staged.ready() &&
                    staged.uses_services(staged_services),
                "staged AIS must create one owned VM with its stable actor services");
        ++cases;
        require(staged.load_common(commons, error) == Status::not_ready && staged_fixture.trace.empty(),
                "common load before BindFunction must have no effects");
        require(staged.bind_functions(error) == Status::complete &&
                    staged.stage() == Stage::functions_bound && !staged.ready(),
                "staged BindFunction transition failed");
        const auto staged_common_status = staged.load_common(commons, error);
        require(staged_common_status == Status::complete &&
                    staged.stage() == Stage::common_loaded && !staged.ready() &&
                    staged.source_alias(Event::enemy_spotted) == nullptr &&
                    staged_fixture.trace.empty(),
                "pending VM must preserve commons order and remain unpromoted");
        require(staged.load_external(monster, error) == Status::complete && staged.ready() &&
                    staged.stage() == Stage::external_loaded &&
                    std::string(staged.source_alias(Event::enemy_spotted)) == "monster_OnEnemySpotted" &&
                    staged_fixture.trace == std::vector<std::string>{"Struct", "Prop"},
                "source monster load must finish pending AIS aliases");
        require(staged.dispatch(Event::enemy_spotted, enemy, error) == Status::complete &&
                    staged_fixture.target == enemy && staged_fixture.last_face == enemy,
                "same staged pending VM must become the dispatched actor VM");
        trace(staged_fixture, {"Struct", "Prop", "HasTarget", "SetTarget", "HeadTo"});
        ++cases;

        Session staged_failure; Fixture staged_failure_fixture;
        const auto staged_failure_services = bind(staged_failure_fixture);
        const auto malformed_external = source(malformed);
        require(staged_failure.create(staged_failure_services, error) == Status::complete &&
                    staged_failure.bind_functions(error) == Status::complete &&
                    staged_failure.load_common(commons, error) == Status::complete &&
                    staged_failure.load_external(malformed_external, error) == Status::script_error &&
                    staged_failure.stage() == Stage::faulted && !staged_failure.ready() &&
                    staged_failure.load_external(monster, error) == Status::not_ready &&
                    staged_failure.dispatch(Event::enemy_spotted, enemy, error) == Status::not_ready,
                "a failed staged source load must stop without replay/fallback");
        ++cases;

        std::printf("{\"monster_external_session_cases\":%u,\"unchanged_original_scripts_executed\":true,"
                    "\"spotted_callback_order\":true,\"idle_path_short_circuit\":true,"
                    "\"fresh_target_after_path_query\":true,\"opaque_64bit_identity_tables\":true,"
                    "\"service_lifetime_and_reentry\":true,\"failure_preserves_prior_effects\":true,"
                    "\"staged_same_vm_lifecycle\":true,\"staged_errors_stop_without_fallback\":true,"
                    "\"source_libraries_and_35_bindings\":true,\"unsupported_globals_fail_closed\":true,"
                    "\"numeric_result_arity\":true,\"unknown_callbacks_rejected\":true,"
                    "\"native_wired\":false,\"mismatches\":0}\n", cases);
        return 0;
    } catch (const std::exception& error) {
        std::fprintf(stderr, "monster external session: %s\n", error.what());
        return 1;
    }
}
