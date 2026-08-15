package com.github.gcacace.signaturepad.utils;

/* JADX INFO: loaded from: classes.dex */
class SvgPoint {
    final Integer x;
    final Integer y;

    public SvgPoint(TimedPoint timedPoint) {
        this.x = Integer.valueOf(Math.round(timedPoint.x));
        this.y = Integer.valueOf(Math.round(timedPoint.y));
    }

    public SvgPoint(int i, int i2) {
        this.x = Integer.valueOf(i);
        this.y = Integer.valueOf(i2);
    }

    public String toAbsoluteCoordinates() {
        return this.x + "," + this.y;
    }

    public String toRelativeCoordinates(SvgPoint svgPoint) {
        return new SvgPoint(this.x.intValue() - svgPoint.x.intValue(), this.y.intValue() - svgPoint.y.intValue()).toString();
    }

    public String toString() {
        return toAbsoluteCoordinates();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SvgPoint svgPoint = (SvgPoint) obj;
        if (this.x.equals(svgPoint.x)) {
            return this.y.equals(svgPoint.y);
        }
        return false;
    }

    public int hashCode() {
        return (this.x.hashCode() * 31) + this.y.hashCode();
    }
}
