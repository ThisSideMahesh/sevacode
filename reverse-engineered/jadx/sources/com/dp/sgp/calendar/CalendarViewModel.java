package com.dp.sgp.calendar;

import android.content.Context;
import com.dp.sgp.R;
import com.dp.sgp.database.DatabaseUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes.dex */
public class CalendarViewModel {
    private static final int DAY_OFFSET = 1;
    private final Context _context;
    private int currentDayOfMonth;
    private int currentWeekDay;
    private final String[] dayMarathi;
    private int daysInMonth;
    private final int[] daysOfMonth = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    private final ArrayList<CalenderData> list = new ArrayList<>();

    public CalendarViewModel(Context context, int i, int i2) {
        this._context = context;
        this.dayMarathi = context.getResources().getStringArray(R.array.day_marathi);
        Calendar calendar = Calendar.getInstance();
        setCurrentDayOfMonth(calendar.get(5));
        setCurrentWeekDay(calendar.get(7));
        printMonth(i, i2);
    }

    public ArrayList<CalenderData> getData() {
        return this.list;
    }

    private void printMonth(int i, int i2) {
        int numberOfDaysOfMonth;
        this.daysInMonth = getNumberOfDaysOfMonth(i);
        GregorianCalendar gregorianCalendar = new GregorianCalendar(i2, i, 1);
        if (i != 11 && i == 0) {
            numberOfDaysOfMonth = getNumberOfDaysOfMonth(11);
        } else {
            numberOfDaysOfMonth = getNumberOfDaysOfMonth(i - 1);
        }
        int i3 = gregorianCalendar.get(7) - 1;
        if (gregorianCalendar.isLeapYear(gregorianCalendar.get(1)) && i == 1) {
            this.daysInMonth++;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            CalenderData calenderData = new CalenderData();
            calenderData.setDay(getDayInMarathi((numberOfDaysOfMonth - i3) + 1 + i4));
            calenderData.setEnable(false);
            this.list.add(calenderData);
        }
        for (int i5 = 1; i5 <= this.daysInMonth; i5++) {
            CalenderData calenderData2 = new CalenderData();
            calenderData2.setDayId(i5);
            calenderData2.setDay(getDayInMarathi(i5));
            calenderData2.setEnable(true);
            if (DateUtils.getTodaysDate() == i5) {
                calenderData2.setTodaysDate(i5);
            }
            calenderData2.setEvent(DatabaseUtils.getAllDayData(this._context, i2, i + 1, i5).getEvent());
            this.list.add(calenderData2);
        }
        int i6 = 0;
        while (i6 < this.list.size() % 7) {
            CalenderData calenderData3 = new CalenderData();
            i6++;
            calenderData3.setDay(getDayInMarathi(i6));
            calenderData3.setEnable(false);
            this.list.add(calenderData3);
        }
    }

    private int getCurrentMonthForDB(int i, int i2) {
        int i3 = i + 1;
        String[] stringArray = this._context.getResources().getStringArray(R.array.year_array);
        int i4 = 0;
        while (true) {
            if (i4 >= stringArray.length) {
                i4 = -1;
                break;
            }
            if (i2 == Integer.parseInt(stringArray[i4])) {
                break;
            }
            i4++;
        }
        for (int i5 = 0; i5 < i4; i5++) {
            i3 += 12;
        }
        return i3;
    }

    public int getDayIdForDB(int i, int i2, int i3) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(i3, i2, i);
        int i4 = calendar.get(6);
        String[] stringArray = this._context.getResources().getStringArray(R.array.year_array);
        int i5 = 0;
        while (true) {
            if (i5 >= stringArray.length) {
                i5 = -1;
                break;
            }
            if (i3 == Integer.parseInt(stringArray[i5])) {
                break;
            }
            i5++;
        }
        for (int i6 = 0; i6 < i5; i6++) {
            i4 = Integer.parseInt(stringArray[i6]) % 4 == 0 ? i4 + DateUtils.DAYS_IN_LEAP_YEAR : i4 + DateUtils.DAYS_IN_YEAR;
        }
        return i4;
    }

    private String getDayInMarathi(int i) {
        return this.dayMarathi[i - 1];
    }

    private int getNumberOfDaysOfMonth(int i) {
        return this.daysOfMonth[i];
    }

    public int getCurrentDayOfMonth() {
        return this.currentDayOfMonth;
    }

    private void setCurrentDayOfMonth(int i) {
        this.currentDayOfMonth = i;
    }

    public void setCurrentWeekDay(int i) {
        this.currentWeekDay = i;
    }

    public int getCurrentWeekDay() {
        return this.currentWeekDay;
    }
}
