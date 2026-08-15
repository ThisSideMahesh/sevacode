.class public Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;
.super Landroid/support/v4/app/Fragment;
.source "CompactCalendarTab.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field Datecount:I

.field private SelectedMonth:I

.field TmsProgramlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/NewTMS/TmsProgramList;",
            ">;"
        }
    .end annotation
.end field

.field private compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

.field private currentCalender:Ljava/util/Calendar;

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private dateFormatForDisplaying:Ljava/text/SimpleDateFormat;

.field private dateFormatForMonth:Ljava/text/SimpleDateFormat;

.field lStrSelcetdDate:Ljava/lang/String;

.field lStrToken:Ljava/lang/String;

.field private mDay:I

.field private mHour:I

.field private mMinute:I

.field private mMonth:I

.field private mYear:I

.field private msec:I

.field newSchduledInfoLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;",
            ">;"
        }
    .end annotation
.end field

.field newsAdapter:Lcom/dp/sgp/Adapters/TmsEventAdapter;

.field progressDialog:Landroid/app/ProgressDialog;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field ryt_main:Landroid/widget/RelativeLayout;

.field private shouldShow:Z

.field private toolbar:Landroid/support/v7/app/ActionBar;

.field tv_day:Landroid/widget/TextView;

.field txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd-M-yyyy hh:mm:ss a"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->dateFormatForDisplaying:Ljava/text/SimpleDateFormat;

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMM - yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->dateFormatForMonth:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->shouldShow:Z

    const-string v1, ""

    .line 67
    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->lStrToken:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->lStrSelcetdDate:Ljava/lang/String;

    .line 76
    iput v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->Datecount:I

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->dateFormatForMonth:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->SelectedMonth:I

    return p1
.end method

