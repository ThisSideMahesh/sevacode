.class public Lcom/dp/sgp/calendar/DayData;
.super Ljava/lang/Object;
.source "DayData.java"


# instance fields
.field private nakshatra:Ljava/lang/String;

.field private tithi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNakshatra()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/dp/sgp/calendar/DayData;->nakshatra:Ljava/lang/String;

    return-object v0
.end method

.method public getTithi()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/dp/sgp/calendar/DayData;->tithi:Ljava/lang/String;

    return-object v0
.end method

.method public setNakshatra(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/dp/sgp/calendar/DayData;->nakshatra:Ljava/lang/String;

    return-void
.end method

.method public setTithi(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/dp/sgp/calendar/DayData;->tithi:Ljava/lang/String;

    return-void
.end method
