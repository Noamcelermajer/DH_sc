#pragma once

#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

// Import the original Level MLX with the existing source-world parser and
// serialize only its translation-only Module layout into runtime DWLD v1.
int dh2_world_compile_static_layout(const uint8_t* mlx, size_t mlx_size,
    const char* level_name, const char* source_path,
    uint8_t* output, size_t output_capacity, size_t* output_size,
    char* error, size_t error_capacity);

#ifdef __cplusplus
}
#endif
