package org.ocpsoft.prettytime.i18n;

import com.dp.sgp.database.DatabaseTables;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.ListResourceBundle;
import java.util.ResourceBundle;
import org.ocpsoft.prettytime.Duration;
import org.ocpsoft.prettytime.TimeFormat;
import org.ocpsoft.prettytime.TimeUnit;
import org.ocpsoft.prettytime.format.SimpleTimeFormat;
import org.ocpsoft.prettytime.impl.TimeFormatProvider;
import org.ocpsoft.prettytime.units.Day;
import org.ocpsoft.prettytime.units.Hour;
import org.ocpsoft.prettytime.units.Minute;
import org.ocpsoft.prettytime.units.Month;
import org.ocpsoft.prettytime.units.Week;
import org.ocpsoft.prettytime.units.Year;

/* JADX INFO: loaded from: classes.dex */
public class Resources_sk extends ListResourceBundle implements TimeFormatProvider {
    private static final Object[][] OBJECTS = {new Object[]{"CenturyPattern", "%n %u"}, new Object[]{"CenturyFuturePrefix", "o "}, new Object[]{"CenturyFutureSuffix", ""}, new Object[]{"CenturyPastPrefix", "pred "}, new Object[]{"CenturyPastSuffix", ""}, new Object[]{"CenturySingularName", "storočie"}, new Object[]{"CenturyPluralName", "storočia"}, new Object[]{"CenturyPastSingularName", "storočím"}, new Object[]{"CenturyPastPluralName", "storočiami"}, new Object[]{"CenturyFutureSingularName", "storočí"}, new Object[]{"CenturyFuturePluralName", "storočia"}, new Object[]{"DayPattern", "%n %u"}, new Object[]{"DayFuturePrefix", "o "}, new Object[]{"DayFutureSuffix", ""}, new Object[]{"DayPastPrefix", "pred "}, new Object[]{"DayPastSuffix", ""}, new Object[]{"DaySingularName", "deň"}, new Object[]{"DayPluralName", "dni"}, new Object[]{"DecadePattern", "%n %u"}, new Object[]{"DecadeFuturePrefix", "o "}, new Object[]{"DecadeFutureSuffix", ""}, new Object[]{"DecadePastPrefix", "pred "}, new Object[]{"DecadePastSuffix", ""}, new Object[]{"DecadeSingularName", "desaťročie"}, new Object[]{"DecadePluralName", "desaťročia"}, new Object[]{"DecadePastSingularName", "desaťročím"}, new Object[]{"DecadePastPluralName", "desaťročiami"}, new Object[]{"DecadeFutureSingularName", "desaťročí"}, new Object[]{"DecadeFuturePluralName", "desaťročia"}, new Object[]{"HourPattern", "%n %u"}, new Object[]{"HourFuturePrefix", "o "}, new Object[]{"HourFutureSuffix", ""}, new Object[]{"HourPastPrefix", "pred"}, new Object[]{"HourPastSuffix", ""}, new Object[]{"HourSingularName", "hodina"}, new Object[]{"HourPluralName", "hodiny"}, new Object[]{"JustNowPattern", "%u"}, new Object[]{"JustNowFuturePrefix", ""}, new Object[]{"JustNowFutureSuffix", "o chvíľu"}, new Object[]{"JustNowPastPrefix", "pred chvíľou"}, new Object[]{"JustNowPastSuffix", ""}, new Object[]{"JustNowSingularName", ""}, new Object[]{"JustNowPluralName", ""}, new Object[]{"MillenniumPattern", "%n %u"}, new Object[]{"MillenniumFuturePrefix", "o "}, new Object[]{"MillenniumFutureSuffix", ""}, new Object[]{"MillenniumPastPrefix", "pred "}, new Object[]{"MillenniumPastSuffix", ""}, new Object[]{"MillenniumSingularName", "tísícročie"}, new Object[]{"MillenniumPluralName", "tisícročia"}, new Object[]{"MillisecondPattern", "%n %u"}, new Object[]{"MillisecondFuturePrefix", "o "}, new Object[]{"MillisecondFutureSuffix", ""}, new Object[]{"MillisecondPastPrefix", "pred "}, new Object[]{"MillisecondPastSuffix", ""}, new Object[]{"MillisecondSingularName", "milisekunda"}, new Object[]{"MillisecondPluralName", "milisekundy"}, new Object[]{"MillisecondPastSingularName", "milisekundou"}, new Object[]{"MillisecondPastPluralName", "milisekundami"}, new Object[]{"MillisecondFutureSingularName", "milisekundu"}, new Object[]{"MillisecondFuturePluralName", "milisekúnd"}, new Object[]{"MinutePattern", "%n %u"}, new Object[]{"MinuteFuturePrefix", "o "}, new Object[]{"MinuteFutureSuffix", ""}, new Object[]{"MinutePastPrefix", "pred "}, new Object[]{"MinutePastSuffix", ""}, new Object[]{"MinuteSingularName", "minúta"}, new Object[]{"MinutePluralName", "minúty"}, new Object[]{"MonthPattern", "%n %u"}, new Object[]{"MonthFuturePrefix", "o "}, new Object[]{"MonthFutureSuffix", ""}, new Object[]{"MonthPastPrefix", "pred "}, new Object[]{"MonthPastSuffix", ""}, new Object[]{"MonthSingularName", "mesiac"}, new Object[]{"MonthPluralName", "mesiace"}, new Object[]{"SecondPattern", "%n %u"}, new Object[]{"SecondFuturePrefix", "o "}, new Object[]{"SecondFutureSuffix", ""}, new Object[]{"SecondPastPrefix", "pred "}, new Object[]{"SecondPastSuffix", ""}, new Object[]{"SecondSingularName", "sekunda"}, new Object[]{"SecondPluralName", "sekundy"}, new Object[]{"WeekPattern", "%n %u"}, new Object[]{"WeekFuturePrefix", "o "}, new Object[]{"WeekFutureSuffix", ""}, new Object[]{"WeekPastPrefix", "pred "}, new Object[]{"WeekPastSuffix", ""}, new Object[]{"WeekSingularName", "týždeň"}, new Object[]{"WeekPluralName", "týždne"}, new Object[]{"YearPattern", "%n %u"}, new Object[]{"YearFuturePrefix", "o "}, new Object[]{"YearFutureSuffix", ""}, new Object[]{"YearPastPrefix", "pred "}, new Object[]{"YearPastSuffix", ""}, new Object[]{"YearSingularName", "rok"}, new Object[]{"YearPluralName", "roky"}, new Object[]{"AbstractTimeUnitPattern", ""}, new Object[]{"AbstractTimeUnitFuturePrefix", ""}, new Object[]{"AbstractTimeUnitFutureSuffix", ""}, new Object[]{"AbstractTimeUnitPastPrefix", ""}, new Object[]{"AbstractTimeUnitPastSuffix", ""}, new Object[]{"AbstractTimeUnitSingularName", ""}, new Object[]{"AbstractTimeUnitPluralName", ""}};

    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return OBJECTS;
    }

    @Override // org.ocpsoft.prettytime.impl.TimeFormatProvider
    public TimeFormat getFormatFor(TimeUnit timeUnit) {
        if (timeUnit instanceof Minute) {
            return new CsTimeFormatBuilder("Minute").addFutureName("minútu", 1L).addFutureName("minúty", 4L).addFutureName("minút", Long.MAX_VALUE).addPastName("minútou", 1L).addPastName("minútami", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Hour) {
            return new CsTimeFormatBuilder("Hour").addFutureName("hodinu", 1L).addFutureName("hodiny", 4L).addFutureName("hodín", Long.MAX_VALUE).addPastName("hodinou", 1L).addPastName("hodinami", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Day) {
            return new CsTimeFormatBuilder(DatabaseTables.DAY).addFutureName("deň", 1L).addFutureName("dni", 4L).addFutureName("dní", Long.MAX_VALUE).addPastName("dňom", 1L).addPastName("dňami", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Week) {
            return new CsTimeFormatBuilder("Week").addFutureName("týždeň", 1L).addFutureName("týždne", 4L).addFutureName("týždňov", Long.MAX_VALUE).addPastName("týždňom", 1L).addPastName("týždňami", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Month) {
            return new CsTimeFormatBuilder(DatabaseTables.MONTH).addFutureName("mesiac", 1L).addFutureName("mesiace", 4L).addFutureName("mesiacov", Long.MAX_VALUE).addPastName("mesiacom", 1L).addPastName("mesiacmi", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Year) {
            return new CsTimeFormatBuilder(DatabaseTables.YEAR).addFutureName("rok", 1L).addFutureName("roky", 4L).addFutureName("rokov", Long.MAX_VALUE).addPastName("rokom", 1L).addPastName("rokmi", Long.MAX_VALUE).build(this);
        }
        return null;
    }

    private static class CsTimeFormatBuilder {
        private List<CsName> names = new ArrayList();
        private String resourceKeyPrefix;

        CsTimeFormatBuilder(String str) {
            this.resourceKeyPrefix = str;
        }

        CsTimeFormatBuilder addFutureName(String str, long j) {
            return addName(true, str, j);
        }

        CsTimeFormatBuilder addPastName(String str, long j) {
            return addName(false, str, j);
        }

        private CsTimeFormatBuilder addName(boolean z, String str, long j) {
            if (str == null) {
                throw new IllegalArgumentException();
            }
            this.names.add(new CsName(z, str, Long.valueOf(j)));
            return this;
        }

        CsTimeFormat build(ResourceBundle resourceBundle) {
            return new CsTimeFormat(this.resourceKeyPrefix, resourceBundle, this.names);
        }
    }

    private static class CsTimeFormat extends SimpleTimeFormat implements TimeFormat {
        private final List<CsName> futureNames = new ArrayList();
        private final List<CsName> pastNames = new ArrayList();

        public CsTimeFormat(String str, ResourceBundle resourceBundle, Collection<CsName> collection) {
            setPattern(resourceBundle.getString(str + "Pattern"));
            setFuturePrefix(resourceBundle.getString(str + "FuturePrefix"));
            setFutureSuffix(resourceBundle.getString(str + "FutureSuffix"));
            setPastPrefix(resourceBundle.getString(str + "PastPrefix"));
            setPastSuffix(resourceBundle.getString(str + "PastSuffix"));
            setSingularName(resourceBundle.getString(str + "SingularName"));
            setPluralName(resourceBundle.getString(str + "PluralName"));
            try {
                setFuturePluralName(resourceBundle.getString(str + "FuturePluralName"));
            } catch (Exception unused) {
            }
            try {
                setFutureSingularName(resourceBundle.getString(str + "FutureSingularName"));
            } catch (Exception unused2) {
            }
            try {
                setPastPluralName(resourceBundle.getString(str + "PastPluralName"));
            } catch (Exception unused3) {
            }
            try {
                setPastSingularName(resourceBundle.getString(str + "PastSingularName"));
            } catch (Exception unused4) {
            }
            for (CsName csName : collection) {
                if (csName.isFuture()) {
                    this.futureNames.add(csName);
                } else {
                    this.pastNames.add(csName);
                }
            }
            Collections.sort(this.futureNames);
            Collections.sort(this.pastNames);
        }

        @Override // org.ocpsoft.prettytime.format.SimpleTimeFormat
        protected String getGramaticallyCorrectName(Duration duration, boolean z) {
            long jAbs = Math.abs(getQuantity(duration, z));
            if (duration.isInFuture()) {
                return getGramaticallyCorrectName(jAbs, this.futureNames);
            }
            return getGramaticallyCorrectName(jAbs, this.pastNames);
        }

        private String getGramaticallyCorrectName(long j, List<CsName> list) {
            for (CsName csName : list) {
                if (csName.getThreshold() >= j) {
                    return csName.get();
                }
            }
            throw new IllegalStateException("Invalid resource bundle configuration");
        }
    }

    private static class CsName implements Comparable<CsName> {
        private final boolean isFuture;
        private final Long threshold;
        private final String value;

        public CsName(boolean z, String str, Long l) {
            this.isFuture = z;
            this.value = str;
            this.threshold = l;
        }

        public boolean isFuture() {
            return this.isFuture;
        }

        public String get() {
            return this.value;
        }

        public long getThreshold() {
            return this.threshold.longValue();
        }

        @Override // java.lang.Comparable
        public int compareTo(CsName csName) {
            return this.threshold.compareTo(Long.valueOf(csName.getThreshold()));
        }
    }
}
