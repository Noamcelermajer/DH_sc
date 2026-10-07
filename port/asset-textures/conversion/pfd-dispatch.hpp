#pragma once

#include <cstdint>

// Narrow source port of pixel_format::getPackedType from the APK.
// Preconditions: row points to a complete 0x28-byte PFDTable row. The original
// function performs no bounds/null check; this helper preserves that boundary.
namespace dh2::textures::conversion {

constexpr std::uint8_t packed_type_from_pfd_row(const std::uint8_t* row) noexcept {
    const std::uint32_t flags = static_cast<std::uint32_t>(row[0]) |
        (static_cast<std::uint32_t>(row[1]) << 8) |
        (static_cast<std::uint32_t>(row[2]) << 16) |
        (static_cast<std::uint32_t>(row[3]) << 24);
    const std::uint8_t category = row[0x14];
    const std::uint8_t selector = row[0x17];

    if ((flags & 0x40u) != 0) return category;
    if (selector == 1) return category;
    if (category == 0) return selector <= 2 ? 1 : 2;
    if (category == 1 && selector == 2) return 2;
    return 0xff;
}

}  // namespace dh2::textures::conversion
