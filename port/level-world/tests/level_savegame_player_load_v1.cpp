#include "../level_savegame_player_load_v1.hpp"

#include <array>
#include <cassert>
#include <cstdint>
#include <cstdio>
#include <string>
#include <vector>

namespace load = dh2::level_savegame_player_load_v1;
namespace manager = dh2::object_manager_runtime_owner_v1;
namespace factory = dh2::character_runtime_factory_v1;
namespace ctor = dh2::character_constructor_owner_v1;
namespace aggro = dh2::character::aggro_search;
namespace save = dh2::level_savegame_owner_v1;

static void put_u32(std::vector<std::uint8_t>& out, std::uint32_t value) {
    for (unsigned i=0; i!=4; ++i) out.push_back(std::uint8_t(value>>(8*i)));
}
static bool write_payload(void* raw, std::uintptr_t,
                          std::vector<std::uint8_t>& out, std::string&) {
    out=*static_cast<const std::vector<std::uint8_t>*>(raw);
    return false;
}

static std::vector<std::uint8_t> image(std::string key="PlayerCharacter_0",
                                      std::string name="PlayerCharacter_0",
                                      std::uint32_t type=1,
                                      std::size_t payload_size=59) {
    std::vector<std::uint8_t> payload;
    payload.reserve(payload_size);
    payload.insert(payload.end(), {0,0});
    put_u32(payload, 17); // GameObject +0x270
    put_u32(payload, 4); // Character SM state
    for (unsigned i=0; i!=24; ++i) payload.push_back(std::uint8_t(i+1));
    payload.push_back(1); // dead
    for (unsigned i=0; i!=24; ++i) payload.push_back(std::uint8_t(i+31));
    if (payload_size == 65) {
        put_u32(payload, 0x1234); payload.push_back(1); payload.push_back(0);
    }
    assert(payload.size()==payload_size);
    const bool player_key=key=="PlayerCharacter_0";
    const save::Object object{0xabc,name,key,static_cast<std::int32_t>(type),1,
                              std::uint8_t(player_key),std::uint8_t(player_key),
                              std::uint8_t(player_key),0};
    const save::SerializeServices serializer{&payload,&write_payload};
    std::vector<std::uint8_t> objs,info,out;
    save::Result result{}; std::string error;
    assert(save::serialize_objects(&object,1,0,&serializer,objs,&result,error)==
           save::Status::complete);
    assert(save::serialize_info_word(0x12345678,info,error));
    const save::Section sections[]={{"INFO",std::move(info)},{"OBJS",std::move(objs)}};
    assert(save::serialize_savegame(sections,2,out,error));
    return out;
}

struct Fixture {
    std::uintptr_t component_tokens[factory::component_count]{};
    unsigned prepares{}, commits{};
    load::PlayerState applied{};
    bool fail_prepare{}, fail_commit{};
    static int component(void* raw, ctor::Component id, ctor::Identity identity,
                         factory::ComponentStorage::Slot* slot, std::string&) {
        auto& f=*static_cast<Fixture*>(raw); slot->component=id;
        slot->canonical_owner=&f.component_tokens[static_cast<unsigned>(id)];
        return identity ? 0 : 1;
    }
    static int associate(void*, ctor::Association, ctor::Identity identity,
                         const factory::ComponentStorage&, std::string&) { return identity?0:1; }
    static int register_state(void*, ctor::Identity identity, std::uint32_t,
                              std::string&) { return identity?0:1; }
    static void rollback(void*, ctor::Action, std::uint32_t, ctor::Identity,
                         factory::ComponentStorage&) noexcept {}
    static int enroll(void*, aggro::Character*, bool duplicate, bool* appended) {
        *appended=!duplicate; return duplicate?1:0;
    }
    static int remove_character(void*, aggro::Character*, std::size_t* removed) {
        *removed=1; return 0;
    }
    static bool object_facts(void*, const manager::GameObject& live,
                             const factory::Record* record, save::Object* out,
                             std::string&) {
        if (!out || !live.identity || !record || record->game_object.identity!=live.identity)
            return false;
        out->identity=live.identity; out->name="PlayerCharacter_0";
        out->manager_key="PlayerCharacter_0"; out->type_word=1; out->enabled=1;
        out->is_character=1; out->is_player=1; out->is_local_player=1;
        return true;
    }
    static bool prepare(void* raw, const factory::Record& record,
                        const load::PlayerState&, std::string& error) {
        auto& f=*static_cast<Fixture*>(raw); ++f.prepares;
        if (!record.object_registered || !record.character.identity) return true;
        if (f.fail_prepare) { error="fixture preflight rejection"; return true; }
        return false;
    }
    static bool commit(void* raw, const factory::Record& record,
                       const load::PlayerState& state, std::string& error) {
        auto& f=*static_cast<Fixture*>(raw); ++f.commits;
        if (!record.character.identity) return true;
        if (f.fail_commit) { error="fixture atomic commit rejection"; return true; }
        f.applied=state; return false;
    }
};

