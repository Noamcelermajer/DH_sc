#ifndef DH2_TRIGGER_CONTACT_HPP
#define DH2_TRIGGER_CONTACT_HPP

#include "../script-runtime/script_runtime.hpp"

#include <stdint.h>

namespace dh2_trigger_contact {

struct SourceMetadata {
    const char *level_name;
    const char *trigger_name;
    const char *script_name;
    float module_position[3];
    float local_position[3];
    float world_position[3];
    float rotation[3];
    float scale[3];
    float zone_dimensions[3];
    int32_t activation_count;
    int32_t delay_ms;
    uint8_t zone_dimensions_are_inherited;
};

/* Placement facts are from 005_infectedvillage.mlx and infected01.mgp. The
 * inherited dimensions come from Zone's native default. The local AABB is
 * computed by the recovered Zone::InitPost arithmetic; derived trigger bounds
 * remain an approximation because Zone::IsInside and final world-bound update
 * semantics are unresolved. */
extern const SourceMetadata INFECTED_VILLAGE_AMBUSH;

struct Aabb {
    float min_x;
    float min_y;
    float min_z;
    float max_x;
    float max_y;
    float max_z;
};

/* Builds a translation-only trigger-box proxy from the inherited Zone
 * dimensions, scale, and recovered center. Its local AABB uses the recovered
 * Zone::InitPost math; world transforms, final bounds update, and native
 * Zone::IsInside contact semantics remain unresolved, so the proxy is
 * approximate. */
bool make_approximate_trigger_bounds(Aabb *bounds);

struct PlayerAabb {
    Aabb bounds;
    uint8_t has_character;
};

struct Frame {
    /* Must be the caller's chosen Zone proxy; see make_approximate_trigger_bounds. */
    Aabb trigger_bounds;
    const PlayerAabb *players;
    uint32_t player_count;
    int32_t delay_timer_ms;
    int32_t associated_door_state;
    uint8_t local_player_marked_scripted;
    uint8_t enabled;
    uint8_t online;
    uint8_t has_associated_door;
};

struct State {
    uint8_t qualifying_contact;
};

enum Status {
    STATUS_NO_CONTACT = 0,
    STATUS_ACTIVATED,
    STATUS_SUSTAINED_CONTACT,
    STATUS_SCRIPT_ALREADY_RUNNING,
    STATUS_BLOCKED_SCRIPTED_PLAYER,
    STATUS_BLOCKED_DISABLED,
    STATUS_BLOCKED_ACTIVATION_COUNT,
    STATUS_BLOCKED_DELAY,
    STATUS_BLOCKED_DOOR,
    STATUS_UNSUPPORTED_ONLINE,
    STATUS_INVALID_ARGUMENT,
    STATUS_RUNTIME_ERROR
};

void init_state(State *state);

/* Uses closed AABBs supplied by the caller. The offline adapter applies only
 * the recovered TriggerZone gates supported by this API and then delegates a
 * rising contact edge to script-runtime::enter_trigger(). */
bool overlaps_closed(const Aabb *left, const Aabb *right);
Status update(dh2_script_runtime::Runtime *runtime,
              State *state,
              const Frame *frame);
const char *status_name(Status status);

}  // namespace dh2_trigger_contact

#endif
