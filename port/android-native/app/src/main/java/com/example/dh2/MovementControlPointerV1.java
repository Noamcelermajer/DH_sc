package com.example.dh2;

/** Keeps Android movement attached to the first pointer, like the authored HUD joystick. */
final class MovementControlPointerV1 {
    enum Decision { UPDATE, IGNORE, RELEASE }

    private int activePointerId = -1;

    int activePointerId() { return activePointerId; }

    Decision down(int pointerId) {
        activePointerId = pointerId;
        return Decision.UPDATE;
    }

    Decision move(boolean activePointerPresent) {
        if (activePointerId < 0) return Decision.IGNORE;
        if (!activePointerPresent) return cancel();
        return Decision.UPDATE;
    }

    Decision pointerDown() { return Decision.IGNORE; }

    Decision pointerUp(int pointerId) {
        return pointerId == activePointerId ? cancel() : Decision.IGNORE;
    }

    Decision up(int pointerId) {
        return pointerId == activePointerId ? cancel() : Decision.IGNORE;
    }

    Decision cancel() {
        if (activePointerId < 0) return Decision.IGNORE;
        activePointerId = -1;
        return Decision.RELEASE;
    }
}
