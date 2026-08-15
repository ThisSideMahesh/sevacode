package com.dp.sgp.compactcalendarview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import com.dp.sgp.R;
import com.dp.sgp.compactcalendarview.domain.Event;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
class CompactCalendarController {
    public static final int ANIMATE_INDICATORS = 3;
    private static final float ANIMATION_SCREEN_SET_DURATION_MILLIS = 700.0f;
    private static final int DAYS_IN_WEEK = 7;
    public static final int EXPAND_COLLAPSE_CALENDAR = 2;
    public static final int EXPOSE_CALENDAR_ANIMATION = 1;
    public static final int IDLE = 0;
    private static final int LAST_FLING_THRESHOLD_MILLIS = 300;
    private static final float SNAP_VELOCITY_DIP_PER_SECOND = 400.0f;
    private static final int VELOCITY_UNIT_PIXELS_PER_SECOND = 1000;
    private float bigCircleIndicatorRadius;
    private Calendar calendarWithFirstDayOfMonth;
    private int calenderTextColor;
    private Calendar currentCalender;
    private int currentDayBackgroundColor;
    private int currentDayTextColor;
    private int currentSelectedDayBackgroundColor;
    private int currentSelectedDayTextColor;
    private String[] dayColumnNames;
    private Paint dayPaint;
    private int densityAdjustedSnapVelocity;
    private boolean displayOtherMonthDays;
    private int distanceThresholdForAutoScroll;
    private float distanceX;
    private Calendar eventsCalendar;
    private EventsContainer eventsContainer;
    private float growfactorIndicator;
    private int height;
    private int heightPerDay;
    private boolean isScrolling;
    private boolean isSmoothScrolling;
    private long lastAutoScrollFromFling;
    private CompactCalendarView.CompactCalendarViewListener listener;
    private Locale locale;
    private int maximumVelocity;
    private int monthsScrolledSoFar;
    private float multiDayIndicatorStrokeWidth;
    private int multiEventIndicatorColor;
    private int otherMonthDaysTextColor;
    private int paddingLeft;
    private int paddingRight;
    private OverScroller scroller;
    private float smallIndicatorRadius;
    private int targetHeight;
    private Calendar tempPreviousMonthCalendar;
    private int textHeight;
    private Rect textSizeRect;
    private int textWidth;
    private TimeZone timeZone;
    private Calendar todayCalender;
    private VelocityTracker velocityTracker;
    private int width;
    private int widthPerDay;
    private float xIndicatorOffset;
    private int eventIndicatorStyle = 3;
    private int currentDayIndicatorStyle = 1;
    private int currentSelectedDayIndicatorStyle = 1;
    private int paddingWidth = 40;
    private int paddingHeight = 40;
    private int textSize = 30;
    private int animationStatus = 0;
    private int firstDayOfWeekToDraw = 2;
    private float growFactor = 0.0f;
    private float screenDensity = 1.0f;
    private boolean useThreeLetterAbbreviation = false;
    private boolean shouldDrawDaysHeader = true;
    private boolean shouldDrawIndicatorsBelowSelectedDays = false;
    private boolean shouldSelectFirstDayOfMonthOnScroll = true;
    private boolean isRtl = false;
    private Direction currentDirection = Direction.NONE;
    private Date currentDate = new Date();
    private PointF accumulatedScrollOffset = new PointF();
    private Paint background = new Paint();
    private int calenderBackgroundColor = -1;

    private enum Direction {
        NONE,
        HORIZONTAL,
        VERTICAL
    }

    CompactCalendarController(Paint paint, OverScroller overScroller, Rect rect, AttributeSet attributeSet, Context context, int i, int i2, int i3, VelocityTracker velocityTracker, int i4, EventsContainer eventsContainer, Locale locale, TimeZone timeZone) {
        this.displayOtherMonthDays = false;
        this.velocityTracker = null;
        this.dayPaint = new Paint();
        this.dayPaint = paint;
        this.scroller = overScroller;
        this.textSizeRect = rect;
        this.currentDayBackgroundColor = i;
        this.calenderTextColor = i2;
        this.currentSelectedDayBackgroundColor = i3;
        this.otherMonthDaysTextColor = i2;
        this.velocityTracker = velocityTracker;
        this.multiEventIndicatorColor = i4;
        this.eventsContainer = eventsContainer;
        this.locale = locale;
        this.timeZone = timeZone;
        this.displayOtherMonthDays = false;
        loadAttributes(attributeSet, context);
        init(context);
    }

