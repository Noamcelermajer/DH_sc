/*
 * Bounded scalar PVRTC1 decoder port for the engine path identified in
 * ../ANALYSIS.md. Its color/modulation steps were cross-checked against the
 * Imagination Technologies Native_SDK PVRTDecompress.cpp reference; the APK
 * ARM ranges listed in README.md remain the target evidence.
 *
 * Copyright (c) Imagination Technologies Ltd. for reference-derived portions.
 * See LICENSE-NOTICE.md (MIT License).
 */

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <limits>
#include <new>

namespace dh2_pvrtc {

enum class DecodeResult {
	Ok,
	InvalidArgument,
	UnsupportedDimensions,
	InputTooShort,
	OutputTooShort,
	SizeOverflow,
	OutOfMemory
};

namespace {

struct Pixel {
	std::uint8_t r, g, b, a;
};

static_assert(sizeof(Pixel) == 4, "PVRTC output pixels are four bytes");

struct Endpoint {
	std::int32_t r, g, b, a;
};

struct Word {
	std::uint32_t modulation;
	std::uint32_t color;
};

struct WordIndices {
	int p[2], q[2], r[2], s[2];
};

struct ModulationGrid {
	std::int32_t value[16][8];
	std::int32_t mode[16][8];
};

bool checked_multiply(std::size_t a, std::size_t b, std::size_t* result) {
	if (a != 0 && b > (std::numeric_limits<std::size_t>::max)() / a) return false;
	*result = a * b;
	return true;
}

bool is_power_of_two(std::uint32_t value) {
	return value != 0 && (value & (value - 1)) == 0;
}

std::uint32_t read_le32(const std::uint8_t* p) {
	return static_cast<std::uint32_t>(p[0]) |
		(static_cast<std::uint32_t>(p[1]) << 8) |
		(static_cast<std::uint32_t>(p[2]) << 16) |
		(static_cast<std::uint32_t>(p[3]) << 24);
}

Word read_word(const std::uint8_t* input, std::size_t word_index) {
	const std::uint8_t* p = input + word_index * 8;
	Word word;
	word.modulation = read_le32(p);
	word.color = read_le32(p + 4);
	return word;
}

std::uint32_t twiddle_uv(std::uint32_t x_size, std::uint32_t y_size,
						 std::uint32_t x, std::uint32_t y) {
	std::uint32_t min_dimension = x_size;
	std::uint32_t max_value = y;
	std::uint32_t twiddled = 0;
	std::uint32_t src_bit = 1;
	std::uint32_t dst_bit = 1;
	unsigned shift_count = 0;

	if (y_size < x_size) {
		min_dimension = y_size;
		max_value = x;
	}

	while (src_bit < min_dimension) {
		if (y & src_bit) twiddled |= dst_bit;
		if (x & src_bit) twiddled |= dst_bit << 1;
		src_bit <<= 1;
		dst_bit <<= 2;
		++shift_count;
	}

	max_value >>= shift_count;
	twiddled |= max_value << (2 * shift_count);
	return twiddled;
}

std::uint32_t wrap_word_index(std::uint32_t count, int index) {
	if (index < 0) return static_cast<std::uint32_t>(index + static_cast<int>(count));
	if (static_cast<std::uint32_t>(index) >= count)
		return static_cast<std::uint32_t>(index) - count;
	return static_cast<std::uint32_t>(index);
}

Endpoint get_color_a(std::uint32_t color) {
	Endpoint out;
	if (color & 0x8000u) {
		const std::uint32_t blue4 = color & 0x1eu;
		out.r = static_cast<std::int32_t>((color >> 10) & 0x1fu);
		out.g = static_cast<std::int32_t>((color >> 5) & 0x1fu);
		out.b = static_cast<std::int32_t>(blue4 | (blue4 >> 4));
		out.a = 0xf;
	} else {
		out.r = static_cast<std::int32_t>(((color & 0xf00u) >> 7) | ((color & 0xf00u) >> 11));
		out.g = static_cast<std::int32_t>(((color & 0x0f0u) >> 3) | ((color & 0x0f0u) >> 7));
		out.b = static_cast<std::int32_t>(((color & 0x00eu) << 1) | ((color & 0x00eu) >> 2));
		out.a = static_cast<std::int32_t>((color & 0x7000u) >> 11);
	}
	return out;
}

Endpoint get_color_b(std::uint32_t color) {
	Endpoint out;
	if (color & 0x80000000u) {
		out.r = static_cast<std::int32_t>((color >> 26) & 0x1fu);
		out.g = static_cast<std::int32_t>((color >> 21) & 0x1fu);
		out.b = static_cast<std::int32_t>((color >> 16) & 0x1fu);
		out.a = 0xf;
	} else {
		out.r = static_cast<std::int32_t>(((color & 0x0f000000u) >> 23) | ((color & 0x0f000000u) >> 27));
		out.g = static_cast<std::int32_t>(((color & 0x00f00000u) >> 19) | ((color & 0x00f00000u) >> 23));
		out.b = static_cast<std::int32_t>(((color & 0x000f0000u) >> 15) | ((color & 0x000f0000u) >> 19));
		out.a = static_cast<std::int32_t>((color & 0x70000000u) >> 27);
	}
	return out;
}

void unpack_modulations(const Word& word, int offset_x, int offset_y,
						ModulationGrid* grid, bool mode_2bpp) {
	std::uint32_t word_mode = word.color & 1u;
	std::uint32_t bits = word.modulation;

	if (mode_2bpp) {
		if (word_mode != 0) {
			if (bits & 1u) {
				word_mode = (bits & (1u << 20)) ? 3u : 2u;
				if (bits & (1u << 21)) bits |= (1u << 20);
				else bits &= ~(1u << 20);
			}
			if (bits & 2u) bits |= 1u;
			else bits &= ~1u;

			for (int y = 0; y < 4; ++y) {
				for (int x = 0; x < 8; ++x) {
					grid->mode[x + offset_x][y + offset_y] = static_cast<std::int32_t>(word_mode);
					if (((x ^ y) & 1) == 0) {
						grid->value[x + offset_x][y + offset_y] = static_cast<std::int32_t>(bits & 3u);
						bits >>= 2;
					}
				}
			}
		} else {
			for (int y = 0; y < 4; ++y) {
				for (int x = 0; x < 8; ++x) {
					grid->mode[x + offset_x][y + offset_y] = 0;
					grid->value[x + offset_x][y + offset_y] = (bits & 1u) ? 3 : 0;
					bits >>= 1;
				}
			}
		}
		return;
	}

	if (word_mode != 0) {
		for (int y = 0; y < 4; ++y) {
			for (int x = 0; x < 4; ++x) {
				std::int32_t value = static_cast<std::int32_t>(bits & 3u);
				if (value == 1) value = 4;
				else if (value == 2) value = 14;
				else if (value == 3) value = 8;
				grid->value[y + offset_y][x + offset_x] = value;
				bits >>= 2;
			}
		}
	} else {
		for (int y = 0; y < 4; ++y) {
			for (int x = 0; x < 4; ++x) {
				std::int32_t value = static_cast<std::int32_t>(bits & 3u) * 3;
				if (value > 3) --value;
				grid->value[y + offset_y][x + offset_x] = value;
				bits >>= 2;
			}
		}
	}
}

std::int32_t get_modulation(const ModulationGrid& grid, unsigned x, unsigned y,
							bool mode_2bpp) {
	if (!mode_2bpp) return grid.value[x][y];
	static const std::int32_t representative[4] = { 0, 3, 5, 8 };
	if (grid.mode[x][y] == 0 || ((x ^ y) & 1u) == 0)
		return representative[grid.value[x][y] & 3];
	if (grid.mode[x][y] == 1) {
		return (representative[grid.value[x][y - 1] & 3] +
			representative[grid.value[x][y + 1] & 3] +
			representative[grid.value[x - 1][y] & 3] +
			representative[grid.value[x + 1][y] & 3] + 2) / 4;
	}
	if (grid.mode[x][y] == 2) {
		return (representative[grid.value[x - 1][y] & 3] +
			representative[grid.value[x + 1][y] & 3] + 1) / 2;
	}
	return (representative[grid.value[x][y - 1] & 3] +
			representative[grid.value[x][y + 1] & 3] + 1) / 2;
}

std::int32_t interpolate_component(std::int32_t p, std::int32_t q,
								   std::int32_t r, std::int32_t s,
								   unsigned x, unsigned y,
								   unsigned word_width, bool alpha,
								   bool mode_2bpp) {
	std::int32_t top = p * static_cast<std::int32_t>(word_width);
	std::int32_t bottom = r * static_cast<std::int32_t>(word_width);
	top += static_cast<std::int32_t>(x) * (q - p);
	bottom += static_cast<std::int32_t>(x) * (s - r);
	std::int32_t result = 4 * top + static_cast<std::int32_t>(y) * (bottom - top);

	if (mode_2bpp) {
		return alpha ? ((result >> 5) + (result >> 1))
			: ((result >> 7) + (result >> 2));
	}
	return alpha ? ((result >> 4) + result)
		: ((result >> 6) + (result >> 1));
}

Pixel interpolate_and_modulate(const Word& p, const Word& q, const Word& r,
								const Word& s, unsigned local_x, unsigned local_y,
								unsigned word_width, bool mode_2bpp,
								const ModulationGrid& modulation) {
	const Endpoint a_p = get_color_a(p.color);
	const Endpoint a_q = get_color_a(q.color);
	const Endpoint a_r = get_color_a(r.color);
	const Endpoint a_s = get_color_a(s.color);
	const Endpoint b_p = get_color_b(p.color);
	const Endpoint b_q = get_color_b(q.color);
	const Endpoint b_r = get_color_b(r.color);
	const Endpoint b_s = get_color_b(s.color);

	const std::int32_t mod = get_modulation(modulation,
		static_cast<unsigned>(word_width / 2) + local_x,
		2u + local_y, mode_2bpp);
	const bool punchthrough = mod > 10;
	const std::int32_t weight_b = punchthrough ? mod - 10 : mod;
	const std::int32_t weight_a = 8 - weight_b;
	Pixel out;

	const std::int32_t ar = interpolate_component(a_p.r, a_q.r, a_r.r, a_s.r, local_x, local_y, word_width, false, mode_2bpp);
	const std::int32_t ag = interpolate_component(a_p.g, a_q.g, a_r.g, a_s.g, local_x, local_y, word_width, false, mode_2bpp);
	const std::int32_t ab = interpolate_component(a_p.b, a_q.b, a_r.b, a_s.b, local_x, local_y, word_width, false, mode_2bpp);
	const std::int32_t aa = interpolate_component(a_p.a, a_q.a, a_r.a, a_s.a, local_x, local_y, word_width, true, mode_2bpp);
	const std::int32_t br = interpolate_component(b_p.r, b_q.r, b_r.r, b_s.r, local_x, local_y, word_width, false, mode_2bpp);
	const std::int32_t bg = interpolate_component(b_p.g, b_q.g, b_r.g, b_s.g, local_x, local_y, word_width, false, mode_2bpp);
	const std::int32_t bb = interpolate_component(b_p.b, b_q.b, b_r.b, b_s.b, local_x, local_y, word_width, false, mode_2bpp);
	const std::int32_t ba = interpolate_component(b_p.a, b_q.a, b_r.a, b_s.a, local_x, local_y, word_width, true, mode_2bpp);
	out.r = static_cast<std::uint8_t>((ar * weight_a + br * weight_b) / 8);
	out.g = static_cast<std::uint8_t>((ag * weight_a + bg * weight_b) / 8);
	out.b = static_cast<std::uint8_t>((ab * weight_a + bb * weight_b) / 8);
	out.a = punchthrough ? 0 : static_cast<std::uint8_t>((aa * weight_a + ba * weight_b) / 8);
	return out;
}

Word get_wrapped_word(const std::uint8_t* input, std::uint32_t num_x_words,
				  std::uint32_t num_y_words, int x, int y) {
	const std::uint32_t wx = wrap_word_index(num_x_words, x);
	const std::uint32_t wy = wrap_word_index(num_y_words, y);
	const std::size_t index = static_cast<std::size_t>(twiddle_uv(num_x_words, num_y_words, wx, wy));
	return read_word(input, index);
}

void decode_valid_surface(const std::uint8_t* input, Pixel* output,
						  std::uint32_t width, std::uint32_t height,
						  std::uint32_t num_x_words, std::uint32_t num_y_words,
						  unsigned word_width, bool mode_2bpp) {
	const unsigned word_height = 4;
	Pixel decoded_word[32] = {};

	for (int word_y = -1; word_y < static_cast<int>(num_y_words) - 1; ++word_y) {
		for (int word_x = -1; word_x < static_cast<int>(num_x_words) - 1; ++word_x) {
			const WordIndices indices = {
				{ static_cast<int>(wrap_word_index(num_x_words, word_x)), static_cast<int>(wrap_word_index(num_y_words, word_y)) },
				{ static_cast<int>(wrap_word_index(num_x_words, word_x + 1)), static_cast<int>(wrap_word_index(num_y_words, word_y)) },
				{ static_cast<int>(wrap_word_index(num_x_words, word_x)), static_cast<int>(wrap_word_index(num_y_words, word_y + 1)) },
				{ static_cast<int>(wrap_word_index(num_x_words, word_x + 1)), static_cast<int>(wrap_word_index(num_y_words, word_y + 1)) }
			};
		const Word p = get_wrapped_word(input, num_x_words, num_y_words, indices.p[0], indices.p[1]);
		const Word q = get_wrapped_word(input, num_x_words, num_y_words, indices.q[0], indices.q[1]);
		const Word r = get_wrapped_word(input, num_x_words, num_y_words, indices.r[0], indices.r[1]);
		const Word s = get_wrapped_word(input, num_x_words, num_y_words, indices.s[0], indices.s[1]);

		ModulationGrid modulation = {};
		unpack_modulations(p, 0, 0, &modulation, mode_2bpp);
		unpack_modulations(q, static_cast<int>(word_width), 0, &modulation, mode_2bpp);
		unpack_modulations(r, 0, static_cast<int>(word_height), &modulation, mode_2bpp);
		unpack_modulations(s, static_cast<int>(word_width), static_cast<int>(word_height), &modulation, mode_2bpp);

		for (unsigned y = 0; y < word_height; ++y) {
			for (unsigned x = 0; x < word_width; ++x) {
				const unsigned interp_x = x;
				const unsigned interp_y = y;
				const Pixel pixel = interpolate_and_modulate(p, q, r, s, interp_x,
					interp_y, word_width, mode_2bpp, modulation);
				const std::size_t color_index = mode_2bpp
					? static_cast<std::size_t>(y) * word_width + x
					: static_cast<std::size_t>(y) + static_cast<std::size_t>(x) * word_height;
				decoded_word[color_index] = pixel;
			}
		}

		for (unsigned y = 0; y < word_height / 2; ++y) {
			for (unsigned x = 0; x < word_width / 2; ++x) {
				const std::size_t p_x = static_cast<std::size_t>(indices.p[0]) * word_width + x + word_width / 2;
				const std::size_t p_y = static_cast<std::size_t>(indices.p[1]) * word_height + y + word_height / 2;
				const std::size_t q_x = static_cast<std::size_t>(indices.q[0]) * word_width + x;
				const std::size_t q_y = static_cast<std::size_t>(indices.q[1]) * word_height + y + word_height / 2;
				const std::size_t r_x = static_cast<std::size_t>(indices.r[0]) * word_width + x + word_width / 2;
				const std::size_t r_y = static_cast<std::size_t>(indices.r[1]) * word_height + y;
				const std::size_t s_x = static_cast<std::size_t>(indices.s[0]) * word_width + x;
				const std::size_t s_y = static_cast<std::size_t>(indices.s[1]) * word_height + y;

				if (p_x < width && p_y < height) output[p_y * width + p_x] = decoded_word[y * word_width + x];
				if (q_x < width && q_y < height) output[q_y * width + q_x] = decoded_word[y * word_width + x + word_width / 2];
				if (r_x < width && r_y < height) output[r_y * width + r_x] = decoded_word[(y + word_height / 2) * word_width + x];
				if (s_x < width && s_y < height) output[s_y * width + s_x] = decoded_word[(y + word_height / 2) * word_width + x + word_width / 2];
			}
		}
	}

}

} // namespace

/*
 * mode == 0 selects the engine's 4-bpp path; mode != 0 selects its 2-bpp
 * path. The native ABI has no buffer lengths. This port adds both lengths and
 * accepts only complete, power-of-two PVRTC1 word grids at the format minimum.
 */
DecodeResult decode(const std::uint8_t* input, std::size_t input_size,
					int mode, std::uint32_t width, std::uint32_t height,
					std::uint8_t* output, std::size_t output_size) {
	if (!input || !output || width == 0 || height == 0)
		return DecodeResult::InvalidArgument;
	if (width > static_cast<std::uint32_t>((std::numeric_limits<std::int32_t>::max)()) ||
		height > static_cast<std::uint32_t>((std::numeric_limits<std::int32_t>::max)()))
		return DecodeResult::UnsupportedDimensions;

	const bool mode_2bpp = mode != 0;
	const unsigned word_width = mode_2bpp ? 8u : 4u;
	const std::uint32_t minimum_width = word_width * 2u;
	const std::uint32_t minimum_height = 8u;
	if (width < minimum_width || height < minimum_height ||
		width % word_width != 0 || height % 4u != 0 ||
		!is_power_of_two(width) || !is_power_of_two(height))
		return DecodeResult::UnsupportedDimensions;

	const std::uint32_t num_x_words = width / word_width;
	const std::uint32_t num_y_words = height / 4u;
	if (!is_power_of_two(num_x_words) || !is_power_of_two(num_y_words))
		return DecodeResult::UnsupportedDimensions;

	std::size_t word_count = 0;
	std::size_t required_input = 0;
	std::size_t pixel_count = 0;
	std::size_t required_output = 0;
	if (!checked_multiply(num_x_words, num_y_words, &word_count) ||
		word_count > (std::numeric_limits<std::uint32_t>::max)() ||
		!checked_multiply(word_count, 8u, &required_input) ||
		!checked_multiply(width, height, &pixel_count) ||
		!checked_multiply(pixel_count, sizeof(Pixel), &required_output))
		return DecodeResult::SizeOverflow;
	if (input_size < required_input) return DecodeResult::InputTooShort;
	if (output_size < required_output) return DecodeResult::OutputTooShort;

	Pixel* pixels = new (std::nothrow) Pixel[pixel_count]();
	if (!pixels) return DecodeResult::OutOfMemory;
	decode_valid_surface(input, pixels, width, height, num_x_words, num_y_words,
		word_width, mode_2bpp);
	std::memcpy(output, pixels, required_output);
	delete[] pixels;
	return DecodeResult::Ok;
}

} // namespace dh2_pvrtc
