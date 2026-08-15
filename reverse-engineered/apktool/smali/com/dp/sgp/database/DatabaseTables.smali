.class public Lcom/dp/sgp/database/DatabaseTables;
.super Ljava/lang/Object;
.source "DatabaseTables.java"


# static fields
.field public static final AMAVASYA:Ljava/lang/String; = "Amavasya"

.field public static final CAL_DATE:Ljava/lang/String; = "Cal_Date"

.field public static final CHANDRA_RASHI:Ljava/lang/String; = "ChandraRashi"

.field public static final CHATURTHI:Ljava/lang/String; = "Chaturthi"

.field public static final COUNT:Ljava/lang/String; = "count"

.field private static final CREATE_SU_VICHAR:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS suvichar(day_id INTEGER PRIMARY KEY, suvichar TEXT);"

.field private static final CREATE_TB_ADHIKRUT_SANDESH:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS tbl_adhikrut (ID INTEGER PRIMARY KEY AUTOINCREMENT, SId INTEGER NOT NULL UNIQUE, STitle TEXT,SDescription TEXT , SCreatedat TEXT,SUpdatedat TEXT, Sisdeleted TEXT,SUrl TEXT,SSubtitle TEXT,type TEXT, read_status INTEGER,Smediatype TEXT )"

.field public static final CREATE_TB_DATE_MASTER:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS  tbl_Date_Master(ID INTEGER PRIMARY KEY, Year NUMERIC , Month NUMERIC , Day NUMERIC , Cal_Date TEXT , Marathi_Date TEXT , Tithi TEXT , Var TEXT , Nakshatra TEXT , Yog TEXT , Karan TEXT , ChandraRashi TEXT , ShubhaShubh TEXT , image_name TEXT , Day_Special TEXT , San_Utsav TEXT );"

.field private static final CREATE_TB_DPU:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS tbl_DindoriPranitUtsav(ID INTEGER PRIMARY KEY,Year TEXT, Description TEXT);"

.field public static final CREATE_TB_FESTIVAL_DETAILS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS  tbl_Festival_Master(ID INTEGER PRIMARY KEY , Year NUMERIC , Month NUMERIC , Month_Name TEXT , Muhurta TEXT );"

.field private static final CREATE_TB_NOTIFICATION:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS tbl_notification (ID INTEGER PRIMARY KEY AUTOINCREMENT, childid INTEGER NOT NULL UNIQUE, SCreatedat TEXT,SUpdatedat TEXT, type TEXT )"

.field private static final CREATE_TB_RAHUKAL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS Rahukal(Var TEXT, Rahukal TEXT);"

.field private static final CREATE_TB_SANVAR:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS tbl_sanvar (ID INTEGER PRIMARY KEY AUTOINCREMENT, SId INTEGER NOT NULL UNIQUE, STitle TEXT,SDescription TEXT , SCreatedat TEXT,SUpdatedat TEXT, Sisdeleted TEXT,SUrl TEXT,SSubtitle TEXT,type TEXT, read_status INTEGER,Smediatype TEXT )"

.field private static final CREATE_TB_SEVA_DETAILS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sevadetails(ID INTEGER PRIMARY KEY, seva_id INTEGER, type TEXT, seva TEXT, count INTEGER );"

.field private static final CREATE_TB_SEVA_NOND:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sevanond(seva_id INTEGER PRIMARY KEY,type TEXT, name TEXT, mobileNo TEXT, date TEXT );"

.field public static final DATABASE_NAME:Ljava/lang/String; = "calenderdb230"

.field public static final DATABASE_PATH:Ljava/lang/String; = "/data/data/com.dp.sgp/databases/"

.field public static final DATABASE_VERSION:I = 0x10

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DAY:Ljava/lang/String; = "Day"

.field public static final DAY_ID:Ljava/lang/String; = "day_id"

.field public static final DAY_SPECIAL:Ljava/lang/String; = "Day_Special"

.field public static final DESCRIPTION:Ljava/lang/String; = "Description"

.field public static final ID:Ljava/lang/String; = "ID"

.field public static final IMAGE_NAME:Ljava/lang/String; = "image_name"

.field public static final KARAN:Ljava/lang/String; = "Karan"

.field public static final KEY_CHILD_ID:Ljava/lang/String; = "childid"

.field public static final KEY_NOTIFICATION_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_READ_STATUS:Ljava/lang/String; = "read_status"

.field public static final KEY_SCreatedat:Ljava/lang/String; = "SCreatedat"

.field public static final KEY_SDescription:Ljava/lang/String; = "SDescription"

.field public static final KEY_SId:Ljava/lang/String; = "SId"

.field public static final KEY_SSubtitle:Ljava/lang/String; = "SSubtitle"

.field public static final KEY_STitle:Ljava/lang/String; = "STitle"

.field public static final KEY_SUpdatedat:Ljava/lang/String; = "SUpdatedat"

.field public static final KEY_SUrl:Ljava/lang/String; = "SUrl"

.field public static final KEY_Sisdeleted:Ljava/lang/String; = "Sisdeleted"

.field public static final KEY_Smediatype:Ljava/lang/String; = "Smediatype"

.field public static final MARATHI_DATE:Ljava/lang/String; = "Marathi_Date"

