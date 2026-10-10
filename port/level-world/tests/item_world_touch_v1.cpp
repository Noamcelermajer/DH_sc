#include "../item_world_touch_v1.hpp"

#include <cassert>

using dh2::item_world_touch_v1::ContactEvent;
using dh2::item_world_touch_v1::queue_interact;

int main() {
    bool active = false;
    assert(queue_interact(ContactEvent::begin, true, true, active));
    assert(active);
    assert(!queue_interact(ContactEvent::persist, true, true, active));
    assert(!queue_interact(ContactEvent::begin, true, true, active));
    assert(!queue_interact(ContactEvent::end, true, true, active));
    assert(!active);
    assert(queue_interact(ContactEvent::begin, true, true, active));

    // A failed begin decision is not retried every physics persist frame.
    active = false;
    assert(!queue_interact(ContactEvent::begin, true, false, active));
    assert(active);
    assert(!queue_interact(ContactEvent::persist, true, true, active));
    assert(!queue_interact(ContactEvent::end, false, false, active));
    assert(queue_interact(ContactEvent::begin, true, true, active));

    active = false;
    assert(!queue_interact(ContactEvent::begin, false, true, active));
    assert(!active);
    assert(!queue_interact(ContactEvent::persist, true, true, active));
    assert(!queue_interact(ContactEvent::other, true, true, active));
    return 0;
}
