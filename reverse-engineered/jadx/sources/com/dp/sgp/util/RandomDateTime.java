package com.dp.sgp.util;

import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class RandomDateTime {
    public static void main(String[] strArr) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss", Locale.getDefault());
        int iRandBetween = randBetween(1900, 2021);
        int iRandBetween2 = randBetween(0, 11);
        int iRandBetween3 = randBetween(9, 22);
        int iRandBetween4 = randBetween(0, 59);
        int iRandBetween5 = randBetween(0, 59);
        GregorianCalendar gregorianCalendar = new GregorianCalendar(iRandBetween, iRandBetween2, 1);
        gregorianCalendar.set(iRandBetween, iRandBetween2, randBetween(1, gregorianCalendar.getActualMaximum(5)), iRandBetween3, iRandBetween4, iRandBetween5);
        System.out.println(simpleDateFormat.format(gregorianCalendar.getTime()));
    }

    public static int randBetween(int i, int i2) {
        double dRandom = Math.random();
        double d = i2 - i;
        Double.isNaN(d);
        return i + ((int) Math.round(dRandom * d));
    }
}
