#ifndef DH2_SCRIPT_RUNTIME_HPP
#define DH2_SCRIPT_RUNTIME_HPP

#include "../pydata-scripts/native/pydata_scripts.h"

#include <stdint.h>

namespace dh2_script_runtime {

enum {
    MAX_OBJECTS = 256,
    MAX_TASKS = 16,
    MAX_DEPTH = 8,
    MAX_EVENTS = 512,
    MAX_STEPS_PER_ADVANCE = 2048,
    MAX_NAME_BYTES = 96,
    MAX_TUTORIAL_FLAGS = 16
};

enum Error {
    ERROR_OK = 0,
    ERROR_INVALID_ARGUMENT,
    ERROR_CAPACITY,
    ERROR_BAD_SCRIPT,
    ERROR_DEPTH_LIMIT,
    ERROR_STEP_LIMIT,
    ERROR_TIME_OVERFLOW,
    ERROR_TASK_TICKET_OVERFLOW,
    ERROR_EVENT_CAPACITY
};

enum EventType {
    EVENT_TRIGGER_STARTED = 1,
    EVENT_TRIGGER_REJECTED,
    EVENT_TRIGGER_SCRIPT_ALREADY_RUNNING,
    EVENT_SCRIPT_STARTED,
    EVENT_SCRIPT_COMPLETED,
    EVENT_WAIT_STARTED,
    EVENT_PLAYER_LOCK_CHANGED,
    EVENT_CAMERA_TARGET_CHANGED,
    EVENT_CUTSCENE_MODE_CHANGED,
    EVENT_OBJECT_LOOKUP_MISS,
    EVENT_CHARACTER_SPAWN_STATE_REQUESTED,
    EVENT_TUTORIAL_GATED,
    EVENT_UNRESOLVED_SCRIPT,
    EVENT_UNSUPPORTED_COMMAND,
    EVENT_EXEC_DUPLICATE_SUPPRESSED
};

enum CharacterState {
    CHARACTER_STATE_UNKNOWN = 0,
    CHARACTER_STATE_LIMBUS = 1,
    CHARACTER_STATE_NATIVE_1_REQUESTED = 2
};

struct ObjectSeed {
    char name[MAX_NAME_BYTES];
    char gametype[32];
    char ai_state[32];
    uint8_t auto_spawn;
};

struct ObjectRecord {
    char name[MAX_NAME_BYTES];
    char gametype[32];
    char initial_ai_state[32];
    uint8_t is_character;
    uint8_t auto_spawn;
    uint8_t spawn_state_requested;
    uint32_t transition_count;
    CharacterState state;
};

struct Options {
    uint8_t local_player_has_character;
    uint8_t online;
    int32_t game_difficulty;
    uint8_t tutorial_pending[MAX_TUTORIAL_FLAGS];
};

struct Event {
    EventType type;
    uint64_t time_ms;
    int32_t script_id;
    uint32_t program_counter;
    uint32_t command_id;
    int32_t value;
    char detail[MAX_NAME_BYTES];
};

struct Task {
    const dh2_script *script;
    uint64_t ticket;
    int32_t script_id;
    uint32_t pc;
    uint32_t wait_duration_ms;
    uint32_t wait_elapsed_ms;
    int32_t parent_script_id;
    uint8_t depth;
    uint8_t active;
    uint8_t waiting;
};

struct Runtime {
    const dh2_script_table *common_table;
    const dh2_script_table *level_table;
    ObjectRecord objects[MAX_OBJECTS];
    uint32_t object_count;
    Task tasks[MAX_TASKS];
    uint32_t task_slots_used;
    uint64_t next_task_ticket;
    Event events[MAX_EVENTS];
    uint32_t event_count;
    Options options;
    uint64_t time_ms;
    int32_t trigger_count;
    uint32_t trigger_activations;
    int32_t trigger_script_id;
    char trigger_name[MAX_NAME_BYTES];
    uint8_t trigger_fired;
    uint8_t player_locked;
    uint8_t cutscene_mode;
    uint8_t camera_target_is_player;
    char camera_target[MAX_NAME_BYTES];
    Error error;
};

void init_options(Options *options);

Error init(Runtime *runtime,
           const dh2_script_table *common_table,
           const dh2_script_table *level_table,
           const ObjectSeed *object_seeds,
           uint32_t object_count,
           const char *trigger_name,
           const char *trigger_script_name,
           int32_t trigger_count,
           int32_t trigger_delay_ms,
           const Options *options);

/* A successful return means this trigger activation was consumed. The native
 * TriggerZone increments its activation count even when SafeStart finds the
 * script already running; the configured count still gates later activations. */
bool enter_trigger(Runtime *runtime);

/* Advances game time once, updates waits active at tick start, and drains only
 * tasks present at update start. Child tasks wait for the next manager update. */
Error advance(Runtime *runtime, uint32_t delta_ms);

const Event *find_event(const Runtime *runtime,
                        EventType type,
                        int32_t script_id,
                        uint32_t command_id,
                        const char *detail,
                        uint32_t ordinal);

const ObjectRecord *find_object(const Runtime *runtime, const char *name);
const char *error_name(Error error);

}  // namespace dh2_script_runtime

#endif
