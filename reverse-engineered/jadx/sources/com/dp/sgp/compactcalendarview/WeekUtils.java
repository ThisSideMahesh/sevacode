package com.dp.sgp.compactcalendarview;

import java.text.DateFormatSymbols;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class WeekUtils {
    static String[] getWeekdayNames(Locale locale, int i, boolean z) {
        String[] shortWeekdays = new DateFormatSymbols(locale).getShortWeekdays();
        if (shortWeekdays == null) {
            throw new IllegalStateException("Unable to determine weekday names from default locale");
        }
        if (shortWeekdays.length != 8) {
            throw new IllegalStateException("Expected weekday names from default locale to be of size 7 but: " + Arrays.toString(shortWeekdays) + " with size " + shortWeekdays.length + " was returned.");
        }
        String[] strArr = new String[7];
        String[] strArr2 = {shortWeekdays[1], shortWeekdays[2], shortWeekdays[3], shortWeekdays[4], shortWeekdays[5], shortWeekdays[6], shortWeekdays[7]};
        int i2 = i - 1;
        int i3 = 0;
        while (i3 <= 6) {
            if (i2 >= 7) {
                i2 = 0;
            }
            strArr[i3] = strArr2[i2];
            i3++;
            i2++;
        }
        if (!z) {
            for (int i4 = 0; i4 < 7; i4++) {
                strArr[i4] = strArr[i4].substring(0, 1);
            }
        }
        return strArr;
    }
}
