#include "transform.hpp"

#include <cstring>

using dh2::math::Matrix4f;

namespace {
// mult34 calls __aeabi_fmul and __aeabi_fadd for each operation. Volatile
// stores keep the same binary32 rounding boundaries on host compilers.
float rounded_multiply(float a, float b) {
    volatile float result = a * b;
    return result;
}

float rounded_add(float a, float b) {
    volatile float result = a + b;
    return result;
}

float sum3_products(float a0, float b0, float a1, float b1,
                    float a2, float b2) {
    const float first = rounded_multiply(a0, b0);
    const float second = rounded_multiply(a1, b1);
    const float first_sum = rounded_add(first, second);
    const float third = rounded_multiply(a2, b2);
    return rounded_add(first_sum, third);
}

void copy_matrix_payload(Matrix4f* out, const Matrix4f* source) {
    // The original identity shortcut copies 0x41 bytes: 16 floats and the
    // identity hint byte, while leaving the host struct's trailing padding.
    std::memcpy(out, source, 0x41);
}
}

extern "C" Matrix4f* dh2_scene_compose_absolute(
    const Matrix4f* parent_absolute,
    const Matrix4f* local_relative,
    Matrix4f* out_absolute) {
    // The original method tests the left operand first. If both carry the
    // identity hint, the right operand is copied by this first shortcut.
    if (parent_absolute->identity_hint != 0) {
        copy_matrix_payload(out_absolute, local_relative);
        return out_absolute;
    }
    if (local_relative->identity_hint != 0) {
        copy_matrix_payload(out_absolute, parent_absolute);
        return out_absolute;
    }

    // Matrix storage is column-major: m[column * 4 + row]. The bottom row
    // for the first three columns is fixed to 0 in the engine's 3x4 path.
    for (unsigned column = 0; column != 3; ++column) {
        const unsigned local_column = column * 4;
        for (unsigned row = 0; row != 3; ++row) {
            out_absolute->m[local_column + row] = sum3_products(
                parent_absolute->m[row], local_relative->m[local_column],
                parent_absolute->m[4 + row], local_relative->m[local_column + 1],
                parent_absolute->m[8 + row], local_relative->m[local_column + 2]);
        }
        out_absolute->m[local_column + 3] = 0.0f;
    }

    for (unsigned row = 0; row != 3; ++row) {
        const float translated = sum3_products(
            parent_absolute->m[row], local_relative->m[12],
            parent_absolute->m[4 + row], local_relative->m[13],
            parent_absolute->m[8 + row], local_relative->m[14]);
        out_absolute->m[12 + row] = rounded_add(
            translated, parent_absolute->m[12 + row]);
    }
    out_absolute->m[15] = 1.0f;
    out_absolute->identity_hint = 0;
    return out_absolute;
}
