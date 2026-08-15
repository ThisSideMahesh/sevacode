package org.ocpsoft.prettytime;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.ocpsoft.prettytime.impl.DurationImpl;
import org.ocpsoft.prettytime.impl.ResourcesTimeFormat;
import org.ocpsoft.prettytime.impl.ResourcesTimeUnit;
import org.ocpsoft.prettytime.units.Century;
import org.ocpsoft.prettytime.units.Day;
import org.ocpsoft.prettytime.units.Decade;
import org.ocpsoft.prettytime.units.Hour;
import org.ocpsoft.prettytime.units.JustNow;
import org.ocpsoft.prettytime.units.Millennium;
import org.ocpsoft.prettytime.units.Millisecond;
import org.ocpsoft.prettytime.units.Minute;
import org.ocpsoft.prettytime.units.Month;
import org.ocpsoft.prettytime.units.Second;
import org.ocpsoft.prettytime.units.TimeUnitComparator;
import org.ocpsoft.prettytime.units.Week;
import org.ocpsoft.prettytime.units.Year;

/* JADX INFO: loaded from: classes.dex */
public class PrettyTime {
    private volatile List<TimeUnit> cachedUnits;
    private volatile Locale locale;
    private volatile Date reference;
    private volatile Map<TimeUnit, TimeFormat> units;

    private long getSign(long j) {
        return 0 > j ? -1L : 1L;
    }

    public PrettyTime() {
        this.locale = Locale.getDefault();
        this.units = new LinkedHashMap();
        initTimeUnits();
    }

    public PrettyTime(Date date) {
        this();
        setReference(date);
    }

    public PrettyTime(Locale locale) {
        this.locale = Locale.getDefault();
        this.units = new LinkedHashMap();
        setLocale(locale);
        initTimeUnits();
    }

    public PrettyTime(Date date, Locale locale) {
        this(locale);
        setReference(date);
    }

    public Duration approximateDuration(Date date) {
        if (date == null) {
            date = now();
        }
        Date dateNow = this.reference;
        if (dateNow == null) {
            dateNow = now();
        }
        return calculateDuration(date.getTime() - dateNow.getTime());
    }

    public List<Duration> calculatePreciseDuration(Date date) {
        if (date == null) {
            date = now();
        }
        if (this.reference == null) {
            this.reference = now();
        }
        ArrayList arrayList = new ArrayList();
        Duration durationCalculateDuration = calculateDuration(date.getTime() - this.reference.getTime());
        arrayList.add(durationCalculateDuration);
        while (0 != durationCalculateDuration.getDelta()) {
            durationCalculateDuration = calculateDuration(durationCalculateDuration.getDelta());
            if (arrayList.size() > 0 && ((Duration) arrayList.get(arrayList.size() - 1)).getUnit().equals(durationCalculateDuration.getUnit())) {
                break;
            }
            if (durationCalculateDuration.getUnit().isPrecise()) {
                arrayList.add(durationCalculateDuration);
            }
        }
        return arrayList;
    }

    public String format(Date date) {
        if (date == null) {
            date = now();
        }
        return format(approximateDuration(date));
    }

    public String format(Calendar calendar) {
        if (calendar == null) {
            return format(now());
        }
        return format(calendar.getTime());
    }

    public String format(Duration duration) {
        if (duration == null) {
            return format(now());
        }
        TimeFormat format = getFormat(duration.getUnit());
        return format.decorate(duration, format.format(duration));
    }

    public String format(List<Duration> list) {
        if (list == null || list.isEmpty()) {
            return format(now());
        }
        StringBuilder sb = new StringBuilder();
        TimeFormat format = null;
        Duration duration = null;
        for (int i = 0; i < list.size(); i++) {
            duration = list.get(i);
            format = getFormat(duration.getUnit());
            if (i < list.size() - 1) {
                sb.append(format.formatUnrounded(duration)).append(" ");
            } else {
                sb.append(format.format(duration));
            }
        }
        return format.decorateUnrounded(duration, sb.toString());
    }

