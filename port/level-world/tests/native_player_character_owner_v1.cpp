#include "../native_player_character_owner_v1.hpp"
#include <cstdint>
#include <cstdlib>
#include <fstream>
#include <filesystem>
#include <iostream>
#include <iterator>
#include <stdexcept>
#include <string>
#include <vector>

namespace {
void require(bool value, const char* what) {
    if (!value) throw std::runtime_error(what);
}
std::vector<std::uint8_t> file(const std::filesystem::path& path) {
    std::ifstream input(path, std::ios::binary);
    if (!input) throw std::runtime_error("missing loot cache input: " + path.string());
    return {std::istreambuf_iterator<char>(input), {}};
}
bool inventory_random(void*, std::int32_t bound, std::uint32_t,
                      std::int32_t& value, std::string&) {
    if (bound <= 0) return false;
    value = 0;
    return true;
}
}

int main(int argc, char** argv) {
    using namespace dh2;
    require(argc == 2, "usage: native_player_character_owner_v1_audit <game-data-cache>");
    const std::filesystem::path cache(argv[1]);
    const auto records = file(cache / "loot_table_pyarray.bin");
    const auto names = file(cache / "loot_table_pyarraynames.bin");
    const auto schema = file(cache / "loot_table_pystructnames.bin");
    data::LootTablesV2 loot_tables;
    std::string error;
    require(loot_tables.load({records.data(), records.size()},
                             {names.data(), names.size()},
                             {schema.data(), schema.size()}, error),
            error.c_str());

    character::NativePlayerCharacterOwnerV1 owner;
    data::PlayerSavegameV1 save;
    data::PropertyState properties;
    std::uintptr_t character_660 = 0;
    const auto identity = owner.identity();
    require(identity != 0 &&
            identity == reinterpret_cast<std::uintptr_t>(&owner) &&
            owner.owner() == identity,
            "native object address is not the Coordinator identity");
    save.set_character(identity);

    require(owner.bind_session(&character_660, save, properties, nullptr, error),
            error.c_str());
    require(character_660 == identity && owner.save_for(identity) == &save &&
            owner.properties_for(identity) == &properties &&
            owner.inventory_for(identity) == nullptr,
            "published Character does not resolve the sole live owners");
    require(owner.matches_session(&character_660, save, properties, nullptr),
            "initial session binding did not validate");
    require(owner.bind_session(&character_660, save, properties, nullptr, error),
            "same live session was not idempotent");

    data::FreshInventoryOwnedV4 inventory(identity, loot_tables.borrow(),
                                           {nullptr, inventory_random}, 10,
                                           properties);
    require(owner.bind_inventory(inventory, error), error.c_str());
    require(character_660 == identity && owner.save_for(identity) == &save &&
            owner.properties_for(identity) == &properties &&
            owner.inventory_for(identity) == &inventory &&
            owner.matches_session(&character_660, save, properties, &inventory),
            "late inventory attachment replaced a canonical owner");
    require(owner.bind_inventory(inventory, error),
            "same canonical inventory attachment was not idempotent");

    data::PropertyState foreign_properties;
    data::FreshInventoryOwnedV4 mismatched_properties(identity, loot_tables.borrow(),
                                                       {nullptr, inventory_random},
                                                       10, foreign_properties);
    require(!owner.bind_inventory(mismatched_properties, error),
            "inventory with a second property store was accepted");
    require(owner.inventory_for(identity) == &inventory,
            "rejected property-store swap changed the live inventory");

    data::FreshInventoryOwnedV4 foreign_inventory(identity + 8, loot_tables.borrow(),
                                                   {nullptr, inventory_random},
                                                   10, properties);
    require(!owner.bind_inventory(foreign_inventory, error),
            "inventory with a foreign Character identity was accepted");
    require(owner.inventory_for(identity) == &inventory,
            "rejected Character swap changed the live inventory");

    require(!owner.bind_session(&character_660, save, properties, nullptr, error),
            "session rebind silently detached an attached inventory");
    require(owner.inventory_for(identity) == &inventory && character_660 == identity,
            "rejected session downgrade changed live owners");

    data::PlayerSavegameV1 foreign_save;
    foreign_save.set_character(identity + 8);
    require(!owner.bind_session(&character_660, foreign_save, properties, &inventory, error),
            "foreign Save identity was accepted");
    require(character_660 == identity && owner.save_for(identity) == &save,
            "rejected rebind changed the published owner");

    std::uintptr_t foreign_character = identity + 8;
    require(!owner.bind_session(&foreign_character, save, properties, &inventory, error),
            "foreign Character660 was overwritten");
    require(foreign_character == identity + 8,
            "rejected publication changed foreign Character660");

    require(owner.unbind_session(error) && character_660 == 0,
            "terminal Character retirement did not clear Character660");
    require(!owner.save_for(identity) && !owner.properties_for(identity) &&
            !owner.inventory_for(identity),
            "retired Character still resolves borrowed owners");
    require(owner.unbind_session(error), "empty retirement was not idempotent");

    std::cout << "{\"validation\":\"PASS\",\"checks\":20,"
                 "\"identity_is_native_object_address\":true,"
                 "\"coordinator_save_properties_inventory_single_owner\":true,"
                 "\"inventory_attached_after_character_publish\":true,"
                 "\"source_add_character_parity\":false}\n";
    return 0;
}
