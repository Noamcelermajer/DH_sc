#include "materials.hpp"

#include <cstring>
#include <limits>

namespace dh2::materials {
namespace {
bool span(std::size_t offset, std::size_t amount, std::size_t size) {
    return offset <= size && amount <= size - offset;
}

std::uint32_t word(const std::uint8_t* p) {
    return std::uint32_t(p[0]) | (std::uint32_t(p[1]) << 8)
         | (std::uint32_t(p[2]) << 16) | (std::uint32_t(p[3]) << 24);
}

bool pointer_offset(const resources::BresView& image, const std::uint8_t* p,
                    std::size_t amount, std::uint32_t* offset) {
    if (!image.bytes || !p || !offset) return false;
    const auto base = reinterpret_cast<std::uintptr_t>(image.bytes);
    const auto address = reinterpret_cast<std::uintptr_t>(p);
    if (address < base || image.size > std::numeric_limits<std::uintptr_t>::max() - base)
        return false;
    const auto delta = address - base;
    if (delta > image.size || amount > image.size - static_cast<std::size_t>(delta)
        || delta > std::numeric_limits<std::uint32_t>::max()) return false;
    *offset = static_cast<std::uint32_t>(delta);
    return true;
}

bool library_for(Kind kind, resources::Library* library) {
    switch (kind) {
    case Kind::image:
        *library = resources::Library::image; return true;
    case Kind::effect:
        *library = resources::Library::effect; return true;
    case Kind::material:
        *library = resources::Library::material; return true;
    }
    return false;
}

bool library_info(const resources::BresView& image, Kind kind, std::uint32_t* n,
                  std::uint32_t* offset, std::uint32_t* stride) {
    resources::Library library{};
    if (!library_for(kind, &library) || !image.bytes
        || !span(image.root_offset, 192, image.size)) return false;
    const auto& layout = resources::libraries[static_cast<unsigned>(library)];
    if (!span(image.root_offset + layout.count_offset, 4, image.size)
        || !span(image.root_offset + layout.pointer_offset, 4, image.size)) return false;
    const auto serialized_count = word(image.bytes + image.root_offset + layout.count_offset);
    const auto serialized_offset = word(image.bytes + image.root_offset + layout.pointer_offset);
    *n = dh2_bres_library_count(&image, library);
    *stride = layout.stride;
    // The shared accessor validates the complete table span. Compare its
    // answer with the serialized count because it reports both empty and
    // malformed libraries as zero. Empty tables still need an in-image base.
    if (!*stride || serialized_count != *n || serialized_offset > image.size) return false;
    if (!*n) {
        *offset = serialized_offset;
        return true;
    }
    const auto* first = dh2_bres_library_item(&image, library, 0);
    return first && pointer_offset(image, first, *stride, offset)
        && *offset == serialized_offset;
}

bool field_target(const Catalog& catalog, std::uint32_t field_offset,
                  std::uint32_t* target_offset) {
    for (std::size_t i = 0; i < catalog.fixup_count; ++i) {
        std::uint32_t candidate_field{}, candidate_target{};
        if (!pointer_offset(catalog.image, catalog.fixups[i].field, 4, &candidate_field)
            || !pointer_offset(catalog.image, catalog.fixups[i].target, 0, &candidate_target))
            return false;
        if (candidate_field == field_offset) {
            *target_offset = candidate_target;
            return true;
        }
    }
    return false;
}

bool bounded_string(const resources::BresView& image, std::uint32_t offset,
                    const char** value) {
    if (!span(offset, 1, image.size)) return false;
    for (std::size_t i = offset; i < image.size; ++i) {
        if (!image.bytes[i]) {
            *value = reinterpret_cast<const char*>(image.bytes + offset);
            return true;
        }
    }
    return false;
}

const char* printable_text(const resources::BresView& image, std::uint32_t offset) {
    if (!span(offset, 1, image.size)) return nullptr;
    bool nonempty = false;
    for (std::size_t i = offset; i < image.size; ++i) {
        const auto c = image.bytes[i];
        if (!c) return nonempty ? reinterpret_cast<const char*>(image.bytes + offset) : nullptr;
        if (c < 0x20 || c > 0x7e) return nullptr;
        nonempty = true;
    }
    return nullptr;
}

Error record_at_impl(const Catalog& catalog, Kind kind, std::uint32_t index, Record* out) {
    if (kind != Kind::image && kind != Kind::effect && kind != Kind::material)
        return Error::kind;
    std::uint32_t n{}, table_offset{}, stride{};
    if (!library_info(catalog.image, kind, &n, &table_offset, &stride))
        return Error::invalid_record;
    if (index >= n) return Error::range;
    const std::size_t offset = std::size_t(table_offset) + std::size_t(index) * stride;
    if (!span(offset, stride, catalog.image.size) || offset > UINT32_MAX)
        return Error::invalid_record;
    const auto key_field = static_cast<std::uint32_t>(offset);
    std::uint32_t target_offset{};
    if (!field_target(catalog, key_field, &target_offset)
        || !span(target_offset, 1, catalog.image.size)
        || word(catalog.image.bytes + key_field) != target_offset)
        return Error::invalid_key;
    const char* key{};
    if (!bounded_string(catalog.image, target_offset, &key)) return Error::invalid_key;
    *out = {catalog.image.bytes + offset, key, kind, index,
            static_cast<std::uint32_t>(offset), stride};
    return Error::ok;
}

bool key_mask(const Catalog& catalog, const char* text, std::uint32_t* mask) {
    *mask = 0;
    const Kind kinds[] = {Kind::image, Kind::effect, Kind::material};
    const std::uint32_t bits[] = {key_image, key_effect, key_material};
    for (unsigned k = 0; k < 3; ++k) {
        std::uint32_t n{}, table{}, stride{};
        if (!library_info(catalog.image, kinds[k], &n, &table, &stride)) return false;
        for (std::uint32_t i = 0; i < n; ++i) {
            Record record{};
            if (record_at_impl(catalog, kinds[k], i, &record) != Error::ok) return false;
            if (std::strcmp(text, record.key) == 0) *mask |= bits[k];
        }
    }
    return true;
}

bool same_record(const Catalog& catalog, const Record& record) {
    Record actual{};
    return record_at_impl(catalog, record.kind, record.index, &actual) == Error::ok
        && actual.bytes == record.bytes && actual.offset == record.offset
        && actual.stride == record.stride;
}
} // namespace

Error open(Catalog* out, const resources::BresView* image,
           const resources::Fixup* fixups, std::size_t fixup_count) {
    if (!out) return Error::argument;
    *out = {};
    if (!image || !image->bytes || (fixup_count && !fixups)
        || fixup_count != image->fixup_count
        || !span(image->fixup_offset, std::uint64_t(fixup_count) * 4, image->size)
        || !span(image->root_offset, 192, image->size)) return Error::argument;
    Catalog candidate{*image, fixups, fixup_count};
    for (std::size_t i = 0; i < fixup_count; ++i) {
        std::uint32_t field{}, target{};
        if (!pointer_offset(*image, fixups[i].field, 4, &field)
            || !pointer_offset(*image, fixups[i].target, 0, &target)
            || (field & 3U)
            || field != word(image->bytes + image->fixup_offset + i * 4)
            || word(image->bytes + field) != target)
            return Error::invalid_fixups;
    }
    const Kind kinds[] = {Kind::image, Kind::effect, Kind::material};
    for (const auto kind : kinds) {
        std::uint32_t n{}, table{}, stride{};
        if (!library_info(*image, kind, &n, &table, &stride)) return Error::invalid_record;
    }
    *out = candidate;
    return Error::ok;
}

std::uint32_t count(const Catalog* catalog, Kind kind) {
    if (!catalog || !catalog->image.bytes) return 0;
    std::uint32_t n{}, offset{}, stride{};
    return library_info(catalog->image, kind, &n, &offset, &stride) ? n : 0;
}

Error at(const Catalog* catalog, Kind kind, std::uint32_t index, Record* out) {
    if (!catalog || !out || !catalog->image.bytes) return Error::argument;
    *out = {};
    return record_at_impl(*catalog, kind, index, out);
}

Error find_key(const Catalog* catalog, Kind kind, const char* key, Record* out,
               std::uint32_t* match_count) {
    if (match_count) *match_count = 0;
    if (!catalog || !key || !out || !catalog->image.bytes) return Error::argument;
    if (kind != Kind::image && kind != Kind::effect && kind != Kind::material)
        return Error::kind;
    const auto n = count(catalog, kind);
    Record first{};
    std::uint32_t matches = 0;
    for (std::uint32_t i = 0; i < n; ++i) {
        Record current{};
        const auto result = record_at_impl(*catalog, kind, i, &current);
        if (result != Error::ok) return result;
        if (std::strcmp(key, current.key) == 0) {
            if (!matches) first = current;
            ++matches;
        }
    }
    if (match_count) *match_count = matches;
    if (!matches) return Error::not_found;
    *out = first;
    return Error::ok;
}

Error record_word(const Catalog* catalog, const Record* record,
                  std::uint32_t byte_offset, std::uint32_t* value) {
    if (!catalog || !record || !value || !catalog->image.bytes) return Error::argument;
    if (!same_record(*catalog, *record)) return Error::invalid_record;
    if (byte_offset > record->stride || 4 > record->stride - byte_offset
        || !span(std::size_t(record->offset) + byte_offset, 4, catalog->image.size))
        return Error::word_range;
    *value = word(catalog->image.bytes + record->offset + byte_offset);
    return Error::ok;
}

Error record_references(const Catalog* catalog, const Record* record, Reference* output,
                        std::size_t capacity, std::size_t* required) {
    if (required) *required = 0;
    if (!catalog || !record || !required || !catalog->image.bytes
        || (capacity && !output)) return Error::argument;
    if (!same_record(*catalog, *record)) return Error::invalid_record;
    std::size_t needed = 0;
    for (std::size_t i = 0; i < catalog->fixup_count; ++i) {
        std::uint32_t field{};
        if (!pointer_offset(catalog->image, catalog->fixups[i].field, 4, &field))
            return Error::invalid_fixups;
        if (field >= record->offset && field - record->offset <= record->stride - 4) ++needed;
    }
    *required = needed;
    if (needed > capacity) return Error::buffer_small;

    std::size_t written = 0;
    for (std::size_t i = 0; i < catalog->fixup_count; ++i) {
        std::uint32_t field{}, target{};
        if (!pointer_offset(catalog->image, catalog->fixups[i].field, 4, &field)
            || !pointer_offset(catalog->image, catalog->fixups[i].target, 0, &target))
            return Error::invalid_fixups;
        if (field < record->offset || field - record->offset > record->stride - 4) continue;
        Record verified{};
        if (record_at_impl(*catalog, record->kind, record->index, &verified) != Error::ok)
            return Error::invalid_record;
        const bool is_key = field == verified.offset;
        const char* candidate = is_key ? verified.key : printable_text(catalog->image, target);
        std::uint32_t matches = 0;
        if (candidate && !key_mask(*catalog, candidate, &matches)) return Error::invalid_key;
        output[written++] = {field, target, candidate, matches, is_key};
    }
    return Error::ok;
}
} // namespace dh2::materials

