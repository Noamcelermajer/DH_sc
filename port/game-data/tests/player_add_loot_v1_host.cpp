#include "../player_add_loot_v1.hpp"

extern "C" {
#include "../../random/random.h"
}

#include <array>
#include <cstring>
#include <fstream>
#include <iostream>
#include <limits>
#include <stdexcept>
#include <vector>

using namespace dh2::data;
using namespace dh2::data::player_add_loot_v1;
using Raw = std::vector<std::uint8_t>;

static unsigned checks;

static void ck(bool ok, const char* message) {
    ++checks;
    if (!ok) throw std::runtime_error(message);
}

static Raw file(const char* path) {
    std::ifstream input(path, std::ios::binary);
    if (!input) throw std::runtime_error(std::string("Cannot read ") + path);
    return {std::istreambuf_iterator<char>(input), {}};
}

static Bytes bytes(const Raw& raw) { return {raw.data(), raw.size()}; }

struct Reader {
    const Raw& raw;
    std::size_t at{};

    std::uint32_t u32() {
        ck(at <= raw.size() && raw.size() - at >= 4, "truncated fixture word");
        std::uint32_t value{};
        std::memcpy(&value, raw.data() + at, sizeof(value));
        at += sizeof(value);
        return value;
    }

    Raw block() {
        const auto size = u32();
        ck(size <= raw.size() - at, "truncated fixture block");
        Raw value(raw.begin() + std::ptrdiff_t(at),
                  raw.begin() + std::ptrdiff_t(at + size));
        at += size;
        return value;
    }
};

struct RandomOwner {
    dh2_random_state state{};
    std::uint32_t draws{};

    RandomOwner(std::uint32_t seed, std::uint32_t calls)
        : state{{seed, 0x98765432u}, {calls, 37u}} {}

    static bool next(void* opaque, std::int32_t bound, std::uint32_t stream,
                     std::int32_t& value, std::string& error) {
        auto& self = *static_cast<RandomOwner*>(opaque);
        if (stream != 0) {
            error = "unexpected source RNG stream";
            return false;
        }
        value = dh2_random_next(&self.state, std::uint32_t(bound), stream);
        ++self.draws;
        return true;
    }

    InventoryRandomServiceV4 service() { return {this, next}; }
};

struct Services {
    const ItemTable* items{};
    ItemPresentationOwnerV5* presentation{};
    std::uint32_t debug_queries{};
    std::uint32_t power_adds{};
    bool fail_add_power{};

    static const Item* metadata(void* opaque, const ItemInstanceV1& instance,
                                std::string& error) {
        const auto& self = *static_cast<Services*>(opaque);
        const auto* row = item(*self.items, instance.id);
        if (!row) error = "fixture item metadata missing";
        return row;
    }

    static bool text(void*, ItemInstanceV1&, const ItemTextRequestV5& request,
                     ItemTextResponseV5& response, std::string& output,
                     std::string& error) {
        switch (request.operation) {
        case ItemTextOperationV5::constant:
            response.value = 17;
            return true;
        case ItemTextOperationV5::integer_string:
            if (request.value == -1) {
                error = "missing description fixture";
                return false;
            }
            response.text = "OID" + std::to_string(request.value);
            return true;
        case ItemTextOperationV5::class_name:
            response.value = request.value;
            return true;
        case ItemTextOperationV5::parse_varargs:
        case ItemTextOperationV5::parse_ex:
            if (request.input) output += request.input;
            for (std::uint32_t i = 0; i < request.count; ++i)
                output += ":" + std::to_string(request.arguments[i].integer);
            return true;
        }
        error = "unsupported text fixture operation";
        return false;
    }

    static bool inventory(void* opaque, FreshInventoryOwnedV4&,
                          const OwnedInventoryRequestV4& request,
                          OwnedInventoryResponseV4& response,
                          std::string& error) {
        auto& self = *static_cast<Services*>(opaque);
        const auto text_service = ItemTextServicesV5{self.context(), metadata, text};
        switch (request.operation) {
        case OwnedInventoryOperationV4::update_name:
            return item_update_name_v5(*request.item, text_service, error);
        case OwnedInventoryOperationV4::update_stats:
            return item_update_stats_v5(*request.item, text_service, error);
        case OwnedInventoryOperationV4::update_requirements:
            return item_update_requirements_v5(*request.item, text_service, error);
        case OwnedInventoryOperationV4::add_power:
            ++self.power_adds;
            if (self.fail_add_power) {
                error = "declared AddPower fixture failure";
                return false;
            }
            return self.presentation->add_power(*request.item, request.argument,
                                                std::int32_t(request.index),
                                                text_service, error);
        case OwnedInventoryOperationV4::player_count:
            response.value = 1;
            return true;
        case OwnedInventoryOperationV4::current_player:
            response.identity = 0;
            response.value = 0;
            return true;
        case OwnedInventoryOperationV4::debug_load:
        case OwnedInventoryOperationV4::debug_query:
            ++self.debug_queries;
            response.value = 0;
            return true;
        case OwnedInventoryOperationV4::gold_notifications:
            return true;
        default:
            error = "required inventory continuation unavailable in host fixture";
            return false;
        }
    }

