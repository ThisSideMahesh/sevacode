.class public Lcom/dp/sgp/database/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# static fields
.field public static final MESSAGE_TYPE_ADHIKRUT:Ljava/lang/String; = "adkrutsandesh"

.field public static final MESSAGE_TYPE_SANVAR:Ljava/lang/String; = "sanvar"

.field private static final TAG:Ljava/lang/String; = "DatabaseUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdhikrutMessages(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/calendar/Message;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM tbl_adhikrut ORDER BY  SId DESC LIMIT 10 OFFSET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 p1, p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 397
    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 399
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 401
    :cond_0
    new-instance p1, Lcom/dp/sgp/calendar/Message;

    invoke-direct {p1}, Lcom/dp/sgp/calendar/Message;-><init>()V

    .line 402
    new-instance v1, Lcom/dp/sgp/calendar/Notification;

    invoke-direct {v1}, Lcom/dp/sgp/calendar/Notification;-><init>()V

    const-string v2, "SId"

    .line 404
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/calendar/Notification;->setId(Ljava/lang/String;)V

    const-string v2, "STitle"

    .line 405
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/calendar/Notification;->setTitle(Ljava/lang/String;)V

    const-string v2, "SSubtitle"

    .line 406
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/calendar/Notification;->setSubtitle(Ljava/lang/String;)V

    const-string v2, "SDescription"

    .line 407
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/calendar/Notification;->setDescription(Ljava/lang/String;)V

    const-string v2, "Smediatype"

    .line 408
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/calendar/Notification;->setMediatype(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1, v1}, Lcom/dp/sgp/calendar/Message;->setNotification(Lcom/dp/sgp/calendar/Notification;)V

    .line 411
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    .line 415
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getAllDayData(Landroid/content/Context;III)Lcom/dp/sgp/calendar/CalenderData;
    .locals 4

    const-string v0, "Rahukal"

    .line 38
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 39
    new-instance v1, Lcom/dp/sgp/calendar/CalenderData;

    invoke-direct {v1}, Lcom/dp/sgp/calendar/CalenderData;-><init>()V

    .line 43
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT T1.*, T2.suvichar, T3.Rahukal FROM tbl_Date_Master T1 INNER JOIN suvichar T2 ON T1.Day = T2.day_id INNER JOIN Rahukal T3 ON T1.Var = T3.Var WHERE Year="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " and MOnth="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " and Day="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    sget-object p2, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 47
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 49
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "Tithi"

    .line 51
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/calendar/CalenderData;->setTithi(Ljava/lang/String;)V

    const-string p1, "Var"

    .line 52
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/calendar/CalenderData;->setVar(Ljava/lang/String;)V

    const-string p1, "Nakshatra"

    .line 53
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/calendar/CalenderData;->setNakshatra(Ljava/lang/String;)V

    const-string p1, "Yog"

    .line 54
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/calendar/CalenderData;->setYog(Ljava/lang/String;)V

    const-string p1, "Karan"

    .line 55
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/calendar/CalenderData;->setKaran(Ljava/lang/String;)V

    const-string p1, "ChandraRashi"

    .line 56
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/calendar/CalenderData;->setChangraRashi(Ljava/lang/String;)V

    .line 57
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/calendar/CalenderData;->setRahukal(Ljava/lang/String;)V

    const-string p1, "ShubhaShubh"

    .line 58
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/calendar/CalenderData;->setShubhashubh(Ljava/lang/String;)V

    const-string p1, "Day_Special"

    .line 59
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/calendar/CalenderData;->setEvent(Ljava/lang/String;)V

    const-string p1, "San_Utsav"

    .line 60
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/calendar/CalenderData;->setDaySpecial(Ljava/lang/String;)V

    const-string p1, "Marathi_Date"

    .line 61
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/calendar/CalenderData;->setDay(Ljava/lang/String;)V

    const-string p1, "suvichar"

    .line 62
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/calendar/CalenderData;->setSuvichar(Ljava/lang/String;)V

    .line 63
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/calendar/CalenderData;->setRahukal(Ljava/lang/String;)V

    .line 65
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static getDPU(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 139
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, ""

    .line 144
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM tbl_DindoriPranitUtsav WHERE Year = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    sget-object v1, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 150
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 152
    :cond_0
    new-instance p1, Lcom/dp/sgp/calendar/CalenderData;

    invoke-direct {p1}, Lcom/dp/sgp/calendar/CalenderData;-><init>()V

    const-string v1, "Description"

    .line 153
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/dp/sgp/calendar/CalenderData;->setEvent(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    .line 158
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 30
    invoke-static {}, Lcom/dp/sgp/database/DatabaseManager;->getInstance()Lcom/dp/sgp/database/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dp/sgp/database/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    .line 531
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT MAX(SId) AS MaxValue FROM tbl_sanvar WHERE type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 536
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "MaxValue"

    .line 539
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 541
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 544
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0
.end method

.method public static getMaxIdForAdhikrut(Landroid/content/Context;)J
    .locals 3

    .line 425
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "SELECT MAX(SId) AS MaxValue FROM tbl_adhikrut"

    const/4 v1, 0x0

    .line 428
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 430
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "MaxValue"

    .line 433
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 435
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 438
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0
.end method

.method public static getMuhurta(Landroid/content/Context;II)Lcom/dp/sgp/calendar/CalenderData;
    .locals 3

    .line 79
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 80
    new-instance v0, Lcom/dp/sgp/calendar/CalenderData;

    invoke-direct {v0}, Lcom/dp/sgp/calendar/CalenderData;-><init>()V

    .line 84
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM tbl_Festival_Master WHERE Year = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "Month"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    sget-object p2, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 88
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "Muhurta"

    .line 92
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/dp/sgp/calendar/CalenderData;->setEvent(Ljava/lang/String;)V

    .line 94
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    .line 96
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getNotificationMessages(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/calendar/Message;",
            ">;"
        }
    .end annotation

    .line 657
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 658
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "SELECT T1.*, T2.* FROM tbl_notification T1 INNER JOIN tbl_sanvar T2 ON T1.childid = T2.SId ORDER BY  SCreatedat DESC "

    const/4 v1, 0x0

    .line 662
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 664
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    :cond_0
    new-instance v0, Lcom/dp/sgp/calendar/Message;

    invoke-direct {v0}, Lcom/dp/sgp/calendar/Message;-><init>()V

    .line 667
    new-instance v1, Lcom/dp/sgp/calendar/Notification;

    invoke-direct {v1}, Lcom/dp/sgp/calendar/Notification;-><init>()V

    const-string v2, "SId"

    .line 669
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/calendar/Notification;->setId(Ljava/lang/String;)V

    const-string v2, "STitle"

    .line 670
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/calendar/Notification;->setTitle(Ljava/lang/String;)V

    const-string v2, "SSubtitle"

    .line 671
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/calendar/Notification;->setSubtitle(Ljava/lang/String;)V

    const-string v2, "SDescription"

    .line 672
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/calendar/Notification;->setDescription(Ljava/lang/String;)V

    const-string v2, "Smediatype"

    .line 673
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/calendar/Notification;->setMediatype(Ljava/lang/String;)V

    const-string v2, "read_status"

    .line 675
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/calendar/Notification;->setReadStatus(I)V

    const-string v2, "type"

    .line 676
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/calendar/Notification;->setType(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0, v1}, Lcom/dp/sgp/calendar/Message;->setNotification(Lcom/dp/sgp/calendar/Notification;)V

    .line 679
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1
.end method

.method public static getSanvar(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4

    const-string v0, "San_Utsav"

    const-string v1, ""

    .line 107
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 112
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT Marathi_Date,  San_Utsav FROM tbl_Date_Master WHERE Year="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " and Month="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " !=\'\' ORDER BY "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Day"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    sget-object p2, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 116
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 118
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    :cond_0
    new-instance p1, Lcom/dp/sgp/calendar/CalenderData;

    invoke-direct {p1}, Lcom/dp/sgp/calendar/CalenderData;-><init>()V

    const-string p2, "Marathi_Date"

    .line 121
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/dp/sgp/calendar/CalenderData;->setDay(Ljava/lang/String;)V

    .line 122
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/dp/sgp/calendar/CalenderData;->setEvent(Ljava/lang/String;)V

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "- "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    .line 128
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static getSanvarMessages(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/calendar/Message;",
            ">;"
        }
    .end annotation

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM tbl_sanvar WHERE type = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\' ORDER BY  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "SId"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " DESC LIMIT 10 OFFSET "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    mul-int/lit8 p1, p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 500
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 502
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 504
    :cond_0
    new-instance p1, Lcom/dp/sgp/calendar/Message;

    invoke-direct {p1}, Lcom/dp/sgp/calendar/Message;-><init>()V

    .line 505
    new-instance p2, Lcom/dp/sgp/calendar/Notification;

    invoke-direct {p2}, Lcom/dp/sgp/calendar/Notification;-><init>()V

    .line 507
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/dp/sgp/calendar/Notification;->setId(Ljava/lang/String;)V

    const-string v2, "STitle"

    .line 508
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/dp/sgp/calendar/Notification;->setTitle(Ljava/lang/String;)V

    const-string v2, "SSubtitle"

    .line 509
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/dp/sgp/calendar/Notification;->setSubtitle(Ljava/lang/String;)V

    const-string v2, "SDescription"

    .line 510
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/dp/sgp/calendar/Notification;->setDescription(Ljava/lang/String;)V

    const-string v2, "Smediatype"

    .line 511
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/dp/sgp/calendar/Notification;->setMediatype(Ljava/lang/String;)V

    const-string v2, "SUrl"

    .line 512
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/dp/sgp/calendar/Notification;->setUrl(Ljava/lang/String;)V

    const-string v2, "read_status"

    .line 513
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/dp/sgp/calendar/Notification;->setReadStatus(I)V

    const-string v2, "type"

    .line 514
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/dp/sgp/calendar/Notification;->setType(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1, p2}, Lcom/dp/sgp/calendar/Message;->setNotification(Lcom/dp/sgp/calendar/Notification;)V

    .line 517
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    .line 521
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getSevaDetails(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/Model/SevaDetail;",
            ">;"
        }
    .end annotation

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM sevadetails WHERE seva_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 322
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 324
    :cond_0
    new-instance p1, Lcom/dp/sgp/Model/SevaDetail;

    invoke-direct {p1}, Lcom/dp/sgp/Model/SevaDetail;-><init>()V

    const-string v1, "seva"

    .line 326
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/dp/sgp/Model/SevaDetail;->setName(Ljava/lang/String;)V

    const-string v1, "count"

    .line 327
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/dp/sgp/Model/SevaDetail;->setCount(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    .line 335
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getSevaHistory(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/Model/SevaNondInput;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT * FROM sevanond order by seva_id desc limit 25"

    const/4 v3, 0x0

    .line 288
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    :cond_0
    new-instance v2, Lcom/dp/sgp/Model/SevaNondInput;

    invoke-direct {v2}, Lcom/dp/sgp/Model/SevaNondInput;-><init>()V

    const-string v3, "seva_id"

    .line 294
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dp/sgp/Model/SevaNondInput;->setSeva_id(I)V

    const-string v3, "name"

    .line 295
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dp/sgp/Model/SevaNondInput;->setSevekariName(Ljava/lang/String;)V

    const-string v3, "mobileNo"

    .line 296
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dp/sgp/Model/SevaNondInput;->setMobileNo(Ljava/lang/String;)V

    const-string v3, "date"

    .line 297
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dp/sgp/Model/SevaNondInput;->setDate(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2}, Lcom/dp/sgp/Model/SevaNondInput;->getSeva_id()I

    move-result v3

    invoke-static {p0, v3}, Lcom/dp/sgp/database/DatabaseUtils;->getSevaDetails(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dp/sgp/Model/SevaNondInput;->setSevaDetails(Ljava/util/ArrayList;)V

    .line 301
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getShubhaShubh(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 169
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 174
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT Marathi_Date,  ShubhaShubh FROM tbl_Date_Master WHERE Year="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " and Month="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  ORDER BY "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Day"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    sget-object p2, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 178
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 180
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    :cond_0
    new-instance p1, Lcom/dp/sgp/calendar/CalenderData;

    invoke-direct {p1}, Lcom/dp/sgp/calendar/CalenderData;-><init>()V

    const-string p2, "Marathi_Date"

    .line 183
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/dp/sgp/calendar/CalenderData;->setDay(Ljava/lang/String;)V

    const-string p2, "ShubhaShubh"

    .line 184
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/dp/sgp/calendar/CalenderData;->setEvent(Ljava/lang/String;)V

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "- "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    .line 190
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getUnreadMessages(Landroid/content/Context;)I
    .locals 4

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 693
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v1, "SELECT T1.*, T2.* FROM tbl_notification T1 INNER JOIN tbl_sanvar T2 ON T1.childid = T2.SId WHERE read_status = 0"

    const/4 v2, 0x0

    .line 696
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 698
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    :cond_0
    new-instance v1, Lcom/dp/sgp/calendar/Message;

    invoke-direct {v1}, Lcom/dp/sgp/calendar/Message;-><init>()V

    .line 701
    new-instance v2, Lcom/dp/sgp/calendar/Notification;

    invoke-direct {v2}, Lcom/dp/sgp/calendar/Notification;-><init>()V

    const-string v3, "SId"

    .line 703
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dp/sgp/calendar/Notification;->setId(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v1, v2}, Lcom/dp/sgp/calendar/Message;->setNotification(Lcom/dp/sgp/calendar/Notification;)V

    .line 706
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 714
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public static insertAdhikrutSandesh(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/calendar/Message;",
            ">;)V"
        }
    .end annotation

    .line 345
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    .line 347
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 349
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 352
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Notification;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SId"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Notification;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "STitle"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Notification;->getDescription()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SDescription"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Notification;->getCreatedat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SCreatedat"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Notification;->getUpdatedat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUpdatedat"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Notification;->getIsdeleted()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sisdeleted"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Notification;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUrl"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Notification;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSubtitle"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Notification;->getMediatype()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Smediatype"

    if-nez v2, :cond_0

    .line 361
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Notification;->getMediatype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, "text"

    .line 363
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_0
    const-string v2, "tbl_adhikrut"

    const/4 v3, 0x0

    .line 369
    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 374
    sget-object v1, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    const-string v2, "User Inserted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 378
    :cond_1
    sget-object v1, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    const-string v2, "User Not Inserted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 383
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private static insertMessage(Landroid/content/Context;Lcom/dp/sgp/calendar/Message;Ljava/lang/String;)V
    .locals 3

    .line 596
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 598
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 601
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/Notification;->getChildid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/Notification;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "STitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/Notification;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDescription"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/Notification;->getCreatedat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCreatedat"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/Notification;->getUpdatedat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUpdatedat"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/Notification;->getIsdeleted()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sisdeleted"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/Notification;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/Notification;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SSubtitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    .line 609
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dp/sgp/calendar/Notification;->getMediatype()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, "Smediatype"

    if-nez p2, :cond_0

    .line 611
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Notification;->getMediatype()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "text"

    .line 613
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 616
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "read_status"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    const-string p1, "tbl_sanvar"

    const/4 p2, 0x0

    const/4 v1, 0x5

    .line 621
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long p2, p0, v0

    if-lez p2, :cond_1

    .line 640
    sget-object p0, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    const-string p1, "User Inserted"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 644
    :cond_1
    sget-object p0, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    const-string p1, "User Not Inserted"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 649
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static insertNotification(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/calendar/Message;",
            ">;)V"
        }
    .end annotation

    .line 553
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    .line 556
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 558
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 561
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ID"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getChildid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "childid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getCreatedat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SCreatedat"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getUpdatedat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUpdatedat"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "tbl_notification"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 570
    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 575
    sget-object v4, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User Inserted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/dp/sgp/database/DatabaseUtils;->insertMessage(Landroid/content/Context;Lcom/dp/sgp/calendar/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 580
    :cond_0
    sget-object v2, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    const-string v3, "User Not Inserted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 585
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 590
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 591
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public static insertSanvar(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/calendar/Message;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 448
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 450
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 452
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 455
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SId"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "STitle"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getDescription()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SDescription"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getCreatedat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SCreatedat"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getUpdatedat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUpdatedat"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getIsdeleted()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Sisdeleted"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUrl"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SSubtitle"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    .line 463
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getMediatype()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "Smediatype"

    if-nez v3, :cond_0

    .line 465
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/calendar/Message;

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dp/sgp/calendar/Notification;->getMediatype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v3, "text"

    .line 467
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "read_status"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    const-string v3, "tbl_sanvar"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 473
    invoke-virtual {p0, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 477
    sget-object v2, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    const-string v3, " sanvar User Inserted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 481
    :cond_1
    sget-object v2, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    const-string v3, "User Not Inserted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 486
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static insertSevaDetails(Landroid/content/Context;JLjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/Model/SevaDetail;",
            ">;)V"
        }
    .end annotation

    .line 243
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    .line 246
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 249
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 251
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "seva_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/Model/SevaDetail;

    invoke-virtual {v2}, Lcom/dp/sgp/Model/SevaDetail;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "seva"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/Model/SevaDetail;

    invoke-virtual {v2}, Lcom/dp/sgp/Model/SevaDetail;->getCount()Ljava/lang/String;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "sevadetails"

    const/4 v3, 0x0

    .line 258
    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 263
    sget-object v1, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    const-string v2, "User Inserted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 267
    :cond_0
    sget-object v1, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    const-string v2, "User Not Inserted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 272
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static insertSevaNond(Landroid/content/Context;Lcom/dp/sgp/Model/SevaNondInput;)V
    .locals 5

    .line 206
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 208
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 211
    invoke-virtual {p1}, Lcom/dp/sgp/Model/SevaNondInput;->getSevaType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/dp/sgp/Model/SevaNondInput;->getSevekariName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Lcom/dp/sgp/Model/SevaNondInput;->getMobileNo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobileNo"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/dp/sgp/calendar/DateUtils;->getTodaysDateString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "sevanond"

    const/4 v3, 0x0

    .line 218
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 223
    sget-object v2, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    const-string v3, "User Inserted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p1}, Lcom/dp/sgp/Model/SevaNondInput;->getSevaDetails()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/dp/sgp/database/DatabaseUtils;->insertSevaDetails(Landroid/content/Context;JLjava/util/ArrayList;)V

    goto :goto_0

    .line 229
    :cond_0
    sget-object p0, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    const-string p1, "User Not Inserted"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static insertSevaNond(Lcom/dp/sgp/Model/SevaNondInput;)V
    .locals 0

    return-void
.end method

.method public static updateReadStatus(Landroid/content/Context;Lcom/dp/sgp/calendar/Message;)Z
    .locals 5

    .line 722
    invoke-static {p0}, Lcom/dp/sgp/database/DatabaseUtils;->getDatabaseInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 723
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 727
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/Notification;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Message;->getNotification()Lcom/dp/sgp/calendar/Notification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/Notification;->getType()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 729
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "read_status"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "tbl_sanvar"

    const-string v4, "SId =? AND type =?"

    .line 732
    invoke-virtual {p0, p1, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const-string p1, " updateUser"

    if-lez p0, :cond_0

    .line 735
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "User Updated Successfully"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0

    .line 739
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/dp/sgp/database/DatabaseUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "User Updated Not Successfully"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3
.end method
