package com.dp.sgp.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.dp.sgp.Model.saramrut.DBSwamiDatum;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DatabaseHelperClass extends SQLiteOpenHelper {
    public static final String COMPLETEDON = "completed_on";
    public static final String COMPLETEDPARAYAN = "complete_prayan";
    private static final String CREATE_TABLE = "create table SwamiCharitra(id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT NOT NULL,description TEXT NOT NULL,complete_prayan TEXT NOT NULL,status TEXT NOT NULL,current_adhyay TEXT NOT NULL,completed_on TEXT NOT NULL,image TEXT NOT NULL);";
    public static final String CURRENTADHYAY = "current_adhyay";
    private static final String DATABASE_NAME = "swamicharitra_database";
    private static final int DATABASE_VERSION = 1;
    public static final String DESC = "description";
    public static final String ID = "id";
    public static final String IMAGE = "image";
    public static final String STATUS = "status";
    private static final String TABLE_NAME = "SwamiCharitra";
    public static final String TITLE = "title";
    private SQLiteDatabase sqLiteDatabase;

    public DatabaseHelperClass(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(CREATE_TABLE);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL(" DROP TABLE IF EXISTS SwamiCharitra");
        onCreate(sQLiteDatabase);
    }

    public void addEmployee(DBSwamiDatum dBSwamiDatum) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TITLE, dBSwamiDatum.getTitle());
        contentValues.put(DESC, dBSwamiDatum.getDescription());
        contentValues.put(COMPLETEDPARAYAN, dBSwamiDatum.getComplete_prayan());
        contentValues.put("status", dBSwamiDatum.getStatus());
        contentValues.put(CURRENTADHYAY, dBSwamiDatum.getCurrent_adhyay());
        contentValues.put(COMPLETEDON, dBSwamiDatum.getCompleted_on());
        contentValues.put(IMAGE, dBSwamiDatum.getImage());
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.sqLiteDatabase = writableDatabase;
        writableDatabase.insert(TABLE_NAME, null, contentValues);
    }

    public List<DBSwamiDatum> getEmployeeList() {
        this.sqLiteDatabase = getReadableDatabase();
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = this.sqLiteDatabase.rawQuery("select * from SwamiCharitra", null);
        if (cursorRawQuery.moveToFirst()) {
            do {
                int i = Integer.parseInt(cursorRawQuery.getString(0));
                String string = cursorRawQuery.getString(1);
                String string2 = cursorRawQuery.getString(2);
                String string3 = cursorRawQuery.getString(3);
                String string4 = cursorRawQuery.getString(4);
                String string5 = cursorRawQuery.getString(5);
                String string6 = cursorRawQuery.getString(6);
                String string7 = cursorRawQuery.getString(7);
                DBSwamiDatum dBSwamiDatum = new DBSwamiDatum();
                dBSwamiDatum.setIds(i);
                dBSwamiDatum.setTitle(string);
                dBSwamiDatum.setDescription(string2);
                dBSwamiDatum.setComplete_prayan(string3);
                dBSwamiDatum.setStatus(string4);
                dBSwamiDatum.setCurrent_adhyay(string5);
                dBSwamiDatum.setCompleted_on(string6);
                dBSwamiDatum.setImage(string7);
                arrayList.add(dBSwamiDatum);
            } while (cursorRawQuery.moveToNext());
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public void updateEmployee(DBSwamiDatum dBSwamiDatum) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TITLE, dBSwamiDatum.getTitle());
        contentValues.put(DESC, dBSwamiDatum.getDescription());
        contentValues.put(COMPLETEDPARAYAN, dBSwamiDatum.getComplete_prayan());
        contentValues.put("status", dBSwamiDatum.getStatus());
        contentValues.put(CURRENTADHYAY, dBSwamiDatum.getCurrent_adhyay());
        contentValues.put(COMPLETEDON, dBSwamiDatum.getCompleted_on());
        contentValues.put(IMAGE, dBSwamiDatum.getImage());
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.sqLiteDatabase = writableDatabase;
        writableDatabase.update(TABLE_NAME, contentValues, "id = ?", new String[]{String.valueOf(dBSwamiDatum.getIds())});
    }

    public void deleteEmployee(int i) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.sqLiteDatabase = writableDatabase;
        writableDatabase.delete(TABLE_NAME, "id = ? ", new String[]{String.valueOf(i)});
    }

    public void deleteAll() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.sqLiteDatabase = writableDatabase;
        writableDatabase.delete(TABLE_NAME, null, null);
    }
}
