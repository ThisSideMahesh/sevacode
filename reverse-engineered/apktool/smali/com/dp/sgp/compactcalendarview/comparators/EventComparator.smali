.class public Lcom/dp/sgp/compactcalendarview/comparators/EventComparator;
.super Ljava/lang/Object;
.source "EventComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/dp/sgp/compactcalendarview/domain/Event;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/dp/sgp/compactcalendarview/domain/Event;Lcom/dp/sgp/compactcalendarview/domain/Event;)I
    .locals 5

    .line 12
    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getTimeInMillis()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/dp/sgp/compactcalendarview/domain/Event;

    check-cast p2, Lcom/dp/sgp/compactcalendarview/domain/Event;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/compactcalendarview/comparators/EventComparator;->compare(Lcom/dp/sgp/compactcalendarview/domain/Event;Lcom/dp/sgp/compactcalendarview/domain/Event;)I

    move-result p1

    return p1
.end method