    public String formatUnrounded(Date date) {
        if (date == null) {
            date = now();
        }
        return formatUnrounded(approximateDuration(date));
    }

    public String formatUnrounded(Calendar calendar) {
        if (calendar == null) {
            return formatUnrounded(now());
        }
        return formatUnrounded(calendar.getTime());
    }

    public String formatUnrounded(Duration duration) {
        if (duration == null) {
            return formatUnrounded(now());
        }
        TimeFormat format = getFormat(duration.getUnit());
        return format.decorateUnrounded(duration, format.formatUnrounded(duration));
    }

    public String formatUnrounded(List<Duration> list) {
        if (list == null || list.isEmpty()) {
            return format(now());
        }
        StringBuilder sb = new StringBuilder();
        TimeFormat format = null;
        Duration duration = null;
        for (int i = 0; i < list.size(); i++) {
            duration = list.get(i);
            format = getFormat(duration.getUnit());
            sb.append(format.formatUnrounded(duration));
            if (i < list.size() - 1) {
                sb.append(" ");
            }
        }
        return format.decorateUnrounded(duration, sb.toString());
    }

    public String formatDuration(Date date) {
        return formatDuration(approximateDuration(date));
    }

    public String formatDuration(Calendar calendar) {
        if (calendar == null) {
            return formatDuration(now());
        }
        return formatDuration(approximateDuration(calendar.getTime()));
    }

    public String formatDuration(Duration duration) {
        if (duration == null) {
            return format(now());
        }
        return getFormat(duration.getUnit()).format(duration);
    }

    public String formatDuration(List<Duration> list) {
        if (list == null || list.isEmpty()) {
            return format(now());
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            Duration duration = list.get(i);
            TimeFormat format = getFormat(duration.getUnit());
            if (i < list.size() - 1) {
                sb.append(format.formatUnrounded(duration)).append(" ");
            } else {
                sb.append(format.format(duration));
            }
        }
        return sb.toString();
    }

    public String formatDurationUnrounded(Date date) {
        return formatDurationUnrounded(approximateDuration(date));
    }

    public String formatDurationUnrounded(Calendar calendar) {
        if (calendar == null) {
            return formatDuration(now());
        }
        return formatDurationUnrounded(approximateDuration(calendar.getTime()));
    }

    public String formatDurationUnrounded(Duration duration) {
        if (duration == null) {
            return format(now());
        }
        return getFormat(duration.getUnit()).formatUnrounded(duration);
    }

    public String formatDurationUnrounded(List<Duration> list) {
        if (list == null || list.isEmpty()) {
            return format(now());
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            Duration duration = list.get(i);
            sb.append(getFormat(duration.getUnit()).formatUnrounded(duration));
            if (i < list.size() - 1) {
                sb.append(" ");
            }
        }
        return sb.toString();
    }

    public TimeFormat getFormat(TimeUnit timeUnit) {
        if (timeUnit == null || this.units.get(timeUnit) == null) {
            return null;
        }
        return this.units.get(timeUnit);
    }

    public Date getReference() {
        return this.reference;
    }

    public PrettyTime setReference(Date date) {
        this.reference = date;
        return this;
    }

    public List<TimeUnit> getUnits() {
        if (this.cachedUnits == null) {
            ArrayList arrayList = new ArrayList(this.units.keySet());
            Collections.sort(arrayList, new TimeUnitComparator());
            this.cachedUnits = Collections.unmodifiableList(arrayList);
        }
        return this.cachedUnits;
    }

    public <UNIT extends TimeUnit> UNIT getUnit(Class<UNIT> cls) {
        if (cls == null) {
            return null;
        }
        Iterator<TimeUnit> it = this.units.keySet().iterator();
        while (it.hasNext()) {
            UNIT unit = (UNIT) it.next();
            if (cls.isAssignableFrom(unit.getClass())) {
                return unit;
            }
        }
        return null;
    }

