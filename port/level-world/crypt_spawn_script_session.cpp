#include "crypt_spawn_script_session.hpp"
#include <cstring>
#include <set>

namespace dh2::character::crypt_scripts {
namespace {
bool decode(const std::vector<std::uint8_t>& names,
            const std::vector<std::uint8_t>& programs,
            dh2_script_table& table, std::string& error) {
    if (names.size() > DH2_SCRIPT_MAX_TABLE_BYTES ||
        programs.size() > DH2_SCRIPT_MAX_TABLE_BYTES) {
        error = "Crypt script table exceeds decoded input limit";
        return false;
    }
    dh2_script_error detail{};
    const auto code = dh2_script_table_decode(names.data(), std::uint32_t(names.size()),
        programs.data(), std::uint32_t(programs.size()), &table, &detail);
    if (code != DH2_SCRIPT_OK) {
        error = std::string("Crypt script decode: ") + dh2_script_error_name(code) +
                " at byte " + std::to_string(detail.offset);
        return false;
    }
    return true;
}
bool bounded(const char* value, std::size_t size) {
    return std::memchr(value, 0, size) != nullptr;
}
}

struct SpawnSession::Impl {
    dh2_script_table common{}, level{};
    dh2_script_runtime::Runtime scheduler{};
    SpawnDispatch dispatch{};
    std::uint32_t consumed_events = 0, dispatched = 0;
    bool updating = false, failed = false;
    ~Impl() {
        // The task records are discarded before their owned table storage.
        scheduler = {};
        dh2_script_table_destroy(&level);
        dh2_script_table_destroy(&common);
    }
};

SpawnSession::SpawnSession() = default;
SpawnSession::~SpawnSession() = default;

bool SpawnSession::load(const std::vector<std::uint8_t>& common_names,
                       const std::vector<std::uint8_t>& common_programs,
                       const std::vector<std::uint8_t>& level_names,
                       const std::vector<std::uint8_t>& level_programs,
                       const dh2_script_runtime::ObjectSeed* objects, std::uint32_t count,
                       const char* trigger_name, const char* script_name,
                       std::int32_t trigger_count, const SpawnDispatch& dispatch,
                       std::string& error) {
    using namespace dh2_script_runtime;
    if ((impl_ && impl_->updating) || !dispatch.request || !trigger_name || !script_name ||
        count > MAX_OBJECTS || (count && !objects)) {
        error = "Crypt script session arguments are invalid";
        return false;
    }
    std::set<std::string> names;
    for (std::uint32_t i = 0; i < count; ++i) {
        const auto& object = objects[i];
        if (!bounded(object.name, sizeof(object.name)) ||
            !bounded(object.gametype, sizeof(object.gametype)) ||
            !bounded(object.ai_state, sizeof(object.ai_state)) ||
            !object.name[0] || !names.insert(object.name).second) {
            error = "Crypt script object names/fields are invalid or ambiguous";
            return false;
        }
    }
    auto candidate = std::make_unique<Impl>();
    if (!decode(common_names, common_programs, candidate->common, error) ||
        !decode(level_names, level_programs, candidate->level, error)) return false;
    const auto id = dh2_script_resolve_id(&candidate->common, &candidate->level,
        reinterpret_cast<const std::uint8_t*>(script_name),
        std::uint32_t(std::strlen(script_name)), 0);
    if (id < std::int32_t(candidate->common.script_count)) {
        error = "Crypt level script is absent";
        return false;
    }
    const auto& script = candidate->level.scripts[id - candidate->common.script_count];
    // This adapter executes source Wait and SpawnCharacter. Other programs
    // must fail before activation; the generic diagnostic scheduler's
    // unsupported-command no-ops must never silently change this live flow.
    for (std::uint32_t i = 0; i < script.command_count; ++i) {
        const auto& command = script.commands[i];
        if ((command.command_id != 26 && command.command_id != 30) ||
            command.field_count != 1 ||
            command.fields[0].kind != (command.command_id == 26 ?
                DH2_SCRIPT_VALUE_I32 : DH2_SCRIPT_VALUE_STRING) ||
            (command.command_id == 30 && command.fields[0].value.string.size >= MAX_NAME_BYTES)) {
            error = "Crypt script requires an unbound command service";
            return false;
        }
    }
    const auto result = init(&candidate->scheduler, &candidate->common, &candidate->level,
        objects, count, trigger_name, script_name, trigger_count, 0, nullptr);
    if (result != ERROR_OK) {
        error = std::string("Crypt scheduler initialization: ") + error_name(result);
        return false;
    }
    candidate->dispatch = dispatch;
    candidate->scheduler.spawn_services = {candidate.get(), [](void* raw, const Event& event) {
        auto& owner = *static_cast<Impl*>(raw);
        int accepted;
        try { accepted = owner.dispatch.request(owner.dispatch.context, event); }
        catch (...) { owner.failed = true; throw; }
        if (accepted < 0) owner.failed = true;
        if (accepted > 0) ++owner.dispatched;
        return accepted;
    }};
    impl_ = std::move(candidate);
    error.clear();
    return true;
}

bool SpawnSession::activate() {
    return ready() && !impl_->updating && dh2_script_runtime::enter_trigger(&impl_->scheduler);
}
dh2_crypt_spawn_trigger::Status SpawnSession::contact(
        dh2_crypt_spawn_trigger::State& state, const dh2_crypt_spawn_trigger::Frame& frame) {
    if (!ready() || impl_->updating) return dh2_trigger_contact::STATUS_RUNTIME_ERROR;
    const auto result = dh2_crypt_spawn_trigger::update(&impl_->scheduler, &state, &frame);
    if (impl_->scheduler.error != dh2_script_runtime::ERROR_OK) impl_->failed = true;
    return result;
}
bool SpawnSession::advance(std::uint32_t milliseconds, std::string& error) {
    using namespace dh2_script_runtime;
    if (!ready() || impl_->updating) {
        error = "Crypt script session is unavailable or reentered";
        return false;
    }
    struct Borrow {
        bool& value;
        explicit Borrow(bool& flag) : value(flag) { value = true; }
        ~Borrow() { value = false; }
    } borrow(impl_->updating);
    const auto code = dh2_script_runtime::advance(&impl_->scheduler, milliseconds);
    if (code != ERROR_OK) {
        impl_->failed = true;
        error = std::string("Crypt script advance: ") + error_name(code);
        return false;
    }
    while (impl_->consumed_events < impl_->scheduler.event_count) {
        const auto event = impl_->scheduler.events[impl_->consumed_events++];
        if (event.type == EVENT_UNSUPPORTED_COMMAND) {
            impl_->failed = true;
            error = "Crypt script emitted an unsupported command";
            return false;
        }
    }
    error.clear();
    return true;
}
bool SpawnSession::ready() const { return impl_ && !impl_->failed; }
bool SpawnSession::running() const {
    if (!ready()) return false;
    for (std::uint32_t i = 0; i < impl_->scheduler.task_slots_used; ++i)
        if (impl_->scheduler.tasks[i].active) return true;
    return false;
}
const dh2_script_runtime::Runtime* SpawnSession::runtime() const {
    return impl_ ? &impl_->scheduler : nullptr;
}
std::uint32_t SpawnSession::dispatch_count() const { return impl_ ? impl_->dispatched : 0; }
void SpawnSession::clear() {
    if (impl_ && impl_->updating) return; // Retained borrowed table lifetime.
    impl_.reset();
}
} // namespace dh2::character::crypt_scripts
