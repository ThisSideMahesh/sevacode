package com.dp.sgp.util;

import android.content.Context;
import android.net.ConnectivityManager;

/* JADX INFO: loaded from: classes.dex */
public class NetworkUtils {
    private static final String TAG = "com.dp.sgp.util.NetworkUtils";

    public static boolean isNetworkAvailable(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager.getActiveNetworkInfo() != null) {
                return connectivityManager.getActiveNetworkInfo().isConnectedOrConnecting();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
