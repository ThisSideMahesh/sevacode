package com.dp.sgp.database;

import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class DatabaseTables {
    public static final String AMAVASYA = "Amavasya";
    public static final String CAL_DATE = "Cal_Date";
    public static final String CHANDRA_RASHI = "ChandraRashi";
    public static final String CHATURTHI = "Chaturthi";
    public static final String COUNT = "count";
    private static final String CREATE_SU_VICHAR = "CREATE TABLE IF NOT EXISTS suvichar(day_id INTEGER PRIMARY KEY, suvichar TEXT);";
    private static final String CREATE_TB_ADHIKRUT_SANDESH = "CREATE TABLE IF NOT EXISTS tbl_adhikrut (ID INTEGER PRIMARY KEY AUTOINCREMENT, SId INTEGER NOT NULL UNIQUE, STitle TEXT,SDescription TEXT , SCreatedat TEXT,SUpdatedat TEXT, Sisdeleted TEXT,SUrl TEXT,SSubtitle TEXT,type TEXT, read_status INTEGER,Smediatype TEXT )";
    public static final String CREATE_TB_DATE_MASTER = "CREATE TABLE IF NOT EXISTS  tbl_Date_Master(ID INTEGER PRIMARY KEY, Year NUMERIC , Month NUMERIC , Day NUMERIC , Cal_Date TEXT , Marathi_Date TEXT , Tithi TEXT , Var TEXT , Nakshatra TEXT , Yog TEXT , Karan TEXT , ChandraRashi TEXT , ShubhaShubh TEXT , image_name TEXT , Day_Special TEXT , San_Utsav TEXT );";
    private static final String CREATE_TB_DPU = "CREATE TABLE IF NOT EXISTS tbl_DindoriPranitUtsav(ID INTEGER PRIMARY KEY,Year TEXT, Description TEXT);";
    public static final String CREATE_TB_FESTIVAL_DETAILS = "CREATE TABLE IF NOT EXISTS  tbl_Festival_Master(ID INTEGER PRIMARY KEY , Year NUMERIC , Month NUMERIC , Month_Name TEXT , Muhurta TEXT );";
    private static final String CREATE_TB_NOTIFICATION = "CREATE TABLE IF NOT EXISTS tbl_notification (ID INTEGER PRIMARY KEY AUTOINCREMENT, childid INTEGER NOT NULL UNIQUE, SCreatedat TEXT,SUpdatedat TEXT, type TEXT )";
    private static final String CREATE_TB_RAHUKAL = "CREATE TABLE IF NOT EXISTS Rahukal(Var TEXT, Rahukal TEXT);";
    private static final String CREATE_TB_SANVAR = "CREATE TABLE IF NOT EXISTS tbl_sanvar (ID INTEGER PRIMARY KEY AUTOINCREMENT, SId INTEGER NOT NULL UNIQUE, STitle TEXT,SDescription TEXT , SCreatedat TEXT,SUpdatedat TEXT, Sisdeleted TEXT,SUrl TEXT,SSubtitle TEXT,type TEXT, read_status INTEGER,Smediatype TEXT )";
    private static final String CREATE_TB_SEVA_DETAILS = "CREATE TABLE IF NOT EXISTS sevadetails(ID INTEGER PRIMARY KEY, seva_id INTEGER, type TEXT, seva TEXT, count INTEGER );";
    private static final String CREATE_TB_SEVA_NOND = "CREATE TABLE IF NOT EXISTS sevanond(seva_id INTEGER PRIMARY KEY,type TEXT, name TEXT, mobileNo TEXT, date TEXT );";
    public static final String DATABASE_NAME = "calenderdb230";
    public static final String DATABASE_PATH = "/data/data/com.dp.sgp/databases/";
    public static final int DATABASE_VERSION = 16;
    public static final String DATE = "date";
    public static final String DAY = "Day";
    public static final String DAY_ID = "day_id";
    public static final String DAY_SPECIAL = "Day_Special";
    public static final String DESCRIPTION = "Description";
    public static final String ID = "ID";
    public static final String IMAGE_NAME = "image_name";
    public static final String KARAN = "Karan";
    public static final String KEY_CHILD_ID = "childid";
    public static final String KEY_NOTIFICATION_TYPE = "type";
    public static final String KEY_READ_STATUS = "read_status";
    public static final String KEY_SCreatedat = "SCreatedat";
    public static final String KEY_SDescription = "SDescription";
    public static final String KEY_SId = "SId";
    public static final String KEY_SSubtitle = "SSubtitle";
    public static final String KEY_STitle = "STitle";
    public static final String KEY_SUpdatedat = "SUpdatedat";
    public static final String KEY_SUrl = "SUrl";
    public static final String KEY_Sisdeleted = "Sisdeleted";
    public static final String KEY_Smediatype = "Smediatype";
    public static final String MARATHI_DATE = "Marathi_Date";
    public static final String MEETING = "Meeting";
    public static final String MOBILE_NO = "mobileNo";
    public static final String MONTH = "Month";
    public static final String MONTH_NAME = "Month_Name";
    public static final String MUHURTA = "Muhurta";
    public static final String NAKSHATRA = "Nakshatra";
    public static final String NAME = "name";
    public static final String OLD_DATABASE_NAME = "calenderdb222";
    public static final String POURNIMA = "Pournima";
    public static final String RAHUKAL = "Rahukal";
    public static final String SAN_UTSAV = "San_Utsav";
    public static final String SAPTAH = "Saptah";
    public static final String SATYANARAYAN_PUJA = "SatyanarayanPuja";
    public static final String SEVA = "seva";
    public static final String SEVA_ID = "seva_id";
    public static final String SHUBHA_SHUBH = "ShubhaShubh";
    public static final String SUVICHAR = "suvichar";
    private static final String TAG = "DatabaseTables";
    public static final String TB_ADHIKRUT_SANDES = "tbl_adhikrut";
    public static final String TB_DATE_MASTER = "tbl_Date_Master";
    public static final String TB_DPU = "tbl_DindoriPranitUtsav";
    public static final String TB_FESTIVAL_DETAILS = "tbl_Festival_Master";
    public static final String TB_NOTIFICATION = "tbl_notification";
    public static final String TB_RAHUKAL = "Rahukal";
    public static final String TB_SANVAR = "tbl_sanvar";
    public static final String TB_SEVA_DETAILS = "sevadetails";
    public static final String TB_SEVA_NOND = "sevanond";
    public static final String TB_SUVICHAR = "suvichar";
    public static final String TITHI = "Tithi";
    public static final String TYPE = "type";
    public static final String VAR = "Var";
    public static final String YEAR = "Year";
    public static final String YOG = "Yog";

    public static void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(CREATE_TB_DATE_MASTER);
        sQLiteDatabase.execSQL(CREATE_TB_FESTIVAL_DETAILS);
        sQLiteDatabase.execSQL(CREATE_SU_VICHAR);
        sQLiteDatabase.execSQL(CREATE_TB_DPU);
        sQLiteDatabase.execSQL(CREATE_TB_RAHUKAL);
        sQLiteDatabase.execSQL(CREATE_TB_SEVA_NOND);
        sQLiteDatabase.execSQL(CREATE_TB_SEVA_DETAILS);
        sQLiteDatabase.execSQL(CREATE_TB_SANVAR);
        sQLiteDatabase.execSQL(CREATE_TB_ADHIKRUT_SANDESH);
        sQLiteDatabase.execSQL(CREATE_TB_NOTIFICATION);
    }

    public static void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.w(TAG, "Upgrading database from version " + i + " to " + i2 + ", which will destroy all old data");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS tbl_Date_Master");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS tbl_Festival_Master");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS suvichar");
        onCreate(sQLiteDatabase);
    }
}
