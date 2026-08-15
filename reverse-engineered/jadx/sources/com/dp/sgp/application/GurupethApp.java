package com.dp.sgp.application;

import android.app.Application;
import com.dp.sgp.database.DatabaseManager;
import com.dp.sgp.database.SQLiteHelper;

/* JADX INFO: loaded from: classes.dex */
public class GurupethApp extends Application {
    public static GurupethApp mContext;

    @Override // android.app.Application
    public void onCreate() {
        mContext = this;
        super.onCreate();
        DatabaseManager.initializeInstance(new SQLiteHelper(this));
    }

    public static GurupethApp getContext() {
        return mContext;
    }
}