    public PrettyTime registerUnit(TimeUnit timeUnit, TimeFormat timeFormat) {
        if (timeUnit == null) {
            throw new IllegalArgumentException("Unit to register must not be null.");
        }
        if (timeFormat == null) {
            throw new IllegalArgumentException("Format to register must not be null.");
        }
        this.cachedUnits = null;
        this.units.put(timeUnit, timeFormat);
        if (timeUnit instanceof LocaleAware) {
            ((LocaleAware) timeUnit).setLocale(this.locale);
        }
        if (timeFormat instanceof LocaleAware) {
            ((LocaleAware) timeFormat).setLocale(this.locale);
        }
        return this;
    }

    public <UNIT extends TimeUnit> TimeFormat removeUnit(Class<UNIT> cls) {
        if (cls == null) {
            return null;
        }
        for (TimeUnit timeUnit : this.units.keySet()) {
            if (cls.isAssignableFrom(timeUnit.getClass())) {
                this.cachedUnits = null;
                return this.units.remove(timeUnit);
            }
        }
        return null;
    }

    public TimeFormat removeUnit(TimeUnit timeUnit) {
        if (timeUnit == null) {
            return null;
        }
        this.cachedUnits = null;
        return this.units.remove(timeUnit);
    }

    public Locale getLocale() {
        return this.locale;
    }

    public PrettyTime setLocale(Locale locale) {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        this.locale = locale;
        for (TimeUnit timeUnit : this.units.keySet()) {
            if (timeUnit instanceof LocaleAware) {
                ((LocaleAware) timeUnit).setLocale(locale);
            }
        }
        for (TimeFormat timeFormat : this.units.values()) {
            if (timeFormat instanceof LocaleAware) {
                ((LocaleAware) timeFormat).setLocale(locale);
            }
        }
        return this;
    }

    public String toString() {
        return "PrettyTime [reference=" + this.reference + ", locale=" + this.locale + "]";
    }

    public List<TimeUnit> clearUnits() {
        List<TimeUnit> units = getUnits();
        this.cachedUnits = null;
        this.units.clear();
        return units;
    }

    private Date now() {
        return new Date();
    }

    private void initTimeUnits() {
        addUnit(new JustNow());
        addUnit(new Millisecond());
        addUnit(new Second());
        addUnit(new Minute());
        addUnit(new Hour());
        addUnit(new Day());
        addUnit(new Week());
        addUnit(new Month());
        addUnit(new Year());
        addUnit(new Decade());
        addUnit(new Century());
        addUnit(new Millennium());
    }

    private void addUnit(ResourcesTimeUnit resourcesTimeUnit) {
        registerUnit(resourcesTimeUnit, new ResourcesTimeFormat(resourcesTimeUnit));
    }

    private Duration calculateDuration(long j) {
        long jAbs = Math.abs(j);
        List<TimeUnit> units = getUnits();
        DurationImpl durationImpl = new DurationImpl();
        int i = 0;
        while (i < units.size()) {
            TimeUnit timeUnit = units.get(i);
            long jAbs2 = Math.abs(timeUnit.getMillisPerUnit());
            long jAbs3 = Math.abs(timeUnit.getMaxQuantity());
            boolean z = i == units.size() - 1;
            if (0 == jAbs3 && !z) {
                jAbs3 = units.get(i + 1).getMillisPerUnit() / timeUnit.getMillisPerUnit();
            }
            if (jAbs3 * jAbs2 > jAbs || z) {
                durationImpl.setUnit(timeUnit);
                if (jAbs2 > jAbs) {
                    durationImpl.setQuantity(getSign(j));
                    durationImpl.setDelta(0L);
                    break;
                }
                durationImpl.setQuantity(j / jAbs2);
                durationImpl.setDelta(j - (durationImpl.getQuantity() * jAbs2));
                break;
            }
            i++;
        }
        return durationImpl;
    }
}
