package com.example.dh2;

/** Shared normalization for the original 0..100 music option. */
final class OriginalMusicVolume {
    private OriginalMusicVolume() { }

    static float gain(int percent) {
        return Math.max(0, Math.min(100, percent)) / 100f;
    }

    static float outputGain(float musicGain, boolean audioFocusGained) {
        float clamped = Math.max(0f, Math.min(1f, musicGain));
        return audioFocusGained ? clamped : 0f;
    }
}
