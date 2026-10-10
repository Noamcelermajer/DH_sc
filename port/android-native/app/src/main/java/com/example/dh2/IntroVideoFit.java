package com.example.dh2;

/** Centered aspect-preserving geometry for the authored opening movie. */
final class IntroVideoFit {
    static final class Result {
        final float scaleX;
        final float scaleY;
        final float width;
        final float height;
        final float left;
        final float top;

        private Result(float surfaceWidth, float surfaceHeight,
                       float width, float height) {
            this.scaleX = width / surfaceWidth;
            this.scaleY = height / surfaceHeight;
            this.width = width;
            this.height = height;
            this.left = (surfaceWidth - width) * 0.5f;
            this.top = (surfaceHeight - height) * 0.5f;
        }
    }

    private IntroVideoFit() { }

    static Result contain(int videoWidth, int videoHeight,
                          int surfaceWidth, int surfaceHeight) {
        if (videoWidth <= 0 || videoHeight <= 0 ||
                surfaceWidth <= 0 || surfaceHeight <= 0) return null;
        float scale = Math.min(surfaceWidth / (float) videoWidth,
                surfaceHeight / (float) videoHeight);
        return new Result(surfaceWidth, surfaceHeight,
                videoWidth * scale, videoHeight * scale);
    }
}
