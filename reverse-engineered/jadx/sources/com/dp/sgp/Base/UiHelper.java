package com.dp.sgp.Base;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: loaded from: classes.dex */
public class UiHelper {
    public static void hideKeyboard(Context context) {
        View currentFocus = ((Activity) context).getCurrentFocus();
        if (currentFocus != null) {
            ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
    }

    public static int getImage(Context context, String str) {
        return context.getResources().getIdentifier(str, "drawable", context.getPackageName());
    }
}
