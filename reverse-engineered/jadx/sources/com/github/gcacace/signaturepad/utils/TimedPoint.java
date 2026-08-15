package com.github.gcacace.signaturepad.utils;

/* JADX INFO: loaded from: classes.dex */
public class TimedPoint {
    public long timestamp;
    public float x;
    public float y;

    public TimedPoint set(float f, float f2) {
        this.x = f;
        this.y = f2;
        this.timestamp = System.currentTimeMillis();
        return this;
    }

    public float velocityFrom(TimedPoint timedPoint) {
        float fDistanceTo = distanceTo(timedPoint) / (this.timestamp - timedPoint.timestamp);
        if (fDistanceTo != fDistanceTo) {
            return 0.0f;
        }
        return fDistanceTo;
    }

    public float distanceTo(TimedPoint timedPoint) {
        return (float) Math.sqrt(Math.pow(timedPoint.x - this.x, 2.0d) + Math.pow(timedPoint.y - this.y, 2.0d));
    }
}
