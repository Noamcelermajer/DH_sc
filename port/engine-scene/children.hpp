#pragma once

#include <cstddef>
#include <cstdint>

// Independent port-side representation of the ordered child links used by
// glitch::scene::ISceneNode. It is not the original ISceneNode object ABI.
namespace dh2::scene {
struct ChildLink {
    ChildLink* next;
    ChildLink** previous_slot;
    const void* node;
    const void* parent;
    std::uint32_t scene_flags;
};

struct ChildList {
    ChildLink* first;
    ChildLink** tail_slot;
    std::uint32_t child_count;
    const void* owner;
};
}

extern "C" {
// owner must be a stable non-null node identity. Initialize each detached link
// with dh2_scene_child_link_init before appending it.
void dh2_scene_child_list_init(dh2::scene::ChildList* list,
                               const void* owner);
void dh2_scene_child_link_init(dh2::scene::ChildLink* link,
                               const void* node,
                               std::uint32_t scene_flags);

// Returns false for null/self children and links that already have a parent.
// The already-parented check is a port safety condition; the original
// addChild body performs no such duplicate-membership check.
bool dh2_scene_child_list_append(dh2::scene::ChildList* list,
                                 dh2::scene::ChildLink* link);
bool dh2_scene_child_list_remove(dh2::scene::ChildList* list,
                                 dh2::scene::ChildLink* link);

// Returns the required child count. If output is null or too small, writes
// nothing; otherwise copies node handles in forward child-list order. For a
// successful copy, output storage must not overlap the list or its links.
std::size_t dh2_scene_child_list_copy(const dh2::scene::ChildList* list,
                                      const void** output,
                                      std::size_t output_capacity);
}