    private void loadAttributes(AttributeSet attributeSet, Context context) {
        if (attributeSet == null || context == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.CompactCalendarView, 0, 0);
        try {
            this.currentDayBackgroundColor = typedArrayObtainStyledAttributes.getColor(1, this.currentDayBackgroundColor);
            int color = typedArrayObtainStyledAttributes.getColor(13, this.calenderTextColor);
            this.calenderTextColor = color;
            this.currentDayTextColor = typedArrayObtainStyledAttributes.getColor(3, color);
            this.otherMonthDaysTextColor = typedArrayObtainStyledAttributes.getColor(10, this.otherMonthDaysTextColor);
            this.currentSelectedDayBackgroundColor = typedArrayObtainStyledAttributes.getColor(4, this.currentSelectedDayBackgroundColor);
            this.currentSelectedDayTextColor = typedArrayObtainStyledAttributes.getColor(6, this.calenderTextColor);
            this.calenderBackgroundColor = typedArrayObtainStyledAttributes.getColor(0, this.calenderBackgroundColor);
            this.multiEventIndicatorColor = typedArrayObtainStyledAttributes.getColor(9, this.multiEventIndicatorColor);
            this.textSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(14, (int) TypedValue.applyDimension(2, this.textSize, context.getResources().getDisplayMetrics()));
            this.targetHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, (int) TypedValue.applyDimension(1, this.targetHeight, context.getResources().getDisplayMetrics()));
            this.eventIndicatorStyle = typedArrayObtainStyledAttributes.getInt(8, 3);
            this.currentDayIndicatorStyle = typedArrayObtainStyledAttributes.getInt(2, 1);
            this.currentSelectedDayIndicatorStyle = typedArrayObtainStyledAttributes.getInt(5, 1);
            this.displayOtherMonthDays = typedArrayObtainStyledAttributes.getBoolean(7, this.displayOtherMonthDays);
            this.shouldSelectFirstDayOfMonthOnScroll = typedArrayObtainStyledAttributes.getBoolean(11, this.shouldSelectFirstDayOfMonthOnScroll);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void init(Context context) {
        this.currentCalender = Calendar.getInstance(this.timeZone, this.locale);
        this.todayCalender = Calendar.getInstance(this.timeZone, this.locale);
        this.calendarWithFirstDayOfMonth = Calendar.getInstance(this.timeZone, this.locale);
        this.eventsCalendar = Calendar.getInstance(this.timeZone, this.locale);
        this.tempPreviousMonthCalendar = Calendar.getInstance(this.timeZone, this.locale);
        this.eventsCalendar.setMinimalDaysInFirstWeek(1);
        this.calendarWithFirstDayOfMonth.setMinimalDaysInFirstWeek(1);
        this.todayCalender.setMinimalDaysInFirstWeek(1);
        this.currentCalender.setMinimalDaysInFirstWeek(1);
        this.tempPreviousMonthCalendar.setMinimalDaysInFirstWeek(1);
        setFirstDayOfWeek(this.firstDayOfWeekToDraw);
        setUseWeekDayAbbreviation(false);
        this.dayPaint.setTextAlign(Paint.Align.CENTER);
        this.dayPaint.setStyle(Paint.Style.STROKE);
        this.dayPaint.setFlags(1);
        this.dayPaint.setTypeface(Typeface.SANS_SERIF);
        this.dayPaint.setTextSize(this.textSize);
        this.dayPaint.setColor(this.calenderTextColor);
        this.dayPaint.getTextBounds("31", 0, 2, this.textSizeRect);
        this.textHeight = this.textSizeRect.height() * 3;
        this.textWidth = this.textSizeRect.width() * 2;
        this.todayCalender.setTime(new Date());
        setToMidnight(this.todayCalender);
        this.currentCalender.setTime(this.currentDate);
        setCalenderToFirstDayOfMonth(this.calendarWithFirstDayOfMonth, this.currentDate, -this.monthsScrolledSoFar, 0);
        initScreenDensityRelatedValues(context);
        float f = this.screenDensity;
        this.xIndicatorOffset = 3.5f * f;
        this.smallIndicatorRadius = f * 2.5f;
        this.growFactor = 2.1474836E9f;
    }

    private void initScreenDensityRelatedValues(Context context) {
        if (context != null) {
            this.screenDensity = context.getResources().getDisplayMetrics().density;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.densityAdjustedSnapVelocity = (int) (this.screenDensity * SNAP_VELOCITY_DIP_PER_SECOND);
            this.maximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
            this.multiDayIndicatorStrokeWidth = TypedValue.applyDimension(1, 1.0f, context.getResources().getDisplayMetrics());
        }
    }

    private void setCalenderToFirstDayOfMonth(Calendar calendar, Date date, int i, int i2) {
        setMonthOffset(calendar, date, i, i2);
        calendar.set(5, 1);
    }

    private void setMonthOffset(Calendar calendar, Date date, int i, int i2) {
        calendar.setTime(date);
        calendar.add(2, i + i2);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
    }

    void setIsRtl(boolean z) {
        this.isRtl = z;
    }

    void setShouldSelectFirstDayOfMonthOnScroll(boolean z) {
        this.shouldSelectFirstDayOfMonthOnScroll = z;
    }

    void setDisplayOtherMonthDays(boolean z) {
        this.displayOtherMonthDays = z;
    }

    void shouldDrawIndicatorsBelowSelectedDays(boolean z) {
        this.shouldDrawIndicatorsBelowSelectedDays = z;
    }

    void setCurrentDayIndicatorStyle(int i) {
        this.currentDayIndicatorStyle = i;
    }

    void setEventIndicatorStyle(int i) {
        this.eventIndicatorStyle = i;
    }

    void setCurrentSelectedDayIndicatorStyle(int i) {
        this.currentSelectedDayIndicatorStyle = i;
    }

    void setTargetHeight(int i) {
        this.targetHeight = i;
    }

    float getScreenDensity() {
        return this.screenDensity;
    }

    float getDayIndicatorRadius() {
        return this.bigCircleIndicatorRadius;
    }

    void setGrowFactorIndicator(float f) {
        this.growfactorIndicator = f;
    }

    float getGrowFactorIndicator() {
        return this.growfactorIndicator;
    }

    void setAnimationStatus(int i) {
        this.animationStatus = i;
    }

    int getTargetHeight() {
        return this.targetHeight;
    }

    int getWidth() {
        return this.width;
    }

    void setListener(CompactCalendarView.CompactCalendarViewListener compactCalendarViewListener) {
        this.listener = compactCalendarViewListener;
    }

    void removeAllEvents() {
        this.eventsContainer.removeAllEvents();
    }

    void setFirstDayOfWeek(int i) {
        if (i < 1 || i > 7) {
            throw new IllegalArgumentException("Day must be an int between 1 and 7 or DAY_OF_WEEK from Java Calendar class. For more information please see Calendar.DAY_OF_WEEK.");
        }
        this.firstDayOfWeekToDraw = i;
        setUseWeekDayAbbreviation(this.useThreeLetterAbbreviation);
        this.eventsCalendar.setFirstDayOfWeek(i);
        this.calendarWithFirstDayOfMonth.setFirstDayOfWeek(i);
        this.todayCalender.setFirstDayOfWeek(i);
        this.currentCalender.setFirstDayOfWeek(i);
        this.tempPreviousMonthCalendar.setFirstDayOfWeek(i);
    }

    void setCurrentSelectedDayBackgroundColor(int i) {
        this.currentSelectedDayBackgroundColor = i;
    }

    void setCurrentSelectedDayTextColor(int i) {
        this.currentSelectedDayTextColor = i;
    }

    void setCalenderBackgroundColor(int i) {
        this.calenderBackgroundColor = i;
    }

    void setCurrentDayBackgroundColor(int i) {
        this.currentDayBackgroundColor = i;
    }

    void setCurrentDayTextColor(int i) {
        this.currentDayTextColor = i;
    }

    void scrollRight() {
        if (this.isRtl) {
            scrollPrev();
        } else {
            scrollNext();
        }
    }

    void scrollLeft() {
        if (this.isRtl) {
            scrollNext();
        } else {
            scrollPrev();
        }
    }

    private void scrollNext() {
        int i = this.monthsScrolledSoFar - 1;
        this.monthsScrolledSoFar = i;
        this.accumulatedScrollOffset.x = i * this.width;
        if (this.shouldSelectFirstDayOfMonthOnScroll) {
            setCalenderToFirstDayOfMonth(this.calendarWithFirstDayOfMonth, this.currentCalender.getTime(), 0, 1);
            setCurrentDate(this.calendarWithFirstDayOfMonth.getTime());
        }
        performMonthScrollCallback();
    }

    private void scrollPrev() {
        int i = this.monthsScrolledSoFar + 1;
        this.monthsScrolledSoFar = i;
        this.accumulatedScrollOffset.x = i * this.width;
        if (this.shouldSelectFirstDayOfMonthOnScroll) {
            setCalenderToFirstDayOfMonth(this.calendarWithFirstDayOfMonth, this.currentCalender.getTime(), 0, -1);
            setCurrentDate(this.calendarWithFirstDayOfMonth.getTime());
        }
        performMonthScrollCallback();
    }

    void setLocale(TimeZone timeZone, Locale locale) {
        if (locale == null) {
            throw new IllegalArgumentException("Locale cannot be null.");
        }
        if (timeZone == null) {
            throw new IllegalArgumentException("TimeZone cannot be null.");
        }
        this.locale = locale;
        this.timeZone = timeZone;
        this.eventsContainer = new EventsContainer(Calendar.getInstance(this.timeZone, this.locale));
        init(null);
    }

    void setUseWeekDayAbbreviation(boolean z) {
        this.useThreeLetterAbbreviation = z;
        this.dayColumnNames = WeekUtils.getWeekdayNames(this.locale, this.firstDayOfWeekToDraw, z);
    }

    void setDayColumnNames(String[] strArr) {
        if (strArr == null || strArr.length != 7) {
            throw new IllegalArgumentException("Column names cannot be null and must contain a value for each day of the week");
        }
        this.dayColumnNames = strArr;
    }

    void setShouldDrawDaysHeader(boolean z) {
        this.shouldDrawDaysHeader = z;
    }

    void onMeasure(int i, int i2, int i3, int i4) {
        this.widthPerDay = i / 7;
        int i5 = this.targetHeight;
        this.heightPerDay = i5 > 0 ? i5 / 7 : i2 / 7;
        this.width = i;
        double d = i;
        Double.isNaN(d);
        this.distanceThresholdForAutoScroll = (int) (d * 0.5d);
        this.height = i2;
        this.paddingRight = i3;
        this.paddingLeft = i4;
        float interpolatedBigCircleIndicator = getInterpolatedBigCircleIndicator();
        this.bigCircleIndicatorRadius = interpolatedBigCircleIndicator;
        if (this.shouldDrawIndicatorsBelowSelectedDays && this.eventIndicatorStyle == 3) {
            interpolatedBigCircleIndicator *= 0.85f;
        }
        this.bigCircleIndicatorRadius = interpolatedBigCircleIndicator;
    }

    private float getInterpolatedBigCircleIndicator() {
        float fHeight = this.textSizeRect.height();
        float f = this.heightPerDay;
        float fHeight2 = (this.textSizeRect.height() + f) / 2.0f;
        float f2 = f * f;
        double dSqrt = Math.sqrt(f2 + f2) * 0.5d;
        float f3 = fHeight * fHeight;
        double dSqrt2 = Math.sqrt(f3 + f3) * 0.5d;
        double d = (fHeight2 - fHeight) / (f - fHeight);
        Double.isNaN(d);
        return (float) (dSqrt2 + ((dSqrt - dSqrt2) * d));
    }

    void onDraw(Canvas canvas) {
        this.paddingWidth = this.widthPerDay / 2;
        this.paddingHeight = this.heightPerDay / 2;
        calculateXPositionOffset();
        int i = this.animationStatus;
        if (i == 1) {
            drawCalendarWhileAnimating(canvas);
        } else if (i == 3) {
            drawCalendarWhileAnimatingIndicators(canvas);
        } else {
            drawCalenderBackground(canvas);
            drawScrollableCalender(canvas);
        }
    }

    private void drawCalendarWhileAnimatingIndicators(Canvas canvas) {
        this.dayPaint.setColor(this.calenderBackgroundColor);
        this.dayPaint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(0.0f, 0.0f, this.growFactor, this.dayPaint);
        this.dayPaint.setStyle(Paint.Style.STROKE);
        this.dayPaint.setColor(-1);
        drawScrollableCalender(canvas);
    }

    private void drawCalendarWhileAnimating(Canvas canvas) {
        this.background.setColor(this.calenderBackgroundColor);
        this.background.setStyle(Paint.Style.FILL);
        canvas.drawCircle(0.0f, 0.0f, this.growFactor, this.background);
        this.dayPaint.setStyle(Paint.Style.STROKE);
        this.dayPaint.setColor(-1);
        drawScrollableCalender(canvas);
    }

    void onSingleTapUp(MotionEvent motionEvent) {
        if (isScrolling()) {
            return;
        }
        int iRound = Math.round((((this.paddingLeft + motionEvent.getX()) - this.paddingWidth) - this.paddingRight) / this.widthPerDay);
        int iRound2 = Math.round((motionEvent.getY() - this.paddingHeight) / this.heightPerDay);
        setCalenderToFirstDayOfMonth(this.calendarWithFirstDayOfMonth, this.currentDate, monthsScrolledSoFar(), 0);
        int dayOfWeek = ((iRound2 - 1) * 7) - getDayOfWeek(this.calendarWithFirstDayOfMonth);
        if (this.isRtl) {
            iRound = 6 - iRound;
        }
        int i = dayOfWeek + iRound;
        if (i >= this.calendarWithFirstDayOfMonth.getActualMaximum(5) || i < 0) {
            return;
        }
        this.calendarWithFirstDayOfMonth.add(5, i);
        this.currentCalender.setTimeInMillis(this.calendarWithFirstDayOfMonth.getTimeInMillis());
        performOnDayClickCallback(this.currentCalender.getTime());
    }

    private boolean isScrolling() {
        float fAbs = Math.abs(this.accumulatedScrollOffset.x);
        int iAbs = Math.abs(this.width * this.monthsScrolledSoFar);
        return fAbs < ((float) (iAbs + (-5))) || fAbs > ((float) (iAbs + 5));
    }

    private void performOnDayClickCallback(Date date) {
        CompactCalendarView.CompactCalendarViewListener compactCalendarViewListener = this.listener;
        if (compactCalendarViewListener != null) {
            compactCalendarViewListener.onDayClick(date);
        }
    }

    boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.isSmoothScrolling) {
            return true;
        }
        if (this.currentDirection == Direction.NONE) {
            if (Math.abs(f) > Math.abs(f2)) {
                this.currentDirection = Direction.HORIZONTAL;
            } else {
                this.currentDirection = Direction.VERTICAL;
            }
        }
        this.isScrolling = true;
        this.distanceX = f;
        return true;
    }

    boolean onTouch(MotionEvent motionEvent) {
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (motionEvent.getAction() == 0) {
            if (!this.scroller.isFinished()) {
                this.scroller.abortAnimation();
            }
            this.isSmoothScrolling = false;
        } else if (motionEvent.getAction() == 2) {
            this.velocityTracker.addMovement(motionEvent);
            this.velocityTracker.computeCurrentVelocity(500);
        } else if (motionEvent.getAction() == 1) {
            handleHorizontalScrolling();
            this.velocityTracker.recycle();
            this.velocityTracker.clear();
            this.velocityTracker = null;
            this.isScrolling = false;
        }
        return false;
    }

    private void snapBackScroller() {
        this.scroller.startScroll((int) this.accumulatedScrollOffset.x, 0, (int) (-(this.accumulatedScrollOffset.x - (this.monthsScrolledSoFar * this.width))), 0);
    }

    private void handleHorizontalScrolling() {
        handleSmoothScrolling(computeVelocity());
        this.currentDirection = Direction.NONE;
        setCalenderToFirstDayOfMonth(this.calendarWithFirstDayOfMonth, this.currentDate, monthsScrolledSoFar(), 0);
        if (this.calendarWithFirstDayOfMonth.get(2) == this.currentCalender.get(2) || !this.shouldSelectFirstDayOfMonthOnScroll) {
            return;
        }
        setCalenderToFirstDayOfMonth(this.currentCalender, this.currentDate, monthsScrolledSoFar(), 0);
    }

    private int computeVelocity() {
        this.velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
        return (int) this.velocityTracker.getXVelocity();
    }

    private void handleSmoothScrolling(int i) {
        int i2 = (int) (this.accumulatedScrollOffset.x - (this.width * this.monthsScrolledSoFar));
        boolean z = System.currentTimeMillis() - this.lastAutoScrollFromFling > 300;
        int i3 = this.densityAdjustedSnapVelocity;
        if (i > i3 && z) {
            scrollPreviousMonth();
            return;
        }
        if (i < (-i3) && z) {
            scrollNextMonth();
            return;
        }
        boolean z2 = this.isScrolling;
        if (z2 && i2 > this.distanceThresholdForAutoScroll) {
            scrollPreviousMonth();
        } else if (z2 && i2 < (-this.distanceThresholdForAutoScroll)) {
            scrollNextMonth();
        } else {
            this.isSmoothScrolling = false;
            snapBackScroller();
        }
    }

    private void scrollNextMonth() {
        this.lastAutoScrollFromFling = System.currentTimeMillis();
        this.monthsScrolledSoFar--;
        performScroll();
        this.isSmoothScrolling = true;
        performMonthScrollCallback();
    }

    private void scrollPreviousMonth() {
        this.lastAutoScrollFromFling = System.currentTimeMillis();
        this.monthsScrolledSoFar++;
        performScroll();
        this.isSmoothScrolling = true;
        performMonthScrollCallback();
    }

    private void performMonthScrollCallback() {
        CompactCalendarView.CompactCalendarViewListener compactCalendarViewListener = this.listener;
        if (compactCalendarViewListener != null) {
            compactCalendarViewListener.onMonthScroll(getFirstDayOfCurrentMonth());
        }
    }

    private void performScroll() {
        int i = (int) ((this.monthsScrolledSoFar * this.width) - this.accumulatedScrollOffset.x);
        this.scroller.startScroll((int) this.accumulatedScrollOffset.x, 0, i, 0, (int) ((Math.abs(i) / this.width) * ANIMATION_SCREEN_SET_DURATION_MILLIS));
    }

    int getHeightPerDay() {
        return this.heightPerDay;
    }

    int getWeekNumberForCurrentMonth() {
        Calendar calendar = Calendar.getInstance(this.timeZone, this.locale);
        calendar.setTime(this.currentDate);
        return calendar.get(4);
    }

    Date getFirstDayOfCurrentMonth() {
        Calendar calendar = Calendar.getInstance(this.timeZone, this.locale);
        calendar.setTime(this.currentDate);
        calendar.add(2, monthsScrolledSoFar());
        calendar.set(5, 1);
        setToMidnight(calendar);
        return calendar.getTime();
    }

    void setCurrentDate(Date date) {
        this.distanceX = 0.0f;
        this.monthsScrolledSoFar = 0;
        this.accumulatedScrollOffset.x = 0.0f;
        this.scroller.startScroll(0, 0, 0, 0);
        Date date2 = new Date(date.getTime());
        this.currentDate = date2;
        this.currentCalender.setTime(date2);
        this.todayCalender = Calendar.getInstance(this.timeZone, this.locale);
        setToMidnight(this.currentCalender);
    }

    private void setToMidnight(Calendar calendar) {
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
    }

    void addEvent(Event event) {
        this.eventsContainer.addEvent(event);
    }

    void addEvents(List<Event> list) {
        this.eventsContainer.addEvents(list);
    }

    List<Event> getCalendarEventsFor(long j) {
        return this.eventsContainer.getEventsFor(j);
    }

    List<Event> getCalendarEventsForMonth(long j) {
        return this.eventsContainer.getEventsForMonth(j);
    }

    void removeEventsFor(long j) {
        this.eventsContainer.removeEventByEpochMillis(j);
    }

    void removeEvent(Event event) {
        this.eventsContainer.removeEvent(event);
    }

    void removeEvents(List<Event> list) {
        this.eventsContainer.removeEvents(list);
    }

    void setGrowProgress(float f) {
        this.growFactor = f;
    }

    float getGrowFactor() {
        return this.growFactor;
    }

    boolean onDown(MotionEvent motionEvent) {
        this.scroller.forceFinished(true);
        return true;
    }

    boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.scroller.forceFinished(true);
        return true;
    }

    boolean computeScroll() {
        if (!this.scroller.computeScrollOffset()) {
            return false;
        }
        this.accumulatedScrollOffset.x = this.scroller.getCurrX();
        return true;
    }

    private void drawScrollableCalender(Canvas canvas) {
        if (this.isRtl) {
            drawNextMonth(canvas, -1);
            drawCurrentMonth(canvas);
            drawPreviousMonth(canvas, 1);
        } else {
            drawPreviousMonth(canvas, -1);
            drawCurrentMonth(canvas);
            drawNextMonth(canvas, 1);
        }
    }

    private void drawNextMonth(Canvas canvas, int i) {
        setCalenderToFirstDayOfMonth(this.calendarWithFirstDayOfMonth, this.currentDate, -this.monthsScrolledSoFar, i);
        drawMonth(canvas, this.calendarWithFirstDayOfMonth, this.width * ((-this.monthsScrolledSoFar) + 1));
    }

    private void drawCurrentMonth(Canvas canvas) {
        setCalenderToFirstDayOfMonth(this.calendarWithFirstDayOfMonth, this.currentDate, monthsScrolledSoFar(), 0);
        drawMonth(canvas, this.calendarWithFirstDayOfMonth, this.width * (-this.monthsScrolledSoFar));
    }

    private int monthsScrolledSoFar() {
        return this.isRtl ? this.monthsScrolledSoFar : -this.monthsScrolledSoFar;
    }

    private void drawPreviousMonth(Canvas canvas, int i) {
        setCalenderToFirstDayOfMonth(this.calendarWithFirstDayOfMonth, this.currentDate, -this.monthsScrolledSoFar, i);
        drawMonth(canvas, this.calendarWithFirstDayOfMonth, this.width * ((-this.monthsScrolledSoFar) - 1));
    }

    private void calculateXPositionOffset() {
        if (this.currentDirection == Direction.HORIZONTAL) {
            this.accumulatedScrollOffset.x -= this.distanceX;
        }
    }

    private void drawCalenderBackground(Canvas canvas) {
        this.dayPaint.setColor(this.calenderBackgroundColor);
        this.dayPaint.setStyle(Paint.Style.FILL);
        canvas.drawRect(0.0f, 0.0f, this.width, this.height, this.dayPaint);
        this.dayPaint.setStyle(Paint.Style.STROKE);
        this.dayPaint.setColor(this.calenderTextColor);
    }

    /* JADX WARN: Code duplicated, block: B:80:0x0141  */
    void drawEvents(Canvas canvas, Calendar calendar, int i) {
        boolean z;
        int i2;
        int i3;
        int i4;
        int i5 = calendar.get(2);
        int i6 = 1;
        List<Events> eventsForMonthAndYear = this.eventsContainer.getEventsForMonthAndYear(i5, calendar.get(1));
        boolean z2 = i5 == this.todayCalender.get(2);
        boolean z3 = i5 == this.currentCalender.get(2);
        int i7 = this.todayCalender.get(5);
        int i8 = this.todayCalender.get(1);
        int i9 = this.currentCalender.get(5);
        float f = this.bigCircleIndicatorRadius / 2.0f;
        if (eventsForMonthAndYear != null) {
            int i10 = 0;
            while (i10 < eventsForMonthAndYear.size()) {
                Events events = eventsForMonthAndYear.get(i10);
                int i11 = i7;
                this.eventsCalendar.setTimeInMillis(events.getTimeInMillis());
                int dayOfWeek = getDayOfWeek(this.eventsCalendar);
                if (this.isRtl) {
                    dayOfWeek = 6 - dayOfWeek;
                }
                int i12 = this.eventsCalendar.get(4);
                float f2 = (((((this.widthPerDay * dayOfWeek) + this.paddingWidth) + this.paddingLeft) + this.accumulatedScrollOffset.x) + i) - this.paddingRight;
                float f3 = (i12 * this.heightPerDay) + this.paddingHeight;
                int i13 = this.animationStatus;
                List<Events> list = eventsForMonthAndYear;
                if ((i13 == i6 || i13 == 3) && f2 >= this.growFactor) {
                    z = z3;
                    i2 = i11;
                } else {
                    float f4 = this.growFactor;
                    if (f3 < f4 && ((i13 != 2 || f3 < f4) && !(i13 == 1 && ((i4 = this.eventIndicatorStyle) == 1 || i4 == 2)))) {
                        List<Event> events2 = events.getEvents();
                        int i14 = this.eventsCalendar.get(5);
                        boolean z4 = z2 && i11 == i14 && this.eventsCalendar.get(1) == i8;
                        boolean z5 = z3 && i9 == i14;
                        boolean z6 = this.shouldDrawIndicatorsBelowSelectedDays;
                        if (z6 || !(z6 || z4 || z5)) {
                            i2 = i11;
                            z = z3;
                            i3 = 1;
                        } else {
                            i2 = i11;
                            z = z3;
                            i3 = 1;
                            if (this.animationStatus == 1) {
                            }
                        }
                        int i15 = this.eventIndicatorStyle;
                        if (i15 == i3 || i15 == 2) {
                            if (!events2.isEmpty()) {
                                drawEventIndicatorCircle(canvas, f2, f3, events2.get(0).getColor());
                            }
                        } else {
                            float f5 = f3 + f;
                            if (z6 && (z4 || z5)) {
                                f5 += f;
                            }
                            if (events2.size() >= 3) {
                                drawEventsWithPlus(canvas, f2, f5, events2);
                            } else if (events2.size() == 2) {
                                drawTwoEvents(canvas, f2, f5, events2);
                            } else if (events2.size() == 1) {
                                drawSingleEvent(canvas, f2, f5, events2);
                            }
                        }
                    } else {
                        z = z3;
                        i2 = i11;
                    }
                }
                i10++;
                eventsForMonthAndYear = list;
                i7 = i2;
                z3 = z;
                i6 = 1;
            }
        }
    }

    private void drawSingleEvent(Canvas canvas, float f, float f2, List<Event> list) {
        drawEventIndicatorCircle(canvas, f, f2, list.get(0).getColor());
    }

    private void drawTwoEvents(Canvas canvas, float f, float f2, List<Event> list) {
        drawEventIndicatorCircle(canvas, (this.xIndicatorOffset * (-1.0f)) + f, f2, list.get(0).getColor());
        drawEventIndicatorCircle(canvas, f + (this.xIndicatorOffset * 1.0f), f2, list.get(1).getColor());
    }

    private void drawEventsWithPlus(Canvas canvas, float f, float f2, List<Event> list) {
        int i = 0;
        int i2 = -2;
        while (i < 3) {
            Event event = list.get(i);
            float f3 = f + (this.xIndicatorOffset * i2);
            if (i == 2) {
                this.dayPaint.setColor(this.multiEventIndicatorColor);
                this.dayPaint.setStrokeWidth(this.multiDayIndicatorStrokeWidth);
                float f4 = this.smallIndicatorRadius;
                canvas.drawLine(f3 - f4, f2, f3 + f4, f2, this.dayPaint);
                float f5 = this.smallIndicatorRadius;
                canvas.drawLine(f3, f2 - f5, f3, f2 + f5, this.dayPaint);
                this.dayPaint.setStrokeWidth(0.0f);
            } else {
                drawEventIndicatorCircle(canvas, f3, f2, event.getColor());
            }
            i++;
            i2 += 2;
        }
    }

    int getDayOfWeek(Calendar calendar) {
        int i = calendar.get(7) - this.firstDayOfWeekToDraw;
        return i < 0 ? i + 7 : i;
    }

    void drawMonth(Canvas canvas, Calendar calendar, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        float f;
        int i6;
        drawEvents(canvas, calendar, i);
        int dayOfWeek = getDayOfWeek(calendar);
        boolean z = calendar.get(2) == this.todayCalender.get(2);
        boolean z2 = calendar.get(1) == this.todayCalender.get(1);
        boolean z3 = calendar.get(2) == this.currentCalender.get(2) && calendar.get(1) == this.currentCalender.get(1);
        int i7 = this.todayCalender.get(5);
        boolean z4 = this.animationStatus == 1;
        int actualMaximum = calendar.getActualMaximum(5);
        this.tempPreviousMonthCalendar.setTimeInMillis(calendar.getTimeInMillis());
        this.tempPreviousMonthCalendar.add(2, -1);
        int actualMaximum2 = this.tempPreviousMonthCalendar.getActualMaximum(5);
        int i8 = this.isRtl ? 6 : 0;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 6; i9 <= i11; i11 = 6) {
            if (i10 == 7) {
                int i12 = this.isRtl ? i8 - 1 : i8 + 1;
                if (i9 <= i11) {
                    i9++;
                }
                i2 = i12;
                i4 = i9;
                i3 = 0;
            } else {
                i2 = i8;
                i3 = i10;
                i4 = i9;
            }
            if (i4 == this.dayColumnNames.length) {
                return;
            }
            float f2 = (((((this.widthPerDay * i4) + this.paddingWidth) + this.paddingLeft) + this.accumulatedScrollOffset.x) + i) - this.paddingRight;
            float f3 = (this.heightPerDay * i3) + this.paddingHeight;
            float f4 = this.growFactor;
            if ((f2 >= f4 && (z4 || this.animationStatus == 3)) || f3 >= f4) {
                i5 = i4;
                i6 = actualMaximum;
            } else if (i3 == 0) {
                if (this.shouldDrawDaysHeader) {
                    this.dayPaint.setColor(this.calenderTextColor);
                    this.dayPaint.setTypeface(Typeface.DEFAULT_BOLD);
                    this.dayPaint.setStyle(Paint.Style.FILL);
                    this.dayPaint.setColor(this.calenderTextColor);
                    canvas.drawText(this.dayColumnNames[i2], f2, this.paddingHeight, this.dayPaint);
                    this.dayPaint.setTypeface(Typeface.DEFAULT);
                }
                i5 = i4;
                i6 = actualMaximum;
            } else {
                int i13 = ((((i3 - 1) * 7) + i2) + 1) - dayOfWeek;
                int i14 = this.calenderTextColor;
                if (this.currentCalender.get(5) == i13 && z3 && !z4) {
                    i5 = i4;
                    f = f2;
                    i6 = actualMaximum;
                    drawDayCircleIndicator(this.currentSelectedDayIndicatorStyle, canvas, f2, f3, this.currentSelectedDayBackgroundColor);
                    i14 = this.currentSelectedDayTextColor;
                } else {
                    i5 = i4;
                    f = f2;
                    i6 = actualMaximum;
                    if (z2 && z && i7 == i13 && !z4) {
                        drawDayCircleIndicator(this.currentDayIndicatorStyle, canvas, f, f3, this.currentDayBackgroundColor);
                        i14 = this.currentDayTextColor;
                    }
                }
                if (i13 > 0) {
                    float f5 = f;
                    if (i13 > i6) {
                        if (this.displayOtherMonthDays) {
                            this.dayPaint.setStyle(Paint.Style.FILL);
                            this.dayPaint.setColor(this.otherMonthDaysTextColor);
                            canvas.drawText(String.valueOf(i13 - i6), f5, f3, this.dayPaint);
                        }
                    } else {
                        this.dayPaint.setStyle(Paint.Style.FILL);
                        this.dayPaint.setColor(i14);
                        canvas.drawText(String.valueOf(i13), f5, f3, this.dayPaint);
                    }
                } else if (this.displayOtherMonthDays) {
                    this.dayPaint.setStyle(Paint.Style.FILL);
                    this.dayPaint.setColor(this.otherMonthDaysTextColor);
                    canvas.drawText(String.valueOf(actualMaximum2 + i13), f, f3, this.dayPaint);
                }
            }
            i10 = i3 + 1;
            actualMaximum = i6;
            i8 = i2;
            i9 = i5;
        }
    }

    private void drawDayCircleIndicator(int i, Canvas canvas, float f, float f2, int i2) {
        drawDayCircleIndicator(i, canvas, f, f2, i2, 1.0f);
    }

    private void drawDayCircleIndicator(int i, Canvas canvas, float f, float f2, int i2, float f3) {
        float strokeWidth = this.dayPaint.getStrokeWidth();
        if (i == 2) {
            this.dayPaint.setStrokeWidth(this.screenDensity * 2.0f);
            this.dayPaint.setStyle(Paint.Style.STROKE);
        } else {
            this.dayPaint.setStyle(Paint.Style.FILL);
        }
        drawCircle(canvas, f, f2, i2, f3);
        this.dayPaint.setStrokeWidth(strokeWidth);
        this.dayPaint.setStyle(Paint.Style.FILL);
    }

    private void drawCircle(Canvas canvas, float f, float f2, int i, float f3) {
        this.dayPaint.setColor(i);
        if (this.animationStatus == 3) {
            float f4 = f3 * this.bigCircleIndicatorRadius * 1.4f;
            float f5 = this.growfactorIndicator;
            if (f5 <= f4) {
                f4 = f5;
            }
            drawCircle(canvas, f4, f, f2 - (this.textHeight / 6));
            return;
        }
        drawCircle(canvas, f3 * this.bigCircleIndicatorRadius, f, f2 - (this.textHeight / 6));
    }

    private void drawEventIndicatorCircle(Canvas canvas, float f, float f2, int i) {
        this.dayPaint.setColor(i);
        int i2 = this.eventIndicatorStyle;
        if (i2 == 3) {
            this.dayPaint.setStyle(Paint.Style.FILL);
            drawCircle(canvas, this.smallIndicatorRadius, f, f2);
        } else if (i2 == 2) {
            this.dayPaint.setStyle(Paint.Style.STROKE);
            drawDayCircleIndicator(2, canvas, f, f2, i);
        } else if (i2 == 1) {
            drawDayCircleIndicator(1, canvas, f, f2, i);
        }
    }

    private void drawCircle(Canvas canvas, float f, float f2, float f3) {
        canvas.drawCircle(f2, f3, f, this.dayPaint);
    }
}
