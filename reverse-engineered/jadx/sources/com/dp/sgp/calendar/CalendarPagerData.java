package com.dp.sgp.calendar;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CalendarPagerData implements Serializable {
    private int month;
    private String monthTitle;
    private int year;
    private String yearTitle;

    public int getMonth() {
        return this.month;
    }

    public void setMonth(int i) {
        this.month = i;
    }

    public int getYear() {
        return this.year;
    }

    public void setYear(int i) {
        this.year = i;
    }

    public String getYearTitle() {
        return this.yearTitle;
    }

    public void setYearTitle(String str) {
        this.yearTitle = str;
    }

    public String getMonthTitle() {
        return this.monthTitle;
    }

    public void setMonthTitle(String str) {
        this.monthTitle = str;
    }
}