int main() {
    manager::Owner objects;
    Fixture fixture;
    factory::Owner characters(objects,{&fixture,&Fixture::enroll,&Fixture::remove_character});
    factory::Services factory_services{&fixture,&Fixture::component,&Fixture::associate,
        &Fixture::register_state,&Fixture::rollback};
    factory::Record* player=nullptr; factory::Result created{}; std::string error;
    assert(characters.create(9,{}, {},factory_services,&player,&created,error)==
           factory::Status::complete);
    assert(player && player->character.identity==player->game_object.identity);
    const auto facts=dh2::level_savegame_object_manager_v1::FactsServices{
        &fixture,&Fixture::object_facts,nullptr,nullptr};
    const load::CommitServices commit{&fixture,&Fixture::prepare,&Fixture::commit};
    load::Result result{};

    // Source loader resolves the manager key, not the row's display name.
    auto saved=image("PlayerCharacter_0","PlayerCharacter_01");
    assert(load::load_player(saved.data(),saved.size(),objects,characters,&facts,&commit,
                             &result,error)==load::Status::loaded);
    assert(result.sections==2 && result.object_rows==1 && result.player_rows==1 &&
           result.source_handle==9 && result.identity==player->character.identity &&
           result.payload_bytes==59 && fixture.prepares==1 && fixture.commits==1);
    assert(fixture.applied.game_object_word_270==17 &&
           fixture.applied.state_machine_state==4 && fixture.applied.dead==1 &&
           fixture.applied.position[0]==1 && fixture.applied.vector_1309[11]==54);
    const auto no_commit=load::load_player(saved.data(),saved.size(),objects,characters,
        &facts,nullptr,&result,error);
    assert(no_commit==load::Status::provider_unavailable && fixture.commits==1);

    // Fresh-process-shaped reopen: only bytes survive; a new canonical manager
    // and Character factory resolve the saved key to a different live identity.
    manager::Owner cold_objects;
    Fixture cold_fixture;
    factory::Owner cold_characters(cold_objects,
        {&cold_fixture,&Fixture::enroll,&Fixture::remove_character});
    factory::Services cold_factory_services{&cold_fixture,&Fixture::component,
        &Fixture::associate,&Fixture::register_state,&Fixture::rollback};
    factory::Record* cold_player=nullptr; factory::Result cold_created{};
    assert(cold_characters.create(9,{}, {},cold_factory_services,&cold_player,
        &cold_created,error)==factory::Status::complete);
    const auto cold_facts=dh2::level_savegame_object_manager_v1::FactsServices{
        &cold_fixture,&Fixture::object_facts,nullptr,nullptr};
    const load::CommitServices cold_commit{&cold_fixture,&Fixture::prepare,&Fixture::commit};
    const auto saved_identity=player->character.identity;
    assert(cold_player->character.identity!=saved_identity);
    assert(load::load_player(saved.data(),saved.size(),cold_objects,cold_characters,
        &cold_facts,&cold_commit,&result,error)==load::Status::loaded);
    assert(result.identity==cold_player->character.identity &&
        result.identity!=saved_identity && cold_fixture.commits==1 &&
        cold_fixture.applied.dead==1 && cold_fixture.applied.game_object_word_270==17);

    // A malformed envelope, unsupported row, absent key, wrong type, missing
    // provider, or preflight failure cannot reach the atomic mutation callback.
    auto malformed=saved; malformed.push_back(0xff);
    auto before=fixture.commits;
    assert(load::load_player(malformed.data(),malformed.size(),objects,characters,&facts,
        &commit,&result,error)==load::Status::malformed_save && fixture.commits==before);
    auto extra=image("OtherObject","PlayerCharacter_0");
    before=fixture.commits;
    assert(load::load_player(extra.data(),extra.size(),objects,characters,&facts,&commit,
        &result,error)==load::Status::unsupported_record && fixture.commits==before);
    auto absent=image("MissingPlayer");
    assert(load::load_player(absent.data(),absent.size(),objects,characters,&facts,&commit,
        &result,error)==load::Status::unsupported_record && fixture.commits==before);
    auto bad_type=image("PlayerCharacter_0","PlayerCharacter_0",2);
    assert(load::load_player(bad_type.data(),bad_type.size(),objects,characters,&facts,&commit,
        &result,error)==load::Status::identity_mismatch && fixture.commits==before);
    fixture.fail_prepare=true;
    assert(load::load_player(saved.data(),saved.size(),objects,characters,&facts,&commit,
        &result,error)==load::Status::provider_failed && fixture.commits==before);
    fixture.fail_prepare=false;
    fixture.fail_commit=true;
    const auto committed_dead=fixture.applied.dead;
    assert(load::load_player(saved.data(),saved.size(),objects,characters,&facts,&commit,
        &result,error)==load::Status::commit_failed && fixture.commits==before+1);
    assert(fixture.applied.dead==committed_dead);
    fixture.fail_commit=false;

    auto with_ai=image("PlayerCharacter_0","PlayerCharacter_0",1,65);
    const auto ai_index=static_cast<std::size_t>(ctor::Component::ai);
    assert(ai_index<player->components.slots.size());
    const auto ai_slot=player->components.slots[ai_index];
    player->components.slots[ai_index].constructed=false;
    player->components.slots[ai_index].canonical_owner=nullptr;
    assert(load::load_player(with_ai.data(),with_ai.size(),objects,characters,&facts,&commit,
        &result,error)==load::Status::provider_unavailable && fixture.commits==before+1);
    player->components.slots[ai_index]=ai_slot;
    std::puts("PASS level_savegame_player_load_v1 checks=9");
}
