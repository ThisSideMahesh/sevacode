.class Lcom/dp/sgp/compactcalendarview/CompactCalendarController;
.super Ljava/lang/Object;
.source "CompactCalendarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;
    }
.end annotation


# static fields
.field public static final ANIMATE_INDICATORS:I = 0x3

.field private static final ANIMATION_SCREEN_SET_DURATION_MILLIS:F = 700.0f

.field private static final DAYS_IN_WEEK:I = 0x7

.field public static final EXPAND_COLLAPSE_CALENDAR:I = 0x2

.field public static final EXPOSE_CALENDAR_ANIMATION:I = 0x1

.field public static final IDLE:I = 0x0

.field private static final LAST_FLING_THRESHOLD_MILLIS:I = 0x12c

.field private static final SNAP_VELOCITY_DIP_PER_SECOND:F = 400.0f

.field private static final VELOCITY_UNIT_PIXELS_PER_SECOND:I = 0x3e8


# instance fields
.field private accumulatedScrollOffset:Landroid/graphics/PointF;

.field private animationStatus:I

.field private background:Landroid/graphics/Paint;

.field private bigCircleIndicatorRadius:F

.field private calendarWithFirstDayOfMonth:Ljava/util/Calendar;

.field private calenderBackgroundColor:I

.field private calenderTextColor:I

.field private currentCalender:Ljava/util/Calendar;

.field private currentDate:Ljava/util/Date;

.field private currentDayBackgroundColor:I

.field private currentDayIndicatorStyle:I

.field private currentDayTextColor:I

.field private currentDirection:Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;

.field private currentSelectedDayBackgroundColor:I

.field private currentSelectedDayIndicatorStyle:I

.field private currentSelectedDayTextColor:I

