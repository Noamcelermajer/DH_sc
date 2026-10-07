package com.example.dh2;
final class NativeBridge {
    static { System.loadLibrary("dh2_native"); }
    static native String buildInfo();
    static native void modDirectory(String directory);
    static native void runtimeDirectory(String directory);
    static native String profileSlot(int selectedSlot);
    static native byte[] readAsset(String name,android.content.res.AssetManager assets) throws java.io.IOException;
    static native String initialize(android.content.res.AssetManager assets);
    static native String loadFrontScreen(String directory,android.content.res.AssetManager assets);
    static native String returnToMainMenu(String directory,android.content.res.AssetManager assets);
    static native String menuTouch(float x,float y,int action);
    static native int consumeMenuLaunch();
    static native String startMenuGame(int slot,android.content.res.AssetManager assets,int debugLevelRow);
    static native String consumeMenuAudio();
    static native String consumeMenuSound();
    static native String loadTexture(byte[] encoded);
    static native String loadModel(byte[] encoded,android.content.res.AssetManager assets);
    static native String loadWorld(byte[] encoded,android.content.res.AssetManager assets);
    static native void moveAxis(float x,float y);
    static native void focusObject(int index);
    static native String objectState(int index,String state);
    static native String spawnCharacter(String exactName);
    static native String debugCharacterHit(String exactName,int rawDamage);
    static native String debugPlayerSkillCooldown(int delayMs);
    static native String debugPlayerSkillCheck(int slot);
    static native String debugPlayerMana(int rawAmount);
    static native String debugPlayerScalar(int value,boolean write);
    static native String debugPlayerDeath();
    static native String combatTarget(int index,int target);
    static native String playerAttack(int target);
    static native int[] playerVitals();
    static native void enemyAi(boolean enabled);
    static native void orbit(float dx,float dy,float zoom);
    static native void animationTime(int milliseconds);
    static native void resize(int width,int height);
    static native void draw();
}
