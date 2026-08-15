package com.dp.sgp.compactcalendarview.comparators;

import com.dp.sgp.compactcalendarview.domain.Event;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class EventComparator implements Comparator<Event> {
    @Override // java.util.Comparator
    public int compare(Event event, Event event2) {
        if (event.getTimeInMillis() < event2.getTimeInMillis()) {
            return -1;
        }
        return event.getTimeInMillis() == event2.getTimeInMillis() ? 0 : 1;
    }
}
