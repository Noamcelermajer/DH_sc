#include "children.hpp"

extern "C" void dh2_scene_child_list_init(dh2::scene::ChildList* list,
                                           const void* owner) {
    list->first = nullptr;
    list->tail_slot = &list->first;
    list->child_count = 0;
    list->owner = owner;
}

extern "C" void dh2_scene_child_link_init(dh2::scene::ChildLink* link,
                                           const void* node,
                                           std::uint32_t scene_flags) {
    link->next = nullptr;
    link->previous_slot = nullptr;
    link->node = node;
    link->parent = nullptr;
    link->scene_flags = scene_flags;
}

extern "C" bool dh2_scene_child_list_append(dh2::scene::ChildList* list,
                                             dh2::scene::ChildLink* link) {
    if (list == nullptr || list->owner == nullptr || link == nullptr ||
        link->node == nullptr ||
        link->node == list->owner || link->parent != nullptr ||
        link->previous_slot != nullptr)
        return false;

    link->next = nullptr;
    link->previous_slot = list->tail_slot;
    *list->tail_slot = link;
    list->tail_slot = &link->next;
    ++list->child_count;

    // ISceneNode::setParent stores the parent and sets flags bit 0x40.
    link->parent = list->owner;
    link->scene_flags |= 0x40u;
    return true;
}

extern "C" bool dh2_scene_child_list_remove(dh2::scene::ChildList* list,
                                             dh2::scene::ChildLink* link) {
    if (list == nullptr || list->owner == nullptr || link == nullptr ||
        link->parent != list->owner ||
        link->previous_slot == nullptr)
        return false;

    *link->previous_slot = link->next;
    if (link->next != nullptr) {
        link->next->previous_slot = link->previous_slot;
    } else {
        list->tail_slot = link->previous_slot;
    }
    --list->child_count;
    link->next = nullptr;
    link->previous_slot = nullptr;
    link->parent = nullptr;
    return true;
}

extern "C" std::size_t dh2_scene_child_list_copy(
    const dh2::scene::ChildList* list, const void** output,
    std::size_t output_capacity) {
    if (list == nullptr)
        return 0;

    const std::size_t required = list->child_count;
    if (output == nullptr || output_capacity < required)
        return required;

    std::size_t copied = 0;
    for (const auto* link = list->first;
         link != nullptr && copied < required; link = link->next)
        output[copied++] = link->node;
    return copied;
}
