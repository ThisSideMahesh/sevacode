package com.dp.sgp.database;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes.dex */
public class DatabaseManager {
    private static DatabaseManager instance;
    private static SQLiteOpenHelper mDatabaseHelper;
    private SQLiteDatabase mDatabase;
    private int mOpenCounter;

    public static synchronized void initializeInstance(SQLiteOpenHelper sQLiteOpenHelper) {
        if (instance == null) {
            instance = new DatabaseManager();
            mDatabaseHelper = sQLiteOpenHelper;
        }
    }

    public static synchronized DatabaseManager getInstance() {
        DatabaseManager databaseManager;
        databaseManager = instance;
        if (databaseManager == null) {
            throw new IllegalStateException(DatabaseManager.class.getSimpleName() + " is not initialized, call initializeInstance(..) method first.");
        }
        return databaseManager;
    }

    public synchronized SQLiteDatabase openDatabase() {
        int i = this.mOpenCounter + 1;
        this.mOpenCounter = i;
        if (i == 1) {
            this.mDatabase = mDatabaseHelper.getWritableDatabase();
        }
        return this.mDatabase;
    }

    public synchronized void closeDatabase() {
        int i = this.mOpenCounter - 1;
        this.mOpenCounter = i;
        if (i == 0) {
            this.mDatabase.close();
        }
    }
}
