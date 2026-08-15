package com.dp.sgp.compactcalendarview.domain;

/* JADX INFO: loaded from: classes.dex */
public class Event {
    private int color;
    private Object data;
    private long timeInMillis;

    public Event(int i, long j) {
        this.color = i;
        this.timeInMillis = j;
    }

    public Event(int i, long j, Object obj) {
        this.color = i;
        this.timeInMillis = j;
        this.data = obj;
    }

    public int getColor() {
        return this.color;
    }

    public long getTimeInMillis() {
        return this.timeInMillis;
    }

    public Object getData() {
        return this.data;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Event event = (Event) obj;
        if (this.color != event.color || this.timeInMillis != event.timeInMillis) {
            return false;
        }
        Object obj2 = this.data;
        Object obj3 = event.data;
        return obj2 == null ? obj3 == null : obj2.equals(obj3);
    }

    public int hashCode() {
        int i = this.color * 31;
        long j = this.timeInMillis;
        int i2 = (i + ((int) (j ^ (j >>> 32)))) * 31;
        Object obj = this.data;
        return i2 + (obj != null ? obj.hashCode() : 0);
    }

    public String toString() {
        return "Event{color=" + this.color + ", timeInMillis=" + this.timeInMillis + ", data=" + this.data + '}';
    }
}
