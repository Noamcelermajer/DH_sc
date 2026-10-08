#include "../swf_cursor_input.hpp"
#include <cassert>
#include <cstring>
#include <iostream>

using namespace dh2::ui;

namespace {
struct Fixture {
    std::uintptr_t root{0x2000};
    std::uintptr_t hit_target{};
    const char* context_name{};
};

int invoke(void* raw, SwfInputState288*, const SwfInputRequest64* request,
           SwfInputResponse56* response) {
    auto& fixture = *static_cast<Fixture*>(raw);
    switch (request->operation) {
    case SwfInputOperation::character: {
        static const SwfInputCharacter32 hud{"menu_HUD_0", 1, 1, 0, 1, 0, {}};
        static const SwfInputCharacter32 main{"menu_MainMenu", 1, 1, 0, 1, 0, {}};
        static const SwfInputCharacter32 character_menu{"menu_CharacterMenu", 1, 1, 0, 1, 0, {}};
        response->character = std::strcmp(fixture.context_name, hud.name) == 0 ? &hud :
                              std::strcmp(fixture.context_name, main.name) == 0 ? &main :
                              &character_menu;
        return 1;
    }
    case SwfInputOperation::root_movie:
        response->identity = fixture.root;
        return 1;
    case SwfInputOperation::topmost:
        fixture.hit_target = request->character;
        response->identity = 0;
        return 1;
    case SwfInputOperation::screen_to_logical:
        response->values[0] = request->values[0];
        response->values[1] = request->values[1];
        return 1;
    case SwfInputOperation::retain:
    case SwfInputOperation::drop:
    case SwfInputOperation::publish_raw_cursor:
    case SwfInputOperation::notify_mouse_state:
        return 1;
    default:
        return 0;
    }
}

std::uintptr_t resolve_hit_context(const char* context_name) {
    Fixture fixture;
    fixture.context_name = context_name;
    SwfInputState288 state{};
    state.root = fixture.root;
    state.context = 0x1000;
    state.flags = 0x84;
    for (auto& slot : state.slots) slot.enabled = 1;
    const SwfInputServices16 services{&fixture, invoke};
    std::uint32_t selection{};
    const SwfCursor16 cursor{82.f, 70.f, 0.f, 0};
    assert(dh2_ui_swf_update_cursor(&state, &cursor, 0, &selection, &services) == 0);
    return fixture.hit_target;
}
}

int main() {
    assert(resolve_hit_context("menu_HUD_0") == 0x1000);
    assert(resolve_hit_context("menu_MainMenu") == 0x2000);
    assert(resolve_hit_context("menu_CharacterMenu") == 0x2000);
    std::cout << "HUD context hit scope passed; front and character menus retain root scope\n";
}
