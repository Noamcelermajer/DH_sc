#include "../level_savegame_owner_v1.hpp"

#include <cstdio>
#include <cstdlib>
#include <string>
#include <vector>

namespace owner = dh2::level_savegame_owner_v1;
namespace {
void check(bool value, const char* message) {
    if (!value) { std::fprintf(stderr, "FAIL: %s\n", message); std::exit(1); }
}
struct Fixture {
    std::vector<std::uintptr_t> calls;
    std::string published_filename;
    std::vector<std::uint8_t> published_image;
    static bool serialize(void* raw, std::uintptr_t identity,
                          std::vector<std::uint8_t>& output, std::string&) {
        auto& self = *static_cast<Fixture*>(raw);
        self.calls.push_back(identity);
        output = {static_cast<std::uint8_t>(identity), 0xaa};
        return false;
    }
    static bool publish(void* raw, const std::string& filename,
                        const std::vector<std::uint8_t>& image, std::string&) {
        auto& self = *static_cast<Fixture*>(raw);
        self.published_filename = filename;
        self.published_image = image;
        return true;
    }
};
std::uint32_t word(const std::vector<std::uint8_t>& bytes, std::size_t at) {
    return std::uint32_t(bytes.at(at)) | std::uint32_t(bytes.at(at+1)) << 8 |
           std::uint32_t(bytes.at(at+2)) << 16 | std::uint32_t(bytes.at(at+3)) << 24;
}
}

int main() {
    std::string error;
    std::string filename;
    check(owner::format_filename(2, 7, 3, 1, filename, error) &&
          filename == "dh2_002_1_007_003_level.savegame",
          "LevelSavegame GetFilename source argument order changed");

    Fixture fixture;
    const owner::SerializeServices services{&fixture, Fixture::serialize};
    const owner::Object rows[] = {
        {1, "enemy", "enemy_0", 0x11223344, 1, 1, 0, 0, 0},
        {2, "Hero", "Hero_0", 7, 1, 1, 1, 1, 0},
        {3, "remote", "remote_0", 8, 1, 1, 1, 0, 0},
        {4, "disabled", "disabled_0", 9, 0, 0, 0, 0, 0},
    };
    std::vector<std::uint8_t> objects;
    owner::Result result{};
    check(owner::serialize_objects(rows, 4, 1, &services, objects, &result, error) ==
              owner::Status::complete,
          "source OBJS serializer rejected eligible canonical objects");
    check(result.source_objects == 4 && result.saved_objects == 2 &&
          fixture.calls == std::vector<std::uintptr_t>({1, 2}),
          "online/local/save-gate filters or ObjectManager order differ");
    check(word(objects, 0) == 2 && word(objects, 4) == 6 &&
          std::string(objects.begin()+8, objects.begin()+13) == "enemy" &&
          objects[13] == 0,
          "OBJS count or IStreamBase string terminator/length differs");

    std::vector<std::uint8_t> info;
    check(owner::serialize_info_word(0x12345678, info, error) &&
          info == std::vector<std::uint8_t>({0x78,0x56,0x34,0x12}),
          "LevelSavegame INFO word is not a source int32");
    const owner::Section sections[] = {{"OBJS", objects}, {"INFO", info}};
    std::vector<std::uint8_t> file;
    check(owner::serialize_savegame(sections, 2, file, error),
          "per-level Savegame section assembly failed");
    check(word(file, 0) == 2 && word(file, 4) == 4 &&
          std::string(file.begin()+8, file.begin()+12) == "INFO" &&
          word(file, 16) == objects.size() &&
          std::string(file.begin()+20, file.begin()+24) == "OBJS",
          "LevelSavegame INFO/OBJS section ordering or lengths differ");
    const owner::Section wrong_sections[] = {{"INFO", info}, {"XTRA", {}}};
    check(!owner::serialize_savegame(wrong_sections, 2, file, error) &&
          !error.empty(), "unregistered level section was accepted");

    owner::Owner level_savegame;
    check(level_savegame.construct(filename, 0x12345678, error),
          "source LevelSavegame owner construction failed");
    const owner::PublishServices publish{&fixture, Fixture::publish};
    owner::SaveResult saved{};
    check(level_savegame.save_all(rows, 4, 1, &services, &publish, &saved, error) ==
              owner::SaveStatus::saved && saved.object_rows == 4 &&
          saved.saved_objects == 2 && saved.publishes == 1 &&
          fixture.published_filename == filename &&
          fixture.published_image == level_savegame.last_image(),
          "one LevelSavegame owner did not publish its own INFO/OBJS image");
    level_savegame.destroy();
    check(!level_savegame.constructed(), "LevelSavegame owner destroy did not retire state");

    const owner::SerializeServices unavailable{};
    check(owner::serialize_objects(rows, 1, 0, &unavailable, file, &result, error) ==
              owner::Status::provider_unavailable && !error.empty(),
          "eligible object without its source virtual provider did not fail closed");
    std::puts("PASS level_savegame_owner_v1 checks=5");
}
