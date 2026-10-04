#include "monster_external_script_session.hpp"

#include "../adam-script-runtime/script_function_alias.h"
#include "../lua-numeric/numeric.h"

#include <cmath>
#include <cstdio>
#include <cstring>
#include <exception>
#include <new>

namespace dh2::monster_external_script {
namespace {
struct BusyScope {
    bool& busy;
    explicit BusyScope(bool& value) : busy(value) { busy = true; }
    ~BusyScope() { busy = false; }
};

const char* callback_name(Event event) {
    switch (event) {
        case Event::enemy_spotted: return "OnEnemySpotted";
        case Event::target_out_of_range: return "OnTargetOutOfRange";
    }
    return nullptr;
}

bool valid_source(Source source) {
    return source.bytes != nullptr && source.size != 0 && source.size <= 131072 &&
           *static_cast<const unsigned char*>(source.bytes) != 0x1b;
}

// Authored identity-only transport. The original bounded monster bodies only
// pass the object to native globals; source-value binding then projects _this
// as type7, as it does for original object tables. No methods are fabricated.
constexpr char identity_transport[] = R"lua(
local native_GetTarget = GetTarget
function GetTarget()
    local identity = native_GetTarget()
    if identity == nil then return nil end
    return {_this = identity}
end
function __dh2_monster_external_enemy(callback_name, identity)
    return _G[callback_name]({_this = identity})
end
)lua";

}  // namespace

struct Session::Impl {
    enum Operation { py_struct, property, from_fixed, py_constant, target_exists,
                     target_get, state_get, path_exists, target_set, face, move };
    struct Binding { Impl* session; Operation operation; };
    Services services;
    dh2_script_vm* vm = nullptr;
    dh2_script_aliases* aliases = nullptr;
    Binding bindings[11]{};
    std::uint32_t completed = 0;
    std::uint32_t failed = 0;
    std::uint32_t object_table_arguments = 0;
    bool faulted = false;

    explicit Impl(const Services& value) : services(value) {}
    ~Impl() {
        // VM closures borrow Binding and aliases; close them before the map.
        dh2_script_vm_destroy(vm);
        dh2_script_alias_destroy(aliases);
    }

    static int reject(char* error, std::size_t capacity, const char* reason) noexcept {
        if (error && capacity) std::snprintf(error, capacity, "%s", reason);
        return 1;
    }
    static void number(dh2_script_value& value, float numeric) noexcept {
        value = {};
        value.type = DH2_SCRIPT_NUMBER;
        value.number = numeric;
    }
    static bool identity(const dh2_script_value& value) noexcept {
        return value.type == DH2_SCRIPT_IDENTITY || value.type == 7;
    }

