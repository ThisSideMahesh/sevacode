.class public Lcom/dp/sgp/database/SQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteHelper"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "calenderdb230"

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 31
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    iput-object p1, p0, Lcom/dp/sgp/database/SQLiteHelper;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/dp/sgp/database/SQLiteHelper;->checkDataBase()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/dp/sgp/database/SQLiteHelper;->openDataBase()V

    .line 36
    invoke-virtual {p0}, Lcom/dp/sgp/database/SQLiteHelper;->close()V

    goto :goto_0

    .line 39
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/dp/sgp/database/SQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    invoke-virtual {p0}, Lcom/dp/sgp/database/SQLiteHelper;->close()V

    .line 41
    invoke-direct {p0}, Lcom/dp/sgp/database/SQLiteHelper;->copyDataBase()V

    .line 42
    invoke-virtual {p0}, Lcom/dp/sgp/database/SQLiteHelper;->close()V

    .line 43
    invoke-virtual {p0}, Lcom/dp/sgp/database/SQLiteHelper;->openDataBase()V

    .line 44
    invoke-virtual {p0}, Lcom/dp/sgp/database/SQLiteHelper;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 46
    :catch_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "Error copying database"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkDataBase()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "/data/data/com.dp.sgp/databases/calenderdb230"

    .line 88
    invoke-static {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "db log"

    const-string v3, "database does\'t exist"

    .line 91
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private copyDataBase()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "/data/data/com.dp.sgp/databases/calenderdb222"

    .line 57
    invoke-direct {p0, v0}, Lcom/dp/sgp/database/SQLiteHelper;->deleteDatabase(Ljava/lang/String;)Z

    .line 58
    iget-object v0, p0, Lcom/dp/sgp/database/SQLiteHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "calenderdb230"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/dp/sgp/database/SQLiteHelper;->openDataBase()V

    .line 63
    iget-object v1, p0, Lcom/dp/sgp/database/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/dp/sgp/database/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 65
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 68
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 69
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 73
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 74
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private deleteDatabase(Ljava/lang/String;)Z
    .locals 3

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x1

    .line 107
    sget-object v1, Lcom/dp/sgp/database/SQLiteHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " : Deleted"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_0
    sget-object v0, Lcom/dp/sgp/database/SQLiteHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " : Not Found"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 118
    invoke-static {p1}, Lcom/dp/sgp/database/DatabaseTables;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 123
    invoke-static {p1, p2, p3}, Lcom/dp/sgp/database/DatabaseTables;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public openDataBase()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const-string v0, "/data/data/com.dp.sgp/databases/calenderdb230"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/database/SQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method
