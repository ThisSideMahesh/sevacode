package com.dp.sgp.calendar;

import android.content.Context;
import android.util.Log;
import com.dp.sgp.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class DateUtils {
    private static int CURRENT_MONTH = 0;
    private static int CURRENT_YEAR = 0;
    public static final int DAYS_IN_LEAP_YEAR = 366;
    public static final int DAYS_IN_YEAR = 365;
    private static int DAY_OF_YEAR = 1;
    public static final int MONTH_IN_CALENDAR = 12;
    private static final String TAG = "DateUtils";
    private static Calendar _calendar = Calendar.getInstance(Locale.getDefault());

    public static int getMinLimit() {
        return 0;
    }

    public static int getTodaysDate() {
        return Integer.parseInt(new SimpleDateFormat("dd-MM-yyyy").format(_calendar.getTime()).substring(0, 2));
    }

    public static String getTodaysDateString() {
        return new SimpleDateFormat("dd-MM-yyyy").format(_calendar.getTime());
    }

    public static int getCalendarDay() {
        return _calendar.get(5);
    }

    public static int getCalendarMonth() {
        return _calendar.get(2);
    }

    public static int getCalendarDayOfMonth() {
        return _calendar.get(5);
    }

    public static int getCalendarYear() {
        return _calendar.get(1);
    }

    public static int getCalendarDayOfYear() {
        return _calendar.get(6);
    }

    public static int getDayOfTheMonth(int i, int i2, int i3) {
        Log.d(TAG, "year, int day" + i + "  month = " + i2 + "  day =" + i3);
        Calendar calendar = Calendar.getInstance();
        calendar.set(i, i2, i3);
        int i4 = calendar.get(5);
        Log.d(TAG, "dayOfTheMonth : " + i4);
        return i4;
    }

    public static int getMaxLimit(Context context) {
        return (context.getResources().getStringArray(R.array.year_array).length * 12) - 1;
    }
}