    static int invoke(void* opaque, const dh2_script_value* arguments,
                      std::uint32_t count, dh2_script_value* output,
                      std::uint32_t capacity, std::uint32_t* returned,
                      char* error, std::size_t error_capacity) noexcept {
        if (!opaque || !returned || (count && !arguments))
            return reject(error, error_capacity, "invalid monster service invocation");
        *returned = 0;
        auto& binding = *static_cast<Binding*>(opaque);
        const auto& services = binding.session->services;
        try {
            if (binding.operation == target_set || binding.operation == face ||
                binding.operation == move) {
                // Original object overloads ignore non-object values. This
                // includes MoveTo(nil) when the live GetTarget result is null.
                if (count == 0 || !identity(arguments[0])) return 0;
                if (arguments[0].type == 7) ++binding.session->object_table_arguments;
                const auto callback = binding.operation == target_set ? services.set_target :
                                      binding.operation == face ? services.head_to : services.move_to;
                if (!callback || callback(services.context, services.owner,
                                           arguments[0].identity) != 0)
                    return reject(error, error_capacity, "monster actor action failed or unsupported");
                return 0;
            }
            if (!output || capacity < 2)
                return reject(error, error_capacity, "monster query output missing");
            if (binding.operation == py_struct || binding.operation == py_constant) {
                if (count < 2 || arguments[0].type != DH2_SCRIPT_STRING ||
                    arguments[1].type != DH2_SCRIPT_STRING)
                    return reject(error, error_capacity, "monster named query arguments unsupported");
                const auto callback = binding.operation == py_struct ? services.get_py_struct :
                                                                       services.get_py_constant;
                std::int32_t value = 0;
                if (!callback || callback(services.context, arguments[0].text,
                                          arguments[1].text, &value) != 0)
                    return reject(error, error_capacity, "monster named query failed or unsupported");
                number(output[0], static_cast<float>(value));
                *returned = 1;
            } else if (binding.operation == property) {
                if (count == 0 || arguments[0].type != DH2_SCRIPT_NUMBER ||
                    !std::isfinite(arguments[0].number) ||
                    arguments[0].number < -2147483648.0f ||
                    arguments[0].number >= 2147483648.0f)
                    return reject(error, error_capacity, "monster property key unsupported");
                float value = 0;
                if (!services.get_prop || services.get_prop(services.context, services.owner,
                    static_cast<std::int32_t>(arguments[0].number), &value) != 0 || !std::isfinite(value))
                    return reject(error, error_capacity, "monster property query failed or unsupported");
                number(output[0], value);
                *returned = 1;
            } else if (binding.operation == from_fixed) {
                if (count == 0 || arguments[0].type != DH2_SCRIPT_NUMBER)
                    return reject(error, error_capacity, "monster FromFixed argument unsupported");
                dh2_lua_numeric_result result{};
                if (dh2_lua_numeric(DH2_FROM_FIXED, &arguments[0].number, 1, &result) != 0)
                    return reject(error, error_capacity, "monster FromFixed failed");
                number(output[0], static_cast<float>(result.integer));
                number(output[1], result.number);
                *returned = result.count;
            } else if (binding.operation == target_get) {
                std::uintptr_t target = 0;
                if (!services.get_target || services.get_target(services.context, services.owner, &target) != 0)
                    return reject(error, error_capacity, "monster GetTarget failed or unsupported");
                output[0] = {};
                if (target) {
                    output[0].type = DH2_SCRIPT_IDENTITY;
                    output[0].identity = target;
                }
                *returned = 1;
            } else if (binding.operation == state_get) {
                std::int32_t state = 0;
                if (!services.get_state || services.get_state(services.context, services.owner, &state) != 0)
                    return reject(error, error_capacity, "monster GetState failed or unsupported");
                number(output[0], static_cast<float>(state));
                *returned = 1;
            } else {
                const auto callback = binding.operation == target_exists ? services.has_target : services.has_path;
                std::uint32_t value = 0;
                if (!callback || callback(services.context, services.owner, &value) != 0 || value > 1)
                    return reject(error, error_capacity, "monster boolean query failed or unsupported");
                output[0] = {};
                output[0].type = DH2_SCRIPT_BOOLEAN;
                output[0].boolean = value;
                *returned = 1;
            }
            return 0;
        } catch (const std::exception& exception) {
            return reject(error, error_capacity, exception.what());
        } catch (...) {
            return reject(error, error_capacity, "monster native service exception");
        }
    }

    bool install() {
        constexpr const char* names[] = {"GetPyStruct", "GetProp", "FromFixed", "GetPyCst",
            "HasTarget", "GetTarget", "GetState", "HasPath", "SetTarget", "HeadTo", "MoveTo"};
        for (std::uint32_t index = 0; index < 11; ++index) {
            bindings[index] = {this, static_cast<Operation>(index)};
            if (dh2_script_vm_bind_source_values(vm, names[index], invoke, &bindings[index]) != 0)
                return false;
        }
        return dh2_script_alias_bind(vm, aliases) == 0;
    }
};

Session::Session() = default;
Session::~Session() = default;

