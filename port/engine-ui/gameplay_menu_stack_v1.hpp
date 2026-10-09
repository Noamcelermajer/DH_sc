#pragma once

#include <algorithm>
#include <string>
#include <utility>
#include <vector>

namespace dh2::ui {

enum class GameplayMenuTransitionActionV1 { cover, hide, show };

struct GameplayMenuTransitionEventV1 {
    GameplayMenuTransitionActionV1 action{};
    std::string menu;
    bool pushed{};
};

// MultiMenuManager calls OnHide on the outgoing state when pushing, but does
// not run MenuBase.Hide or clear its visibility. A pop does hide the removed
// state, then resumes and shows its parent.
inline std::vector<GameplayMenuTransitionEventV1> gameplay_menu_transition_plan_v1(
    const std::string& previous, const std::string& next, bool pushed) {
    std::vector<GameplayMenuTransitionEventV1> events;
    if (pushed && !previous.empty()) {
        events.push_back({GameplayMenuTransitionActionV1::cover, previous, false});
    } else if (!pushed && !previous.empty()) {
        events.push_back({GameplayMenuTransitionActionV1::hide, previous, false});
    }
    if (!next.empty()) {
        events.push_back({GameplayMenuTransitionActionV1::show, next, pushed});
    }
    return events;
}

// NativePopMenu(name) resolves the name through MenuManager first. If that
// menu is anywhere in the active stack, MenuManager pops the current menu;
// the requested menu is not removed directly. Missing names are no-ops.
inline bool gameplay_menu_named_pop_requested_v1(
    const std::vector<std::string>& stack, const std::string& name) {
    return std::find(stack.begin(), stack.end(), name) != stack.end();
}

// Character-menu initialization repeats menu_CharacterMenu while adding its
// initial sheet tabs; only the authored confirmation panel should be revealed
// by unwinding a covering menu stack.
inline bool gameplay_menu_reveal_existing_requested_v1(const std::string& name) {
    return name == "menu_confirm2";
}

// NativePushState routes CharacterMenu and Ingame through GSFlashMenu only
// when GSLevel is the current StateMachine state. GSFlashMenu owns the
// gameplay overlay lifecycle; the active level's retained menu owner renders
// and advances its authored target.
inline bool gameplay_native_push_state_is_level_menu_target_v1(const std::string& name) {
    return name == "menu_CharacterMenu" || name == "menu_Ingame";
}

inline bool gameplay_native_push_state_routes_to_level_menu_v1(
    const std::string& name, bool level_state_active) {
    return level_state_active && gameplay_native_push_state_is_level_menu_target_v1(name);
}

// A pushed SWF state can request an already-retained confirmation panel after
// another menu has covered it. Resume that instance by popping the states
// above it through the normal owner callback; do not silently suppress the
// authored request and leave the requested panel hidden below the active one.
template<class Pop>
bool gameplay_menu_reveal_existing_v1(
    std::vector<std::string>& stack, const std::string& name, Pop&& pop) {
    if (!gameplay_menu_named_pop_requested_v1(stack, name)) return false;
    while (!stack.empty() && stack.back() != name) {
        if (!pop()) return false;
    }
    return !stack.empty();
}

// Menus are drawn bottom-to-top so transparent child panels compose over the
// retained character-menu tab strip.
template<class Draw>
bool gameplay_menu_draw_stack_v1(const std::vector<std::string>& stack, Draw&& draw) {
    for (const auto& menu : stack) {
        if (!draw(menu)) return false;
    }
    return true;
}

} // namespace dh2::ui
