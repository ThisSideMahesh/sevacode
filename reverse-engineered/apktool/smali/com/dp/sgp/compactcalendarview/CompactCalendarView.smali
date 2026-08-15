.class public Lcom/dp/sgp/compactcalendarview/CompactCalendarView;
.super Landroid/view/View;
.source "CompactCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarAnimationListener;,
        Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarViewListener;
    }
.end annotation


# static fields
.field public static final FILL_LARGE_INDICATOR:I = 0x1

.field public static final NO_FILL_LARGE_INDICATOR:I = 0x2

.field public static final SMALL_INDICATOR:I = 0x3


# instance fields
.field private final animationHandler:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

.field private compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

.field private gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private final gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private horizontalScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 92
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->horizontalScrollEnabled:Z

    .line 45
    new-instance v1, Lcom/dp/sgp/compactcalendarview/CompactCalendarView$1;

    invoke-direct {v1, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView$1;-><init>(Lcom/dp/sgp/compactcalendarview/CompactCalendarView;)V

    iput-object v1, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 93
    new-instance v15, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v2, 0xff

    const/16 v6, 0xe9

    const/16 v8, 0x54

    const/16 v9, 0x51

    invoke-static {v2, v6, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/16 v6, 0x40

    .line 95
    invoke-static {v2, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    const/16 v6, 0xdb

    invoke-static {v2, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    const/16 v6, 0x64

    const/16 v12, 0x44

    const/16 v13, 0x41

    .line 96
    invoke-static {v2, v6, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    new-instance v13, Lcom/dp/sgp/compactcalendarview/EventsContainer;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {v13, v2}, Lcom/dp/sgp/compactcalendarview/EventsContainer;-><init>(Ljava/util/Calendar;)V

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v16

    move-object v2, v15

    move-object/from16 v6, p2

    move-object/from16 p1, v1

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;-><init>(Landroid/graphics/Paint;Landroid/widget/OverScroller;Landroid/graphics/Rect;Landroid/util/AttributeSet;Landroid/content/Context;IIILandroid/view/VelocityTracker;ILcom/dp/sgp/compactcalendarview/EventsContainer;Ljava/util/Locale;Ljava/util/TimeZone;)V

    iput-object v1, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    .line 98
    new-instance v1, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-direct {v1, v2, v3}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 99
    new-instance v1, Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    iget-object v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-direct {v1, v2, v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;-><init>(Lcom/dp/sgp/compactcalendarview/CompactCalendarController;Lcom/dp/sgp/compactcalendarview/CompactCalendarView;)V

    iput-object v1, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->animationHandler:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/compactcalendarview/CompactCalendarView;)Lcom/dp/sgp/compactcalendarview/CompactCalendarController;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/compactcalendarview/CompactCalendarView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->horizontalScrollEnabled:Z

    return p0
.end method

.method private checkTargetHeight()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getTargetHeight()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target height must be set in xml properties in order to expand/collapse CompactCalendar."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;)V
    .locals 1

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, p1, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->addEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;Z)V

    return-void
.end method

.method public addEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;Z)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->addEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;)V

    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    :cond_0
    return-void
.end method

.method public addEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->addEvents(Ljava/util/List;)V

    .line 216
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 436
    :cond_0
    iget-boolean p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->horizontalScrollEnabled:Z

    return p1
.end method

.method public computeScroll()V
    .locals 1

    .line 405
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 406
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->computeScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    :cond_0
    return-void
.end method

.method public displayOtherMonthDays(Z)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setDisplayOtherMonthDays(Z)V

    .line 337
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public getEvents(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getCalendarEventsFor(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEvents(Ljava/util/Date;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getCalendarEventsFor(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEventsForMonth(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getCalendarEventsForMonth(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEventsForMonth(Ljava/util/Date;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getCalendarEventsForMonth(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFirstDayOfCurrentMonth()Ljava/util/Date;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getFirstDayOfCurrentMonth()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getHeightPerDay()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getHeightPerDay()I

    move-result v0

    return v0
.end method

.method public getWeekNumberForCurrentMonth()I
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getWeekNumberForCurrentMonth()I

    move-result v0

    return v0
.end method

.method public hideCalendar()V
    .locals 1

    .line 351
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->checkTargetHeight()V

    .line 352
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->animationHandler:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->closeCalendar()V

    return-void
.end method

.method public hideCalendarWithAnimation()V
    .locals 1

    .line 361
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->checkTargetHeight()V

    .line 362
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->animationHandler:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->closeCalendarWithAnimation()V

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->animationHandler:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->isAnimating()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 389
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 390
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 391
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 393
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->onMeasure(IIII)V

    .line 395
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 416
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->horizontalScrollEnabled:Z

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->onTouch(Landroid/view/MotionEvent;)Z

    .line 418
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    .line 422
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->horizontalScrollEnabled:Z

    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeAllEvents()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->removeAllEvents()V

    .line 303
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public removeEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;)V
    .locals 1

    const/4 v0, 0x1

    .line 273
    invoke-virtual {p0, p1, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->removeEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;Z)V

    return-void
.end method

.method public removeEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;Z)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->removeEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;)V

    if-eqz p2, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    :cond_0
    return-void
.end method

.method public removeEvents(J)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->removeEventsFor(J)V

    return-void
.end method

.method public removeEvents(Ljava/util/Date;)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->removeEventsFor(J)V

    return-void
.end method

.method public removeEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;)V"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->removeEvents(Ljava/util/List;)V

    .line 295
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scrollLeft()V

    .line 380
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public scrollRight()V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scrollRight()V

    .line 371
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public setAnimationListener(Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarAnimationListener;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->animationHandler:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->setCompactCalendarAnimationListener(Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarAnimationListener;)V

    return-void
.end method

.method public setCalendarBackgroundColor(I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCalenderBackgroundColor(I)V

    .line 126
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public setCurrentDate(Ljava/util/Date;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCurrentDate(Ljava/util/Date;)V

    .line 170
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public setCurrentDayBackgroundColor(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCurrentDayBackgroundColor(I)V

    .line 149
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public setCurrentDayIndicatorStyle(I)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCurrentDayIndicatorStyle(I)V

    .line 321
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public setCurrentDayTextColor(I)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCurrentDayTextColor(I)V

    return-void
.end method

.method public setCurrentSelectedDayBackgroundColor(I)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCurrentSelectedDayBackgroundColor(I)V

    .line 144
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public setCurrentSelectedDayIndicatorStyle(I)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCurrentSelectedDayIndicatorStyle(I)V

    .line 316
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public setCurrentSelectedDayTextColor(I)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCurrentSelectedDayTextColor(I)V

    return-void
.end method

.method public setDayColumnNames([Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setDayColumnNames([Ljava/lang/String;)V

    return-void
.end method

.method public setEventIndicatorStyle(I)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setEventIndicatorStyle(I)V

    .line 326
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setFirstDayOfWeek(I)V

    .line 139
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public setIsRtl(Z)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setIsRtl(Z)V

    return-void
.end method

.method public setListener(Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarViewListener;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setListener(Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarViewListener;)V

    return-void
.end method

.method public setLocale(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setLocale(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 111
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public setShouldDrawDaysHeader(Z)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setShouldDrawDaysHeader(Z)V

    return-void
.end method

.method public setTargetHeight(I)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setTargetHeight(I)V

    .line 342
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->checkTargetHeight()V

    return-void
.end method

.method public setUseThreeLetterAbbreviation(Z)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setUseWeekDayAbbreviation(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method

.method public shouldDrawIndicatorsBelowSelectedDays(Z)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldDrawIndicatorsBelowSelectedDays(Z)V

    return-void
.end method

.method public shouldScrollMonth(Z)V
    .locals 0

    .line 412
    iput-boolean p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->horizontalScrollEnabled:Z

    return-void
.end method

.method public shouldSelectFirstDayOfMonthOnScroll(Z)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setShouldSelectFirstDayOfMonthOnScroll(Z)V

    return-void
.end method

.method public showCalendar()V
    .locals 1

    .line 346
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->checkTargetHeight()V

    .line 347
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->animationHandler:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->openCalendar()V

    return-void
.end method

.method public showCalendarWithAnimation()V
    .locals 1

    .line 356
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->checkTargetHeight()V

    .line 357
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->animationHandler:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->openCalendarWithAnimation()V

    return-void
.end method
