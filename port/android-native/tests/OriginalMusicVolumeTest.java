package com.example.dh2;

public final class OriginalMusicVolumeTest {
    private static void near(float actual, float expected, String message) {
        if (Math.abs(actual - expected) > 0.001f)
            throw new AssertionError(message + ": got " + actual + ", expected " + expected);
    }

    public static void main(String[] args) {
        near(OriginalMusicVolume.gain(0), 0f, "mute");
        near(OriginalMusicVolume.gain(35), 0.35f, "saved music level");
        near(OriginalMusicVolume.gain(100), 1f, "maximum");
        near(OriginalMusicVolume.gain(-1), 0f, "lower clamp");
        near(OriginalMusicVolume.gain(101), 1f, "upper clamp");
        near(OriginalMusicVolume.outputGain(0.35f, false), 0f, "focus loss mutes movie soundtrack");
        near(OriginalMusicVolume.outputGain(0.35f, true), 0.35f, "focus gain restores saved level");
        near(OriginalMusicVolume.outputGain(2f, true), 1f, "playback gain clamp");
        System.out.println("PASS: original music volume normalization");
    }
}
