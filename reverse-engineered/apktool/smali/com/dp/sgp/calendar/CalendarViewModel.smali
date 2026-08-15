.class public Lcom/dp/sgp/calendar/CalendarViewModel;
.super Ljava/lang/Object;
.source "CalendarViewModel.java"


# static fields
.field private static final DAY_OFFSET:I = 0x1


# instance fields
.field private final _context:Landroid/content/Context;

.field private currentDayOfMonth:I

.field private currentWeekDay:I

.field private final dayMarathi:[Ljava/lang/String;

.field private daysInMonth:I

.field private final daysOfMonth:[I

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/calendar/CalenderData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->daysOfMonth:[I

    .line 34
    iput-object p1, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->_context:Landroid/content/Context;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->list:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->dayMarathi:[Ljava/lang/String;

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dp/sgp/calendar/CalendarViewModel;->setCurrentDayOfMonth(I)V

    const/4 v0, 0x7

    .line 41
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/calendar/CalendarViewModel;->setCurrentWeekDay(I)V

    .line 44
    invoke-direct {p0, p2, p3}, Lcom/dp/sgp/calendar/CalendarViewModel;->printMonth(II)V

    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method private getCurrentMonthForDB(II)I
    .locals 4

    add-int/lit8 p1, p1, 0x1

    .line 162
    iget-object v0, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 165
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 167
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ge v1, v2, :cond_2

    add-int/lit8 p1, p1, 0xc

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return p1
.end method

.method private getDayInMarathi(I)Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->dayMarathi:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getNumberOfDaysOfMonth(I)I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->daysOfMonth:[I

    aget p1, v0, p1

    return p1
.end method

.method private printMonth(II)V
    .locals 8

    .line 64
    invoke-direct {p0, p1}, Lcom/dp/sgp/calendar/CalendarViewModel;->getNumberOfDaysOfMonth(I)I

    move-result v0

    iput v0, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->daysInMonth:I

    .line 68
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/16 v2, 0xb

    if-ne p1, v2, :cond_0

    add-int/lit8 v2, p1, -0x1

    .line 72
    invoke-direct {p0, v2}, Lcom/dp/sgp/calendar/CalendarViewModel;->getNumberOfDaysOfMonth(I)I

    move-result v2

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 80
    invoke-direct {p0, v2}, Lcom/dp/sgp/calendar/CalendarViewModel;->getNumberOfDaysOfMonth(I)I

    move-result v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p1, -0x1

    .line 87
    invoke-direct {p0, v2}, Lcom/dp/sgp/calendar/CalendarViewModel;->getNumberOfDaysOfMonth(I)I

    move-result v2

    :goto_0
    const/4 v3, 0x7

    .line 90
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_2

    .line 94
    iget v0, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->daysInMonth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->daysInMonth:I

    :cond_2
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    .line 99
    new-instance v6, Lcom/dp/sgp/calendar/CalenderData;

    invoke-direct {v6}, Lcom/dp/sgp/calendar/CalenderData;-><init>()V

    sub-int v7, v2, v4

    add-int/2addr v7, v1

    add-int/2addr v7, v5

    .line 100
    invoke-direct {p0, v7}, Lcom/dp/sgp/calendar/CalendarViewModel;->getDayInMarathi(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/dp/sgp/calendar/CalenderData;->setDay(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v6, v0}, Lcom/dp/sgp/calendar/CalenderData;->setEnable(Z)V

    .line 103
    iget-object v7, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    .line 113
    :goto_2
    iget v4, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->daysInMonth:I

    if-gt v2, v4, :cond_5

    .line 115
    new-instance v4, Lcom/dp/sgp/calendar/CalenderData;

    invoke-direct {v4}, Lcom/dp/sgp/calendar/CalenderData;-><init>()V

    .line 116
    invoke-virtual {v4, v2}, Lcom/dp/sgp/calendar/CalenderData;->setDayId(I)V

    .line 117
    invoke-direct {p0, v2}, Lcom/dp/sgp/calendar/CalendarViewModel;->getDayInMarathi(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dp/sgp/calendar/CalenderData;->setDay(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4, v1}, Lcom/dp/sgp/calendar/CalenderData;->setEnable(Z)V

    .line 120
    invoke-static {}, Lcom/dp/sgp/calendar/DateUtils;->getTodaysDate()I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 121
    invoke-virtual {v4, v2}, Lcom/dp/sgp/calendar/CalenderData;->setTodaysDate(I)V

    .line 124
    :cond_4
    iget-object v5, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->_context:Landroid/content/Context;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, p2, v6, v2}, Lcom/dp/sgp/database/DatabaseUtils;->getAllDayData(Landroid/content/Context;III)Lcom/dp/sgp/calendar/CalenderData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dp/sgp/calendar/CalenderData;->setEvent(Ljava/lang/String;)V

    .line 139
    iget-object v5, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 147
    :goto_3
    iget-object p2, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->list:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    rem-int/2addr p2, v3

    if-ge p1, p2, :cond_6

    .line 149
    new-instance p2, Lcom/dp/sgp/calendar/CalenderData;

    invoke-direct {p2}, Lcom/dp/sgp/calendar/CalenderData;-><init>()V

    add-int/lit8 p1, p1, 0x1

    .line 150
    invoke-direct {p0, p1}, Lcom/dp/sgp/calendar/CalendarViewModel;->getDayInMarathi(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/dp/sgp/calendar/CalenderData;->setDay(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2, v0}, Lcom/dp/sgp/calendar/CalenderData;->setEnable(Z)V

    .line 154
    iget-object v1, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-void
.end method

.method private setCurrentDayOfMonth(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->currentDayOfMonth:I

    return-void
.end method


# virtual methods
.method public getCurrentDayOfMonth()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->currentDayOfMonth:I

    return v0
.end method

.method public getCurrentWeekDay()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->currentWeekDay:I

    return v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/calendar/CalenderData;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDayIdForDB(III)I
    .locals 3

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p3, p2, p1}, Ljava/util/Calendar;->set(III)V

    const/4 p1, 0x6

    .line 187
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 189
    iget-object p2, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->_context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030005

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 192
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 194
    aget-object v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p3, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ge v0, v1, :cond_3

    .line 203
    aget-object p3, p2, v0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    rem-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_2

    add-int/lit16 p1, p1, 0x16e

    goto :goto_2

    :cond_2
    add-int/lit16 p1, p1, 0x16d

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return p1
.end method

.method public setCurrentWeekDay(I)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/dp/sgp/calendar/CalendarViewModel;->currentWeekDay:I

    return-void
.end method
