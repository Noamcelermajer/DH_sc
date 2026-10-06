#include "../source_random_lifecycle_v1.hpp"

#include <cstdint>
#include <cstdio>

namespace {

bool check(bool condition, const char* message) {
    if (condition) return true;
    std::fprintf(stderr, "FAIL: %s\n", message);
    return false;
}

}  // namespace

int main() {
    using dh2::random_lifecycle::process_state;
    using dh2::random_lifecycle::seed_from_gsinit_update;
    using dh2::random_lifecycle::seed_from_level_unload;

    auto& streams = process_state();
    auto* const owner = &streams;
    bool ok = true;

    streams = {{0x11111111U, 0x22222222U}, {0xabcdef01U, 0x80000002U}};
    seed_from_gsinit_update(0xfedcba98U);
    ok &= check(&process_state() == owner, "state accessor must return one stable owner");
    ok &= check(streams.seeds[0] == 0xfedcba98U && streams.seeds[1] == 0,
                 "GSInit update must write time to ordinary seed and clear synchronized seed");
    ok &= check(streams.counters[0] == 0xabcdef01U && streams.counters[1] == 0x80000002U,
                 "GSInit reseed must preserve both debug counters");

    // Deliberately change only the counters between source lifecycle events;
    // unload must retain those live values while replacing both seeds.
    streams.counters[0] = UINT32_MAX;
    streams.counters[1] = 0x76543210U;
    seed_from_level_unload(0x01234567U);
    ok &= check(&process_state() == owner, "unload must use the same process state object");
    ok &= check(streams.seeds[0] == 0x01234567U && streams.seeds[1] == 0,
                 "Level unload must write time to ordinary seed and clear synchronized seed");
    ok &= check(streams.counters[0] == UINT32_MAX && streams.counters[1] == 0x76543210U,
                 "Level unload reseed must preserve both debug counters");

    // uint32_t time values, including zero and the maximum, are source words;
    // reseeding is not an RNG draw and therefore must not advance counters.
    seed_from_gsinit_update(0);
    ok &= check(streams.seeds[0] == 0 && streams.seeds[1] == 0 &&
                    streams.counters[0] == UINT32_MAX && streams.counters[1] == 0x76543210U,
                 "zero-valued timer seed must be accepted without counter changes");
    seed_from_level_unload(UINT32_MAX);
    ok &= check(streams.seeds[0] == UINT32_MAX && streams.seeds[1] == 0 &&
                    streams.counters[0] == UINT32_MAX && streams.counters[1] == 0x76543210U,
                 "maximum timer seed must be accepted without counter changes");

    if (!ok) return 1;
    std::puts("source RNG lifecycle selected-library checks passed: singleton identity, GSInit and unload seeds, counter preservation, uint32 boundaries");
    return 0;
}
