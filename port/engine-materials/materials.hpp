#pragma once

#include "../engine-resources/resources.hpp"
#include <cstddef>
#include <cstdint>

// Checked, borrowed views over the BRES image/effect/material libraries. This
// is a new port interface; it does not reproduce the game's ARM32 object ABI.
namespace dh2::materials {

enum class Kind : std::uint32_t { image, effect, material };
enum class Error : std::uint32_t {
    ok, argument, kind, range, invalid_record, invalid_key, not_found,
    buffer_small, invalid_fixups, word_range
};

enum KeyMatch : std::uint32_t {
    key_image = 1U << 0,
    key_effect = 1U << 1,
    key_material = 1U << 2
};

// All pointers are borrowed from an immutable, unrelocated BRES image. The
// fixup array should be produced by dh2_bres_fixups for the same image.
struct Catalog {
    resources::BresView image;
    const resources::Fixup* fixups;
    std::size_t fixup_count;
};

struct Record {
    const std::uint8_t* bytes;
    const char* key;
    Kind kind;
    std::uint32_t index, offset, stride;
};

// A fixup target with printable ASCII text is exposed as a candidate. A key
// match means that candidate equals a name in one or more of the three
// libraries; it does not establish the semantic role of the containing field.
struct Reference {
    std::uint32_t field_offset, target_offset;
    const char* text_candidate;
    std::uint32_t key_matches;
    bool confirmed_record_key;
};

Error open(Catalog*, const resources::BresView*, const resources::Fixup*, std::size_t);
std::uint32_t count(const Catalog*, Kind);
Error at(const Catalog*, Kind, std::uint32_t index, Record*);
// Returns the first exact match, matching the original linear lookup order.
// match_count, when non-null, reports the total number of duplicate keys.
Error find_key(const Catalog*, Kind, const char*, Record*, std::uint32_t* match_count = nullptr);
Error record_word(const Catalog*, const Record*, std::uint32_t byte_offset,
                  std::uint32_t* value);
// On buffer_small, required receives the number of fixup fields in the record
// and output remains untouched. Pass nullptr/0 to query required capacity.
Error record_references(const Catalog*, const Record*, Reference*, std::size_t capacity,
                        std::size_t* required);

} // namespace dh2::materials

extern "C" {
dh2::materials::Error dh2_materials_open(dh2::materials::Catalog*,
    const dh2::resources::BresView*, const dh2::resources::Fixup*, std::size_t);
std::uint32_t dh2_materials_count(const dh2::materials::Catalog*, dh2::materials::Kind);
dh2::materials::Error dh2_materials_record_at(const dh2::materials::Catalog*,
    dh2::materials::Kind, std::uint32_t, dh2::materials::Record*);
dh2::materials::Error dh2_materials_find_key(const dh2::materials::Catalog*,
    dh2::materials::Kind, const char*, dh2::materials::Record*, std::uint32_t*);
dh2::materials::Error dh2_materials_record_word(const dh2::materials::Catalog*,
    const dh2::materials::Record*, std::uint32_t, std::uint32_t*);
dh2::materials::Error dh2_materials_record_references(const dh2::materials::Catalog*,
    const dh2::materials::Record*, dh2::materials::Reference*, std::size_t, std::size_t*);
}
