package com.example.dh2;

public final class IntroVideoFitTest {
    private static void near(float actual, float expected, String message) {
        if (Math.abs(actual - expected) > 0.01f)
            throw new AssertionError(message + ": got " + actual + ", expected " + expected);
    }

    private static IntroVideoFit.Result fit(int width, int height) {
        IntroVideoFit.Result result = IntroVideoFit.contain(1280, 720, width, height);
        if (result == null) throw new AssertionError("valid surface returned no fit");
        near(result.width / result.height, 16f / 9f, "authored frame aspect");
        return result;
    }

    public static void main(String[] args) {
        IntroVideoFit.Result authored = fit(1920, 1080);
        near(authored.width, 1920, "16:9 frame width");
        near(authored.height, 1080, "16:9 frame height");
        near(authored.left, 0, "16:9 left edge");
        near(authored.top, 0, "16:9 top edge");

        IntroVideoFit.Result wide = fit(2400, 1080);
        near(wide.width, 1920, "20:9 frame width");
        near(wide.height, 1080, "20:9 frame height");
        near(wide.left, 240, "20:9 centered side bar");
        near(wide.top, 0, "20:9 top edge");

        IntroVideoFit.Result portrait = fit(1080, 2400);
        near(portrait.width, 1080, "portrait frame width");
        near(portrait.height, 607.5f, "portrait frame height");
        near(portrait.left, 0, "portrait left edge");
        near(portrait.top, 896.25f, "portrait centered vertical bar");

        // Simulate a TextureView surface resize/recreation and require the
        // same fit after it returns to the original live surface dimensions.
        IntroVideoFit.Result recreated = fit(1280, 720);
        near(recreated.width, 1280, "recreated 16:9 width");
        near(recreated.height, 720, "recreated 16:9 height");
        recreated = fit(2400, 1080);
        near(recreated.width, wide.width, "recreated 20:9 width");
        near(recreated.height, wide.height, "recreated 20:9 height");
        near(recreated.left, wide.left, "recreated 20:9 centering");

        if (IntroVideoFit.contain(1280, 720, 0, 1080) != null)
            throw new AssertionError("invalid surface dimensions must defer fitting");
        System.out.println("PASS: 16:9 intro contain geometry, wide/portrait resize and recreation");
    }
}
