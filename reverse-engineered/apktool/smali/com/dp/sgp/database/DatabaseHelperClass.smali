.class public Lcom/dp/sgp/database/DatabaseHelperClass;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelperClass.java"


# static fields
.field public static final COMPLETEDON:Ljava/lang/String; = "completed_on"

.field public static final COMPLETEDPARAYAN:Ljava/lang/String; = "complete_prayan"

.field private static final CREATE_TABLE:Ljava/lang/String; = "create table SwamiCharitra(id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT NOT NULL,description TEXT NOT NULL,complete_prayan TEXT NOT NULL,status TEXT NOT NULL,current_adhyay TEXT NOT NULL,completed_on TEXT NOT NULL,image TEXT NOT NULL);"

.field public static final CURRENTADHYAY:Ljava/lang/String; = "current_adhyay"

.field private static final DATABASE_NAME:Ljava/lang/String; = "swamicharitra_database"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DESC:Ljava/lang/String; = "description"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IMAGE:Ljava/lang/String; = "image"

.field public static final STATUS:Ljava/lang/String; = "status"

.field private static final TABLE_NAME:Ljava/lang/String; = "SwamiCharitra"

.field public static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "swamicharitra_database"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 44
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public addEmployee(Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;)V
    .locals 3

    .line 60
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getComplete_prayan()Ljava/lang/String;

    move-result-object v1

    const-string v2, "complete_prayan"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getCurrent_adhyay()Ljava/lang/String;

    move-result-object v1

    const-string v2, "current_adhyay"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getCompleted_on()Ljava/lang/String;

    move-result-object v1

    const-string v2, "completed_on"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getImage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/dp/sgp/database/DatabaseHelperClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/database/DatabaseHelperClass;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SwamiCharitra"

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public deleteAll()V
    .locals 3

    .line 128
    invoke-virtual {p0}, Lcom/dp/sgp/database/DatabaseHelperClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/database/DatabaseHelperClass;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SwamiCharitra"

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteEmployee(I)V
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/dp/sgp/database/DatabaseHelperClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/database/DatabaseHelperClass;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "SwamiCharitra"

    const-string v2, "id = ? "

    .line 122
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getEmployeeList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/dp/sgp/database/DatabaseHelperClass;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/database/DatabaseHelperClass;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/dp/sgp/database/DatabaseHelperClass;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "select * from SwamiCharitra"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 79
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    .line 80
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 81
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 82
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    .line 83
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    .line 84
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    .line 85
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    .line 86
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 88
    new-instance v10, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-direct {v10}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;-><init>()V

    .line 89
    invoke-virtual {v10, v2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setIds(I)V

    .line 90
    invoke-virtual {v10, v3}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setTitle(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v10, v4}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setDescription(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v10, v5}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setComplete_prayan(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v10, v6}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v10, v7}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCurrent_adhyay(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v10, v8}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCompleted_on(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v10, v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setImage(Ljava/lang/String;)V

    .line 97
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table SwamiCharitra(id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT NOT NULL,description TEXT NOT NULL,complete_prayan TEXT NOT NULL,status TEXT NOT NULL,current_adhyay TEXT NOT NULL,completed_on TEXT NOT NULL,image TEXT NOT NULL);"

    .line 49
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, " DROP TABLE IF EXISTS SwamiCharitra"

    .line 54
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/dp/sgp/database/DatabaseHelperClass;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public updateEmployee(Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;)V
    .locals 4

    .line 107
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getComplete_prayan()Ljava/lang/String;

    move-result-object v1

    const-string v2, "complete_prayan"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getCurrent_adhyay()Ljava/lang/String;

    move-result-object v1

    const-string v2, "current_adhyay"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getCompleted_on()Ljava/lang/String;

    move-result-object v1

    const-string v2, "completed_on"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getImage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/dp/sgp/database/DatabaseHelperClass;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/dp/sgp/database/DatabaseHelperClass;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getIds()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "SwamiCharitra"

    const-string v3, "id = ?"

    .line 116
    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
