#include "../character_target_search.hpp"

#include <array>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>

namespace {
using namespace dh2::target_search;

struct World {
    std::array<Object48, 4> objects{};
    std::array<Entry16, 4> entries{};
    Entry16 head{};
    Room16 room{};
    Room16 sentinel{};
    Registry8 registry{};
    List40 list{};
    std::array<Target24, 4> heap{};
    std::array<bool, 4> enemy{false, true, true, false};
    std::array<bool, 4> dead{false, false, false, true};
    Services16 services{this, invoke};

    World() {
        objects[0].identity = 99; // The live player Character.
        objects[0].visible = objects[0].has_target_position = 1;
        objects[0].character_word1314 = 1;
        objects[0].rotation = 0.0f;

        // A frontal target is deliberately farther away than the side target:
        // FrontalFirst must win over distance. The remaining two are a friend
        // in front and a dead enemy in front, both rejected by the source path.
        const float points[3][3]{{0.0f, -4.0f, 0.0f},
                                 {2.0f, -3.0f, 0.0f},
                                 {0.0f, -1.0f, 0.0f}};
        for (std::size_t i = 1; i < objects.size(); ++i) {
            objects[i].identity = 99 + i;
            objects[i].visible = objects[i].has_target_position = 1;
            for (int axis = 0; axis < 3; ++axis) {
                objects[i].position[axis] = points[i - 1][axis];
                objects[i].target_position[axis] = points[i - 1][axis];
            }
        }
        head.next = &entries[0];
        for (std::size_t i = 0; i < entries.size(); ++i)
            entries[i] = {i + 1 < entries.size() ? &entries[i + 1] : &head,
                          &objects[i]};
        room = {&sentinel, &head};
        sentinel = {&room, nullptr};
        registry = {&sentinel};
    }

    static int invoke(void* raw, const Request24* request, Response16* response) {
        auto& world = *static_cast<World*>(raw);
        *response = {};
        const auto index = [identity = request->other ? request->other : request->subject]() {
            return identity >= 99 && identity <= 102 ? std::size_t(identity - 99) : 4u;
        }();
        switch (static_cast<Service>(request->service)) {
        case resolve_character:
            if (index < world.objects.size()) response->word = reinterpret_cast<std::uintptr_t>(&world.objects[index]);
            break;
        case is_character: response->word = request->subject == 99; break;
        case is_player: response->word = request->subject == 99; break;
        case is_dead: response->word = index < world.dead.size() && world.dead[index]; break;
        case is_enemy: response->word = index < world.enemy.size() && world.enemy[index]; break;
        case is_zonable: response->word = 0; break;
        case is_interactive: response->word = 1; break;
        case interaction_radius: response->number = 0.0f; break;
        case melee_radius: response->number = 0.0f; break;
        default: return 1;
        }
        return 0;
    }
};

[[noreturn]] void fail(const char* message) {
    std::fprintf(stderr, "player skill target search: %s\n", message);
    std::abort();
}
}

int main() {
    World world;
    if (dh2_target_list_init(&world.list, world.heap.data(), world.heap.size(),
                             &world.objects[0], 2, &world.services))
        fail("could not initialize FrontalFirst list");
    if (dh2_target_search(&world.list, &world.registry, 8.0f,
                          3.1415927410125732f, &world.services))
        fail("could not search the current character room");
    if (world.list.count != 2) fail("Enemy filter must reject friend and dead Character");

    Target24 top{};
    if (world.list.heap[0].identity != 100)
        fail("FrontalFirst must select the frontal Bashdown target before the nearer side target");
    if (dh2_target_pop(&world.list, &top) || top.identity != 100)
        fail("GetTargetListTop/PopTargetList must return the same selected Character");
    if (dh2_target_pop(&world.list, &top) || top.identity != 101)
        fail("the next valid Enemy must remain in the target list");
    if (dh2_target_pop(&world.list, &top) != 2)
        fail("target list must be empty after both selected Characters are popped");

    std::puts("player skill target search PASS: enemy/dead filtering, frontal priority, top/pop order");
}
