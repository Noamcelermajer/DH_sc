#pragma once

#include "../../asset-payloads/payloads.hpp"

// This view is limited to the exact type-1 payload pattern observed in the
// nine recovered BDAE records. It does not interpret the leading 20 bytes and
// does not model a general type-1 geometry format or the original engine ABI.
namespace dh2::asset_geometry_type1 {
struct ObservedMeshSuffix {
    dh2::assets::Mesh mesh;
    const std::uint8_t* opaque_prefix;
    std::uint32_t opaque_prefix_size;
};
}

// Opens the ordinary SMesh-shaped suffix at payload+0x14 for one observed
// type-1 record. On success, `mesh` borrows bytes from `image`; the caller must
// retain that image. `opaque_prefix` points at the uninterpreted 20-byte lead.
// The helper reuses the asset-payload attribute, primitive, and index readers
// to validate the ranges before returning. It is a new data view, not evidence
// that the original runtime consumes this path.
dh2::assets::Error dh2_observed_type1_mesh_suffix_open(
    dh2::asset_geometry_type1::ObservedMeshSuffix* out,
    const dh2::resources::BresView* image,
    std::int32_t geometry_index);