    static void observe(void* opaque, FreshInventoryOwnedV4&,
                        const OwnedInventoryRequestV4& request) {
        if (request.operation != OwnedInventoryOperationV4::destroy_item) return;
        auto& self = *static_cast<Services*>(opaque);
        std::string error;
        if (!self.presentation->forget(*request.item, error))
            throw std::runtime_error(error);
    }

    void* context() { return this; }
    ItemTextServicesV5 text_service() { return {this, metadata, text}; }
};

static void compare_source_snapshot(const Raw& source,
                                   const FreshInventoryOwnedV4& inventory) {
    Reader expected{source};
    ck(expected.u32() == std::uint32_t(inventory.gold()), "gold differs from source AddLoot");
    ck(expected.u32() == std::uint32_t(inventory.current_equipment()),
       "equipment mode differs from source AddLoot");
    const auto count = expected.u32();
    ck(count == inventory.items().size(), "item count differs from source AddLoot");

    for (std::uint32_t i = 0; i < count; ++i) {
        const auto& slot = *inventory.items()[i];
        const auto& instance = *slot.item;
        ck(expected.u32() == std::uint32_t(instance.id), "item id differs from source AddLoot");
        ck(expected.u32() == instance.quantity, "item quantity differs from source AddLoot");
        ck(expected.u32() == std::uint32_t(instance.value), "item value differs from source AddLoot");
        ck(expected.u32() == instance.identified, "identified state differs from source AddLoot");
        ck(expected.u32() == std::uint8_t(slot.slots[0]), "left slot differs from source AddLoot");
        ck(expected.u32() == std::uint8_t(slot.slots[1]), "right slot differs from source AddLoot");
        ck(expected.u32() == instance.powers.size(), "power count differs from source AddLoot");
        for (const auto power : instance.powers)
            ck(expected.u32() == std::uint32_t(power), "power id differs from source AddLoot");
    }

    std::uint32_t potion = std::numeric_limits<std::uint32_t>::max();
    for (std::uint32_t i = 0; i < inventory.items().size(); ++i)
        if (inventory.items()[i]->item.get() == inventory.potion()) potion = i;
    ck(expected.u32() == potion, "potion index differs from source AddLoot");
    for (unsigned set = 0; set < 2; ++set) {
        for (unsigned equip_slot = 0; equip_slot < 9; ++equip_slot) {
            std::uint32_t index = std::numeric_limits<std::uint32_t>::max();
            const auto* equipped = inventory.equipment()[set][equip_slot];
            for (std::uint32_t i = 0; i < inventory.items().size(); ++i)
                if (equipped == inventory.items()[i].get()) index = i;
            ck(expected.u32() == index, "equipment mapping differs from source AddLoot");
        }
    }
    ck(expected.at == source.size(), "trailing original AddLoot snapshot bytes");
}

