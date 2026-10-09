#include "character_give_xp_v1.hpp"
#include <cstring>

namespace dh2::data::character_give_xp_v1 {
namespace {
std::int32_t signed_bits(std::uint32_t bits) {
    std::int32_t value;
    std::memcpy(&value, &bits, sizeof(value));
    return value;
}
std::int32_t difference(std::int32_t a, std::int32_t b) {
    return signed_bits(static_cast<std::uint32_t>(a) - static_cast<std::uint32_t>(b));
}
std::int32_t asr8(std::int32_t value) {
    const auto bits = static_cast<std::uint32_t>(value);
    return signed_bits((bits >> 8) | (value < 0 ? 0xff000000U : 0U));
}
}
std::int32_t modified_xp(std::int32_t amount, std::int32_t bonus_raw) {
    const auto percent = signed_bits(static_cast<std::uint32_t>(bonus_raw) + 0x6400U) / 100;
    return asr8(signed_bits(static_cast<std::uint32_t>(percent) * static_cast<std::uint32_t>(amount)));
}
Result give_xp(Services services, std::int32_t amount, bool record_stat) {
    Result result;
    if (!services.invoke) {
        result.status = Status::service_unavailable;
        return result;
    }
    auto send = [&](Operation op, std::int32_t& out, std::int32_t argument = 0,
                    std::int32_t value = 0, std::int32_t extra = 0) {
        result.last_operation = op;
        ++result.calls;
        if (services.invoke(services.context, {op, argument, value, extra}, &out)) return true;
        result.status = Status::service_failed;
        return false;
    };
    std::int32_t maximum{}, value{}, xp{}, threshold{}, unused{};
    if (!send(Operation::constant, maximum) || !send(Operation::difficulty_unlocked, value)) return result;
    if (value == 1) {
        if (!send(Operation::constant, maximum, 1)) return result;
    } else {
        if (!send(Operation::difficulty_unlocked, value)) return result;
        if (value == 2 && !send(Operation::constant, maximum, 2)) return result;
    }
    if (!send(Operation::property_int, value, 19) || value >= maximum) return result;
    if (!send(Operation::is_player, value) || !value) return result;
    if (!send(Operation::is_network, value) || value) return result;
    if (!send(Operation::level_restricted, value) || value) return result;
    if (amount < 0 && !send(Operation::assert_nonnegative, unused, amount)) return result;
    if (!send(Operation::debug_load, unused) || !send(Operation::debug_switch, value)) return result;
    if (value) {
        if (!send(Operation::property_raw, threshold, 34) || !send(Operation::property_raw, xp, 33)) return result;
        amount = difference(threshold, xp);
    }
    if (!send(Operation::difficulty_unlocked, xp) || !send(Operation::level_difficulty, value)) return result;
    if (xp < value) amount = 256;
    result.effective_amount = amount;
    if (!send(Operation::xp_bonus_raw, value)) return result;
    result.modified_amount = modified_xp(amount, value);
    if (!send(Operation::property_add_raw, unused, 33, result.modified_amount)) return result;
    if (!send(Operation::debug_load, unused) || !send(Operation::debug_switch, unused, 1)) return result;
    if (!send(Operation::property_raw, xp, 33) || !send(Operation::property_raw, threshold, 34)) return result;
    if (xp >= threshold) {
        if (!send(Operation::property_raw, xp, 33) || !send(Operation::property_raw, threshold, 34)) return result;
        if (!send(Operation::level_up, unused, asr8(difference(xp, threshold)))) return result;
        if (!send(Operation::property_raw, xp, 33) || !send(Operation::property_raw, threshold, 34)) return result;
        if (xp > threshold) {
            if (!send(Operation::property_raw, threshold, 34) || !send(Operation::property_set_raw, unused, 33, threshold)) return result;
        }
    }
    if (record_stat) {
        if (!send(Operation::player_index, value) || !send(Operation::increase_stat, unused, 6, asr8(amount), value)) return result;
    }
    result.granted = true;
    return result;
}
}
