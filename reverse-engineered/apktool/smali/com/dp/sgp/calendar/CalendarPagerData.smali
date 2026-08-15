.class public Lcom/dp/sgp/calendar/CalendarPagerData;
.super Ljava/lang/Object;
.source "CalendarPagerData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private month:I

.field private monthTitle:Ljava/lang/String;

.field private year:I

.field private yearTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMonth()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/dp/sgp/calendar/CalendarPagerData;->month:I

    return v0
.end method

.method public getMonthTitle()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/dp/sgp/calendar/CalendarPagerData;->monthTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/dp/sgp/calendar/CalendarPagerData;->year:I

    return v0
.end method

.method public getYearTitle()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/dp/sgp/calendar/CalendarPagerData;->yearTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setMonth(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/dp/sgp/calendar/CalendarPagerData;->month:I

    return-void
.end method

.method public setMonthTitle(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/dp/sgp/calendar/CalendarPagerData;->monthTitle:Ljava/lang/String;

    return-void
.end method

.method public setYear(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/dp/sgp/calendar/CalendarPagerData;->year:I

    return-void
.end method

.method public setYearTitle(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/dp/sgp/calendar/CalendarPagerData;->yearTitle:Ljava/lang/String;

    return-void
.end method