.field private dayColumnNames:[Ljava/lang/String;

.field private dayPaint:Landroid/graphics/Paint;

.field private densityAdjustedSnapVelocity:I

.field private displayOtherMonthDays:Z

.field private distanceThresholdForAutoScroll:I

.field private distanceX:F

.field private eventIndicatorStyle:I

.field private eventsCalendar:Ljava/util/Calendar;

.field private eventsContainer:Lcom/dp/sgp/compactcalendarview/EventsContainer;

.field private firstDayOfWeekToDraw:I

.field private growFactor:F

.field private growfactorIndicator:F

.field private height:I

.field private heightPerDay:I

.field private isRtl:Z

.field private isScrolling:Z

.field private isSmoothScrolling:Z

.field private lastAutoScrollFromFling:J

.field private listener:Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarViewListener;

.field private locale:Ljava/util/Locale;

.field private maximumVelocity:I

.field private monthsScrolledSoFar:I

.field private multiDayIndicatorStrokeWidth:F

.field private multiEventIndicatorColor:I

.field private otherMonthDaysTextColor:I

.field private paddingHeight:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingWidth:I

.field private screenDensity:F

.field private scroller:Landroid/widget/OverScroller;

.field private shouldDrawDaysHeader:Z

.field private shouldDrawIndicatorsBelowSelectedDays:Z

.field private shouldSelectFirstDayOfMonthOnScroll:Z

.field private smallIndicatorRadius:F

.field private targetHeight:I

.field private tempPreviousMonthCalendar:Ljava/util/Calendar;

.field private textHeight:I

.field private textSize:I

.field private textSizeRect:Landroid/graphics/Rect;

.field private textWidth:I

.field private timeZone:Ljava/util/TimeZone;

.field private todayCalender:Ljava/util/Calendar;

.field private useThreeLetterAbbreviation:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private width:I

.field private widthPerDay:I

.field private xIndicatorOffset:F


# direct methods
.method constructor <init>(Landroid/graphics/Paint;Landroid/widget/OverScroller;Landroid/graphics/Rect;Landroid/util/AttributeSet;Landroid/content/Context;IIILandroid/view/VelocityTracker;ILcom/dp/sgp/compactcalendarview/EventsContainer;Ljava/util/Locale;Ljava/util/TimeZone;)V
    .locals 6

    move-object v0, p0

    move-object v1, p5

    move v2, p7

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x3

    .line 45
    iput v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventIndicatorStyle:I

    const/4 v3, 0x1

    .line 46
    iput v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDayIndicatorStyle:I

    .line 47
    iput v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentSelectedDayIndicatorStyle:I

    const/16 v4, 0x28

    .line 48
    iput v4, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingWidth:I

    .line 49
    iput v4, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingHeight:I

    const/16 v4, 0x1e

    .line 55
    iput v4, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textSize:I

    const/4 v4, 0x0

    .line 64
    iput v4, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->animationStatus:I

    const/4 v5, 0x2

    .line 65
    iput v5, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->firstDayOfWeekToDraw:I

    const/4 v5, 0x0

    .line 70
    iput v5, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->growFactor:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 71
    iput v5, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->screenDensity:F

    .line 76
    iput-boolean v4, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->useThreeLetterAbbreviation:Z

    .line 79
    iput-boolean v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldDrawDaysHeader:Z

    .line 80
    iput-boolean v4, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldDrawIndicatorsBelowSelectedDays:Z

    .line 81
    iput-boolean v4, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->displayOtherMonthDays:Z

    .line 82
    iput-boolean v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldSelectFirstDayOfMonthOnScroll:Z

    .line 83
    iput-boolean v4, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isRtl:Z

    const/4 v3, 0x0

    .line 86
    iput-object v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 87
    sget-object v3, Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;->NONE:Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;

    iput-object v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDirection:Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;

    .line 88
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDate:Ljava/util/Date;

    .line 95
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    .line 97
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    .line 98
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->background:Landroid/graphics/Paint;

    const/4 v3, -0x1

    .line 109
    iput v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderBackgroundColor:I

    move-object v3, p1

    .line 127
    iput-object v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    move-object v3, p2

    .line 128
    iput-object v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scroller:Landroid/widget/OverScroller;

    move-object v3, p3

    .line 129
    iput-object v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textSizeRect:Landroid/graphics/Rect;

    move v3, p6

    .line 130
    iput v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDayBackgroundColor:I

    .line 131
    iput v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderTextColor:I

    move v3, p8

    .line 132
    iput v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentSelectedDayBackgroundColor:I

    .line 133
    iput v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->otherMonthDaysTextColor:I

    move-object v2, p9

    .line 134
    iput-object v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->velocityTracker:Landroid/view/VelocityTracker;

    move/from16 v2, p10

    .line 135
    iput v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->multiEventIndicatorColor:I

    move-object/from16 v2, p11

    .line 136
    iput-object v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsContainer:Lcom/dp/sgp/compactcalendarview/EventsContainer;

    move-object/from16 v2, p12

    .line 137
    iput-object v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->locale:Ljava/util/Locale;

    move-object/from16 v2, p13

    .line 138
    iput-object v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->timeZone:Ljava/util/TimeZone;

    .line 139
    iput-boolean v4, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->displayOtherMonthDays:Z

    move-object v2, p4

    .line 140
    invoke-direct {p0, p4, p5}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->loadAttributes(Landroid/util/AttributeSet;Landroid/content/Context;)V

    .line 141
    invoke-direct {p0, p5}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->init(Landroid/content/Context;)V

    return-void
.end method

.method private calculateXPositionOffset()V
    .locals 3

    .line 751
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDirection:Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;

    sget-object v1, Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;->HORIZONTAL:Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;

    if-ne v0, v1, :cond_0

    .line 752
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->distanceX:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :cond_0
    return-void
.end method

.method private computeVelocity()I
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->maximumVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 579
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private drawCalendarWhileAnimating(Landroid/graphics/Canvas;)V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->background:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 464
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->background:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 465
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->growFactor:F

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->background:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 466
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 467
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawScrollableCalender(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawCalendarWhileAnimatingIndicators(Landroid/graphics/Canvas;)V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 456
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->growFactor:F

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 457
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 458
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 459
    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawScrollableCalender(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawCalenderBackground(Landroid/graphics/Canvas;)V
    .locals 7

    .line 757
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 758
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 759
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->width:I

    int-to-float v4, v0

    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->height:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 760
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 761
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderTextColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFF)V
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFIF)V
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 978
    iget p4, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->animationStatus:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    .line 979
    iget p4, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->bigCircleIndicatorRadius:F

    mul-float p5, p5, p4

    const p4, 0x3fb33333    # 1.4f

    mul-float p5, p5, p4

    .line 980
    iget p4, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->growfactorIndicator:F

    cmpl-float v0, p4, p5

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p5, p4

    :goto_0
    iget p4, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textHeight:I

    div-int/lit8 p4, p4, 0x6

    int-to-float p4, p4

    sub-float/2addr p3, p4

    invoke-direct {p0, p1, p5, p2, p3}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawCircle(Landroid/graphics/Canvas;FFF)V

    goto :goto_1

    .line 982
    :cond_1
    iget p4, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->bigCircleIndicatorRadius:F

    mul-float p5, p5, p4

    iget p4, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textHeight:I

    div-int/lit8 p4, p4, 0x6

    int-to-float p4, p4

    sub-float/2addr p3, p4

    invoke-direct {p0, p1, p5, p2, p3}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawCircle(Landroid/graphics/Canvas;FFF)V

    :goto_1
    return-void
.end method

.method private drawCurrentMonth(Landroid/graphics/Canvas;)V
    .locals 4

    .line 737
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDate:Ljava/util/Date;

    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCalenderToFirstDayOfMonth(Ljava/util/Calendar;Ljava/util/Date;II)V

    .line 738
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->width:I

    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    neg-int v2, v2

    mul-int v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawMonth(Landroid/graphics/Canvas;Ljava/util/Calendar;I)V

    return-void
.end method

.method private drawDayCircleIndicator(ILandroid/graphics/Canvas;FFI)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 959
    invoke-direct/range {v0 .. v6}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawDayCircleIndicator(ILandroid/graphics/Canvas;FFIF)V

    return-void
.end method

.method private drawDayCircleIndicator(ILandroid/graphics/Canvas;FFIF)V
    .locals 7

    .line 963
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 965
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->screenDensity:F

    mul-float v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 966
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 968
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 970
    invoke-direct/range {v1 .. v6}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 971
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 972
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private drawEventIndicatorCircle(Landroid/graphics/Canvas;FFI)V
    .locals 8

    .line 987
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 988
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventIndicatorStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 989
    iget-object p4, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 990
    iget p4, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->smallIndicatorRadius:F

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawCircle(Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 992
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x2

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 993
    invoke-direct/range {v2 .. v7}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawDayCircleIndicator(ILandroid/graphics/Canvas;FFI)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 995
    invoke-direct/range {v2 .. v7}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawDayCircleIndicator(ILandroid/graphics/Canvas;FFI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawEventsWithPlus(Landroid/graphics/Canvas;FFLjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FF",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p3

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v8, 0x0

    const/4 v9, -0x2

    :goto_0
    const/4 v1, 0x3

    if-ge v8, v1, :cond_1

    move-object/from16 v10, p4

    .line 852
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/compactcalendarview/domain/Event;

    .line 853
    iget v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->xIndicatorOffset:F

    int-to-float v3, v9

    mul-float v2, v2, v3

    add-float v14, p2, v2

    const/4 v2, 0x2

    if-ne v8, v2, :cond_0

    .line 855
    iget-object v1, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->multiEventIndicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 856
    iget-object v1, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->multiDayIndicatorStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 857
    iget v1, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->smallIndicatorRadius:F

    sub-float v2, v14, v1

    add-float v4, v14, v1

    iget-object v6, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 858
    iget v1, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->smallIndicatorRadius:F

    sub-float v13, v7, v1

    add-float v15, v7, v1

    iget-object v1, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v12, v14

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 859
    iget-object v1, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v2, p1

    goto :goto_1

    .line 861
    :cond_0
    invoke-virtual {v1}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getColor()I

    move-result v1

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v14, v7, v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawEventIndicatorCircle(Landroid/graphics/Canvas;FFI)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawNextMonth(Landroid/graphics/Canvas;I)V
    .locals 3

    .line 732
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDate:Ljava/util/Date;

    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    neg-int v2, v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCalenderToFirstDayOfMonth(Ljava/util/Calendar;Ljava/util/Date;II)V

    .line 733
    iget-object p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->width:I

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawMonth(Landroid/graphics/Canvas;Ljava/util/Calendar;I)V

    return-void
.end method

.method private drawPreviousMonth(Landroid/graphics/Canvas;I)V
    .locals 3

    .line 746
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDate:Ljava/util/Date;

    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    neg-int v2, v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCalenderToFirstDayOfMonth(Ljava/util/Calendar;Ljava/util/Date;II)V

    .line 747
    iget-object p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->width:I

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    mul-int v0, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawMonth(Landroid/graphics/Canvas;Ljava/util/Calendar;I)V

    return-void
.end method

.method private drawScrollableCalender(Landroid/graphics/Canvas;)V
    .locals 3

    .line 720
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isRtl:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 721
    invoke-direct {p0, p1, v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawNextMonth(Landroid/graphics/Canvas;I)V

    .line 722
    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawCurrentMonth(Landroid/graphics/Canvas;)V

    .line 723
    invoke-direct {p0, p1, v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawPreviousMonth(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 725
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawPreviousMonth(Landroid/graphics/Canvas;I)V

    .line 726
    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawCurrentMonth(Landroid/graphics/Canvas;)V

    .line 727
    invoke-direct {p0, p1, v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawNextMonth(Landroid/graphics/Canvas;I)V

    :goto_0
    return-void
.end method

.method private drawSingleEvent(Landroid/graphics/Canvas;FFLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FF",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 835
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/dp/sgp/compactcalendarview/domain/Event;

    .line 836
    invoke-virtual {p4}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getColor()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawEventIndicatorCircle(Landroid/graphics/Canvas;FFI)V

    return-void
.end method

.method private drawTwoEvents(Landroid/graphics/Canvas;FFLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FF",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;)V"
        }
    .end annotation

    .line 841
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->xIndicatorOffset:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v0, v0, v1

    add-float/2addr v0, p2

    const/4 v1, 0x0

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/compactcalendarview/domain/Event;

    invoke-virtual {v1}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getColor()I

    move-result v1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawEventIndicatorCircle(Landroid/graphics/Canvas;FFI)V

    .line 843
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->xIndicatorOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    const/4 v0, 0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/dp/sgp/compactcalendarview/domain/Event;

    invoke-virtual {p4}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getColor()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawEventIndicatorCircle(Landroid/graphics/Canvas;FFI)V

    return-void
.end method

.method private getInterpolatedBigCircleIndicator()F
    .locals 9

    .line 429
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textSizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 430
    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->heightPerDay:I

    int-to-float v1, v1

    .line 431
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textSizeRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    mul-float v3, v1, v1

    add-float/2addr v3, v3

    float-to-double v3, v3

    .line 432
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v5

    mul-float v7, v0, v0

    add-float/2addr v7, v7

    float-to-double v7, v7

    .line 433
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    sub-double/2addr v3, v7

    sub-float/2addr v2, v0

    sub-float/2addr v1, v0

    div-float/2addr v2, v1

    float-to-double v0, v2

    .line 435
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v0

    add-double/2addr v7, v3

    double-to-float v0, v7

    return v0
.end method

.method private handleHorizontalScrolling()V
    .locals 4

    .line 566
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->computeVelocity()I

    move-result v0

    .line 567
    invoke-direct {p0, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->handleSmoothScrolling(I)V

    .line 569
    sget-object v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;->NONE:Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;

    iput-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDirection:Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;

    .line 570
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDate:Ljava/util/Date;

    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCalenderToFirstDayOfMonth(Ljava/util/Calendar;Ljava/util/Date;II)V

    .line 572
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldSelectFirstDayOfMonthOnScroll:Z

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDate:Ljava/util/Date;

    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCalenderToFirstDayOfMonth(Ljava/util/Calendar;Ljava/util/Date;II)V

    :cond_0
    return-void
.end method

.method private handleSmoothScrolling(I)V
    .locals 7

    .line 583
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->width:I

    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    mul-int v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->lastAutoScrollFromFling:J

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 585
    :goto_0
    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->densityAdjustedSnapVelocity:I

    if-le p1, v2, :cond_1

    if-eqz v1, :cond_1

    .line 586
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scrollPreviousMonth()V

    goto :goto_1

    :cond_1
    neg-int v2, v2

    if-ge p1, v2, :cond_2

    if-eqz v1, :cond_2

    .line 588
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scrollNextMonth()V

    goto :goto_1

    .line 589
    :cond_2
    iget-boolean p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isScrolling:Z

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->distanceThresholdForAutoScroll:I

    if-le v0, v1, :cond_3

    .line 590
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scrollPreviousMonth()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 591
    iget p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->distanceThresholdForAutoScroll:I

    neg-int p1, p1

    if-ge v0, p1, :cond_4

    .line 592
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scrollNextMonth()V

    goto :goto_1

    .line 594
    :cond_4
    iput-boolean v3, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isSmoothScrolling:Z

    .line 595
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->snapBackScroller()V

    :goto_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .line 172
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    .line 173
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->todayCalender:Ljava/util/Calendar;

    .line 174
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    .line 175
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsCalendar:Ljava/util/Calendar;

    .line 176
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->tempPreviousMonthCalendar:Ljava/util/Calendar;

    .line 179
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 180
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 181
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->todayCalender:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 182
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 183
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->tempPreviousMonthCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 185
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->firstDayOfWeekToDraw:I

    invoke-virtual {p0, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setFirstDayOfWeek(I)V

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setUseWeekDayAbbreviation(Z)V

    .line 188
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 189
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 191
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 192
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 193
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textSizeRect:Landroid/graphics/Rect;

    const-string v3, "31"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 195
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textSizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textHeight:I

    .line 196
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textSizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textWidth:I

    .line 198
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->todayCalender:Ljava/util/Calendar;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 199
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->todayCalender:Ljava/util/Calendar;

    invoke-direct {p0, v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setToMidnight(Ljava/util/Calendar;)V

    .line 201
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 202
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDate:Ljava/util/Date;

    iget v3, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    neg-int v3, v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCalenderToFirstDayOfMonth(Ljava/util/Calendar;Ljava/util/Date;II)V

    .line 204
    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->initScreenDensityRelatedValues(Landroid/content/Context;)V

    .line 206
    iget p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->screenDensity:F

    const/high16 v0, 0x40600000    # 3.5f

    mul-float v0, v0, p1

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->xIndicatorOffset:F

    const/high16 v0, 0x40200000    # 2.5f

    mul-float p1, p1, v0

    .line 209
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->smallIndicatorRadius:F

    const/high16 p1, 0x4f000000

    .line 212
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->growFactor:F

    return-void
.end method

.method private initScreenDensityRelatedValues(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->screenDensity:F

    .line 219
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 220
    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->screenDensity:F

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->densityAdjustedSnapVelocity:I

    .line 221
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->maximumVelocity:I

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 224
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->multiDayIndicatorStrokeWidth:F

    :cond_0
    return-void
.end method

.method private isScrolling()Z
    .locals 3

    .line 502
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 503
    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->width:I

    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    mul-int v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v2, v1, -0x5

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadAttributes(Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 6

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 146
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/dp/sgp/R$styleable;->CompactCalendarView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 148
    :try_start_0
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDayBackgroundColor:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDayBackgroundColor:I

    const/16 v0, 0xd

    .line 149
    iget v3, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderTextColor:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderTextColor:I

    const/4 v3, 0x3

    .line 150
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDayTextColor:I

    const/16 v0, 0xa

    .line 151
    iget v4, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->otherMonthDaysTextColor:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->otherMonthDaysTextColor:I

    const/4 v0, 0x4

    .line 152
    iget v4, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentSelectedDayBackgroundColor:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentSelectedDayBackgroundColor:I

    const/4 v0, 0x6

    .line 153
    iget v4, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderTextColor:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentSelectedDayTextColor:I

    .line 154
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderBackgroundColor:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderBackgroundColor:I

    const/16 v0, 0x9

    .line 155
    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->multiEventIndicatorColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->multiEventIndicatorColor:I

    const/16 v0, 0xe

    .line 156
    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textSize:I

    int-to-float v2, v2

    .line 157
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 156
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->textSize:I

    const/16 v0, 0xc

    .line 158
    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->targetHeight:I

    int-to-float v2, v2

    .line 159
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v1, v2, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 158
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->targetHeight:I

    const/16 p2, 0x8

    .line 160
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventIndicatorStyle:I

    .line 161
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDayIndicatorStyle:I

    const/4 p2, 0x5

    .line 162
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentSelectedDayIndicatorStyle:I

    const/4 p2, 0x7

    .line 163
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->displayOtherMonthDays:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->displayOtherMonthDays:Z

    const/16 p2, 0xb

    .line 164
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldSelectFirstDayOfMonthOnScroll:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldSelectFirstDayOfMonthOnScroll:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method private monthsScrolledSoFar()I
    .locals 1

    .line 742
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method private performMonthScrollCallback()V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->listener:Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarViewListener;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getFirstDayOfCurrentMonth()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarViewListener;->onMonthScroll(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method private performOnDayClickCallback(Ljava/util/Date;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->listener:Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarViewListener;

    if-eqz v0, :cond_0

    .line 509
    invoke-interface {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarViewListener;->onDayClick(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method private performScroll()V
    .locals 7

    .line 622
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->width:I

    mul-int v0, v0, v1

    int-to-float v0, v0

    .line 623
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 624
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    float-to-int v4, v0

    .line 625
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->width:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x442f0000    # 700.0f

    mul-float v0, v0, v3

    float-to-int v6, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 624
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method private scrollNext()V
    .locals 4

    .line 360
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    .line 361
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    iget v3, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->width:I

    mul-int v0, v0, v3

    int-to-float v0, v0

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 362
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldSelectFirstDayOfMonthOnScroll:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCalenderToFirstDayOfMonth(Ljava/util/Calendar;Ljava/util/Date;II)V

    .line 364
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCurrentDate(Ljava/util/Date;)V

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->performMonthScrollCallback()V

    return-void
.end method

.method private scrollNextMonth()V
    .locals 2

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->lastAutoScrollFromFling:J

    .line 601
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    .line 602
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->performScroll()V

    .line 603
    iput-boolean v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isSmoothScrolling:Z

    .line 604
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->performMonthScrollCallback()V

    return-void
.end method

.method private scrollPrev()V
    .locals 4

    .line 370
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    .line 371
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->width:I

    mul-int v0, v0, v2

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 372
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldSelectFirstDayOfMonthOnScroll:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCalenderToFirstDayOfMonth(Ljava/util/Calendar;Ljava/util/Date;II)V

    .line 374
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCurrentDate(Ljava/util/Date;)V

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->performMonthScrollCallback()V

    return-void
.end method

.method private scrollPreviousMonth()V
    .locals 2

    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->lastAutoScrollFromFling:J

    .line 609
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    .line 610
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->performScroll()V

    .line 611
    iput-boolean v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isSmoothScrolling:Z

    .line 612
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->performMonthScrollCallback()V

    return-void
.end method

.method private setCalenderToFirstDayOfMonth(Ljava/util/Calendar;Ljava/util/Date;II)V
    .locals 0

    .line 229
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setMonthOffset(Ljava/util/Calendar;Ljava/util/Date;II)V

    const/4 p2, 0x5

    const/4 p3, 0x1

    .line 230
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private setMonthOffset(Ljava/util/Calendar;Ljava/util/Date;II)V
    .locals 0

    .line 234
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    add-int/2addr p3, p4

    const/4 p2, 0x2

    .line 235
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->add(II)V

    const/16 p2, 0xb

    const/4 p3, 0x0

    .line 236
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 237
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xd

    .line 238
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xe

    .line 239
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private setToMidnight(Ljava/util/Calendar;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 659
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 660
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 661
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 662
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private snapBackScroller()V
    .locals 4

    .line 561
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    iget v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->width:I

    mul-int v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 562
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    neg-float v0, v0

    float-to-int v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/widget/OverScroller;->startScroll(IIII)V

    return-void
.end method


# virtual methods
.method addEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;)V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsContainer:Lcom/dp/sgp/compactcalendarview/EventsContainer;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->addEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;)V

    return-void
.end method

.method addEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;)V"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsContainer:Lcom/dp/sgp/compactcalendarview/EventsContainer;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->addEvents(Ljava/util/List;)V

    return-void
.end method

.method computeScroll()Z
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method drawEvents(Landroid/graphics/Canvas;Ljava/util/Calendar;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    .line 765
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 766
    iget-object v5, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsContainer:Lcom/dp/sgp/compactcalendarview/EventsContainer;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v5, v4, v2}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->getEventsForMonthAndYear(II)Ljava/util/List;

    move-result-object v2

    .line 768
    iget-object v5, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->todayCalender:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 769
    :goto_0
    iget-object v8, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v4, v8, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 771
    :goto_1
    iget-object v8, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->todayCalender:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 772
    iget-object v10, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->todayCalender:Ljava/util/Calendar;

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 773
    iget-object v11, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 774
    iget v12, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->bigCircleIndicatorRadius:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    if-eqz v2, :cond_15

    const/4 v13, 0x0

    .line 776
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_15

    .line 777
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/dp/sgp/compactcalendarview/Events;

    move v15, v8

    .line 778
    invoke-virtual {v14}, Lcom/dp/sgp/compactcalendarview/Events;->getTimeInMillis()J

    move-result-wide v7

    .line 779
    iget-object v9, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsCalendar:Ljava/util/Calendar;

    invoke-virtual {v9, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 781
    iget-object v7, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v7}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v7

    .line 782
    iget-boolean v8, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isRtl:Z

    if-eqz v8, :cond_2

    rsub-int/lit8 v7, v7, 0x6

    .line 786
    :cond_2
    iget-object v8, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsCalendar:Ljava/util/Calendar;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 787
    iget v9, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->widthPerDay:I

    mul-int v9, v9, v7

    iget v7, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingWidth:I

    add-int/2addr v9, v7

    iget v7, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingLeft:I

    add-int/2addr v9, v7

    int-to-float v7, v9

    iget-object v9, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v9

    move/from16 v9, p3

    int-to-float v3, v9

    add-float/2addr v7, v3

    iget v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingRight:I

    int-to-float v3, v3

    sub-float/2addr v7, v3

    .line 788
    iget v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->heightPerDay:I

    mul-int v8, v8, v3

    iget v3, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingHeight:I

    add-int/2addr v8, v3

    int-to-float v3, v8

    .line 790
    iget v8, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->animationStatus:I

    move-object/from16 v16, v2

    const/4 v2, 0x3

    if-eq v8, v6, :cond_3

    if-ne v8, v2, :cond_4

    :cond_3
    iget v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->growFactor:F

    cmpl-float v2, v7, v2

    if-gez v2, :cond_13

    :cond_4
    iget v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->growFactor:F

    cmpl-float v17, v3, v2

    if-ltz v17, :cond_5

    goto/16 :goto_8

    :cond_5
    const/4 v6, 0x2

    if-ne v8, v6, :cond_6

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_6

    goto/16 :goto_8

    :cond_6
    const/4 v2, 0x1

    if-ne v8, v2, :cond_7

    .line 796
    iget v8, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventIndicatorStyle:I

    if-eq v8, v2, :cond_13

    if-ne v8, v6, :cond_7

    goto/16 :goto_8

    .line 801
    :cond_7
    invoke-virtual {v14}, Lcom/dp/sgp/compactcalendarview/Events;->getEvents()Ljava/util/List;

    move-result-object v6

    .line 802
    iget-object v8, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsCalendar:Ljava/util/Calendar;

    const/4 v14, 0x5

    invoke-virtual {v8, v14}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 803
    iget-object v14, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsCalendar:Ljava/util/Calendar;

    invoke-virtual {v14, v2}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move v2, v15

    if-eqz v5, :cond_8

    if-ne v2, v8, :cond_8

    if-ne v14, v10, :cond_8

    const/4 v14, 0x1

    goto :goto_3

    :cond_8
    const/4 v14, 0x0

    :goto_3
    if-eqz v4, :cond_9

    if-ne v11, v8, :cond_9

    const/4 v8, 0x1

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    .line 807
    :goto_4
    iget-boolean v15, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldDrawIndicatorsBelowSelectedDays:Z

    if-nez v15, :cond_b

    if-nez v15, :cond_a

    if-nez v14, :cond_a

    if-eqz v8, :cond_b

    :cond_a
    move/from16 v18, v2

    iget v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->animationStatus:I

    move/from16 v19, v4

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    goto :goto_5

    :cond_b
    move/from16 v18, v2

    move/from16 v19, v4

    const/4 v4, 0x1

    .line 808
    :goto_5
    iget v2, v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventIndicatorStyle:I

    if-eq v2, v4, :cond_11

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    goto :goto_6

    :cond_c
    add-float/2addr v3, v12

    if-eqz v15, :cond_e

    if-nez v14, :cond_d

    if-eqz v8, :cond_e

    :cond_d
    add-float/2addr v3, v12

    .line 821
    :cond_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_f

    .line 822
    invoke-direct {v0, v1, v7, v3, v6}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawEventsWithPlus(Landroid/graphics/Canvas;FFLjava/util/List;)V

    goto :goto_9

    .line 823
    :cond_f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_10

    .line 824
    invoke-direct {v0, v1, v7, v3, v6}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawTwoEvents(Landroid/graphics/Canvas;FFLjava/util/List;)V

    const/4 v2, 0x0

    goto :goto_a

    .line 825
    :cond_10
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_12

    .line 826
    invoke-direct {v0, v1, v7, v3, v6}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawSingleEvent(Landroid/graphics/Canvas;FFLjava/util/List;)V

    goto :goto_7

    :cond_11
    const/4 v4, 0x2

    :goto_6
    const/4 v8, 0x1

    .line 809
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    .line 810
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dp/sgp/compactcalendarview/domain/Event;

    .line 811
    invoke-virtual {v6}, Lcom/dp/sgp/compactcalendarview/domain/Event;->getColor()I

    move-result v6

    invoke-direct {v0, v1, v7, v3, v6}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawEventIndicatorCircle(Landroid/graphics/Canvas;FFI)V

    goto :goto_b

    :cond_12
    :goto_7
    const/4 v2, 0x0

    goto :goto_b

    :cond_13
    :goto_8
    move/from16 v19, v4

    move/from16 v18, v15

    :cond_14
    :goto_9
    const/4 v2, 0x0

    const/4 v4, 0x2

    :goto_a
    const/4 v8, 0x1

    :goto_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    move/from16 v8, v18

    move/from16 v4, v19

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x5

    goto/16 :goto_2

    :cond_15
    return-void
.end method

.method drawMonth(Landroid/graphics/Canvas;Ljava/util/Calendar;I)V
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    .line 875
    invoke-virtual/range {p0 .. p3}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawEvents(Landroid/graphics/Canvas;Ljava/util/Calendar;I)V

    .line 878
    invoke-virtual {v6, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v8

    const/4 v1, 0x2

    .line 880
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->todayCalender:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v10, 0x1

    if-ne v2, v3, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 881
    :goto_0
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->todayCalender:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 882
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 883
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 884
    :goto_2
    iget-object v2, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->todayCalender:Ljava/util/Calendar;

    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 885
    iget v2, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->animationStatus:I

    if-ne v2, v10, :cond_3

    const/16 v16, 0x1

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    .line 887
    :goto_3
    invoke-virtual {v0, v14}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    .line 889
    iget-object v2, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->tempPreviousMonthCalendar:Ljava/util/Calendar;

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 890
    iget-object v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->tempPreviousMonthCalendar:Ljava/util/Calendar;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 891
    iget-object v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->tempPreviousMonthCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v17

    .line 893
    iget-boolean v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isRtl:Z

    const/4 v4, 0x6

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-gt v1, v4, :cond_12

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 895
    iget-boolean v2, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isRtl:Z

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :goto_6
    if-gt v1, v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    move/from16 v18, v0

    move v2, v1

    const/16 v19, 0x0

    goto :goto_7

    :cond_7
    move/from16 v18, v0

    move/from16 v19, v2

    move v2, v1

    .line 905
    :goto_7
    iget-object v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayColumnNames:[Ljava/lang/String;

    array-length v0, v0

    if-ne v2, v0, :cond_8

    goto/16 :goto_c

    .line 908
    :cond_8
    iget v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->widthPerDay:I

    mul-int v0, v0, v2

    iget v1, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingWidth:I

    add-int/2addr v0, v1

    iget v1, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingLeft:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    move/from16 v1, p3

    int-to-float v4, v1

    add-float/2addr v0, v4

    iget v4, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingRight:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    .line 909
    iget v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->heightPerDay:I

    mul-int v0, v0, v19

    iget v9, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingHeight:I

    add-int/2addr v0, v9

    int-to-float v9, v0

    .line 910
    iget v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->growFactor:F

    cmpl-float v20, v4, v0

    if-ltz v20, :cond_a

    if-nez v16, :cond_9

    iget v14, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->animationStatus:I

    const/4 v10, 0x3

    if-eq v14, v10, :cond_9

    goto :goto_9

    :cond_9
    :goto_8
    move/from16 v21, v2

    move v10, v5

    const/16 v23, 0x6

    goto/16 :goto_b

    :cond_a
    :goto_9
    cmpl-float v0, v9, v0

    if-ltz v0, :cond_b

    goto :goto_8

    :cond_b
    if-nez v19, :cond_c

    .line 916
    iget-boolean v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldDrawDaysHeader:Z

    if-eqz v0, :cond_9

    .line 917
    iget-object v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    iget v3, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderTextColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 918
    iget-object v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 919
    iget-object v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 920
    iget-object v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    iget v3, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderTextColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 921
    iget-object v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayColumnNames:[Ljava/lang/String;

    aget-object v0, v0, v18

    iget v3, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingHeight:I

    int-to-float v3, v3

    iget-object v9, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v4, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 922
    iget-object v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_8

    :cond_c
    add-int/lit8 v0, v19, -0x1

    mul-int/lit8 v0, v0, 0x7

    add-int v0, v0, v18

    const/4 v10, 0x1

    add-int/2addr v0, v10

    sub-int v14, v0, v8

    .line 926
    iget v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderTextColor:I

    .line 927
    iget-object v3, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v14, :cond_d

    if-eqz v13, :cond_d

    if-nez v16, :cond_d

    .line 928
    iget v3, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentSelectedDayIndicatorStyle:I

    iget v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentSelectedDayBackgroundColor:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v21, v2

    move-object/from16 v2, p1

    move v3, v4

    move/from16 v22, v4

    const/16 v23, 0x6

    move v4, v9

    move v10, v5

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawDayCircleIndicator(ILandroid/graphics/Canvas;FFI)V

    .line 929
    iget v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentSelectedDayTextColor:I

    goto :goto_a

    :cond_d
    move/from16 v21, v2

    move/from16 v22, v4

    move v10, v5

    const/16 v23, 0x6

    if-eqz v12, :cond_e

    if-eqz v11, :cond_e

    if-ne v15, v14, :cond_e

    if-nez v16, :cond_e

    .line 932
    iget v1, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDayIndicatorStyle:I

    iget v5, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDayBackgroundColor:I

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, v22

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawDayCircleIndicator(ILandroid/graphics/Canvas;FFI)V

    .line 933
    iget v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDayTextColor:I

    :cond_e
    :goto_a
    if-gtz v14, :cond_f

    .line 936
    iget-boolean v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->displayOtherMonthDays:Z

    if-eqz v0, :cond_11

    .line 938
    iget-object v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 939
    iget-object v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    iget v1, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->otherMonthDaysTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int v14, v17, v14

    .line 940
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    move/from16 v2, v22

    invoke-virtual {v7, v0, v2, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_f
    move/from16 v2, v22

    if-le v14, v10, :cond_10

    .line 943
    iget-boolean v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->displayOtherMonthDays:Z

    if-eqz v0, :cond_11

    .line 945
    iget-object v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 946
    iget-object v0, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    iget v1, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->otherMonthDaysTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sub-int/2addr v14, v10

    .line 947
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v2, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_b

    .line 950
    :cond_10
    iget-object v1, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 951
    iget-object v1, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 952
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v2, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_11
    :goto_b
    add-int/lit8 v2, v19, 0x1

    move v5, v10

    move/from16 v0, v18

    move/from16 v1, v21

    const/4 v4, 0x6

    const/4 v10, 0x1

    const/4 v14, 0x5

    goto/16 :goto_5

    :cond_12
    :goto_c
    return-void
.end method

.method getCalendarEventsFor(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;"
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsContainer:Lcom/dp/sgp/compactcalendarview/EventsContainer;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->getEventsFor(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getCalendarEventsForMonth(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;"
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsContainer:Lcom/dp/sgp/compactcalendarview/EventsContainer;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->getEventsForMonth(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getDayIndicatorRadius()F
    .locals 1

    .line 279
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->bigCircleIndicatorRadius:F

    return v0
.end method

.method getDayOfWeek(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x7

    .line 869
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->firstDayOfWeekToDraw:I

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x7

    :cond_0
    return p1
.end method

.method getFirstDayOfCurrentMonth()Ljava/util/Date;
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 641
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 642
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 643
    invoke-direct {p0, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setToMidnight(Ljava/util/Calendar;)V

    .line 644
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method getGrowFactor()F
    .locals 1

    .line 698
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->growFactor:F

    return v0
.end method

.method getGrowFactorIndicator()F
    .locals 1

    .line 287
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->growfactorIndicator:F

    return v0
.end method

.method getHeightPerDay()I
    .locals 1

    .line 629
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->heightPerDay:I

    return v0
.end method

.method getScreenDensity()F
    .locals 1

    .line 275
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->screenDensity:F

    return v0
.end method

.method getTargetHeight()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->targetHeight:I

    return v0
.end method

.method getWeekNumberForCurrentMonth()I
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x4

    .line 635
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method getWidth()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->width:I

    return v0
.end method

.method onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 702
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scroller:Landroid/widget/OverScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return v0
.end method

.method onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 439
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->widthPerDay:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingWidth:I

    .line 440
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->heightPerDay:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingHeight:I

    .line 441
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calculateXPositionOffset()V

    .line 443
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->animationStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 444
    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawCalendarWhileAnimating(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 446
    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawCalendarWhileAnimatingIndicators(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 448
    :cond_1
    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawCalenderBackground(Landroid/graphics/Canvas;)V

    .line 449
    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->drawScrollableCalender(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 707
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scroller:Landroid/widget/OverScroller;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return p2
.end method

.method onMeasure(IIII)V
    .locals 4

    .line 410
    div-int/lit8 v0, p1, 0x7

    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->widthPerDay:I

    .line 411
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->targetHeight:I

    if-lez v0, :cond_0

    div-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_0
    div-int/lit8 v0, p2, 0x7

    :goto_0
    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->heightPerDay:I

    .line 412
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->width:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 413
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->distanceThresholdForAutoScroll:I

    .line 414
    iput p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->height:I

    .line 415
    iput p3, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingRight:I

    .line 416
    iput p4, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingLeft:I

    .line 419
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getInterpolatedBigCircleIndicator()F

    move-result p1

    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->bigCircleIndicatorRadius:F

    .line 422
    iget-boolean p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldDrawIndicatorsBelowSelectedDays:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventIndicatorStyle:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    const p2, 0x3f59999a    # 0.85f

    mul-float p1, p1, p2

    :cond_1
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->bigCircleIndicatorRadius:F

    return-void
.end method

.method onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 515
    iget-boolean p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isSmoothScrolling:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    .line 519
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDirection:Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;

    sget-object v0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;->NONE:Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;

    if-ne p1, v0, :cond_2

    .line 520
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpl-float p1, p1, p4

    if-lez p1, :cond_1

    .line 521
    sget-object p1, Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;->HORIZONTAL:Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;

    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDirection:Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;

    goto :goto_0

    .line 523
    :cond_1
    sget-object p1, Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;->VERTICAL:Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;

    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDirection:Lcom/dp/sgp/compactcalendarview/CompactCalendarController$Direction;

    .line 527
    :cond_2
    :goto_0
    iput-boolean p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isScrolling:Z

    .line 528
    iput p3, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->distanceX:F

    return p2
.end method

.method onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 5

    .line 473
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 477
    :cond_0
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingLeft:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingRight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->widthPerDay:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->paddingHeight:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->heightPerDay:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 480
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDate:Ljava/util/Date;

    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setCalenderToFirstDayOfMonth(Ljava/util/Calendar;Ljava/util/Date;II)V

    .line 482
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {p0, v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v1

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x7

    sub-int/2addr p1, v1

    .line 485
    iget-boolean v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isRtl:Z

    if-eqz v1, :cond_1

    rsub-int/lit8 v0, v0, 0x6

    :cond_1
    add-int/2addr p1, v0

    .line 490
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-ge p1, v0, :cond_2

    if-ltz p1, :cond_2

    .line 492
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 494
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 495
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->performOnDayClickCallback(Ljava/util/Date;)V

    :cond_2
    return-void
.end method

.method onTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 534
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 541
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    .line 542
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 544
    :cond_1
    iput-boolean v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isSmoothScrolling:Z

    goto :goto_0

    .line 546
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 547
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 548
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x1f4

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    goto :goto_0

    .line 550
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 551
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->handleHorizontalScrolling()V

    .line 552
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 553
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    const/4 p1, 0x0

    .line 554
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 555
    iput-boolean v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isScrolling:Z

    :cond_4
    :goto_0
    return v1
.end method

.method removeAllEvents()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsContainer:Lcom/dp/sgp/compactcalendarview/EventsContainer;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->removeAllEvents()V

    return-void
.end method

.method removeEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;)V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsContainer:Lcom/dp/sgp/compactcalendarview/EventsContainer;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->removeEvent(Lcom/dp/sgp/compactcalendarview/domain/Event;)V

    return-void
.end method

.method removeEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/compactcalendarview/domain/Event;",
            ">;)V"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsContainer:Lcom/dp/sgp/compactcalendarview/EventsContainer;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->removeEvents(Ljava/util/List;)V

    return-void
.end method

.method removeEventsFor(J)V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsContainer:Lcom/dp/sgp/compactcalendarview/EventsContainer;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/compactcalendarview/EventsContainer;->removeEventByEpochMillis(J)V

    return-void
.end method

.method scrollLeft()V
    .locals 1

    .line 352
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isRtl:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scrollNext()V

    goto :goto_0

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scrollPrev()V

    :goto_0
    return-void
.end method

.method scrollRight()V
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isRtl:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scrollPrev()V

    goto :goto_0

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scrollNext()V

    :goto_0
    return-void
.end method

.method setAnimationStatus(I)V
    .locals 0

    .line 291
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->animationStatus:I

    return-void
.end method

.method setCalenderBackgroundColor(I)V
    .locals 0

    .line 332
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calenderBackgroundColor:I

    return-void
.end method

.method setCurrentDate(Ljava/util/Date;)V
    .locals 3

    const/4 v0, 0x0

    .line 648
    iput v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->distanceX:F

    const/4 v1, 0x0

    .line 649
    iput v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->monthsScrolledSoFar:I

    .line 650
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->accumulatedScrollOffset:Landroid/graphics/PointF;

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 651
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 652
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDate:Ljava/util/Date;

    .line 653
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 654
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->timeZone:Ljava/util/TimeZone;

    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->locale:Ljava/util/Locale;

    invoke-static {p1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->todayCalender:Ljava/util/Calendar;

    .line 655
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setToMidnight(Ljava/util/Calendar;)V

    return-void
.end method

.method setCurrentDayBackgroundColor(I)V
    .locals 0

    .line 336
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDayBackgroundColor:I

    return-void
.end method

.method setCurrentDayIndicatorStyle(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDayIndicatorStyle:I

    return-void
.end method

.method setCurrentDayTextColor(I)V
    .locals 0

    .line 340
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentDayTextColor:I

    return-void
.end method

.method setCurrentSelectedDayBackgroundColor(I)V
    .locals 0

    .line 324
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentSelectedDayBackgroundColor:I

    return-void
.end method

.method setCurrentSelectedDayIndicatorStyle(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentSelectedDayIndicatorStyle:I

    return-void
.end method

.method setCurrentSelectedDayTextColor(I)V
    .locals 0

    .line 328
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentSelectedDayTextColor:I

    return-void
.end method

.method setDayColumnNames([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 399
    array-length v0, p1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 402
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayColumnNames:[Ljava/lang/String;

    return-void

    .line 400
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Column names cannot be null and must contain a value for each day of the week"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setDisplayOtherMonthDays(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->displayOtherMonthDays:Z

    return-void
.end method

.method setEventIndicatorStyle(I)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventIndicatorStyle:I

    return-void
.end method

.method setFirstDayOfWeek(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 314
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->firstDayOfWeekToDraw:I

    .line 315
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->useThreeLetterAbbreviation:Z

    invoke-virtual {p0, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setUseWeekDayAbbreviation(Z)V

    .line 316
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 317
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->calendarWithFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 318
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->todayCalender:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 319
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->currentCalender:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 320
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->tempPreviousMonthCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    return-void

    .line 312
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Day must be an int between 1 and 7 or DAY_OF_WEEK from Java Calendar class. For more information please see Calendar.DAY_OF_WEEK."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setGrowFactorIndicator(F)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->growfactorIndicator:F

    return-void
.end method

.method setGrowProgress(F)V
    .locals 0

    .line 694
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->growFactor:F

    return-void
.end method

.method setIsRtl(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->isRtl:Z

    return-void
.end method

.method setListener(Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarViewListener;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->listener:Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarViewListener;

    return-void
.end method

.method setLocale(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 386
    iput-object p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->locale:Ljava/util/Locale;

    .line 387
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->timeZone:Ljava/util/TimeZone;

    .line 388
    new-instance p1, Lcom/dp/sgp/compactcalendarview/EventsContainer;

    iget-object p2, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->timeZone:Ljava/util/TimeZone;

    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->locale:Ljava/util/Locale;

    invoke-static {p2, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/compactcalendarview/EventsContainer;-><init>(Ljava/util/Calendar;)V

    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->eventsContainer:Lcom/dp/sgp/compactcalendarview/EventsContainer;

    const/4 p1, 0x0

    .line 390
    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->init(Landroid/content/Context;)V

    return-void

    .line 384
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "TimeZone cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 381
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Locale cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setShouldDrawDaysHeader(Z)V
    .locals 0

    .line 406
    iput-boolean p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldDrawDaysHeader:Z

    return-void
.end method

.method setShouldSelectFirstDayOfMonthOnScroll(Z)V
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldSelectFirstDayOfMonthOnScroll:Z

    return-void
.end method

.method setTargetHeight(I)V
    .locals 0

    .line 271
    iput p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->targetHeight:I

    return-void
.end method

.method setUseWeekDayAbbreviation(Z)V
    .locals 2

    .line 394
    iput-boolean p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->useThreeLetterAbbreviation:Z

    .line 395
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->locale:Ljava/util/Locale;

    iget v1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->firstDayOfWeekToDraw:I

    invoke-static {v0, v1, p1}, Lcom/dp/sgp/compactcalendarview/WeekUtils;->getWeekdayNames(Ljava/util/Locale;IZ)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->dayColumnNames:[Ljava/lang/String;

    return-void
.end method

.method shouldDrawIndicatorsBelowSelectedDays(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->shouldDrawIndicatorsBelowSelectedDays:Z

    return-void
.end method
