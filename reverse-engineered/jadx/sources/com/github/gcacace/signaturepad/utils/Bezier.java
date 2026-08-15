package com.github.gcacace.signaturepad.utils;

/* JADX INFO: loaded from: classes.dex */
public class Bezier {
    public TimedPoint control1;
    public TimedPoint control2;
    public TimedPoint endPoint;
    public TimedPoint startPoint;

    public Bezier set(TimedPoint timedPoint, TimedPoint timedPoint2, TimedPoint timedPoint3, TimedPoint timedPoint4) {
        this.startPoint = timedPoint;
        this.control1 = timedPoint2;
        this.control2 = timedPoint3;
        this.endPoint = timedPoint4;
        return this;
    }

    public float length() {
        double d = 0.0d;
        double d2 = 0.0d;
        float f = 0.0f;
        int i = 0;
        while (i <= 10) {
            float f2 = i / 10;
            double dPoint = point(f2, this.startPoint.x, this.control1.x, this.control2.x, this.endPoint.x);
            double dPoint2 = point(f2, this.startPoint.y, this.control1.y, this.control2.y, this.endPoint.y);
            if (i > 0) {
                double d3 = dPoint - d;
                double d4 = dPoint2 - d2;
                double d5 = f;
                double dSqrt = Math.sqrt((d3 * d3) + (d4 * d4));
                Double.isNaN(d5);
                f = (float) (d5 + dSqrt);
            }
            i++;
            d2 = dPoint2;
            d = dPoint;
        }
        return f;
    }

    public double point(float f, float f2, float f3, float f4, float f5) {
        double d = f2;
        double d2 = f;
        Double.isNaN(d2);
        double d3 = 1.0d - d2;
        Double.isNaN(d);
        double d4 = f3;
        Double.isNaN(d4);
        Double.isNaN(d2);
        double d5 = (d * d3 * d3 * d3) + (d4 * 3.0d * d3 * d3 * d2);
        double d6 = f4;
        Double.isNaN(d6);
        Double.isNaN(d2);
        Double.isNaN(d2);
        double d7 = f5 * f * f * f;
        Double.isNaN(d7);
        return d5 + (d6 * 3.0d * d3 * d2 * d2) + d7;
    }
}
