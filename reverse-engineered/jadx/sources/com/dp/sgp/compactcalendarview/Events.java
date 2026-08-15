package com.dp.sgp.compactcalendarview;

import com.dp.sgp.compactcalendarview.domain.Event;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class Events {
    private final List<Event> events;
    private final long timeInMillis;

    Events(long j, List<Event> list) {
        this.timeInMillis = j;
        this.events = list;
    }

    long getTimeInMillis() {
        return this.timeInMillis;
    }

    List<Event> getEvents() {
        return this.events;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Events events = (Events) obj;
        if (this.timeInMillis != events.timeInMillis) {
            return false;
        }
        List<Event> list = this.events;
        List<Event> list2 = events.events;
        return list == null ? list2 == null : list.equals(list2);
    }

    public int hashCode() {
        List<Event> list = this.events;
        int iHashCode = list != null ? list.hashCode() : 0;
        long j = this.timeInMillis;
        return (iHashCode * 31) + ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "Events{events=" + this.events + ", timeInMillis=" + this.timeInMillis + '}';
    }
}
