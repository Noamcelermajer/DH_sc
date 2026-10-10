#include "native_start_game_save_transaction_v1.hpp"

#include <utility>

namespace dh2::data {

bool begin_native_start_game_save_transaction_v1(
    const NativeStartGameMetadataOwnerV1& owner, const LevelTables& levels,
    const NativeStartGameRequestV1& request,
    NativeStartGameSaveTransactionV1& output,
    std::int32_t& current_difficulty, std::string& error) {
    error.clear();
    if (!owner.context || !owner.save_identity || !owner.read ||
        !owner.save_numeric_request || !owner.clear_spawn_point_and_save) {
        error = "NativeStartGame selected metadata Save owner is incomplete";
        return false;
    }

    NativeStartGameSaveViewV1 save;
    if (!owner.read(owner.context, owner.save_identity, save, error)) {
        if (error.empty()) error = "NativeStartGame selected metadata Save read failed";
        return false;
    }
    if (save.slot < 0) {
        error = "NativeStartGame selected metadata Save has no slot";
        return false;
    }

    NativeStartGameSaveTransactionV1 candidate;
    if (!resolve_native_start_game_plan_v1(levels, save, request,
                                           candidate.plan, error)) {
        return false;
    }
    if (!candidate.plan.should_launch) {
        error = "NativeStartGame selected metadata Save did not produce a launch";
        return false;
    }
    candidate.save_identity = owner.save_identity;
    candidate.phase = NativeStartGameSavePhaseV1::planned;

    // The source updates the process difficulty before this optional SG_Save.
    // Keep both effects on the same selected +680 Save that supplied the plan.
    current_difficulty = candidate.plan.difficulty_for_level;
    if (candidate.plan.save_after_numeric_request &&
        !owner.save_numeric_request(owner.context, candidate.save_identity,
                                    current_difficulty, error)) {
        if (error.empty()) error = "NativeStartGame numeric SG_Save failed";
        return false;
    }

    output = std::move(candidate);
    error.clear();
    return true;
}

bool save_spawn_flag_before_native_load_v1(
    const NativeStartGameMetadataOwnerV1& owner,
    NativeStartGameSaveTransactionV1& transaction,
    std::int32_t& current_difficulty, std::string& error) {
    error.clear();
    if (transaction.phase != NativeStartGameSavePhaseV1::planned ||
        !transaction.plan.should_launch || !transaction.save_identity ||
        transaction.save_identity != owner.save_identity || !owner.context ||
        !owner.clear_spawn_point_and_save) {
        error = "NativeStartGame spawn-save owner or phase mismatch";
        return false;
    }
    if (!transaction.plan.clear_saved_spawn_flag_before_load) {
        error = "NativeStartGame plan omitted its source spawn-flag clear";
        return false;
    }
    const auto row = transaction.plan.saved_spawn_flag_row_to_clear;
    if (row < 0 || row >= 3) {
        error = "NativeStartGame selected spawn-flag row is invalid";
        return false;
    }
    if (!owner.clear_spawn_point_and_save(owner.context,
            transaction.save_identity, std::size_t(row),
            current_difficulty, error)) {
        if (error.empty()) error = "NativeStartGame spawn-flag SG_Save failed";
        return false;
    }
    transaction.phase = NativeStartGameSavePhaseV1::spawn_flag_saved;
    error.clear();
    return true;
}

}  // namespace dh2::data
