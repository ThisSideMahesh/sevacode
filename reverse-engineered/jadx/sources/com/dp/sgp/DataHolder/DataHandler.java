package com.dp.sgp.DataHolder;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public class DataHandler {
    public static final String DELETEALEARTBOX = "DELETE_ALERT_BOX";
    public static final String Swip = "SWIP";
    private SharedPreferences.Editor editor;
    private SharedPreferences preference;

    public DataHandler(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("ILIA_Session", 0);
        this.preference = sharedPreferences;
        this.editor = sharedPreferences.edit();
    }

    public void addData(String str, String str2) {
        this.editor.putString(str, str2);
        this.editor.commit();
    }

    public void setcheckingflagsession(String str, String str2) {
        this.editor.putString(str, str2);
        this.editor.commit();
    }

    public String getcheckingflagsession(String str) {
        return this.preference.getString(str, "");
    }

    public String getData(String str) {
        return this.preference.getString(str, "");
    }

    public void removeData(String str) {
        this.editor.remove(str);
        this.editor.commit();
    }

    public void clearAll() {
        this.editor.clear();
    }

    public void setAleartDelete(boolean z) {
        this.editor.putBoolean(DELETEALEARTBOX, z);
        this.editor.commit();
    }

    public boolean getAleartDelete() {
        return this.preference.getBoolean(DELETEALEARTBOX, false);
    }

    public void setSwip(boolean z) {
        this.editor.putBoolean(Swip, z);
        this.editor.commit();
    }

    public boolean getSwip() {
        return this.preference.getBoolean(Swip, false);
    }
}
