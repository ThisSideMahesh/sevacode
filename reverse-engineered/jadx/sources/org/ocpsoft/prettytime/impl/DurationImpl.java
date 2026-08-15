package org.ocpsoft.prettytime.impl;

import org.ocpsoft.prettytime.Duration;
import org.ocpsoft.prettytime.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class DurationImpl implements Duration {
    private long delta;
    private long quantity;
    private TimeUnit unit;

    @Override // org.ocpsoft.prettytime.Duration
    public long getQuantity() {
        return this.quantity;
    }

    public void setQuantity(long j) {
        this.quantity = j;
    }

    @Override // org.ocpsoft.prettytime.Duration
    public TimeUnit getUnit() {
        return this.unit;
    }

    public void setUnit(TimeUnit timeUnit) {
        this.unit = timeUnit;
    }

    @Override // org.ocpsoft.prettytime.Duration
    public long getDelta() {
        return this.delta;
    }

    public void setDelta(long j) {
        this.delta = j;
    }

    @Override // org.ocpsoft.prettytime.Duration
    public boolean isInPast() {
        return getQuantity() < 0;
    }

    @Override // org.ocpsoft.prettytime.Duration
    public boolean isInFuture() {
        return !isInPast();
    }

    @Override // org.ocpsoft.prettytime.Duration
    public long getQuantityRounded(int i) {
        long jAbs = Math.abs(getQuantity());
        if (getDelta() == 0) {
            return jAbs;
        }
        double delta = getDelta();
        double millisPerUnit = getUnit().getMillisPerUnit();
        Double.isNaN(delta);
        Double.isNaN(millisPerUnit);
        return Math.abs((delta / millisPerUnit) * 100.0d) > ((double) i) ? jAbs + 1 : jAbs;
    }

    public String toString() {
        return "DurationImpl [" + this.quantity + " " + this.unit + ", delta=" + this.delta + "]";
    }

    public int hashCode() {
        long j = this.delta;
        long j2 = this.quantity;
        int i = (((((int) (j ^ (j >>> 32))) + 31) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        TimeUnit timeUnit = this.unit;
        return i + (timeUnit == null ? 0 : timeUnit.hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DurationImpl durationImpl = (DurationImpl) obj;
        if (this.delta != durationImpl.delta || this.quantity != durationImpl.quantity) {
            return false;
        }
        TimeUnit timeUnit = this.unit;
        if (timeUnit == null) {
            if (durationImpl.unit != null) {
                return false;
            }
        } else if (!timeUnit.equals(durationImpl.unit)) {
            return false;
        }
        return true;
    }
}