extern "C" {
dh2::materials::Error dh2_materials_open(dh2::materials::Catalog* out,
    const dh2::resources::BresView* image, const dh2::resources::Fixup* fixups,
    std::size_t fixup_count) {
    return dh2::materials::open(out, image, fixups, fixup_count);
}
std::uint32_t dh2_materials_count(const dh2::materials::Catalog* catalog,
                                  dh2::materials::Kind kind) {
    return dh2::materials::count(catalog, kind);
}
dh2::materials::Error dh2_materials_record_at(const dh2::materials::Catalog* catalog,
    dh2::materials::Kind kind, std::uint32_t index, dh2::materials::Record* out) {
    return dh2::materials::at(catalog, kind, index, out);
}
dh2::materials::Error dh2_materials_find_key(const dh2::materials::Catalog* catalog,
    dh2::materials::Kind kind, const char* key, dh2::materials::Record* out,
    std::uint32_t* match_count) {
    return dh2::materials::find_key(catalog, kind, key, out, match_count);
}
dh2::materials::Error dh2_materials_record_word(const dh2::materials::Catalog* catalog,
    const dh2::materials::Record* record, std::uint32_t offset, std::uint32_t* value) {
    return dh2::materials::record_word(catalog, record, offset, value);
}
dh2::materials::Error dh2_materials_record_references(
    const dh2::materials::Catalog* catalog, const dh2::materials::Record* record,
    dh2::materials::Reference* output, std::size_t capacity, std::size_t* required) {
    return dh2::materials::record_references(catalog, record, output, capacity, required);
}
}
