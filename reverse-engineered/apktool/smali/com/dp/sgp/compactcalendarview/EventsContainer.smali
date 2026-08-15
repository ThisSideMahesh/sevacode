.class public Lcom/dp/sgp/compactcalendarview/EventsContainer;
.super Ljava/lang/Object;
.source "EventsContainer.java"


# instance fields
.field private eventsByMonthAndYearMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/Events;",
            ">;>;"
        }
    .end annotation
.end field

.field private eventsCalendar:Ljava/util/Calendar;

.field private eventsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsByMonthAndYearMap:Ljava/util/Map;

    .line 19
    new-instance v0, Lcom/dp/sgp/compactcalendarview/comparators/EventComparator;

    invoke-direct {v0}, Lcom/dp/sgp/compactcalendarview/comparators/EventComparator;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsComparator:Ljava/util/Comparator;

    .line 23
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private getEventDayEvent(J)Lcom/dp/sgp/compactcalendarview/Events;
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 86
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 87
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->getKeyForCalendarEvent(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsByMonthAndYearMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/compactcalendarview/Events;

    .line 91
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/dp/sgp/compactcalendarview/Events;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 92
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getKeyForCalendarEvent(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method addEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;)V
    .locals 6

    .line 27
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 28
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->getKeyForCalendarEvent(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsByMonthAndYearMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->getEventDayEvent(J)Lcom/dp/sgp/compactcalendarview/Events;

    move-result-object v2

    if-nez v2, :cond_1

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v3, Lcom/dp/sgp/compactcalendarview/Events;

    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v2}, Lcom/dp/sgp/compactcalendarview/Events;-><init>(JLjava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v2}, Lcom/dp/sgp/compactcalendarview/Events;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsByMonthAndYearMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 51
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/compactcalendarview/domain/Event;

    invoke-virtual {p0, v2}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->addEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getEventsFor(J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->getEventDayEvent(J)Lcom/dp/sgp/compactcalendarview/Events;

    move-result-object p1

    if-nez p1, :cond_0

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/Events;->getEvents()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getEventsForMonth(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 70
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->getKeyForCalendarEvent(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsByMonthAndYearMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 72
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/compactcalendarview/Events;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/Events;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsComparator:Ljava/util/Comparator;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p2
.end method

.method getEventsForMonthAndYear(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/Events;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsByMonthAndYearMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method removeAllEvents()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsByMonthAndYearMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method removeEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;)V
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 125
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->getKeyForCalendarEvent(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsByMonthAndYearMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 129
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/compactcalendarview/Events;

    .line 131
    invoke-virtual {v3}, Lcom/dp/sgp/compactcalendarview/Events;->getEvents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 133
    invoke-virtual {v3}, Lcom/dp/sgp/compactcalendarview/Events;->getEvents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    .line 134
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v3}, Lcom/dp/sgp/compactcalendarview/Events;->getEvents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 142
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsByMonthAndYearMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method removeEventByEpochMillis(J)V
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 103
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 104
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->getKeyForCalendarEvent(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsByMonthAndYearMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 107
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 108
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/compactcalendarview/Events;

    .line 110
    iget-object v4, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Lcom/dp/sgp/compactcalendarview/Events;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 111
    iget-object v3, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 117
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/EventsContainer;->eventsByMonthAndYearMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method removeEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 150
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/compactcalendarview/domain/Event;

    invoke-virtual {p0, v2}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->removeEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
