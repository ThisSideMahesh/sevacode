package com.dp.sgp.compactcalendarview;

import com.dp.sgp.compactcalendarview.comparators.EventComparator;
import com.dp.sgp.compactcalendarview.domain.Event;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class EventsContainer {
    private Calendar eventsCalendar;
    private Map<String, List<Events>> eventsByMonthAndYearMap = new HashMap();
    private Comparator<Event> eventsComparator = new EventComparator();

    public EventsContainer(Calendar calendar) {
        this.eventsCalendar = calendar;
    }

    void addEvent(Event event) {
        this.eventsCalendar.setTimeInMillis(event.getTimeInMillis());
        String keyForCalendarEvent = getKeyForCalendarEvent(this.eventsCalendar);
        List<Events> arrayList = this.eventsByMonthAndYearMap.get(keyForCalendarEvent);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        Events eventDayEvent = getEventDayEvent(event.getTimeInMillis());
        if (eventDayEvent == null) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(event);
            arrayList.add(new Events(event.getTimeInMillis(), arrayList2));
        } else {
            eventDayEvent.getEvents().add(event);
        }
        this.eventsByMonthAndYearMap.put(keyForCalendarEvent, arrayList);
    }

    void removeAllEvents() {
        this.eventsByMonthAndYearMap.clear();
    }

    void addEvents(List<Event> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            addEvent(list.get(i));
        }
    }

    List<Event> getEventsFor(long j) {
        Events eventDayEvent = getEventDayEvent(j);
        if (eventDayEvent == null) {
            return new ArrayList();
        }
        return eventDayEvent.getEvents();
    }

    List<Events> getEventsForMonthAndYear(int i, int i2) {
        return this.eventsByMonthAndYearMap.get(i2 + "_" + i);
    }

    List<Event> getEventsForMonth(long j) {
        this.eventsCalendar.setTimeInMillis(j);
        List<Events> list = this.eventsByMonthAndYearMap.get(getKeyForCalendarEvent(this.eventsCalendar));
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (Events events : list) {
                if (events != null) {
                    arrayList.addAll(events.getEvents());
                }
            }
        }
        Collections.sort(arrayList, this.eventsComparator);
        return arrayList;
    }

    private Events getEventDayEvent(long j) {
        this.eventsCalendar.setTimeInMillis(j);
        int i = this.eventsCalendar.get(5);
        List<Events> list = this.eventsByMonthAndYearMap.get(getKeyForCalendarEvent(this.eventsCalendar));
        if (list == null) {
            return null;
        }
        for (Events events : list) {
            this.eventsCalendar.setTimeInMillis(events.getTimeInMillis());
            if (this.eventsCalendar.get(5) == i) {
                return events;
            }
        }
        return null;
    }

    void removeEventByEpochMillis(long j) {
        this.eventsCalendar.setTimeInMillis(j);
        int i = this.eventsCalendar.get(5);
        String keyForCalendarEvent = getKeyForCalendarEvent(this.eventsCalendar);
        List<Events> list = this.eventsByMonthAndYearMap.get(keyForCalendarEvent);
        if (list != null) {
            Iterator<Events> it = list.iterator();
            while (it.hasNext()) {
                this.eventsCalendar.setTimeInMillis(it.next().getTimeInMillis());
                if (this.eventsCalendar.get(5) == i) {
                    it.remove();
                    break;
                }
            }
            if (list.isEmpty()) {
                this.eventsByMonthAndYearMap.remove(keyForCalendarEvent);
            }
        }
    }

    void removeEvent(Event event) {
        this.eventsCalendar.setTimeInMillis(event.getTimeInMillis());
        String keyForCalendarEvent = getKeyForCalendarEvent(this.eventsCalendar);
        List<Events> list = this.eventsByMonthAndYearMap.get(keyForCalendarEvent);
        if (list != null) {
            Iterator<Events> it = list.iterator();
            while (it.hasNext()) {
                Events next = it.next();
                int iIndexOf = next.getEvents().indexOf(event);
                if (iIndexOf >= 0) {
                    if (next.getEvents().size() == 1) {
                        it.remove();
                        break;
                    } else {
                        next.getEvents().remove(iIndexOf);
                        break;
                    }
                }
            }
            if (list.isEmpty()) {
                this.eventsByMonthAndYearMap.remove(keyForCalendarEvent);
            }
        }
    }

    void removeEvents(List<Event> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            removeEvent(list.get(i));
        }
    }

    private String getKeyForCalendarEvent(Calendar calendar) {
        return calendar.get(1) + "_" + calendar.get(2);
    }
}
