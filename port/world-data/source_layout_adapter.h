#pragma once

#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

// MGP bytes supplied for one MLX Module. The array passed to the source
// SpawnPoint compiler is in MLX Module order; source_path must identify that
// module's referenced cache path (the importer canonicalizes iPhone aliases).
typedef struct dh2_world_source_mgp {
    const char* source_path;
    const uint8_t* data;
    size_t size;
} dh2_world_source_mgp;

// Import the original Level MLX with the existing source-world parser and
// serialize only its translation-only Module layout into runtime DWLD v1.
int dh2_world_compile_static_layout(const uint8_t* mlx, size_t mlx_size,
    const char* level_name, const char* source_path,
    uint8_t* output, size_t output_capacity, size_t* output_size,
    char* error, size_t error_capacity);

// Import the MLX and its referenced MGPs through the source-world importer,
// then serialize only the three unconditional SWAMP entrypoints (IDs 0, 3,
// and 13) in the existing SPWN v1 format. The known conditional ID 1 and 4
// variants remain deferred. The v1 row carries module index and object name;
// source file path and GameObject record index remain available on the
// imported source records but are not representable in SPWN v1.
int dh2_world_compile_static_spawnpoints(const uint8_t* mlx, size_t mlx_size,
    const char* level_name, const char* source_path,
    const dh2_world_source_mgp* mgps, size_t mgp_count,
    uint8_t* output, size_t output_capacity, size_t* output_size,
    char* error, size_t error_capacity);

#ifdef __cplusplus
}
#endif
