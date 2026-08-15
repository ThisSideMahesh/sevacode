package com.dp.sgp.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Log;
import com.dp.sgp.Model.SevaDetail;
import com.dp.sgp.Model.SevaNondInput;
import com.dp.sgp.calendar.CalenderData;
import com.dp.sgp.calendar.DateUtils;
import com.dp.sgp.calendar.Message;
import com.dp.sgp.calendar.Notification;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class DatabaseUtils {
    public static final String MESSAGE_TYPE_ADHIKRUT = "adkrutsandesh";
    public static final String MESSAGE_TYPE_SANVAR = "sanvar";
    private static final String TAG = "DatabaseUtils";

    public static void insertSevaNond(SevaNondInput sevaNondInput) {
    }

    public static SQLiteDatabase getDatabaseInstance(Context context) {
        return DatabaseManager.getInstance().openDatabase();
    }

    public static CalenderData getAllDayData(Context context, int i, int i2, int i3) {
        SQLiteDatabase databaseInstance = getDatabaseInstance(context);
        CalenderData calenderData = new CalenderData();
        try {
            String str = "SELECT T1.*, T2.suvichar, T3.Rahukal FROM tbl_Date_Master T1 INNER JOIN suvichar T2 ON T1.Day = T2.day_id INNER JOIN Rahukal T3 ON T1.Var = T3.Var WHERE Year=" + i + " and MOnth=" + i2 + " and Day=" + i3 + "";
            Log.i(TAG, str);
            Cursor cursorRawQuery = databaseInstance.rawQuery(str, null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    calenderData.setTithi(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.TITHI)));
                    calenderData.setVar(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.VAR)));
                    calenderData.setNakshatra(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.NAKSHATRA)));
                    calenderData.setYog(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.YOG)));
                    calenderData.setKaran(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KARAN)));
                    calenderData.setChangraRashi(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.CHANDRA_RASHI)));
                    calenderData.setRahukal(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("Rahukal")));
                    calenderData.setShubhashubh(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.SHUBHA_SHUBH)));
                    calenderData.setEvent(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.DAY_SPECIAL)));
                    calenderData.setDaySpecial(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.SAN_UTSAV)));
                    calenderData.setDay(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.MARATHI_DATE)));
                    calenderData.setSuvichar(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("suvichar")));
                    calenderData.setRahukal(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("Rahukal")));
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return calenderData;
    }

    public static CalenderData getMuhurta(Context context, int i, int i2) {
        SQLiteDatabase databaseInstance = getDatabaseInstance(context);
        CalenderData calenderData = new CalenderData();
        try {
            String str = "SELECT * FROM tbl_Festival_Master WHERE Year = " + i + " AND " + DatabaseTables.MONTH + " = " + i2 + "";
            Log.i(TAG, str);
            Cursor cursorRawQuery = databaseInstance.rawQuery(str, null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    calenderData.setEvent(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.MUHURTA)));
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return calenderData;
    }

    public static String getSanvar(Context context, int i, int i2) {
        String str = "";
        SQLiteDatabase databaseInstance = getDatabaseInstance(context);
        try {
            String str2 = "SELECT Marathi_Date,  San_Utsav FROM tbl_Date_Master WHERE Year=" + i + " and Month=" + i2 + " and " + DatabaseTables.SAN_UTSAV + " !='' ORDER BY " + DatabaseTables.DAY + "";
            Log.i(TAG, str2);
            Cursor cursorRawQuery = databaseInstance.rawQuery(str2, null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    CalenderData calenderData = new CalenderData();
                    calenderData.setDay(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.MARATHI_DATE)));
                    calenderData.setEvent(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.SAN_UTSAV)));
                    str = str + calenderData.getDay() + "- " + calenderData.getEvent() + "\n\n";
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static String getDPU(Context context, int i) {
        SQLiteDatabase databaseInstance = getDatabaseInstance(context);
        String event = "";
        try {
            String str = "SELECT * FROM tbl_DindoriPranitUtsav WHERE Year = " + i;
            Log.i(TAG, str);
            Cursor cursorRawQuery = databaseInstance.rawQuery(str, null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    CalenderData calenderData = new CalenderData();
                    calenderData.setEvent(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.DESCRIPTION)));
                    event = calenderData.getEvent();
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return event;
    }

    public static String getShubhaShubh(Context context, int i, int i2) {
        String str = "";
        SQLiteDatabase databaseInstance = getDatabaseInstance(context);
        try {
            String str2 = "SELECT Marathi_Date,  ShubhaShubh FROM tbl_Date_Master WHERE Year=" + i + " and Month=" + i2 + "  ORDER BY " + DatabaseTables.DAY + "";
            Log.i(TAG, str2);
            Cursor cursorRawQuery = databaseInstance.rawQuery(str2, null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    CalenderData calenderData = new CalenderData();
                    calenderData.setDay(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.MARATHI_DATE)));
                    calenderData.setEvent(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.SHUBHA_SHUBH)));
                    str = str + calenderData.getDay() + "- " + calenderData.getEvent() + "\n\n";
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static void insertSevaNond(Context context, SevaNondInput sevaNondInput) {
        SQLiteDatabase databaseInstance = getDatabaseInstance(context);
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", sevaNondInput.getSevaType());
        contentValues.put("name", sevaNondInput.getSevekariName());
        contentValues.put(DatabaseTables.MOBILE_NO, sevaNondInput.getMobileNo());
        contentValues.put(DatabaseTables.DATE, DateUtils.getTodaysDateString());
        try {
            long jInsertOrThrow = databaseInstance.insertOrThrow(DatabaseTables.TB_SEVA_NOND, null, contentValues);
            if (jInsertOrThrow > -1) {
                Log.i(TAG, "User Inserted");
                insertSevaDetails(context, jInsertOrThrow, sevaNondInput.getSevaDetails());
            } else {
                Log.i(TAG, "User Not Inserted");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void insertSevaDetails(Context context, long j, ArrayList<SevaDetail> arrayList) {
        SQLiteDatabase databaseInstance = getDatabaseInstance(context);
        for (int i = 0; i < arrayList.size(); i++) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(DatabaseTables.SEVA_ID, Long.valueOf(j));
            contentValues.put(DatabaseTables.SEVA, arrayList.get(i).getName());
            contentValues.put(DatabaseTables.COUNT, arrayList.get(i).getCount());
            try {
                if (databaseInstance.insertOrThrow(DatabaseTables.TB_SEVA_DETAILS, null, contentValues) > -1) {
                    Log.i(TAG, "User Inserted");
                } else {
                    Log.i(TAG, "User Not Inserted");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static ArrayList<SevaNondInput> getSevaHistory(Context context) {
        ArrayList<SevaNondInput> arrayList = new ArrayList<>();
        Cursor cursorRawQuery = getDatabaseInstance(context).rawQuery("SELECT * FROM sevanond order by seva_id desc limit 25", null);
        if (cursorRawQuery != null && cursorRawQuery.moveToFirst()) {
            do {
                SevaNondInput sevaNondInput = new SevaNondInput();
                sevaNondInput.setSeva_id(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(DatabaseTables.SEVA_ID)));
                sevaNondInput.setSevekariName(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("name")));
                sevaNondInput.setMobileNo(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.MOBILE_NO)));
                sevaNondInput.setDate(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.DATE)));
                sevaNondInput.setSevaDetails(getSevaDetails(context, sevaNondInput.getSeva_id()));
                arrayList.add(sevaNondInput);
            } while (cursorRawQuery.moveToNext());
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public static ArrayList<SevaDetail> getSevaDetails(Context context, int i) {
        ArrayList<SevaDetail> arrayList = new ArrayList<>();
        Cursor cursorRawQuery = getDatabaseInstance(context).rawQuery("SELECT * FROM sevadetails WHERE seva_id = " + i, null);
        if (cursorRawQuery != null && cursorRawQuery.moveToFirst()) {
            do {
                SevaDetail sevaDetail = new SevaDetail();
                sevaDetail.setName(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.SEVA)));
                sevaDetail.setCount(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.COUNT)));
                arrayList.add(sevaDetail);
            } while (cursorRawQuery.moveToNext());
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public static void insertAdhikrutSandesh(Context context, ArrayList<Message> arrayList) {
        SQLiteDatabase databaseInstance = getDatabaseInstance(context);
        for (int i = 0; i < arrayList.size(); i++) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(DatabaseTables.KEY_SId, arrayList.get(i).getNotification().getId());
            contentValues.put(DatabaseTables.KEY_STitle, arrayList.get(i).getNotification().getTitle());
            contentValues.put(DatabaseTables.KEY_SDescription, arrayList.get(i).getNotification().getDescription());
            contentValues.put(DatabaseTables.KEY_SCreatedat, arrayList.get(i).getNotification().getCreatedat());
            contentValues.put(DatabaseTables.KEY_SUpdatedat, arrayList.get(i).getNotification().getUpdatedat());
            contentValues.put(DatabaseTables.KEY_Sisdeleted, arrayList.get(i).getNotification().getIsdeleted());
            contentValues.put(DatabaseTables.KEY_SUrl, arrayList.get(i).getNotification().getUrl());
            contentValues.put(DatabaseTables.KEY_SSubtitle, arrayList.get(i).getNotification().getSubtitle());
            if (!TextUtils.isEmpty(arrayList.get(i).getNotification().getMediatype())) {
                contentValues.put(DatabaseTables.KEY_Smediatype, arrayList.get(i).getNotification().getMediatype());
            } else {
                contentValues.put(DatabaseTables.KEY_Smediatype, "text");
            }
            try {
                if (databaseInstance.insertOrThrow(DatabaseTables.TB_ADHIKRUT_SANDES, null, contentValues) > -1) {
                    Log.i(TAG, "User Inserted");
                } else {
                    Log.i(TAG, "User Not Inserted");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static ArrayList<Message> getAdhikrutMessages(Context context, int i) {
        ArrayList<Message> arrayList = new ArrayList<>();
        Cursor cursorRawQuery = getDatabaseInstance(context).rawQuery("SELECT * FROM tbl_adhikrut ORDER BY  SId DESC LIMIT 10 OFFSET " + (i * 10), null);
        if (cursorRawQuery != null && cursorRawQuery.moveToFirst()) {
            do {
                Message message = new Message();
                Notification notification = new Notification();
                notification.setId(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_SId)));
                notification.setTitle(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_STitle)));
                notification.setSubtitle(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_SSubtitle)));
                notification.setDescription(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_SDescription)));
                notification.setMediatype(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_Smediatype)));
                message.setNotification(notification);
                arrayList.add(message);
            } while (cursorRawQuery.moveToNext());
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public static long getMaxIdForAdhikrut(Context context) {
        long j;
        Cursor cursorRawQuery = getDatabaseInstance(context).rawQuery("SELECT MAX(SId) AS MaxValue FROM tbl_adhikrut", null);
        if (cursorRawQuery == null || !cursorRawQuery.moveToFirst()) {
            j = 0;
        } else {
            do {
                j = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("MaxValue"));
            } while (cursorRawQuery.moveToNext());
        }
        cursorRawQuery.close();
        return j;
    }

    public static void insertSanvar(Context context, ArrayList<Message> arrayList, String str) {
        SQLiteDatabase databaseInstance = getDatabaseInstance(context);
        for (int i = 0; i < arrayList.size(); i++) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(DatabaseTables.KEY_SId, arrayList.get(i).getNotification().getId());
            contentValues.put(DatabaseTables.KEY_STitle, arrayList.get(i).getNotification().getTitle());
            contentValues.put(DatabaseTables.KEY_SDescription, arrayList.get(i).getNotification().getDescription());
            contentValues.put(DatabaseTables.KEY_SCreatedat, arrayList.get(i).getNotification().getCreatedat());
            contentValues.put(DatabaseTables.KEY_SUpdatedat, arrayList.get(i).getNotification().getUpdatedat());
            contentValues.put(DatabaseTables.KEY_Sisdeleted, arrayList.get(i).getNotification().getIsdeleted());
            contentValues.put(DatabaseTables.KEY_SUrl, arrayList.get(i).getNotification().getUrl());
            contentValues.put(DatabaseTables.KEY_SSubtitle, arrayList.get(i).getNotification().getSubtitle());
            contentValues.put("type", str);
            if (!TextUtils.isEmpty(arrayList.get(i).getNotification().getMediatype())) {
                contentValues.put(DatabaseTables.KEY_Smediatype, arrayList.get(i).getNotification().getMediatype());
            } else {
                contentValues.put(DatabaseTables.KEY_Smediatype, "text");
            }
            contentValues.put(DatabaseTables.KEY_READ_STATUS, (Integer) 0);
            try {
                if (databaseInstance.insertWithOnConflict(DatabaseTables.TB_SANVAR, null, contentValues, 5) > -1) {
                    Log.i(TAG, " sanvar User Inserted");
                } else {
                    Log.i(TAG, "User Not Inserted");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static ArrayList<Message> getSanvarMessages(Context context, int i, String str) {
        ArrayList<Message> arrayList = new ArrayList<>();
        Cursor cursorRawQuery = getDatabaseInstance(context).rawQuery("SELECT * FROM tbl_sanvar WHERE type = '" + str + "' ORDER BY  " + DatabaseTables.KEY_SId + " DESC LIMIT 10 OFFSET " + (i * 10), null);
        if (cursorRawQuery != null && cursorRawQuery.moveToFirst()) {
            do {
                Message message = new Message();
                Notification notification = new Notification();
                notification.setId(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_SId)));
                notification.setTitle(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_STitle)));
                notification.setSubtitle(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_SSubtitle)));
                notification.setDescription(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_SDescription)));
                notification.setMediatype(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_Smediatype)));
                notification.setUrl(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_SUrl)));
                notification.setReadStatus(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_READ_STATUS)));
                notification.setType(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("type")));
                message.setNotification(notification);
                arrayList.add(message);
            } while (cursorRawQuery.moveToNext());
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public static long getMaxId(Context context, String str) {
        long j;
        Cursor cursorRawQuery = getDatabaseInstance(context).rawQuery("SELECT MAX(SId) AS MaxValue FROM tbl_sanvar WHERE type = '" + str + "'", null);
        if (cursorRawQuery == null || !cursorRawQuery.moveToFirst()) {
            j = 0;
        } else {
            do {
                j = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("MaxValue"));
            } while (cursorRawQuery.moveToNext());
        }
        cursorRawQuery.close();
        return j;
    }

    public static void insertNotification(Context context, ArrayList<Message> arrayList) {
        SQLiteDatabase databaseInstance = getDatabaseInstance(context);
        databaseInstance.beginTransaction();
        for (int i = 0; i < arrayList.size(); i++) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(DatabaseTables.ID, arrayList.get(i).getNotification().getId());
            contentValues.put(DatabaseTables.KEY_CHILD_ID, Integer.valueOf(arrayList.get(i).getNotification().getChildid()));
            contentValues.put(DatabaseTables.KEY_SCreatedat, arrayList.get(i).getNotification().getCreatedat());
            contentValues.put(DatabaseTables.KEY_SUpdatedat, arrayList.get(i).getNotification().getUpdatedat());
            contentValues.put("type", arrayList.get(i).getNotification().getType());
            try {
                long jInsertWithOnConflict = databaseInstance.insertWithOnConflict(DatabaseTables.TB_NOTIFICATION, null, contentValues, 5);
                if (jInsertWithOnConflict > -1) {
                    Log.i(TAG, "User Inserted" + jInsertWithOnConflict);
                    insertMessage(context, arrayList.get(i), arrayList.get(i).getNotification().getType());
                } else {
                    Log.i(TAG, "User Not Inserted");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        databaseInstance.setTransactionSuccessful();
        databaseInstance.endTransaction();
    }

    private static void insertMessage(Context context, Message message, String str) {
        SQLiteDatabase databaseInstance = getDatabaseInstance(context);
        ContentValues contentValues = new ContentValues();
        contentValues.put(DatabaseTables.KEY_SId, Integer.valueOf(message.getNotification().getChildid()));
        contentValues.put(DatabaseTables.KEY_STitle, message.getNotification().getTitle());
        contentValues.put(DatabaseTables.KEY_SDescription, message.getNotification().getDescription());
        contentValues.put(DatabaseTables.KEY_SCreatedat, message.getNotification().getCreatedat());
        contentValues.put(DatabaseTables.KEY_SUpdatedat, message.getNotification().getUpdatedat());
        contentValues.put(DatabaseTables.KEY_Sisdeleted, message.getNotification().getIsdeleted());
        contentValues.put(DatabaseTables.KEY_SUrl, message.getNotification().getUrl());
        contentValues.put(DatabaseTables.KEY_SSubtitle, message.getNotification().getSubtitle());
        contentValues.put("type", str);
        if (!TextUtils.isEmpty(message.getNotification().getMediatype())) {
            contentValues.put(DatabaseTables.KEY_Smediatype, message.getNotification().getMediatype());
        } else {
            contentValues.put(DatabaseTables.KEY_Smediatype, "text");
        }
        contentValues.put(DatabaseTables.KEY_READ_STATUS, (Integer) 0);
        try {
            if (databaseInstance.insertWithOnConflict(DatabaseTables.TB_SANVAR, null, contentValues, 5) > -1) {
                Log.i(TAG, "User Inserted");
            } else {
                Log.i(TAG, "User Not Inserted");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static ArrayList<Message> getNotificationMessages(Context context, int i) {
        ArrayList<Message> arrayList = new ArrayList<>();
        Cursor cursorRawQuery = getDatabaseInstance(context).rawQuery("SELECT T1.*, T2.* FROM tbl_notification T1 INNER JOIN tbl_sanvar T2 ON T1.childid = T2.SId ORDER BY  SCreatedat DESC ", null);
        if (cursorRawQuery != null && cursorRawQuery.moveToFirst()) {
            do {
                Message message = new Message();
                Notification notification = new Notification();
                notification.setId(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_SId)));
                notification.setTitle(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_STitle)));
                notification.setSubtitle(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_SSubtitle)));
                notification.setDescription(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_SDescription)));
                notification.setMediatype(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_Smediatype)));
                notification.setReadStatus(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_READ_STATUS)));
                notification.setType(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("type")));
                message.setNotification(notification);
                arrayList.add(message);
            } while (cursorRawQuery.moveToNext());
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public static int getUnreadMessages(Context context) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = getDatabaseInstance(context).rawQuery("SELECT T1.*, T2.* FROM tbl_notification T1 INNER JOIN tbl_sanvar T2 ON T1.childid = T2.SId WHERE read_status = 0", null);
        if (cursorRawQuery != null && cursorRawQuery.moveToFirst()) {
            do {
                Message message = new Message();
                Notification notification = new Notification();
                notification.setId(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DatabaseTables.KEY_SId)));
                message.setNotification(notification);
                arrayList.add(message);
            } while (cursorRawQuery.moveToNext());
        }
        cursorRawQuery.close();
        return arrayList.size();
    }

    public static boolean updateReadStatus(Context context, Message message) {
        SQLiteDatabase databaseInstance = getDatabaseInstance(context);
        ContentValues contentValues = new ContentValues();
        String[] strArr = {message.getNotification().getId(), message.getNotification().getType()};
        contentValues.put(DatabaseTables.KEY_READ_STATUS, (Integer) 1);
        if (databaseInstance.update(DatabaseTables.TB_SANVAR, contentValues, "SId =? AND type =?", strArr) > 0) {
            Log.i(TAG + " updateUser", "User Updated Successfully");
            return true;
        }
        Log.i(TAG + " updateUser", "User Updated Not Successfully");
        return false;
    }
}