Status Session::initialize(Source commons, Source monster, const Services& services,
                           std::string& error, std::size_t memory_limit) {
    if (busy_) { error = "monster session busy"; return Status::busy; }
    if (!services.owner || !valid_source(commons) || !valid_source(monster)) {
        error = "invalid monster session input";
        return Status::invalid_argument;
    }
    BusyScope scope(busy_);
    auto candidate = std::unique_ptr<Impl>(new (std::nothrow) Impl(services));
    if (!candidate) { error = "monster session allocation failed"; return Status::allocation_failed; }
    candidate->vm = dh2_script_vm_create(memory_limit);
    candidate->aliases = dh2_script_alias_create();
    if (!candidate->vm || !candidate->aliases) {
        error = "monster Lua state or alias allocation failed";
        return Status::allocation_failed;
    }
    if (!candidate->install() ||
        dh2_script_vm_load(candidate->vm, commons.bytes, commons.size, "data/scripts/ai/_commons.luac") != 0 ||
        dh2_script_vm_load(candidate->vm, monster.bytes, monster.size, "data/scripts/ai/monster.luac") != 0 ||
        dh2_script_vm_load(candidate->vm, identity_transport, sizeof(identity_transport) - 1,
                           "monster-neutral-identity-transport") != 0) {
        error = dh2_script_vm_error(candidate->vm);
        return Status::script_error;
    }
    if (std::strcmp(dh2_script_alias_resolve(candidate->aliases, "OnEnemySpotted"), "monster_OnEnemySpotted") ||
        std::strcmp(dh2_script_alias_resolve(candidate->aliases, "OnTargetOutOfRange"), "monster_OnTargetOutOfRange")) {
        error = "original monster callback registration absent";
        return Status::script_error;
    }
    impl_ = std::move(candidate);
    error.clear();
    return Status::complete;
}

Status Session::dispatch(Event event, std::uintptr_t enemy, std::string& error) {
    if (busy_) { error = "monster session busy"; return Status::busy; }
    const char* requested = callback_name(event);
    if (!requested) { error = "monster callback unsupported"; return Status::unsupported_callback; }
    if (event == Event::enemy_spotted && enemy == 0) {
        error = "enemy identity missing";
        return Status::invalid_argument;
    }
    if (!ready()) { error = "monster session not ready"; return Status::not_ready; }
    BusyScope scope(busy_);
    int status = 0;
    if (event == Event::enemy_spotted) {
        const char* resolved = dh2_script_alias_resolve(impl_->aliases, requested);
        dh2_script_value arguments[2]{};
        arguments[0].type = DH2_SCRIPT_STRING;
        arguments[0].text = resolved;
        arguments[0].text_bytes = std::strlen(resolved);
        arguments[1].type = DH2_SCRIPT_IDENTITY;
        arguments[1].identity = enemy;
        status = dh2_script_vm_call_discard_source(impl_->vm, "__dh2_monster_external_enemy", arguments, 2);
    } else {
        status = dh2_script_alias_call_discard_source(impl_->vm, impl_->aliases, requested, nullptr, 0);
    }
    if (status != 0) {
        ++impl_->failed;
        impl_->faulted = true;
        error = dh2_script_vm_error(impl_->vm);
        return Status::script_error;
    }
    ++impl_->completed;
    error.clear();
    return Status::complete;
}

Status Session::reset(std::string& error) {
    if (busy_) { error = "monster session busy"; return Status::busy; }
    impl_.reset();
    error.clear();
    return Status::complete;
}

bool Session::ready() const noexcept { return impl_ && !impl_->faulted; }
const char* Session::source_alias(Event event) const noexcept {
    const char* requested = callback_name(event);
    return impl_ && requested ? dh2_script_alias_resolve(impl_->aliases, requested) : nullptr;
}
Statistics Session::statistics() const noexcept {
    return impl_ ? Statistics{impl_->completed, impl_->failed, impl_->object_table_arguments,
                             dh2_script_vm_memory(impl_->vm), impl_->faulted}
                 : Statistics{};
}

}  // namespace dh2::monster_external_script
