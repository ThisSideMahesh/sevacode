.class Lcom/dp/sgp/compactcalendarview/Events;
.super Ljava/lang/Object;
.source "Events.java"


# instance fields
.field private final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final timeInMillis:J


# direct methods
.method constructor <init>(JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/dp/sgp/compactcalendarview/Events;->timeInMillis:J

    .line 15
    iput-object p3, p0, Lcom/dp/sgp/compactcalendarview/Events;->events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 31
    :cond_1
    check-cast p1, Lcom/dp/sgp/compactcalendarview/Events;

    .line 33
    iget-wide v2, p0, Lcom/dp/sgp/compactcalendarview/Events;->timeInMillis:J

    iget-wide v4, p1, Lcom/dp/sgp/compactcalendarview/Events;->timeInMillis:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 34
    :cond_2
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/Events;->events:Ljava/util/List;

    iget-object p1, p1, Lcom/dp/sgp/compactcalendarview/Events;->events:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    :goto_0
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/Events;->events:Ljava/util/List;

    return-object v0
.end method

.method getTimeInMillis()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/dp/sgp/compactcalendarview/Events;->timeInMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/Events;->events:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    iget-wide v1, p0, Lcom/dp/sgp/compactcalendarview/Events;->timeInMillis:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Events{events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/Events;->events:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/dp/sgp/compactcalendarview/Events;->timeInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
