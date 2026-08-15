package com.github.gcacace.signaturepad.view;

import android.os.Build;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
public class ViewTreeObserverCompat {
    public static void removeOnGlobalLayoutListener(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (Build.VERSION.SDK_INT >= 16) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        } else {
            viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
        }
    }
}
