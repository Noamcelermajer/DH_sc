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
