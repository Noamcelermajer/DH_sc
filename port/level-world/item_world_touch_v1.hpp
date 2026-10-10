#pragma once

namespace dh2::item_world_touch_v1 {

enum class ContactEvent { begin, persist, end, other };

// ItemObject::OnCollisionBegins performs the one-shot touch decision. It has
// no item-level persist callback; OnCollisionEnds re-arms a later entry.
inline bool queue_interact(ContactEvent event, bool is_player, bool eligible,
                           bool& contact_active) noexcept {
    if (event == ContactEvent::end) {
        contact_active = false;
        return false;
    }
    if (event != ContactEvent::begin || !is_player || contact_active) return false;
    contact_active = true;
    return eligible;
}

} // namespace dh2::item_world_touch_v1
