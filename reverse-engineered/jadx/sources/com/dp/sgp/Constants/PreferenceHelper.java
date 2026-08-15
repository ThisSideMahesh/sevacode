package com.dp.sgp.Constants;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public class PreferenceHelper {
    public static final String CHANTING_COUNT_BOOKMARK = "chanting_count_bookmark";
    public static final String CHANTING_ROUND_BOOKMARK = "chanting_round_bookmark";
    public static final String EXTRA_PARAMS_LIST_TYPE = "EXTRA_PARAMS_LIST_TYPE";
    public static final String EXTRA_PARAMS_POSITION = "EXTRA_PARAMS_POSITION";
    public static final String EXTRA_PARAMS_RESULT_KEY = "EXTRA_PARAMS_RESULT_KEY";
    public static final String E_NITYASEVA_PKG = "com.enityaseva.adi.shreeatharvashirsh";
    public static final String IS_FIRST_NOTIFICATION_RECEIVED = "is_first_notification";
    public static final String IS_REGISTERED = "is_registred";
    public static final String LIST_AARTI = "LIST_AARTI";
    public static final String LIST_AYURVED = "LIST_AYURVED";
    public static final String LIST_MUDRAN = "LIST_MUDRAN";
    public static final String LIST_STOTRA = "LIST_STOTRA";
    public static final String LIST_SWAMI_CHARITRA = "LIST_SWAMI_CHARITRA";
    public static final String LIST_SWAMI_CHARITRA_700 = "LIST_SWAMI_CHARITRA_700";
    public static final String NAVIGATE_TO_NOTIFICATION = "navigate_to_notification";
    public static final String NOTIFICATION_COUNT = "notification_count";
    public static final String PREFERENCESNAME = "gurupeeth";
    public static final String SWAMI_CHARITRA_700_BOOKMARK = "swami_charitra_700_bookmark";
    public static final String SWAMI_CHARITRA_BOOKMARK = "swami_charitra_bookmark";
    public static Context context = null;
    public static final String emailPattern = "[a-zA-Z0-9._-]+@[a-z]+\\.+[a-z]+";

    public static void setPreferenceValue(Context context2, String str, String str2) {
        SharedPreferences.Editor editorEdit = context2.getSharedPreferences(PREFERENCESNAME, 0).edit();
        editorEdit.putString(str, str2);
        editorEdit.commit();
    }

    public static void setPreferenceValue(Context context2, String str, int i) {
        SharedPreferences.Editor editorEdit = context2.getSharedPreferences(PREFERENCESNAME, 0).edit();
        editorEdit.putInt(str, i);
        editorEdit.commit();
    }

    public static void setPreferenceValue(Context context2, String str, boolean z) {
        SharedPreferences.Editor editorEdit = context2.getSharedPreferences(PREFERENCESNAME, 0).edit();
        editorEdit.putBoolean(str, z);
        editorEdit.commit();
    }

    public static String getStringPreferenceValue(Context context2, String str) {
        return context2.getSharedPreferences(PREFERENCESNAME, 0).getString(str, "");
    }

    public static int getIntPreferenceValue(Context context2, String str) {
        return context2.getSharedPreferences(PREFERENCESNAME, 0).getInt(str, 0);
    }

    public static boolean getBooleanPreferenceValue(Context context2, String str) {
        return context2.getSharedPreferences(PREFERENCESNAME, 0).getBoolean(str, false);
    }
}
