#pragma once
#include "player_savegame_v1.hpp"
#include "quest_table_bindings_v1.hpp"
extern "C" {
#include "../../../../../pydata-constants/constants.h"
}
#include <memory>
#include <string>

namespace dh2::native::quests {
struct Constants {
 dh2_pycst_view view{};
 std::shared_ptr<const void> owner;
};
struct Receipt {
 std::array<std::uint32_t,2> published{},reinitialized{},destroyed{};
 std::uint32_t constant_queries=0;
 std::uint32_t unpublished_destroyed=0;
};
// One allocator/factory context for this actual gameplay Save's embedded logs.
// It retains the same immutable Quest definitions/constants generation. Source
// InitQuests creates three difficulty vectors per log using genuine recovered
// factories. Quest compilation/scripts/events/payload readers remain unbound;
// their reached requests fail explicitly. No VM or second quest store is made.
class Owner {
 struct Impl;
 std::unique_ptr<Impl> impl_;
public:
 Owner(std::shared_ptr<data::PlayerSavegameV1>,data::quest_table_bindings_v1::View,Constants);
 ~Owner();
 Owner(const Owner&)=delete;Owner& operator=(const Owner&)=delete;
 bool initialize(std::uint32_t log,std::string&);
 bool close(std::string&);
 const Receipt& receipt() const noexcept;
 data::quest_runtime_fields_v1::Record* resolve(const data::quest_savegame_v1::QuestRef*) noexcept;
};
}
