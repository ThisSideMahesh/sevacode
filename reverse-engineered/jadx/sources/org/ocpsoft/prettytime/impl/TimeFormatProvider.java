package org.ocpsoft.prettytime.impl;

import org.ocpsoft.prettytime.TimeFormat;
import org.ocpsoft.prettytime.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public interface TimeFormatProvider {
    TimeFormat getFormatFor(TimeUnit timeUnit);
}
