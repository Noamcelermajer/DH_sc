#pragma once

#include <cstddef>
#include <cstdint>
#include <memory>
#include <string>

namespace dh2::monster_external_script {

struct Source {
    const void* bytes;
    std::size_t size;
};

// Logical service boundary, not an overlay of Character or AISExternal.
// The table is copied. Its context, owner, targets and any native objects read
// or changed by callbacks remain externally retained until the session closes.
// Callbacks are synchronous, return 0 on success, and may change live facts.
// A failure stops the Lua callback after prior effects; no rollback is added.
// Exceptions are caught before returning to the C VM trampoline.
struct Services {
    void* context;
    std::uintptr_t owner;
    std::int32_t (*get_py_struct)(void*, const char* category, const char* member,
                                  std::int32_t* value);
    std::int32_t (*get_prop)(void*, std::uintptr_t owner, std::int32_t property,
                             float* raw_fixed_value);
    std::int32_t (*get_py_constant)(void*, const char* category, const char* member,
                                    std::int32_t* value);
    std::int32_t (*has_target)(void*, std::uintptr_t owner, std::uint32_t* value);
    std::int32_t (*get_target)(void*, std::uintptr_t owner, std::uintptr_t* target);
    std::int32_t (*get_state)(void*, std::uintptr_t owner, std::int32_t* state);
    std::int32_t (*has_path)(void*, std::uintptr_t owner, std::uint32_t* value);
    std::int32_t (*set_target)(void*, std::uintptr_t owner, std::uintptr_t target);
    std::int32_t (*head_to)(void*, std::uintptr_t owner, std::uintptr_t target);
    std::int32_t (*move_to)(void*, std::uintptr_t owner, std::uintptr_t target);
    // Optional providers for the unchanged monster_OnInit body. Missing used
    // providers raise a Lua error after prior effects. These callbacks must
    // execute the maintained source query/SetLevel kernels over live owners;
    // returning invented values does not satisfy native initialization.
    std::int32_t (*get_py_oid)(void*, const char* category, const char* member,
                              std::int32_t* value) = nullptr;
    std::int32_t (*get_position)(void*, std::uintptr_t owner, float xyz[3]) = nullptr;
    std::int32_t (*get_host_player_level)(void*, std::int32_t* value) = nullptr;
    std::int32_t (*get_host_player_difficulty)(void*, std::int32_t* value) = nullptr;
    // null numeric_argument is the source default/non-number path. count is
    // exact result arity (0 or 2), including sentinel -1/-1 and invalid modes.
    std::int32_t (*get_current_level_range)(void*, const float* numeric_argument,
                                          std::int32_t values[2], std::uint32_t* count) = nullptr;
    std::int32_t (*set_level)(void*, std::uintptr_t owner, float raw_fixed_level) = nullptr;
};

enum class Event : std::uint32_t {
    enemy_spotted = 0,
    target_out_of_range = 1,
    init = 2,
    init_post = 3,
    init_final = 4,
};

enum class Status : std::int32_t {
    complete = 0,
    invalid_argument = 1,
    busy = 2,
    not_ready = 3,
    unsupported_callback = 4,
    script_error = 5,
    allocation_failed = 6,
};

enum class Stage : std::uint32_t {
    empty = 0,
    created = 1,
    functions_bound = 2,
    common_loaded = 3,
    external_loaded = 4,
    faulted = 5,
    ais_functions_bound = 6,
};

struct Statistics {
    std::uint32_t completed_callbacks;
    std::uint32_t failed_callbacks;
    std::uint32_t projected_object_table_arguments;
    std::uint32_t source_libraries_opened;
    std::uint32_t source_functions_bound;
    std::size_t lua_memory_used;
    bool faulted;
};

// Owns one source-built float32 Lua5.1.4 VM and its source VFTable alias map.
// Load order is unchanged ai/_commons.luac, then ai/monster.luac. Only the five
// events above are dispatchable through explicit source providers. Post/final
// dispatch uses the current alias map and retained VM. The source caller owns
// skills-before-post/final ordering; adding dispatch support does not perform
// SetSkillsAndSpells or complete InitScriptProcess. Combat,
// timers/candidate search and full AISExternal lifecycle remain outside this
// bounded session. Dispatching OnInit does not by itself promote an active AIS.
//
// Source bytes are borrowed only for the initialize/stage-load call that reads
// them. Actor identities use Lua
// tables with a light-userdata _this field, never float pointer conversions.
// These neutral tables support only identity transport, not entity methods.
// One owning thread; initialize/dispatch/reset reject synchronous reentry.
// The caller must not destroy this session or its borrowed native owners from
// a service callback. The VM has an allocation cap; no instruction cap or
// untrusted-script sandbox is provided by the reused source VM.
class Session {
public:
    Session();
    ~Session();
    Session(const Session&) = delete;
    Session& operator=(const Session&) = delete;
    Session(Session&&) = delete;
    Session& operator=(Session&&) = delete;

    // Failed initialization destroys only its candidate VM/map and preserves
    // an earlier session. Native effects from load-time providers are retained.
    Status initialize(Source commons, Source monster, const Services& services,
                      std::string& error, std::size_t memory_limit = 2 * 1024 * 1024);
    // Staged source lifecycle for AISExternal. Each call advances the same VM;
    // a failed stage faults it and keeps prior script/provider effects. The
    // caller must discard a faulted staged session rather than replay a stage.
    // `initialize` remains the atomic convenience wrapper used by older callers.
    Status create(const Services& services, std::string& error,
                  std::size_t memory_limit = 2 * 1024 * 1024,
                  std::shared_ptr<void> service_lifetime = {});
    Status bind_functions(std::string& error);
    // Separate real registration stages for native pending AIS initialization.
    // The first installs the 35 AIS entries/libraries; the second installs the
    // supported live Character adapters. bind_functions retains both stages
    // as one convenience call for existing users.
    Status bind_ais_functions(std::string& error);
    Status bind_character_functions(std::string& error);
    Status load_common(Source commons, std::string& error);
    Status load_external(Source external, std::string& error);
    Status dispatch(Event event, std::uintptr_t enemy, std::string& error);
    Status reset(std::string& error);
    bool ready() const noexcept;
    Stage stage() const noexcept;
    // Exact service-table match lets an actor wrapper prove that this is the
    // pending AIS VM prepared with its stable per-actor callback context.
    bool uses_services(const Services& services) const noexcept;
    Statistics statistics() const noexcept;
    // Borrowed owned-map text, valid until a later alias mutation, successful
    // initialize, or reset.
    // Unknown event/no session returns nullptr; no recursive alias lookup.
    const char* source_alias(Event event) const noexcept;
    bool contains_source_alias(const char* name, bool& present) const noexcept;

private:
    struct Impl;
    std::unique_ptr<Impl> impl_;
    bool busy_ = false;
};

}  // namespace dh2::monster_external_script
