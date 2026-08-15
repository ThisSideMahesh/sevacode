package org.ocpsoft.prettytime;

/* JADX INFO: loaded from: classes.dex */
public interface TimeFormat {
    String decorate(Duration duration, String str);

    String decorateUnrounded(Duration duration, String str);

    String format(Duration duration);

    String formatUnrounded(Duration duration);
}