.method static synthetic access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Lcom/dp/sgp/compactcalendarview/CompactCalendarView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->dateFormatForDisplaying:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$402(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->dateFormatForDisplaying:Ljava/text/SimpleDateFormat;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->loadEvents()V

    return-void
.end method

.method static synthetic access$600(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->loadEventsForYear(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;Lcom/dp/sgp/compactcalendarview/CompactCalendarView;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->logEventsByMonth(Lcom/dp/sgp/compactcalendarview/CompactCalendarView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->shouldShow:Z

    return p0
.end method

.method static synthetic access$802(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->shouldShow:Z

    return p1
.end method

.method static synthetic access$900(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->mDay:I

    return p0
.end method

.method private addEvents(II)V
    .locals 9

    const-string v0, ""

    .line 431
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 432
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 433
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 436
    :goto_0
    iget-object v6, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->newSchduledInfoLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 437
    iget-object v6, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v6, -0x1

    if-le p1, v6, :cond_0

    .line 439
    iget-object v7, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, p1}, Ljava/util/Calendar;->set(II)V

    :cond_0
    if-le p2, v6, :cond_1

    .line 442
    iget-object v6, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v6, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 443
    iget-object v6, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v6, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 445
    :cond_1
    iget-object v6, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v6, v2, v5}, Ljava/util/Calendar;->add(II)V

    .line 446
    iget-object v6, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    invoke-direct {p0, v6}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->setToMidnight(Ljava/util/Calendar;)V

    .line 457
    :try_start_0
    iget-object v6, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->newSchduledInfoLists:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;

    invoke-virtual {v6}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->getTraining_start_date()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v0

    goto :goto_1

    .line 460
    :cond_2
    iget-object v6, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->newSchduledInfoLists:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;

    invoke-virtual {v6}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->getTraining_start_date()Ljava/lang/String;

    move-result-object v6

    .line 463
    :goto_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "dd-MM-yyyy"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 466
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 474
    invoke-direct {p0, v6, v7, v5}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getEvents(JI)Ljava/util/List;

    move-result-object v6

    .line 476
    iget-object v7, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v7, v6}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->addEvents(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 479
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getCalendarExposeLis()Landroid/view/View$OnClickListener;
    .locals 1

    .line 363
    new-instance v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$8;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$8;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)V

    return-object v0
.end method

.method private getCalendarShowLis()Landroid/view/View$OnClickListener;
    .locals 1

    .line 346
    new-instance v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$7;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$7;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)V

    return-object v0
.end method

.method private getEvents(JI)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;"
        }
    .end annotation

    .line 486
    iget v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->mMonth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 487
    iget v2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->mDay:I

    .line 490
    iget v3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->SelectedMonth:I

    const-string v4, "Event at "

    const/4 v5, 0x0

    if-ge v3, v0, :cond_0

    new-array p3, v1, [Lcom/dp/sgp/compactcalendarview/domain/Event;

    .line 491
    new-instance v0, Lcom/dp/sgp/compactcalendarview/domain/Event;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/dp/sgp/compactcalendarview/domain/Event;-><init>(IJLjava/lang/Object;)V

    aput-object v0, p3, v5

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0x7f0600ef

    if-ge p3, v2, :cond_1

    new-array p3, v1, [Lcom/dp/sgp/compactcalendarview/domain/Event;

    .line 496
    new-instance v1, Lcom/dp/sgp/compactcalendarview/domain/Event;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/dp/sgp/compactcalendarview/domain/Event;-><init>(IJLjava/lang/Object;)V

    aput-object v1, p3, v5

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p3, v1, [Lcom/dp/sgp/compactcalendarview/domain/Event;

    .line 498
    new-instance v1, Lcom/dp/sgp/compactcalendarview/domain/Event;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/dp/sgp/compactcalendarview/domain/Event;-><init>(IJLjava/lang/Object;)V

    aput-object v1, p3, v5

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private loadEvents()V
    .locals 2

    const/4 v0, -0x1

    .line 405
    invoke-direct {p0, v0, v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->addEvents(II)V

    const/16 v1, 0xb

    .line 406
    invoke-direct {p0, v1, v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->addEvents(II)V

    const/4 v1, 0x7

    .line 407
    invoke-direct {p0, v1, v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->addEvents(II)V

    return-void
.end method

.method private loadEventsForYear(I)V
    .locals 1

    const/16 v0, 0xb

    .line 411
    invoke-direct {p0, v0, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->addEvents(II)V

    const/4 v0, 0x7

    .line 412
    invoke-direct {p0, v0, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->addEvents(II)V

    return-void
.end method

.method private logEventsByMonth(Lcom/dp/sgp/compactcalendarview/CompactCalendarView;)V
    .locals 6

    .line 417
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 418
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 419
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getEventsForMonth(Ljava/util/Date;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/compactcalendarview/domain/Event;

    .line 423
    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->dateFormatForDisplaying:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Events for Aug with simple date formatter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Events for Aug month using default local and timezone: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getEventsForMonth(Ljava/util/Date;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private openCalendarOnCreate(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a00f9

    .line 379
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 380
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 381
    new-instance v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$9;

    invoke-direct {v1, p0, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$9;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setToMidnight(Ljava/util/Calendar;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 518
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 519
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 520
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 521
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public GET_TMS()V
    .locals 7

    .line 526
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 528
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 529
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 530
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 533
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->newSchduledInfoLists:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 534
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->newSchduledInfoLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->TmsProgramlist:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 540
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->TmsProgramlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const-string v0, "2cad69e349c176585afbc88d0fc0cbe4"

    .line 545
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->lStrToken:Ljava/lang/String;

    .line 547
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->Nexa_BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 548
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/dp/sgp/ApiService/ApiService;

    .line 549
    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->lStrToken:Ljava/lang/String;

    iget v5, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->SelectedMonth:I

    new-instance v6, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;

    invoke-direct {v6, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)V

    const-string v3, "mobile_webservices_fetch_current_month_tms_program"

    const-string v4, "json"

    invoke-interface/range {v1 .. v6}, Lcom/dp/sgp/ApiService/ApiService;->GET_TMSList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILretrofit/Callback;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const p3, 0x7f0d0075

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-string p3, "\u092e\u093e\u0930\u094d\u0917\u0926\u0930\u094d\u0936\u093f\u0915\u093e"

    invoke-virtual {p2, p3}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    new-instance p2, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const p2, 0x7f0a017a

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->ryt_main:Landroid/widget/RelativeLayout;

    const p2, 0x7f0a0172

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 95
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "2cad69e349c176585afbc88d0fc0cbe4"

    .line 96
    iput-object p3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->lStrToken:Ljava/lang/String;

    const p3, 0x7f0a0030

    .line 98
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    const v1, 0x7f0a0153

    .line 100
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v1, 0x7f0a0132

    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v1, 0x7f0a0237

    .line 103
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->txtHeading:Landroid/widget/TextView;

    const v1, 0x7f0a0148

    .line 105
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a014b

    .line 106
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0a019c

    .line 109
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f0a019a

    .line 110
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f0a0195

    .line 111
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f0a0162

    .line 112
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 114
    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1090003

    invoke-direct {v7, v8, v9, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 115
    invoke-virtual {p3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p2, 0x7f0a0051

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    .line 122
    invoke-virtual {p2, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->setUseThreeLetterAbbreviation(Z)V

    .line 123
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->setFirstDayOfWeek(I)V

    .line 124
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {p2, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->setIsRtl(Z)V

    .line 125
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {p2, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->displayOtherMonthDays(Z)V

    .line 128
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->TmsProgramlist:Ljava/util/List;

    .line 129
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->newSchduledInfoLists:Ljava/util/List;

    .line 130
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v0, "Token"

    invoke-virtual {p2, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->lStrToken:Ljava/lang/String;

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/4 v0, 0x1

    .line 133
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->mYear:I

    .line 134
    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iput p3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->mMonth:I

    const/4 p3, 0x5

    .line 135
    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->mDay:I

    .line 136
    iget p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->mMonth:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->SelectedMonth:I

    .line 138
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->GET_TMS()V

    .line 154
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p2

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->toolbar:Landroid/support/v7/app/ActionBar;

    .line 158
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->txtHeading:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->dateFormatForMonth:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getFirstDayOfCurrentMonth()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    new-instance p3, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$1;

    invoke-direct {p3, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$1;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)V

    invoke-virtual {p2, p3}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->setListener(Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarViewListener;)V

    .line 271
    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$2;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$2;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)V

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$3;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$3;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)V

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getCalendarShowLis()Landroid/view/View$OnClickListener;

    move-result-object p2

    .line 293
    invoke-virtual {v3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getCalendarExposeLis()Landroid/view/View$OnClickListener;

    move-result-object p2

    .line 296
    invoke-virtual {v4, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    new-instance p3, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$4;

    invoke-direct {p3, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$4;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)V

    invoke-virtual {p2, p3}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->setAnimationListener(Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarAnimationListener;)V

    .line 308
    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$5;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$5;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)V

    invoke-virtual {v5, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$6;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$6;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)V

    invoke-virtual {v6, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 396
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 401
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->txtHeading:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->dateFormatForMonth:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getFirstDayOfCurrentMonth()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
