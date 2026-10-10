#!/usr/bin/env python3
"""Static lifecycle contract for the intro movie and first authored menu."""

from pathlib import Path


ROOT = Path(__file__).resolve().parents[3]
ACTIVITY = ROOT / "port/android-native/app/src/main/java/com/example/dh2/MainActivity.java"
VIEW = ROOT / "port/android-native/app/src/main/java/com/example/dh2/IntroCinematicView.java"


def require(condition: bool, message: str) -> None:
    if not condition:
        raise SystemExit("FAIL " + message)


activity = ACTIVITY.read_text(encoding="utf-8")
view = VIEW.read_text(encoding="utf-8")

require("boolean playOpeningCinematic=!inspectionMode&&(state==null||resumeOpeningCinematic)&&!getIntent().getBooleanExtra(\"skip_intro\",false)" in activity,
        "fresh normal install must play; explicit skip and inspection launches must bypass")
require("introCinematic=new IntroCinematicView(this,()->runOnUiThread(this::finishOpeningCinematic))" in activity
        and "introCinematic.startPlayback(openingCinematicPositionMs)" in activity,
        "created movie view must receive the saved playback position and completion callback")
require("candidate.setOnCompletionListener(mp -> finish())" in view
        and "candidate.setOnErrorListener" in view
        and "skipButton.setOnClickListener(v -> finish(true))" in view
        and "skipPolicy.onMovieTap(currentPositionMs())" in view,
        "movie completion and decode failure leave intro; source-gated skip button exits it")
require("state.putBoolean(\"openingCinematicPending\",introCinematic!=null&&introCinematic.isPending())" in activity
        and "state.putInt(\"openingCinematicPositionMs\",introCinematic!=null?introCinematic.currentPositionMs():0)" in activity,
        "Activity recreation must preserve whether the intro remains and its current position")
require("@Override protected void onPause(){if(introCinematic!=null)introCinematic.pausePlayback()" in activity
        and "@Override protected void onResume(){super.onResume();frontAudio.setCinematic(introCinematic);frontAudio.resume();if(introCinematic!=null)introCinematic.resumePlayback();" in activity,
        "pause/resume must hold and resume the same movie view and synchronized audio owner")
require("@Override public void onConfigurationChanged" in activity
        and "android:configChanges=\"orientation|screenSize|smallestScreenSize|screenLayout\"" in
        (ROOT / "port/android-native/app/src/main/AndroidManifest.xml").read_text(encoding="utf-8"),
        "landscape rotation must resize the retained Activity rather than restart its intro state")
require("onSurfaceTextureDestroyed(SurfaceTexture texture)" in view
        and "releasePlayer();\n        return true;" in view
        and "startIfReady();" in view,
        "TextureView surface recreation must release and prepare playback again")
require("else if(assets.length>0)loadSelected();" in activity
        and "if(\"ui/original-main-menu\".equals(loadedAsset)&&!frontMenuReady)" in activity,
        "fresh GL context must load the authored main movie and report it ready after a draw")
require("mayApplyCinematicCompletion(isFinishing(),isDestroyed())" in activity
        and "mayStartTitleMusic(" in activity,
        "late completion cannot resurrect a destroyed Activity; title music waits for both gates")

print("PASS fresh launch: opening movie requested, then native load and first main-menu frame")
print("PASS recreation: pending flag/position retained; activity resume and TextureView surface reprepare")
