#include "../character_give_xp_v1.hpp"
#include "../quest_reward_execution_v1.hpp"
using namespace dh2::data::character_give_xp_v1;
using Callback = bool (*)(void*, std::uint32_t, std::int32_t, std::int32_t, std::int32_t, std::int32_t*);
struct Adapter { Callback callback; void* context; };
static bool invoke(void* p, const Request& r, std::int32_t* value) {
    auto& a = *static_cast<Adapter*>(p);
    return a.callback(a.context, static_cast<std::uint32_t>(r.operation), r.argument, r.value, r.extra, value);
}
extern "C" {
std::int32_t xp_modified(std::int32_t amount, std::int32_t bonus) { return modified_xp(amount, bonus); }
void xp_give(Callback callback, void* context, std::int32_t amount, bool stat, std::int32_t* out) {
    Adapter adapter{callback, context};
    const auto result = give_xp({&adapter, invoke}, amount, stat);
    out[0] = static_cast<std::int32_t>(result.status);
    out[1] = result.granted;
    out[2] = result.effective_amount;
    out[3] = result.modified_amount;
    out[4] = static_cast<std::int32_t>(result.calls);
    out[5] = static_cast<std::int32_t>(result.last_operation);
}
std::int32_t xp_reward(Callback callback, void* context, std::int32_t amount, bool stat, bool* granted) {
    namespace reward = dh2::data::quest_reward_execution_v1;
    Adapter adapter{callback, context};
    reward::XpEffects effects{&adapter, [](void* p, reward::CharacterRef& character) {
        return character.identity == 123 ? Services{p, invoke} : Services{};
    }};
    reward::Record record(456);
    reward::CharacterRef character;
    character.identity = 123;
    return reward::character_xp(&effects, record, character, amount, stat, granted);
}
}
