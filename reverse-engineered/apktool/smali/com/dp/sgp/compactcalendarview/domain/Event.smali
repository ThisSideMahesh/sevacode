.class public Lcom/dp/sgp/compactcalendarview/domain/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private color:I

.field private data:Ljava/lang/Object;

.field private timeInMillis:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->color:I

    .line 13
    iput-wide p2, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->timeInMillis:J

    return-void
.end method

.method public constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->color:I

    .line 18
    iput-wide p2, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->timeInMillis:J

    .line 19
    iput-object p4, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->data:Ljava/lang/Object;

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

    if-eqz p1, :cond_6

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    check-cast p1, Lcom/dp/sgp/compactcalendarview/domain/Event;

    .line 42
    iget v2, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->color:I

    iget v3, p1, Lcom/dp/sgp/compactcalendarview/domain/Event;->color:I

    if-eq v2, v3, :cond_2

    return v1

    .line 43
    :cond_2
    iget-wide v2, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->timeInMillis:J

    iget-wide v4, p1, Lcom/dp/sgp/compactcalendarview/domain/Event;->timeInMillis:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 44
    :cond_3
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->data:Ljava/lang/Object;

    iget-object p1, p1, Lcom/dp/sgp/compactcalendarview/domain/Event;->data:Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    :goto_0
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getColor()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->color:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->timeInMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 51
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->color:I

    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-wide v1, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->timeInMillis:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->data:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->timeInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/domain/Event;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
