package com.dp.sgp.database;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class SQLiteHelper extends SQLiteOpenHelper {
    private static final String TAG = "SQLiteHelper";
    private SQLiteDatabase db;
    private Context mContext;

    public SQLiteHelper(Context context) {
        super(context, DatabaseTables.DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 16);
        this.mContext = context;
        if (checkDataBase()) {
            openDataBase();
            close();
            return;
        }
        try {
            getReadableDatabase();
            close();
            copyDataBase();
            close();
            openDataBase();
            close();
        } catch (IOException unused) {
            throw new Error("Error copying database");
        }
    }

    private void copyDataBase() throws IOException {
        deleteDatabase("/data/data/com.dp.sgp/databases/calenderdb222");
        InputStream inputStreamOpen = this.mContext.getAssets().open(DatabaseTables.DATABASE_NAME);
        openDataBase();
        String path = this.db.getPath();
        this.db.close();
        FileOutputStream fileOutputStream = new FileOutputStream(path);
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStreamOpen.read(bArr);
            if (i > 0) {
                fileOutputStream.write(bArr, 0, i);
            } else {
                fileOutputStream.flush();
                fileOutputStream.close();
                inputStreamOpen.close();
                return;
            }
        }
    }

    public void openDataBase() throws SQLException {
        this.db = SQLiteDatabase.openDatabase("/data/data/com.dp.sgp/databases/calenderdb230", null, 0);
    }

    private boolean checkDataBase() {
        SQLiteDatabase sQLiteDatabaseOpenDatabase = null;
        try {
            sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase("/data/data/com.dp.sgp/databases/calenderdb230", null, 1);
        } catch (SQLiteException unused) {
            Log.v("db log", "database does't exist");
        }
        if (sQLiteDatabaseOpenDatabase == null) {
            return false;
        }
        sQLiteDatabaseOpenDatabase.close();
        return true;
    }

    private boolean deleteDatabase(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
            Log.d(TAG, str + " : Deleted");
            return true;
        }
        Log.v(TAG, str + " : Not Found");
        return false;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        DatabaseTables.onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        DatabaseTables.onUpgrade(sQLiteDatabase, i, i2);
    }
}
