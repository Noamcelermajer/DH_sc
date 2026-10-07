#include "object_manager_init_post_v1.hpp"

namespace dh2::object_manager_init_post_v1 {
namespace {

constexpr std::size_t max_modules = 512;

Status fail(State& state) noexcept {
    state.phase = Phase::failed;
    return Status::provider_failed;
}

bool load_module(const Services& services, Address identity) noexcept {
    if (!services.load_module) return false;
    try {
        return services.load_module(services.context, identity);
    } catch (...) {
        return false;
    }
}

bool invoke_object_action(bool (*callback)(void*, GameObject&),
                          const Services& services, GameObject& object) noexcept {
    if (!callback) return false;
    try {
        return callback(services.context, object);
    } catch (...) {
        return false;
    }
}

bool test_enable_condition(const Services& services, GameObject& object,
                           bool include_enabled) noexcept {
    if (!services.test_enable_condition) return false;
    try {
        return services.test_enable_condition(services.context, object,
                                               include_enabled);
    } catch (...) {
        return false;
    }
}

bool clear_post_init_lists(const Services& services) noexcept {
    if (!services.clear_post_init_lists) return false;
    try {
        return services.clear_post_init_lists(services.context);
    } catch (...) {
        return false;
    }
}

bool is_room_zone(const Services& services, const GameObject& object,
                  bool& result) noexcept {
    if (!services.is_room_zone) return false;
    result = false;
    try {
        return services.is_room_zone(services.context, object, &result);
    } catch (...) {
        return false;
    }
}

bool has_additional_init_list(const Services& services,
                              const GameObject& object, bool& result) noexcept {
    if (!services.has_additional_init_list) return false;
    result = false;
    try {
        return services.has_additional_init_list(services.context, object, &result);
    } catch (...) {
        return false;
    }
}

bool active_list_condition_gate(const Services& services,
                                const GameObject& object,
                                bool& result) noexcept {
    if (!services.active_list_condition_gate) return false;
    result = false;
    try {
        return services.active_list_condition_gate(services.context, object,
                                                    &result);
    } catch (...) {
        return false;
    }
}

bool read_active_list_flags(const Services& services, const GameObject& object,
                            bool& flag_d0, bool& flag_cc) noexcept {
    if (!services.read_active_list_flags) return false;
    flag_d0 = false;
    flag_cc = false;
    try {
        return services.read_active_list_flags(services.context, object,
                                                &flag_d0, &flag_cc);
    } catch (...) {
        return false;
    }
}

bool providers_for_object_init(const Services& services) noexcept {
    return services.object_init_post && services.test_enable_condition;
}

bool providers_for_post_init_lists(const Services& services) noexcept {
    return services.is_room_zone && services.append_room_zone &&
        services.room_zone_init_object_list && services.has_additional_init_list &&
        services.append_additional_init_object &&
        services.active_list_condition_gate && services.read_active_list_flags &&
        services.append_active_object;
}

} // namespace

Status begin(State* state, ObjectOwner* objects,
             const ModuleRef* modules, std::size_t module_count) noexcept {
    if (!state || !objects || module_count > max_modules ||
        (module_count != 0 && !modules))
        return Status::invalid_argument;
    if (state->phase != Phase::unstarted && state->phase != Phase::done &&
        state->phase != Phase::failed)
        return Status::invalid_state;
    for (std::size_t index = 0; index < module_count; ++index) {
        if (!modules[index].identity) return Status::invalid_argument;
    }

    *state = {};
    state->objects = objects;
    state->modules = modules;
    state->module_count = module_count;
    state->phase = Phase::load_modules;
    return Status::ok;
}

Status step(State* state, const Services* services) noexcept {
    if (!state || !state->objects) return Status::invalid_argument;
    if (state->phase == Phase::done) return Status::complete;
    if (state->phase == Phase::failed || state->phase == Phase::unstarted)
        return Status::invalid_state;

    const Services empty_services{};
    const Services& provider = services ? *services : empty_services;

    switch (state->phase) {
    case Phase::load_modules:
        if (state->next_module < state->module_count) {
            if (!provider.load_module) return Status::unsupported_provider;
            if (!load_module(provider,
                    state->modules[state->next_module].identity))
                return fail(*state);
            ++state->next_module;
            ++state->module_load_calls;
            return Status::progress;
        }
        state->objects->reset(&state->object_cursor);
        state->phase = Phase::object_init_post;
        return Status::progress;

    case Phase::object_init_post: {
        if (!providers_for_object_init(provider))
            return Status::unsupported_provider;
        GameObject* object = nullptr;
        const auto next_status = state->objects->next(&state->object_cursor, &object);
        if (next_status != dh2::object_manager_runtime_owner_v1::Status::ok)
            return Status::invalid_state;
        if (!object) {
            if (!provider.clear_post_init_lists)
                return Status::unsupported_provider;
            if (!clear_post_init_lists(provider)) return fail(*state);
            state->objects->reset(&state->object_cursor);
            state->phase = Phase::build_post_init_lists;
            return Status::progress;
        }

        if (!invoke_object_action(provider.object_init_post, provider, *object))
            return fail(*state);
        if (!test_enable_condition(provider, *object, false))
            return fail(*state);
        ++state->object_init_calls;
        return Status::progress;
    }

    case Phase::build_post_init_lists: {
        if (!providers_for_post_init_lists(provider))
            return Status::unsupported_provider;
        GameObject* object = nullptr;
        const auto next_status = state->objects->next(&state->object_cursor, &object);
        if (next_status != dh2::object_manager_runtime_owner_v1::Status::ok)
            return Status::invalid_state;
        if (!object) {
            state->phase = Phase::done;
            return Status::complete;
        }

        bool room_zone = false;
        if (!is_room_zone(provider, *object, room_zone)) return fail(*state);
        if (room_zone) {
            if (!invoke_object_action(provider.append_room_zone, provider, *object) ||
                !invoke_object_action(provider.room_zone_init_object_list,
                                      provider, *object))
                return fail(*state);
        } else {
            bool has_init_list = false;
            if (!has_additional_init_list(provider, *object, has_init_list))
                return fail(*state);
            if (has_init_list &&
                !invoke_object_action(provider.append_additional_init_object,
                                      provider, *object))
                return fail(*state);
        }

        bool gate_allows = false;
        if (!active_list_condition_gate(provider, *object, gate_allows))
            return fail(*state);
        if (gate_allows) {
            bool flag_d0 = false;
            bool flag_cc = false;
            if (!read_active_list_flags(provider, *object, flag_d0, flag_cc))
                return fail(*state);
            if (!flag_d0 && flag_cc &&
                !invoke_object_action(provider.append_active_object,
                                      provider, *object))
                return fail(*state);
        }
        ++state->post_init_object_calls;
        return Status::progress;
    }

    case Phase::unstarted:
    case Phase::done:
    case Phase::failed:
        break;
    }
    return Status::invalid_state;
}

} // namespace dh2::object_manager_init_post_v1
