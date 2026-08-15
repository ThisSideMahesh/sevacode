package org.ocpsoft.prettytime;

/* JADX INFO: loaded from: classes.dex */
public interface Duration {
    long getDelta();

    long getQuantity();

    long getQuantityRounded(int i);

    TimeUnit getUnit();

    boolean isInFuture();

    boolean isInPast();
}
