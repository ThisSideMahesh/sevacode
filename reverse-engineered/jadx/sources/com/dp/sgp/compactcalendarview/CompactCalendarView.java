package com.dp.sgp.compactcalendarview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.support.v4.view.GestureDetectorCompat;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.OverScroller;
import com.dp.sgp.compactcalendarview.domain.Event;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class CompactCalendarView extends View {
    public static final int FILL_LARGE_INDICATOR = 1;
    public static final int NO_FILL_LARGE_INDICATOR = 2;
    public static final int SMALL_INDICATOR = 3;
    private final AnimationHandler animationHandler;
    private CompactCalendarController compactCalendarController;
    private GestureDetectorCompat gestureDetector;
    private final GestureDetector.SimpleOnGestureListener gestureListener;
    private boolean horizontalScrollEnabled;

    public interface CompactCalendarAnimationListener {
        void onClosed();

        void onOpened();
    }

    public interface CompactCalendarViewListener {
        void onDayClick(Date date);

        void onMonthScroll(Date date);
    }

    public CompactCalendarView(Context context) {
        this(context, null);
    }

    public CompactCalendarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CompactCalendarView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.horizontalScrollEnabled = true;
        GestureDetector.SimpleOnGestureListener simpleOnGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.dp.sgp.compactcalendarview.CompactCalendarView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                CompactCalendarView.this.compactCalendarController.onSingleTapUp(motionEvent);
                CompactCalendarView.this.invalidate();
                return super.onSingleTapUp(motionEvent);
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (!CompactCalendarView.this.horizontalScrollEnabled || Math.abs(f) <= 0.0f) {
                    return false;
                }
                CompactCalendarView.this.getParent().requestDisallowInterceptTouchEvent(true);
                CompactCalendarView.this.compactCalendarController.onScroll(motionEvent, motionEvent2, f, f2);
                CompactCalendarView.this.invalidate();
                return true;
            }
        };
        this.gestureListener = simpleOnGestureListener;
        this.compactCalendarController = new CompactCalendarController(new Paint(), new OverScroller(getContext()), new Rect(), attributeSet, getContext(), Color.argb(255, 233, 84, 81), Color.argb(255, 64, 64, 64), Color.argb(255, 219, 219, 219), VelocityTracker.obtain(), Color.argb(255, 100, 68, 65), new EventsContainer(Calendar.getInstance()), Locale.getDefault(), TimeZone.getDefault());
        this.gestureDetector = new GestureDetectorCompat(getContext(), simpleOnGestureListener);
        this.animationHandler = new AnimationHandler(this.compactCalendarController, this);
    }

    public void setAnimationListener(CompactCalendarAnimationListener compactCalendarAnimationListener) {
        this.animationHandler.setCompactCalendarAnimationListener(compactCalendarAnimationListener);
    }

    public void setLocale(TimeZone timeZone, Locale locale) {
        this.compactCalendarController.setLocale(timeZone, locale);
        invalidate();
    }

    public void setUseThreeLetterAbbreviation(boolean z) {
        this.compactCalendarController.setUseWeekDayAbbreviation(z);
        invalidate();
    }

    public void setCalendarBackgroundColor(int i) {
        this.compactCalendarController.setCalenderBackgroundColor(i);
        invalidate();
    }

    public void setDayColumnNames(String[] strArr) {
        this.compactCalendarController.setDayColumnNames(strArr);
    }

    public void setFirstDayOfWeek(int i) {
        this.compactCalendarController.setFirstDayOfWeek(i);
        invalidate();
    }

    public void setCurrentSelectedDayBackgroundColor(int i) {
        this.compactCalendarController.setCurrentSelectedDayBackgroundColor(i);
        invalidate();
    }

    public void setCurrentDayBackgroundColor(int i) {
        this.compactCalendarController.setCurrentDayBackgroundColor(i);
        invalidate();
    }

    public int getHeightPerDay() {
        return this.compactCalendarController.getHeightPerDay();
    }

    public void setListener(CompactCalendarViewListener compactCalendarViewListener) {
        this.compactCalendarController.setListener(compactCalendarViewListener);
    }

    public Date getFirstDayOfCurrentMonth() {
        return this.compactCalendarController.getFirstDayOfCurrentMonth();
    }

    public void shouldDrawIndicatorsBelowSelectedDays(boolean z) {
        this.compactCalendarController.shouldDrawIndicatorsBelowSelectedDays(z);
    }

    public void setCurrentDate(Date date) {
        this.compactCalendarController.setCurrentDate(date);
        invalidate();
    }

    public int getWeekNumberForCurrentMonth() {
        return this.compactCalendarController.getWeekNumberForCurrentMonth();
    }

    public void setShouldDrawDaysHeader(boolean z) {
        this.compactCalendarController.setShouldDrawDaysHeader(z);
    }

    public void setCurrentSelectedDayTextColor(int i) {
        this.compactCalendarController.setCurrentSelectedDayTextColor(i);
    }

    public void setCurrentDayTextColor(int i) {
        this.compactCalendarController.setCurrentDayTextColor(i);
    }

    public void addEvent(Event event) {
        addEvent(event, true);
    }

    public void addEvent(Event event, boolean z) {
        this.compactCalendarController.addEvent(event);
        if (z) {
            invalidate();
        }
    }

    public void addEvents(List<Event> list) {
        this.compactCalendarController.addEvents(list);
        invalidate();
    }

    public List<Event> getEvents(Date date) {
        return this.compactCalendarController.getCalendarEventsFor(date.getTime());
    }

    public List<Event> getEvents(long j) {
        return this.compactCalendarController.getCalendarEventsFor(j);
    }

    public List<Event> getEventsForMonth(long j) {
        return this.compactCalendarController.getCalendarEventsForMonth(j);
    }

    public List<Event> getEventsForMonth(Date date) {
        return this.compactCalendarController.getCalendarEventsForMonth(date.getTime());
    }

    public void removeEvents(Date date) {
        this.compactCalendarController.removeEventsFor(date.getTime());
    }

    public void removeEvents(long j) {
        this.compactCalendarController.removeEventsFor(j);
    }

    public void removeEvent(Event event) {
        removeEvent(event, true);
    }

    public void removeEvent(Event event, boolean z) {
        this.compactCalendarController.removeEvent(event);
        if (z) {
            invalidate();
        }
    }

    public void removeEvents(List<Event> list) {
        this.compactCalendarController.removeEvents(list);
        invalidate();
    }

    public void removeAllEvents() {
        this.compactCalendarController.removeAllEvents();
        invalidate();
    }

    public void setIsRtl(boolean z) {
        this.compactCalendarController.setIsRtl(z);
    }

    public void shouldSelectFirstDayOfMonthOnScroll(boolean z) {
        this.compactCalendarController.setShouldSelectFirstDayOfMonthOnScroll(z);
    }

    public void setCurrentSelectedDayIndicatorStyle(int i) {
        this.compactCalendarController.setCurrentSelectedDayIndicatorStyle(i);
        invalidate();
    }

    public void setCurrentDayIndicatorStyle(int i) {
        this.compactCalendarController.setCurrentDayIndicatorStyle(i);
        invalidate();
    }

    public void setEventIndicatorStyle(int i) {
        this.compactCalendarController.setEventIndicatorStyle(i);
        invalidate();
    }

    private void checkTargetHeight() {
        if (this.compactCalendarController.getTargetHeight() <= 0) {
            throw new IllegalStateException("Target height must be set in xml properties in order to expand/collapse CompactCalendar.");
        }
    }

    public void displayOtherMonthDays(boolean z) {
        this.compactCalendarController.setDisplayOtherMonthDays(z);
        invalidate();
    }

    public void setTargetHeight(int i) {
        this.compactCalendarController.setTargetHeight(i);
        checkTargetHeight();
    }

    public void showCalendar() {
        checkTargetHeight();
        this.animationHandler.openCalendar();
    }

    public void hideCalendar() {
        checkTargetHeight();
        this.animationHandler.closeCalendar();
    }

    public void showCalendarWithAnimation() {
        checkTargetHeight();
        this.animationHandler.openCalendarWithAnimation();
    }

    public void hideCalendarWithAnimation() {
        checkTargetHeight();
        this.animationHandler.closeCalendarWithAnimation();
    }

    public void scrollRight() {
        this.compactCalendarController.scrollRight();
        invalidate();
    }

    public void scrollLeft() {
        this.compactCalendarController.scrollLeft();
        invalidate();
    }

    public boolean isAnimating() {
        return this.animationHandler.isAnimating();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (size > 0 && size2 > 0) {
            this.compactCalendarController.onMeasure(size, size2, getPaddingRight(), getPaddingLeft());
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.compactCalendarController.onDraw(canvas);
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.compactCalendarController.computeScroll()) {
            invalidate();
        }
    }

    public void shouldScrollMonth(boolean z) {
        this.horizontalScrollEnabled = z;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.horizontalScrollEnabled) {
            this.compactCalendarController.onTouch(motionEvent);
            invalidate();
        }
        if ((motionEvent.getAction() == 3 || motionEvent.getAction() == 1) && this.horizontalScrollEnabled) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return this.gestureDetector.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        if (getVisibility() == 8) {
            return false;
        }
        return this.horizontalScrollEnabled;
    }
}
