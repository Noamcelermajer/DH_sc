#include "level_savegame_player_load_v1.hpp"

#include <algorithm>
#include <cstring>
#include <limits>
#include <vector>

namespace dh2::level_savegame_player_load_v1 {
namespace {
constexpr std::size_t kMaxImageBytes = 16u * 1024u * 1024u;
constexpr std::uint32_t kMaxObjectRows = 4096u;
constexpr std::size_t kMaxStringBytes = 4096u;
constexpr std::size_t kPlayerPayloadBytes = 59u;
constexpr std::size_t kPlayerAiPayloadBytes = 65u;

struct Reader {
    const std::uint8_t* data{};
    std::size_t size{};
    std::size_t cursor{};

    bool take(std::size_t count, const std::uint8_t** out) {
        if (!out || cursor > size || count > size - cursor) return false;
        *out = data + cursor;
        cursor += count;
        return true;
    }
    bool u32(std::uint32_t* out) {
        const std::uint8_t* p{};
        if (!out || !take(4, &p)) return false;
        *out = std::uint32_t(p[0]) | (std::uint32_t(p[1]) << 8) |
               (std::uint32_t(p[2]) << 16) | (std::uint32_t(p[3]) << 24);
        return true;
    }
    bool u64(std::uint64_t* out) {
        const std::uint8_t* p{};
        if (!out || !take(8, &p)) return false;
        std::uint64_t value{};
        for (unsigned i = 0; i != 8; ++i)
            value |= std::uint64_t(p[i]) << (8u * i);
        *out = value;
        return true;
    }
};

struct SavedObject {
    std::string name;
    std::string key;
    std::int32_t type{};
    const std::uint8_t* payload{};
    std::size_t payload_size{};
};

bool read_string(Reader& in, std::string* output) {
    std::uint32_t length{};
    const std::uint8_t* bytes{};
    if (!output || !in.u32(&length) || !length ||
        length > kMaxStringBytes || !in.take(length, &bytes) ||
        bytes[length - 1] != 0 ||
        std::memchr(bytes, 0, length - 1) != nullptr) return false;
    output->assign(reinterpret_cast<const char*>(bytes), length - 1);
    return !output->empty();
}

bool parse_player_payload(const SavedObject& row, PlayerState* output) {
    if (!output || (row.payload_size != kPlayerPayloadBytes &&
                    row.payload_size != kPlayerAiPayloadBytes)) return false;
    Reader in{row.payload, row.payload_size, 0};
    const std::uint8_t* bytes{};
    std::uint32_t word{};
    PlayerState state{};
    if (!in.take(2, &bytes) || bytes[0] > 1 || bytes[1] > 1) return false;
    state.object_base_flag_80 = bytes[0];
    state.object_base_flag_8a = bytes[1];
    if (!in.u32(&word)) return false;
    state.game_object_word_270 = static_cast<std::int32_t>(word);
    if (!in.u32(&word)) return false;
    state.state_machine_state = static_cast<std::int32_t>(word);
    if (!in.take(12, &bytes)) return false;
    std::copy(bytes, bytes + 12, state.position.begin());
    if (!in.take(12, &bytes)) return false;
    std::copy(bytes, bytes + 12, state.target_position.begin());
    if (!in.take(1, &bytes) || bytes[0] > 1) return false;
    state.dead = bytes[0];
    if (!in.take(12, &bytes)) return false;
    std::copy(bytes, bytes + 12, state.vector_1306.begin());
    if (!in.take(12, &bytes)) return false;
    std::copy(bytes, bytes + 12, state.vector_1309.begin());
    if (row.payload_size == kPlayerAiPayloadBytes) {
        if (!in.u32(&word)) return false;
        state.has_ai_tail = 1;
        state.ai_word_36 = static_cast<std::int32_t>(word);
        if (!in.take(2, &bytes) || bytes[0] > 1 || bytes[1] > 1) return false;
        state.ai_flag_40 = bytes[0];
        state.ai_flag_41 = bytes[1];
    }
    if (in.cursor != in.size) return false;
    *output = state;
    return true;
}

bool parse_image(const std::uint8_t* image, std::size_t image_size,
                 std::vector<SavedObject>* objects, std::uint32_t* section_count,
                 std::string& error) {
    if (!image || !objects || !section_count || image_size < 8 ||
        image_size > kMaxImageBytes) {
        error = "LevelSavegame image is empty or exceeds the bounded reader";
        return false;
    }
    Reader in{image, image_size, 0};
    std::uint32_t count{};
    if (!in.u32(&count) || count != 2) {
        error = "LevelSavegame requires exactly the source INFO and OBJS sections";
        return false;
    }
    bool saw_info = false, saw_objects = false;
    std::vector<SavedObject> parsed_objects;
    for (std::uint32_t i = 0; i < count; ++i) {
        std::uint32_t section_bytes{};
        const std::uint8_t* tag{};
        if (!in.u32(&section_bytes) || !in.take(4, &tag) ||
            section_bytes > in.size - in.cursor) {
            error = "LevelSavegame section header or payload length is truncated";
            return false;
        }
        const std::string section_tag(reinterpret_cast<const char*>(tag), 4);
        const std::uint8_t* section_data{};
        if (!in.take(section_bytes, &section_data)) {
            error = "LevelSavegame section payload is truncated";
            return false;
        }
        if (section_tag == "INFO") {
            if (saw_info || section_bytes != 4) {
                error = "LevelSavegame INFO section is duplicate or not four bytes";
                return false;
            }
            saw_info = true;
            continue;
        }
        if (section_tag != "OBJS" || saw_objects) {
            error = "LevelSavegame contains an unknown or duplicate section";
            return false;
        }
        saw_objects = true;
        Reader row_reader{section_data, section_bytes, 0};
        std::uint32_t row_count{};
        if (!row_reader.u32(&row_count) || !row_count || row_count > kMaxObjectRows) {
            error = "LevelSavegame OBJS count is empty, truncated or over its bound";
            return false;
        }
        parsed_objects.reserve(row_count);
        for (std::uint32_t j = 0; j < row_count; ++j) {
            SavedObject row{};
            std::uint32_t type{};
            std::uint64_t payload_size{};
            const std::uint8_t* payload{};
            if (!read_string(row_reader, &row.name) ||
                !read_string(row_reader, &row.key) || !row_reader.u32(&type) ||
                !row_reader.u64(&payload_size) || payload_size > kMaxImageBytes ||
                payload_size > std::numeric_limits<std::size_t>::max() ||
                !row_reader.take(static_cast<std::size_t>(payload_size), &payload)) {
                error = "LevelSavegame OBJS record is malformed or exceeds its bound";
                return false;
            }
            row.type = static_cast<std::int32_t>(type);
            row.payload = payload;
            row.payload_size = static_cast<std::size_t>(payload_size);
            parsed_objects.push_back(std::move(row));
        }
        if (row_reader.cursor != row_reader.size) {
            error = "LevelSavegame OBJS section has trailing bytes";
            return false;
        }
    }
    if (!saw_info || !saw_objects || in.cursor != in.size) {
        error = "LevelSavegame sections are missing or trailing bytes remain";
        return false;
    }
    *objects = std::move(parsed_objects);
    *section_count = count;
    return true;
}

} // namespace

Status load_player(const std::uint8_t* image, std::size_t image_size,
                   manager::Owner& objects, const factory::Owner& characters,
                   const level_savegame_object_manager_v1::FactsServices* facts,
                   const CommitServices* commit, Result* output,
                   std::string& error) {
    error.clear();
    if (output) *output = {};
    if (!output) {
        error = "Player level-load requires a result destination";
        return Status::invalid_argument;
    }
    if (!facts || !facts->read_object_facts || !commit ||
        !commit->prepare_player || !commit->commit_player_atomically) {
        error = "canonical player load facts or atomic mutation provider unavailable";
        return Status::provider_unavailable;
    }

    std::vector<SavedObject> records;
    std::uint32_t sections{};
    if (!parse_image(image, image_size, &records, &sections, error))
        return Status::malformed_save;

    // The bounded player-only reader cannot safely skip unknown/native object
    // classes: every record must be the unique resolvable player row.
    if (records.size() != 1 || records[0].key != "PlayerCharacter_0") {
        error = "Player-only LevelSavegame reader rejects additional or non-player OBJS rows";
        return Status::unsupported_record;
    }
    PlayerState staged{};
    if (!parse_player_payload(records[0], &staged)) {
        error = "Player Character payload is not the pinned 59-byte or 65-byte source layout";
        return Status::unsupported_record;
    }

    const auto& saved = records[0];
    const factory::Record* resolved_record = nullptr;
    manager::SourceHandle resolved_handle{};
    manager::Owner::Cursor cursor{};
    objects.reset(&cursor);
    for (;;) {
        manager::GameObject* live = nullptr;
        if (objects.next(&cursor, &live) != manager::Status::ok) {
            error = "canonical ObjectManager key walk failed";
            return Status::manager_failed;
        }
        if (!live) break;
        const auto* record = characters.find(live->source_handle);
        save::Object object{};
        object.identity = live->identity;
        if (!facts->read_object_facts(facts->context, *live, record, &object, error)) {
            if (error.empty()) error = "ObjectManager name/type facts are unavailable";
            return Status::provider_failed;
        }
        if (object.identity != live->identity || object.is_character > 1 ||
            object.is_player > 1 || object.enabled > 1 ||
            object.is_local_player > 1 || object.source_flag_129 > 1 ||
            (record && (record->source_handle != live->source_handle ||
                        record->character.identity != live->identity ||
                        record->game_object.identity != live->identity ||
                        !record->object_registered || !record->character_listed)) ||
            (object.is_character != (record ? 1 : 0))) {
            error = "ObjectManager key facts conflict with the canonical factory identity";
            return Status::identity_mismatch;
        }
        if (object.manager_key != saved.key) continue;
        if (resolved_record || !record || !object.is_character || !object.is_player ||
            object.type_word != saved.type) {
            error = "saved PlayerCharacter_0 key does not resolve uniquely to the same player Character";
            return Status::identity_mismatch;
        }
        resolved_record = record;
        resolved_handle = live->source_handle;
    }
    if (!resolved_record || characters.find(resolved_handle) != resolved_record) {
        error = "saved player key has no existing canonical ObjectManager/factory Character";
        return Status::identity_mismatch;
    }
    if (staged.has_ai_tail) {
        const auto index = static_cast<std::size_t>(character_constructor_owner_v1::Component::ai);
        if (index >= resolved_record->components.slots.size() ||
            !resolved_record->components.slots[index].constructed ||
            !resolved_record->components.slots[index].canonical_owner) {
            error = "saved player AI tail has no canonical AI component provider";
            return Status::provider_unavailable;
        }
    }

    if (commit->prepare_player(commit->context, *resolved_record, staged, error)) {
        if (error.empty()) error = "canonical player load destination preflight failed";
        return Status::provider_failed;
    }
    // Recheck map/factory identity after the provider preflight. The runtime is
    // single-threaded at this owner seam; a changed identity fails before commit.
    auto* current = objects.find_by_source_handle(resolved_handle);
    if (!current || current->identity != resolved_record->character.identity ||
        characters.find(resolved_handle) != resolved_record) {
        error = "canonical player identity changed during load preparation";
        return Status::identity_mismatch;
    }
    if (commit->commit_player_atomically(commit->context, *resolved_record,
                                        staged, error)) {
        if (error.empty()) error = "canonical player atomic load commit failed";
        return Status::commit_failed;
    }
    output->sections = sections;
    output->object_rows = static_cast<std::uint32_t>(records.size());
    output->player_rows = 1;
    output->source_handle = resolved_handle;
    output->identity = resolved_record->character.identity;
    output->payload_bytes = static_cast<std::uint32_t>(saved.payload_size);
    error.clear();
    return Status::loaded;
}

} // namespace dh2::level_savegame_player_load_v1