int main(int argc, char** argv) {
    try {
        ck(argc == 3, "expected original AddLoot fixture and canonical pydata directory");
        const auto fixture = file(argv[1]);
        Reader input{fixture};
        ck(input.u32() == 0x37564c41u, "invalid original AddLoot fixture magic");
        const auto loot_id = std::int32_t(input.u32());
        const auto seed = input.u32();
        const auto calls = input.u32();
        const auto capacity = std::int8_t(input.u32());
        const auto value_bonus = std::int32_t(input.u32());
        const auto power_bonus = std::int32_t(input.u32());
        const auto requested = std::int32_t(input.u32());
        const auto difficulty = std::int32_t(input.u32());
        const auto seed_after = input.u32();
        const auto calls_after = input.u32();
        const auto source_snapshot = input.block();
        ck(input.at == fixture.size(), "trailing original AddLoot fixture bytes");

        const std::array<const char*, 9> cache_names{{
            "item_powers_pyarray.bin", "item_powers_pyarraynames.bin",
            "item_powers_pystructnames.bin", "item_powers_monopoly_pyarray.bin",
            "item_powers_monopoly_pyarraynames.bin", "item_powers_monopoly_pystructnames.bin",
            "loot_table_pyarray.bin", "loot_table_pyarraynames.bin",
            "loot_table_pystructnames.bin"}};
        std::array<Raw, 9> cache;
        for (std::size_t i = 0; i < cache.size(); ++i)
            cache[i] = file((std::string(argv[2]) + "/" + cache_names[i]).c_str());

        ck(cache[6].size() == 284104, "unexpected canonical loot/NumProbArray cache size");
        Raw quantities(cache[6].begin() + 283108, cache[6].end());
        std::string error;
        ItemPowerTablesV5 power_tables;
        ck(power_tables.load(bytes(cache[0]), bytes(cache[1]), bytes(cache[2]), error),
           "could not load existing V5 item power owner");
        const auto power_view = power_tables.borrow();
        LootPowerInputsV7 power_input{
            bytes(cache[0]), bytes(cache[1]), bytes(cache[2]),
            bytes(cache[3]), bytes(cache[4]), bytes(cache[5]), bytes(quantities),
            bytes(cache[7]), bytes(cache[8])};
        LootPowerResourcesV7 resources;
        ck(resources.load(power_input, power_view, error),
           "could not load existing V7 loot power resources");

        LootTablesV2 loot_tables;
        ck(loot_tables.load(bytes(cache[6]), bytes(cache[7]), bytes(cache[8]), error),
           "could not load existing LootTablesV2 owner");
        const auto loot_view = loot_tables.borrow();
        ck(loot_id >= 0 && std::size_t(loot_id) < loot_view.loots().size(),
           "source AddLoot fixture row is out of range");

        RandomOwner random(seed, calls);
        const auto rng = random.service();
        LootPowerCreationV7 creation(resources.borrow(), rng);
        ItemPresentationOwnerV5 presentation(power_view);
        Services service_context{&loot_view.items(), &presentation};
        const auto text = service_context.text_service();
        PropertyState properties{};
        properties.resolved[9] = loot_id;
        constexpr std::uintptr_t character = UINT64_C(0x100000007);
        FreshInventoryOwnedV4 inventory(character, loot_view, rng, capacity, properties);
        OwnedInventoryServicesV4 inventory_services{
            &service_context, Services::inventory, Services::observe, false};
        OwnedLootEffectsV7 effects{
            &creation, power_view, text, value_bonus, power_bonus, requested, difficulty};
        LootEntrySelectionContextV1 selection{};
        std::unique_ptr<ItemInstanceV1> pending;

        Bindings bindings{};
        bindings.character = character;
        bindings.inventory = &inventory;
        bindings.resolved_loot_property = properties.resolved.data() + 9;
        bindings.selection = &selection;
        bindings.difficulty = difficulty;
        bindings.pending = {&pending};
        bindings.inventory_services = &inventory_services;
        bindings.creation = &creation;
        bindings.powers = power_view;
        bindings.text = text;
        const Request request{character, {loot_id, value_bonus, power_bonus, requested, 0}};
        ck(value_bonus == 0 && power_bonus == 0,
           "fixture is outside the source _InitEquipment bonus arguments");
        ck(request.arguments[4] == 0, "fixture is outside the source _InitEquipment boolean argument");

        Result result{};
        const auto add_status = invoke(bindings, request, &result, error);
        ck(add_status == Status::complete, error.empty()
               ? "selected AddLoot adapter did not complete"
               : error.c_str());
        ck(result.attempted && result.loot_table == loot_id,
           "AddLoot adapter did not report the invoked table");
        ck(result.items_before == 0 && result.items_after == inventory.items().size(),
           "AddLoot adapter item-count result differs from its live owner");
        ck(result.pending_item == bool(pending), "AddLoot adapter pending-slot result is stale");
        ck(!pending, "player AddLoot left an item in the caller's pending slot");
        ck(inventory.properties() == &properties && inventory.character() == character,
           "AddLoot adapter replaced the live Character inventory/property owner");
        ck(service_context.debug_queries > 0,
           "AddLoot did not reuse the existing Debug service provider");
        ck(service_context.power_adds > 0,
           "powered AddLoot fixture did not reach the existing AddPower provider");
        compare_source_snapshot(source_snapshot, inventory);
        ck(random.state.seeds[0] == seed_after && random.state.counters[0] == calls_after,
           "shared inventory RNG differs from the original AddLoot call");
        ck(random.state.seeds[1] == 0x98765432u && random.state.counters[1] == 37u,
           "AddLoot changed the unrelated RNG stream");

        // A stale Character Loot property must reject before touching either
        // inventory state or the caller's result object.
        const auto item_count = inventory.items().size();
        const auto old_result = result;
        auto wrong_property = request;
        ++wrong_property.arguments[0];
        ck(invoke(bindings, wrong_property, &result, error) == Status::invalid_argument,
           "mismatched live Loot property was accepted");
        ck(!error.empty() && result.loot_table == old_result.loot_table &&
               inventory.items().size() == item_count,
           "invalid AddLoot call changed output or inventory state");

        auto wrong_call_shape = request;
        ++wrong_call_shape.arguments[1];
        ck(invoke(bindings, wrong_call_shape, &result, error) == Status::invalid_argument,
           "unsupported AddLoot value bonus was accepted");
        ck(error.find("outside the recovered") != std::string::npos &&
               result.loot_table == old_result.loot_table &&
               inventory.items().size() == item_count,
           "unsupported AddLoot call shape changed output or inventory state");

        // Missing reached providers remain explicit failures. The owned loot
        // implementation keeps the actual prefix, while this adapter reports
        // the required-service error and its current inventory count.
        auto failed_services = inventory_services;
        failed_services.invoke = nullptr;
        auto failed_bindings = bindings;
        failed_bindings.inventory_services = &failed_services;
        Result failed_result{};
        ck(invoke(failed_bindings, request, &failed_result, error) == Status::invalid_argument,
           "missing required AddLoot provider was accepted");
        ck(error.find("provider unavailable") != std::string::npos,
           "missing AddLoot provider was not reported explicitly");
        ck(inventory.items().size() == item_count,
           "invalid provider binding mutated the inventory");

        // A reached provider failure remains a failed source continuation and
        // exposes its real pending Item prefix through the caller's slot.
        RandomOwner failure_random(seed, calls);
        const auto failure_rng = failure_random.service();
        LootPowerCreationV7 failure_creation(resources.borrow(), failure_rng);
        ItemPresentationOwnerV5 failure_presentation(power_view);
        Services failure_context{&loot_view.items(), &failure_presentation};
        failure_context.fail_add_power = true;
        const auto failure_text = failure_context.text_service();
        PropertyState failure_properties{};
        failure_properties.resolved[9] = loot_id;
        FreshInventoryOwnedV4 failure_inventory(
            character, loot_view, failure_rng, capacity, failure_properties);
        OwnedInventoryServicesV4 failure_services{
            &failure_context, Services::inventory, Services::observe, false};
        OwnedLootEffectsV7 failure_effects{
            &failure_creation, power_view, failure_text,
            value_bonus, power_bonus, requested, difficulty};
        std::unique_ptr<ItemInstanceV1> failure_pending;
        auto failure_bindings = bindings;
        failure_bindings.inventory = &failure_inventory;
        failure_bindings.resolved_loot_property = failure_properties.resolved.data() + 9;
        failure_bindings.pending = {&failure_pending};
        failure_bindings.inventory_services = &failure_services;
        failure_bindings.creation = &failure_creation;
        failure_bindings.text = failure_text;
        Result failure_result{};
        ck(invoke(failure_bindings, request, &failure_result, error) == Status::failed,
           "reached AddPower failure was hidden by the adapter");
        ck(error == "declared AddPower fixture failure" && failure_result.attempted &&
               failure_result.pending_item && failure_pending &&
               failure_result.items_after == failure_inventory.items().size() &&
               failure_context.power_adds == 1,
           "failed AddLoot did not expose its required provider error and Item prefix");
        ck(failure_random.draws > 0,
           "failed powered AddLoot did not preserve its preceding shared RNG draws");
        ck(failure_presentation.forget(*failure_pending, error),
           "could not retire failed pending Item presentation state");
        failure_pending.reset();

        for (const auto& slot : inventory.items())
            ck(presentation.forget(*slot->item, error), "could not retire presentation test state");
        std::cout << "{\"validation\":\"PASS\",\"source_host_parity\":true"
                  << ",\"loot_table_row\":" << loot_id
                  << ",\"items\":" << result.items_after
                  << ",\"power_adds\":" << service_context.power_adds
                  << ",\"debug_queries\":" << service_context.debug_queries
                  << ",\"source_rng_after\":[" << seed_after << ',' << calls_after << ']'
                  << ",\"host_rng_after\":[" << random.state.seeds[0] << ','
                  << random.state.counters[0] << ']'
                  << ",\"adapter_cases\":[\"original powered AddLoot parity\","
                     "\"live Loot property mismatch rejected\","
                     "\"unsupported caller arguments rejected\","
                     "\"missing required provider rejected\","
                     "\"reached provider failure preserves pending Item prefix\"]"
                  << ",\"source_scope\":\"direct ItemInventory::AddLoot fixture; no Character::_InitEquipment or PlayerSavegame lifecycle\""
                  << ",\"shared_rng_verified\":true"
                  << ",\"checks\":" << checks << "}\n";
        return 0;
    } catch (const std::exception& exception) {
        std::cerr << exception.what() << '\n';
        return 1;
    }
}
