#pragma once
#include "../scene-materials/scene.hpp"
#include "floors.hpp"
#include <array>
#include <cstdint>
#include <string>
#include <vector>
namespace dh2::world {
using Point=std::array<float,3>;
struct Triangle{Point a,b,c;unsigned room;};
struct Level{scene::Scene scene;std::vector<Triangle> floor;Point spawn{};unsigned rooms=0;std::unique_ptr<floors::World> native_floor;};
struct Transform{Point position{};Point rotation_degrees{};Point scale{1,1,1};};
struct EntryPoint{std::int32_t id=-1;unsigned room=0;std::string name;Transform local;Transform world;};
struct SourceMgpView{const char* source_path=nullptr;const std::uint8_t* data=nullptr;std::size_t size=0;};
struct SpawnSelection{EntryPoint source;Point position{};Point rotation_degrees{};bool floor_snapped=false;};
bool load(const resources::BresView&,const std::uint8_t* descriptor,std::size_t,Level&,std::string&);
// Build the bounded static Module layout from the original Level .mlx and
// selected SpawnPoint sidecar. This replaces the generated DWLD module table
// at runtime; conditional/rotated/scaled modules remain unsupported.
bool compile_source_layout(const std::uint8_t* mlx,std::size_t mlx_size,
                           const std::uint8_t* spawnpoints,std::size_t spawn_size,
                           std::int32_t entrypoint_id,
                           std::vector<std::uint8_t>& descriptor,std::string& error);
// Import the bounded SWAMP MGP set and serialize supported source SpawnPoints
// into the existing SPWN v1 entrypoint owner (IDs 0, 3 and 13).
bool compile_source_spawnpoints(const std::uint8_t* mlx,std::size_t mlx_size,
                                const SourceMgpView* mgps,std::size_t mgp_count,
                                std::vector<std::uint8_t>& spawnpoints,std::string& error);
// SPWN v1 carries Crypt's two active entrypoints and SWAMP's three supported
// unconditional MGP entrypoints. Conditional SWAMP transition groups remain
// outside this format.
// Selection mirrors the ID lookup and floor snap in Level::_LoadPlayer, but
// live-object activation and manager iteration/order semantics are not yet
// generalized. Position Z uses the loaded-world floor query used by world::load.
bool load_entrypoints(const std::uint8_t* data,std::size_t size,unsigned room_count,
                      std::vector<EntryPoint>& out,std::string& error);
bool select_entrypoint(const Level&,const std::vector<EntryPoint>&,std::int32_t id,
                       SpawnSelection& out,std::string& error);
// Authored levels use the source-built floor selector/collision kernel. The
// radius/step/substep movement policy remains a new adapter; PF route search,
// obstacles and gameplay movement scheduling need further reconstruction.
bool height(const Level&,const Point&,float& result);
bool supported(const Level&,const Point&,float radius,float& floor_height);
bool move(const Level&,Point&,float dx,float dy,float radius);
}
