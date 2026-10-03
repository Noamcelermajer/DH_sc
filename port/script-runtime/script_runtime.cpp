#include "script_runtime.hpp"

#include <limits.h>
#include <string.h>

namespace dh2_script_runtime {
namespace {

static uint8_t fold_ascii(uint8_t c) {
    return c >= (uint8_t)'A' && c <= (uint8_t)'Z'
        ? (uint8_t)(c + ('a' - 'A')) : c;
}

static bool equal_bytes(const uint8_t *left, uint32_t left_size,
                        const char *right, bool insensitive) {
    uint32_t right_size = 0;
    if (right == NULL) return false;
    while (right[right_size] != '\0') ++right_size;
    if (left_size != right_size) return false;
    for (uint32_t i = 0; i < left_size; ++i) {
        const uint8_t a = insensitive ? fold_ascii(left[i]) : left[i];
        const uint8_t b = insensitive ? fold_ascii((uint8_t)right[i])
                                      : (uint8_t)right[i];
        if (a != b) return false;
    }
    return true;
}

static bool copy_string(char *target, uint32_t target_size,
                        const uint8_t *source, uint32_t source_size) {
    if (target == NULL || target_size == 0 || source_size >= target_size ||
        (source_size != 0 && source == NULL)) return false;
    if (source_size != 0) memcpy(target, source, source_size);
    target[source_size] = '\0';
    return true;
}

static bool copy_cstring(char *target, uint32_t target_size, const char *source) {
    uint32_t size = 0;
    if (source == NULL) return false;
    while (source[size] != '\0') ++size;
    return copy_string(target, target_size, (const uint8_t *)source, size);
}

static bool emit(Runtime *runtime, EventType type, const Task *task,
                 uint32_t command_id, int32_t value, const char *detail) {
    if (runtime->event_count >= MAX_EVENTS) {
        runtime->error = ERROR_EVENT_CAPACITY;
        return false;
    }
    Event *event = &runtime->events[runtime->event_count++];
    memset(event, 0, sizeof(*event));
    event->type = type;
    event->time_ms = runtime->time_ms;
    event->script_id = task == NULL ? -1 : task->script_id;
    event->program_counter = task == NULL ? 0 : task->pc;
    event->command_id = command_id;
    event->value = value;
    if (detail != NULL && !copy_cstring(event->detail, sizeof(event->detail), detail)) {
        runtime->error = ERROR_INVALID_ARGUMENT;
        return false;
    }
    return true;
}

static const dh2_script *get_script(const Runtime *runtime, int32_t script_id) {
    if (script_id < 0 || runtime->common_table == NULL || runtime->level_table == NULL) {
        return NULL;
    }
    if ((uint32_t)script_id < runtime->common_table->script_count) {
        return &runtime->common_table->scripts[script_id];
    }
    const uint32_t local = (uint32_t)script_id - runtime->common_table->script_count;
    if (local >= runtime->level_table->script_count) return NULL;
    return &runtime->level_table->scripts[local];
}

static const char *script_name(const Runtime *runtime, int32_t script_id) {
    const dh2_script *script = get_script(runtime, script_id);
    static char name[MAX_NAME_BYTES];
    if (script == NULL || !copy_string(name, sizeof(name), script->name.data,
                                       script->name.size)) return "<invalid-script>";
    return name;
}

static bool task_is_running(const Runtime *runtime, int32_t script_id) {
    for (uint32_t i = 0; i < runtime->task_slots_used; ++i) {
        if (runtime->tasks[i].active && runtime->tasks[i].script_id == script_id) {
            return true;
        }
    }
    return false;
}

static Error start_script(Runtime *runtime, int32_t script_id,
                          int32_t parent_script_id, uint8_t parent_depth,
                          const Task *caller, uint32_t command_id) {
    const dh2_script *script = get_script(runtime, script_id);
    if (script == NULL) {
        if (!emit(runtime, EVENT_UNRESOLVED_SCRIPT, caller, command_id,
                  script_id, "script ID outside common+level tables")) {
            return runtime->error;
        }
        return ERROR_OK;
    }
    if ((uint32_t)parent_depth + 1u > MAX_DEPTH) {
        if (!emit(runtime, EVENT_UNSUPPORTED_COMMAND, caller, command_id,
                  script_id, "script activation depth limit reached")) {
            return runtime->error;
        }
        return ERROR_DEPTH_LIMIT;
    }
    if (task_is_running(runtime, script_id)) {
        if (!emit(runtime, EVENT_EXEC_DUPLICATE_SUPPRESSED, caller,
                  command_id, script_id, script_name(runtime, script_id))) {
            return runtime->error;
        }
        return ERROR_OK;
    }
    if (runtime->next_task_ticket == UINT64_MAX) {
        if (!emit(runtime, EVENT_UNSUPPORTED_COMMAND, caller, command_id,
                  script_id, "script task ticket capacity reached")) {
            return runtime->error;
        }
        return ERROR_TASK_TICKET_OVERFLOW;
    }
    uint32_t slot = MAX_TASKS;
    for (uint32_t i = 0; i < runtime->task_slots_used; ++i) {
        if (!runtime->tasks[i].active) {
            slot = i;
            break;
        }
    }
    if (slot == MAX_TASKS) {
        if (runtime->task_slots_used >= MAX_TASKS) {
            if (!emit(runtime, EVENT_UNSUPPORTED_COMMAND, caller, command_id,
                      script_id, "script task capacity reached")) {
                return runtime->error;
            }
            return ERROR_CAPACITY;
        }
        slot = runtime->task_slots_used++;
    }
    Task *task = &runtime->tasks[slot];
    memset(task, 0, sizeof(*task));
    task->script = script;
    task->ticket = ++runtime->next_task_ticket;
    task->script_id = script_id;
    task->parent_script_id = parent_script_id;
    task->depth = (uint8_t)(parent_depth + 1u);
    task->active = 1;
    return emit(runtime, EVENT_SCRIPT_STARTED, task, command_id,
                task->depth, script_name(runtime, script_id))
        ? ERROR_OK : runtime->error;
}

static ObjectRecord *lookup_object(Runtime *runtime, const char *name) {
    for (uint32_t i = 0; i < runtime->object_count; ++i) {
        if (strcmp(runtime->objects[i].name, name) == 0) {
            return &runtime->objects[i];
        }
    }
    return NULL;
}

static bool unsupported(Runtime *runtime, Task *task,
                        const dh2_script_command *command,
                        const char *detail) {
    const char *name = dh2_script_command_name(command->command_id);
    char message[MAX_NAME_BYTES];
    if (detail != NULL) {
        if (!copy_cstring(message, sizeof(message), detail)) return false;
    } else if (name != NULL) {
        if (!copy_cstring(message, sizeof(message), name)) return false;
    } else {
        if (!copy_cstring(message, sizeof(message), "unknown command")) return false;
    }
    return emit(runtime, EVENT_UNSUPPORTED_COMMAND, task,
                command->command_id, 0, message);
}

static bool string_field_is(const dh2_script_command *command, uint32_t index,
                            const char *value, bool insensitive) {
    if (index >= command->field_count ||
        command->fields[index].kind != DH2_SCRIPT_VALUE_STRING) return false;
    return equal_bytes(command->fields[index].value.string.data,
                       command->fields[index].value.string.size,
                       value, insensitive);
}

static void set_player_lock(Runtime *runtime, Task *task,
                            const dh2_script_command *command, uint8_t locked) {
    if (string_field_is(command, 0, "All", locked != 0)) {
        runtime->player_locked = locked;
        (void)emit(runtime, EVENT_PLAYER_LOCK_CHANGED, task,
                   command->command_id, locked, "All");
        return;
    }
    (void)unsupported(runtime, task, command,
                      "individual character lock state is outside this slice");
}

static Error execute_tutorial(Runtime *runtime, Task *task,
                              const dh2_script_command *command) {
    if (command->field_count != 2 ||
        command->fields[0].kind != DH2_SCRIPT_VALUE_STRING ||
        command->fields[1].kind != DH2_SCRIPT_VALUE_I32) {
        return ERROR_INVALID_ARGUMENT;
    }
    const dh2_script_string name = command->fields[0].value.string;
    const int32_t flag = command->fields[1].value.i32;
    const bool valid_flag = flag >= 0 && flag < MAX_TUTORIAL_FLAGS;
    const bool gate_open = valid_flag &&
        runtime->options.local_player_has_character != 0 &&
        runtime->options.game_difficulty == 0 &&
        runtime->options.tutorial_pending[flag] != 0 &&
        runtime->options.online == 0;
    if (!gate_open) {
        if (!emit(runtime, EVENT_TUTORIAL_GATED, task, command->command_id,
                  flag, "DoTutorial source gate is closed")) return runtime->error;
        return ERROR_OK;
    }
    char script_name_buffer[MAX_NAME_BYTES];
    if (!copy_string(script_name_buffer, sizeof(script_name_buffer),
                     name.data, name.size)) return ERROR_INVALID_ARGUMENT;
    const int32_t target_id = dh2_script_resolve_id(
        runtime->common_table, runtime->level_table,
        (const uint8_t *)script_name_buffer,
        (uint32_t)strlen(script_name_buffer), 1);
    runtime->options.tutorial_pending[flag] = 0;
    if (target_id < 0) {
        return emit(runtime, EVENT_UNRESOLVED_SCRIPT, task, command->command_id,
                    flag, script_name_buffer) ? ERROR_OK : runtime->error;
    }
    Error result = start_script(runtime, target_id, task->script_id,
                                task->depth, task, command->command_id);
    return result;
}

static Error execute_command(Runtime *runtime, Task *task,
                             const dh2_script_command *command,
                             uint32_t *step_count, bool *yield_task) {
    *yield_task = false;
    ++*step_count;
    if (*step_count > MAX_STEPS_PER_ADVANCE) return ERROR_STEP_LIMIT;
    switch (command->command_id) {
        case 0: {  // ExecScript starts a distinct ScriptManager context.
            if (command->field_count != 4 ||
                command->fields[0].kind != DH2_SCRIPT_VALUE_BOOL ||
                command->fields[1].kind != DH2_SCRIPT_VALUE_I32 ||
                command->fields[2].kind != DH2_SCRIPT_VALUE_I32_ARRAY ||
                command->fields[3].kind != DH2_SCRIPT_VALUE_BOOL) {
                return ERROR_INVALID_ARGUMENT;
            }
            if (command->fields[2].value.i32_array.count != 0) {
                return unsupported(runtime, task, command,
                    "random ExecScript ID arrays are outside this deterministic slice")
                    ? ERROR_OK : runtime->error;
            }
            int32_t target_id = command->fields[1].value.i32;
            if (command->fields[0].value.boolean == 0) {
                if (target_id > INT32_MAX - (int32_t)runtime->common_table->script_count) {
                    return ERROR_BAD_SCRIPT;
                }
                target_id += (int32_t)runtime->common_table->script_count;
            }
            return start_script(runtime, target_id, task->script_id,
                                task->depth, task, command->command_id);
        }
        case 1:  // EnterCutSceneMode
            runtime->cutscene_mode = 1;
            return emit(runtime, EVENT_CUTSCENE_MODE_CHANGED, task,
                        command->command_id, 1, "enter")
                ? ERROR_OK : runtime->error;
        case 2:  // ExitCutSceneMode
            runtime->cutscene_mode = 0;
            return emit(runtime, EVENT_CUTSCENE_MODE_CHANGED, task,
                        command->command_id, 0, "exit")
                ? ERROR_OK : runtime->error;
        case 8: {  // SetCameraTarget resolves the named object; native ignores fields 0 and 2.
            if (command->field_count != 3 ||
                command->fields[1].kind != DH2_SCRIPT_VALUE_STRING) {
                return ERROR_INVALID_ARGUMENT;
            }
            const dh2_script_string target = command->fields[1].value.string;
            char name[MAX_NAME_BYTES];
            if (!copy_string(name, sizeof(name), target.data, target.size)) {
                return unsupported(runtime, task, command,
                                   "camera target name exceeds host slice bound")
                    ? ERROR_OK : runtime->error;
            }
            if (strcmp(name, "LocalPlayer") != 0 && lookup_object(runtime, name) == NULL) {
                return emit(runtime, EVENT_OBJECT_LOOKUP_MISS, task,
                            command->command_id, 0, name)
                    ? ERROR_OK : runtime->error;
            }
            if (strcmp(name, "LocalPlayer") == 0 &&
                runtime->options.local_player_has_character == 0) {
                return emit(runtime, EVENT_OBJECT_LOOKUP_MISS, task,
                            command->command_id, 0, name)
                    ? ERROR_OK : runtime->error;
            }
            runtime->camera_target_is_player = strcmp(name, "LocalPlayer") == 0;
            if (!copy_cstring(runtime->camera_target,
                              sizeof(runtime->camera_target), name)) {
                return ERROR_INVALID_ARGUMENT;
            }
            return emit(runtime, EVENT_CAMERA_TARGET_CHANGED, task,
                        command->command_id, 0, name)
                ? ERROR_OK : runtime->error;
        }
        case 24:  // LockCharacter("All") sets the native shared player block flag.
            set_player_lock(runtime, task, command, 1);
            return runtime->error;
        case 25:  // UnlockCharacter("All") clears the native shared player block flag.
            set_player_lock(runtime, task, command, 0);
            return runtime->error;
        case 26: {  // Wait::Execute resets elapsed; Update adds dt; IsBlocking compares target.
            if (command->field_count != 1 ||
                command->fields[0].kind != DH2_SCRIPT_VALUE_I32) {
                return ERROR_INVALID_ARGUMENT;
            }
            const int32_t duration = command->fields[0].value.i32;
            if (duration <= 0) {
                if (!emit(runtime, EVENT_WAIT_STARTED, task,
                          command->command_id, duration, "immediate")) {
                    return runtime->error;
                }
                task->pc++;
                return ERROR_OK;
            }
            task->wait_duration_ms = (uint32_t)duration;
            task->wait_elapsed_ms = 0;
            task->waiting = 1;
            *yield_task = true;
            return emit(runtime, EVENT_WAIT_STARTED, task,
                        command->command_id, duration, "milliseconds")
                ? ERROR_OK : runtime->error;
        }
        case 30: {  // SpawnCharacter only transitions an existing Character record.
            if (command->field_count != 1 ||
                command->fields[0].kind != DH2_SCRIPT_VALUE_STRING) {
                return ERROR_INVALID_ARGUMENT;
            }
            const dh2_script_string view = command->fields[0].value.string;
            char name[MAX_NAME_BYTES];
            if (!copy_string(name, sizeof(name), view.data, view.size)) {
                return unsupported(runtime, task, command,
                                   "character name exceeds host slice bound")
                    ? ERROR_OK : runtime->error;
            }
            ObjectRecord *object = lookup_object(runtime, name);
            if (object == NULL || object->is_character == 0) {
                return emit(runtime, EVENT_OBJECT_LOOKUP_MISS, task,
                            command->command_id, 0, name)
                    ? ERROR_OK : runtime->error;
            }
            object->spawn_state_requested = 1;
            object->state = CHARACTER_STATE_NATIVE_1_REQUESTED;
            object->transition_count++;
            return emit(runtime, EVENT_CHARACTER_SPAWN_STATE_REQUESTED, task,
                        command->command_id, 1, name)
                ? ERROR_OK : runtime->error;
        }
        case 78:
            return execute_tutorial(runtime, task, command);
        default:
            return unsupported(runtime, task, command, NULL)
                ? ERROR_OK : runtime->error;
    }
}

static Error drain(Runtime *runtime, uint64_t runnable_ticket_limit) {
    uint32_t steps = 0;
    for (;;) {
        bool progressed = false;
        for (uint32_t i = 0; i < runtime->task_slots_used; ++i) {
            Task *task = &runtime->tasks[i];
            if (!task->active || task->waiting ||
                task->ticket > runnable_ticket_limit) continue;
            while (task->active && !task->waiting) {
                if (task->script == NULL || task->pc >= task->script->command_count) {
                    task->active = 0;
                    if (!emit(runtime, EVENT_SCRIPT_COMPLETED, task, 0, 0,
                              script_name(runtime, task->script_id))) {
                        return runtime->error;
                    }
                    progressed = true;
                    break;
                }
                const dh2_script_command *command = &task->script->commands[task->pc];
                const uint32_t old_pc = task->pc;
                bool yielded = false;
                const Error result = execute_command(runtime, task, command,
                                                     &steps, &yielded);
                if (result != ERROR_OK) {
                    runtime->error = result;
                    return result;
                }
                if (!yielded && task->active && task->pc == old_pc) ++task->pc;
                progressed = true;
                if (yielded) break;
            }
        }
        if (runtime->error != ERROR_OK) return runtime->error;
        if (!progressed) return ERROR_OK;
    }
}

}  // namespace

void init_options(Options *options) {
    if (options != NULL) memset(options, 0, sizeof(*options));
}

Error init(Runtime *runtime,
           const dh2_script_table *common_table,
           const dh2_script_table *level_table,
           const ObjectSeed *object_seeds,
           uint32_t object_count,
           const char *trigger_name,
           const char *trigger_script_name,
           int32_t trigger_count,
           int32_t trigger_delay_ms,
           const Options *options) {
    if (runtime == NULL || common_table == NULL || level_table == NULL ||
        (object_count != 0 && object_seeds == NULL) || object_count > MAX_OBJECTS ||
        trigger_name == NULL || trigger_script_name == NULL ||
        trigger_delay_ms < 0 ||
        trigger_delay_ms > 0 ||
        common_table->script_count > INT32_MAX ||
        level_table->script_count >
            (uint32_t)INT32_MAX - common_table->script_count) {
        return ERROR_INVALID_ARGUMENT;
    }
    memset(runtime, 0, sizeof(*runtime));
    runtime->common_table = common_table;
    runtime->level_table = level_table;
    runtime->trigger_count = trigger_count;
    runtime->trigger_script_id = dh2_script_resolve_id(
        common_table, level_table,
        (const uint8_t *)trigger_script_name,
        (uint32_t)strlen(trigger_script_name), 0);
    if (runtime->trigger_script_id < 0 ||
        !copy_cstring(runtime->trigger_name, sizeof(runtime->trigger_name), trigger_name)) {
        return ERROR_BAD_SCRIPT;
    }
    if (options != NULL) runtime->options = *options;
    for (uint32_t i = 0; i < object_count; ++i) {
        ObjectRecord *object = &runtime->objects[i];
        if (!copy_cstring(object->name, sizeof(object->name), object_seeds[i].name) ||
            !copy_cstring(object->gametype, sizeof(object->gametype),
                          object_seeds[i].gametype) ||
            !copy_cstring(object->initial_ai_state, sizeof(object->initial_ai_state),
                          object_seeds[i].ai_state)) {
            return ERROR_INVALID_ARGUMENT;
        }
        object->is_character = strcmp(object->gametype, "Character") == 0;
        object->auto_spawn = object_seeds[i].auto_spawn;
        object->state = object->is_character &&
                        strcmp(object->initial_ai_state, "Limbus") == 0
            ? CHARACTER_STATE_LIMBUS : CHARACTER_STATE_UNKNOWN;
        if (object->name[0] == '\0') return ERROR_INVALID_ARGUMENT;
    }
    runtime->object_count = object_count;
    return ERROR_OK;
}

bool enter_trigger(Runtime *runtime) {
    if (runtime == NULL || runtime->error != ERROR_OK) return false;
    if (runtime->trigger_count >= 0 &&
        runtime->trigger_activations >= (uint32_t)runtime->trigger_count) {
        if (!emit(runtime, EVENT_TRIGGER_REJECTED, NULL, 0,
                  (int32_t)runtime->trigger_activations,
                  runtime->trigger_name)) return false;
        return false;
    }
    if (task_is_running(runtime, runtime->trigger_script_id)) {
        if (!emit(runtime, EVENT_TRIGGER_SCRIPT_ALREADY_RUNNING, NULL, 0,
                  runtime->trigger_script_id, "script is already running")) return false;
        ++runtime->trigger_activations;
        runtime->trigger_fired = 1;
        return true;
    }
    const Error result = start_script(runtime, runtime->trigger_script_id,
                                      -1, 0, NULL, 0);
    if (result != ERROR_OK) {
        runtime->error = result;
        return false;
    }
    ++runtime->trigger_activations;
    runtime->trigger_fired = 1;
    return emit(runtime, EVENT_TRIGGER_STARTED, NULL, 0,
                runtime->trigger_script_id, runtime->trigger_name);
}

Error advance(Runtime *runtime, uint32_t delta_ms) {
    if (runtime == NULL || runtime->error != ERROR_OK) return ERROR_INVALID_ARGUMENT;
    if (UINT64_MAX - runtime->time_ms < delta_ms) {
        runtime->error = ERROR_TIME_OVERFLOW;
        return runtime->error;
    }
    const uint64_t runnable_ticket_limit = runtime->next_task_ticket;
    runtime->time_ms += delta_ms;
    for (uint32_t i = 0; i < runtime->task_slots_used; ++i) {
        Task *task = &runtime->tasks[i];
        if (!task->active || !task->waiting) continue;
        const uint64_t elapsed = (uint64_t)task->wait_elapsed_ms + delta_ms;
        task->wait_elapsed_ms = elapsed > UINT32_MAX ? UINT32_MAX : (uint32_t)elapsed;
        if (task->wait_elapsed_ms >= task->wait_duration_ms) {
            task->waiting = 0;
            task->wait_elapsed_ms = task->wait_duration_ms;
            ++task->pc;
        }
    }
    return drain(runtime, runnable_ticket_limit);
}

const Event *find_event(const Runtime *runtime, EventType type,
                        int32_t script_id, uint32_t command_id,
                        const char *detail, uint32_t ordinal) {
    if (runtime == NULL) return NULL;
    for (uint32_t i = 0; i < runtime->event_count; ++i) {
        const Event *event = &runtime->events[i];
        if (event->type != type || event->script_id != script_id ||
            event->command_id != command_id ||
            (detail != NULL && strcmp(event->detail, detail) != 0)) continue;
        if (ordinal == 0) return event;
        --ordinal;
    }
    return NULL;
}

const ObjectRecord *find_object(const Runtime *runtime, const char *name) {
    if (runtime == NULL || name == NULL) return NULL;
    for (uint32_t i = 0; i < runtime->object_count; ++i) {
        if (strcmp(runtime->objects[i].name, name) == 0) {
            return &runtime->objects[i];
        }
    }
    return NULL;
}

const char *error_name(Error error) {
    switch (error) {
        case ERROR_OK: return "ok";
        case ERROR_INVALID_ARGUMENT: return "invalid argument";
        case ERROR_CAPACITY: return "fixed scheduler capacity reached";
        case ERROR_BAD_SCRIPT: return "trigger or script ID not found";
        case ERROR_DEPTH_LIMIT: return "script activation depth limit reached";
        case ERROR_STEP_LIMIT: return "per-advance command limit reached";
        case ERROR_TIME_OVERFLOW: return "runtime clock overflow";
        case ERROR_TASK_TICKET_OVERFLOW: return "script task ticket overflow";
        case ERROR_EVENT_CAPACITY: return "event capacity reached";
        default: return "unknown scheduler error";
    }
}

}  // namespace dh2_script_runtime
