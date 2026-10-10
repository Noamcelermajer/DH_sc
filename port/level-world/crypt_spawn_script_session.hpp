#pragma once

#include "../script-runtime/script_runtime.hpp"
#include "crypt_spawn_trigger.hpp"
#include <cstdint>
#include <memory>
#include <string>
#include <vector>

namespace dh2::character::crypt_scripts {

struct SpawnDispatch {
    void* context = nullptr;
    // Called once for each decoded SpawnCharacter request whose exact-name
    // Character is present. >0 accepted, 0 lookup miss, <0 service failure.
    int (*request)(void*, const dh2_script_runtime::Event&) = nullptr;
    // Source PlayCamera command routed through the active Crypt CameraLevel
    // and its selected AnimSet. A missing callback keeps scripts fail-closed.
    int (*play_camera)(void*, std::uint8_t use_crit, std::int32_t clip_id) = nullptr;
};

enum class TriggerScriptKind : std::uint8_t {
    supported,
    no_script,
    unsupported
};

// Owns immutable decoded tables and the recovered Wait/Spawn scheduler.
// Activation/contact production remains separate from command execution.
// Candidate loads are atomic; decoded storage outlives every borrowed task.
class SpawnSession {
    struct Impl;
    std::unique_ptr<Impl> impl_;
public:
    SpawnSession();
    ~SpawnSession();
    SpawnSession(const SpawnSession&) = delete;
    SpawnSession& operator=(const SpawnSession&) = delete;

    bool load(const std::vector<std::uint8_t>& common_names,
              const std::vector<std::uint8_t>& common_programs,
              const std::vector<std::uint8_t>& level_names,
              const std::vector<std::uint8_t>& level_programs,
              const dh2_script_runtime::ObjectSeed* objects, std::uint32_t count,
              const char* trigger_name, const char* script_name,
              std::int32_t trigger_count, const SpawnDispatch&, std::string& error);
    bool activate();
    dh2_crypt_spawn_trigger::Status contact(dh2_crypt_spawn_trigger::State&,
                                           const dh2_crypt_spawn_trigger::Frame&);
    dh2_crypt_spawn_trigger::Status contact(
        dh2_crypt_spawn_trigger::State&,
        const dh2_crypt_spawn_trigger::SourceFacts&,
        const dh2_crypt_spawn_trigger::Frame&);
    bool supports_script(const char* script_name, std::int32_t* script_id,
                         std::string& error) const;
    // Empty authored script strings are valid no-op TriggerZones. Nonempty
    // scripts must still resolve and use the selected runtime command subset.
    TriggerScriptKind classify_trigger_script(const char* script_name,
                                               std::int32_t* script_id,
                                               std::string& error) const;
    // Generic ScriptManager adapters over this session's one scheduler.
    // Start preserves the source (id, arg, check-running) contract and refuses
    // programs outside the currently bound command subset.
    bool script_is_running(std::int32_t script_id, bool& running,
                           std::string& error) const;
    bool start_script(std::int32_t script_id, std::int32_t argument,
                      bool check_running, bool online, std::string& error);
    bool script_is_running(const std::string& script_name, bool& running,
                           std::string& error) const;
    bool start_script(const std::string& script_name, std::int32_t argument,
                      bool check_running, bool online, std::string& error);
    bool advance(std::uint32_t milliseconds, std::string& error);
    bool ready() const;
    bool running() const;
    const dh2_script_runtime::Runtime* runtime() const;
    std::uint32_t dispatch_count() const;
    void clear();
};

} // namespace dh2::character::crypt_scripts