.field public static final MEETING:Ljava/lang/String; = "Meeting"

.field public static final MOBILE_NO:Ljava/lang/String; = "mobileNo"

.field public static final MONTH:Ljava/lang/String; = "Month"

.field public static final MONTH_NAME:Ljava/lang/String; = "Month_Name"

.field public static final MUHURTA:Ljava/lang/String; = "Muhurta"

.field public static final NAKSHATRA:Ljava/lang/String; = "Nakshatra"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final OLD_DATABASE_NAME:Ljava/lang/String; = "calenderdb222"

.field public static final POURNIMA:Ljava/lang/String; = "Pournima"

.field public static final RAHUKAL:Ljava/lang/String; = "Rahukal"

.field public static final SAN_UTSAV:Ljava/lang/String; = "San_Utsav"

.field public static final SAPTAH:Ljava/lang/String; = "Saptah"

.field public static final SATYANARAYAN_PUJA:Ljava/lang/String; = "SatyanarayanPuja"

.field public static final SEVA:Ljava/lang/String; = "seva"

.field public static final SEVA_ID:Ljava/lang/String; = "seva_id"

.field public static final SHUBHA_SHUBH:Ljava/lang/String; = "ShubhaShubh"

.field public static final SUVICHAR:Ljava/lang/String; = "suvichar"

.field private static final TAG:Ljava/lang/String; = "DatabaseTables"

.field public static final TB_ADHIKRUT_SANDES:Ljava/lang/String; = "tbl_adhikrut"

.field public static final TB_DATE_MASTER:Ljava/lang/String; = "tbl_Date_Master"

.field public static final TB_DPU:Ljava/lang/String; = "tbl_DindoriPranitUtsav"

.field public static final TB_FESTIVAL_DETAILS:Ljava/lang/String; = "tbl_Festival_Master"

.field public static final TB_NOTIFICATION:Ljava/lang/String; = "tbl_notification"

.field public static final TB_RAHUKAL:Ljava/lang/String; = "Rahukal"

.field public static final TB_SANVAR:Ljava/lang/String; = "tbl_sanvar"

.field public static final TB_SEVA_DETAILS:Ljava/lang/String; = "sevadetails"

.field public static final TB_SEVA_NOND:Ljava/lang/String; = "sevanond"

.field public static final TB_SUVICHAR:Ljava/lang/String; = "suvichar"

.field public static final TITHI:Ljava/lang/String; = "Tithi"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VAR:Ljava/lang/String; = "Var"

.field public static final YEAR:Ljava/lang/String; = "Year"

.field public static final YOG:Ljava/lang/String; = "Yog"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS  tbl_Date_Master(ID INTEGER PRIMARY KEY, Year NUMERIC , Month NUMERIC , Day NUMERIC , Cal_Date TEXT , Marathi_Date TEXT , Tithi TEXT , Var TEXT , Nakshatra TEXT , Yog TEXT , Karan TEXT , ChandraRashi TEXT , ShubhaShubh TEXT , image_name TEXT , Day_Special TEXT , San_Utsav TEXT );"

    .line 234
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS  tbl_Festival_Master(ID INTEGER PRIMARY KEY , Year NUMERIC , Month NUMERIC , Month_Name TEXT , Muhurta TEXT );"

    .line 235
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS suvichar(day_id INTEGER PRIMARY KEY, suvichar TEXT);"

    .line 236
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_DindoriPranitUtsav(ID INTEGER PRIMARY KEY,Year TEXT, Description TEXT);"

    .line 237
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS Rahukal(Var TEXT, Rahukal TEXT);"

    .line 238
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS sevanond(seva_id INTEGER PRIMARY KEY,type TEXT, name TEXT, mobileNo TEXT, date TEXT );"

    .line 239
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS sevadetails(ID INTEGER PRIMARY KEY, seva_id INTEGER, type TEXT, seva TEXT, count INTEGER );"

    .line 240
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_sanvar (ID INTEGER PRIMARY KEY AUTOINCREMENT, SId INTEGER NOT NULL UNIQUE, STitle TEXT,SDescription TEXT , SCreatedat TEXT,SUpdatedat TEXT, Sisdeleted TEXT,SUrl TEXT,SSubtitle TEXT,type TEXT, read_status INTEGER,Smediatype TEXT )"

    .line 241
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_adhikrut (ID INTEGER PRIMARY KEY AUTOINCREMENT, SId INTEGER NOT NULL UNIQUE, STitle TEXT,SDescription TEXT , SCreatedat TEXT,SUpdatedat TEXT, Sisdeleted TEXT,SUrl TEXT,SSubtitle TEXT,type TEXT, read_status INTEGER,Smediatype TEXT )"

    .line 242
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_notification (ID INTEGER PRIMARY KEY AUTOINCREMENT, childid INTEGER NOT NULL UNIQUE, SCreatedat TEXT,SUpdatedat TEXT, type TEXT )"

    .line 243
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 249
    sget-object v0, Lcom/dp/sgp/database/DatabaseTables;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", which will destroy all old data"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "DROP TABLE IF EXISTS tbl_Date_Master"

    .line 253
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "DROP TABLE IF EXISTS tbl_Festival_Master"

    .line 254
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "DROP TABLE IF EXISTS suvichar"

    .line 255
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseTables;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
