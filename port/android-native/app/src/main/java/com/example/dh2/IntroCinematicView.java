package com.example.dh2;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;

import java.io.IOException;

/** Plays the original 16:9 opening movie over the native menu during startup. */
final class IntroCinematicView extends TextureView implements TextureView.SurfaceTextureListener {
    private static final String TAG = "DH2Native";
    private static final String ASSET = "original-media/intro.mp4";

    private final Runnable onFinished;
    private MediaPlayer player;
    private Surface videoSurface;
    private int videoWidth;
    private int videoHeight;
    private boolean requested;
    private boolean prepared;
    private boolean paused;
    private boolean finished;

    IntroCinematicView(Context context, Runnable onFinished) {
        this(context, null, onFinished);
    }

    private IntroCinematicView(Context context, AttributeSet attrs, Runnable onFinished) {
        super(context, attrs);
        this.onFinished = onFinished;
        setOpaque(true);
        setContentDescription("Opening cinematic. Tap to skip.");
        setSurfaceTextureListener(this);
        setOnClickListener(v -> finish());
        setClickable(true);
    }

    void startPlayback() {
        requested = true;
        startIfReady();
    }

    void pausePlayback() {
        paused = true;
        if (player != null) {
            try {
                if (player.isPlaying()) player.pause();
            } catch (IllegalStateException ignored) {
                // The asynchronous prepare callback observes paused and won't start it.
            }
        }
    }

    void resumePlayback() {
        paused = false;
        if (player == null) {
            startIfReady();
            return;
        }
        // prepareAsync may still be in flight when Activity resumes. Only the
        // prepared state is allowed to call MediaPlayer.start().
        if (prepared) {
            try {
                if (!finished && !player.isPlaying()) player.start();
            } catch (IllegalStateException e) {
                Log.w(TAG, "Could not resume opening movie", e);
                finish();
            }
        }
    }

    void dispose() {
        finished = true;
        releasePlayer();
    }

    boolean isPending() { return !finished; }

    private void startIfReady() {
        if (!requested || finished || player != null || !isAvailable()) return;
        try {
            AssetFileDescriptor source = getContext().getAssets().openFd(ASSET);
            MediaPlayer candidate = new MediaPlayer();
            player = candidate;
            videoWidth = videoHeight = 0;
            videoSurface = new Surface(getSurfaceTexture());
            candidate.setSurface(videoSurface);
            candidate.setAudioAttributes(new AudioAttributes.Builder()
                    .setUsage(AudioAttributes.USAGE_MEDIA)
                    .setContentType(AudioAttributes.CONTENT_TYPE_MOVIE)
                    .build());
            candidate.setOnVideoSizeChangedListener((mp, width, height) -> {
                videoWidth = width;
                videoHeight = height;
                fitVideo();
            });
            candidate.setOnPreparedListener(mp -> {
                if (finished || player != mp) return;
                prepared = true;
                videoWidth = mp.getVideoWidth();
                videoHeight = mp.getVideoHeight();
                fitVideo();
                if (!paused) {
                    try {
                        mp.start();
                    } catch (IllegalStateException e) {
                        Log.w(TAG, "Could not start opening movie", e);
                        finish();
                    }
                }
            });
            candidate.setOnCompletionListener(mp -> finish());
            candidate.setOnErrorListener((mp, what, extra) -> {
                Log.e(TAG, "Opening movie playback failed: " + what + "/" + extra);
                finish();
                return true;
            });
            try (source) {
                candidate.setDataSource(source.getFileDescriptor(), source.getStartOffset(), source.getLength());
            }
            candidate.prepareAsync();
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            Log.e(TAG, "Could not open bundled opening movie", e);
            finish();
        }
    }

    private void fitVideo() {
        if (videoWidth <= 0 || videoHeight <= 0 || getWidth() <= 0 || getHeight() <= 0) return;
        float scale = Math.min(getWidth() / (float) videoWidth, getHeight() / (float) videoHeight);
        float fittedWidth = videoWidth * scale;
        float fittedHeight = videoHeight * scale;
        // TextureView's transform maps its view-sized buffer, so normalize the
        // fitted movie rectangle to view coordinates before centering it.
        float scaleX = fittedWidth / getWidth();
        float scaleY = fittedHeight / getHeight();
        Matrix transform = new Matrix();
        transform.setScale(scaleX, scaleY, getWidth() * 0.5f, getHeight() * 0.5f);
        setTransform(transform);
    }

    private void finish() {
        if (finished) return;
        finished = true;
        releasePlayer();
        post(onFinished);
    }

    private void releasePlayer() {
        MediaPlayer old = player;
        player = null;
        prepared = false;
        if (old != null) {
            try {
                old.setOnCompletionListener(null);
                old.setOnErrorListener(null);
                old.setOnPreparedListener(null);
                old.setOnVideoSizeChangedListener(null);
                old.release();
            } catch (IllegalStateException ignored) {
                // Releasing an already-failed decoder is safe to ignore.
            }
        }
        Surface oldSurface = videoSurface;
        videoSurface = null;
        if (oldSurface != null) oldSurface.release();
    }

    @Override public void onSurfaceTextureAvailable(SurfaceTexture texture, int width, int height) {
        fitVideo();
        startIfReady();
    }

    @Override public void onSurfaceTextureSizeChanged(SurfaceTexture texture, int width, int height) {
        fitVideo();
    }

    @Override public boolean onSurfaceTextureDestroyed(SurfaceTexture texture) {
        releasePlayer();
        return true;
    }

    @Override public void onSurfaceTextureUpdated(SurfaceTexture texture) { }
}
