#pragma once

#include "../engine-math/math.hpp"

// CPU-only reproduction of the supplied engine's affine mult34 operation.
// Inputs are precomputed runtime matrices; this function does not inspect
// scene nodes, serialized scene records, or their dirty flags.
// All pointers must be valid, and out_absolute must not overlap either input.
extern "C" dh2::math::Matrix4f* dh2_scene_compose_absolute(
    const dh2::math::Matrix4f* parent_absolute,
    const dh2::math::Matrix4f* local_relative,
    dh2::math::Matrix4f* out_absolute);
