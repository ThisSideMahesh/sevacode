.class public Lcom/dp/sgp/database/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# static fields
.field private static instance:Lcom/dp/sgp/database/DatabaseManager;

.field private static mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenCounter:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/dp/sgp/database/DatabaseManager;
    .locals 4

    const-class v0, Lcom/dp/sgp/database/DatabaseManager;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/dp/sgp/database/DatabaseManager;->instance:Lcom/dp/sgp/database/DatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 28
    monitor-exit v0

    return-object v1

    .line 24
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not initialized, call initializeInstance(..) method first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initializeInstance(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2

    const-class v0, Lcom/dp/sgp/database/DatabaseManager;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/dp/sgp/database/DatabaseManager;->instance:Lcom/dp/sgp/database/DatabaseManager;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/dp/sgp/database/DatabaseManager;

    invoke-direct {v1}, Lcom/dp/sgp/database/DatabaseManager;-><init>()V

    sput-object v1, Lcom/dp/sgp/database/DatabaseManager;->instance:Lcom/dp/sgp/database/DatabaseManager;

    .line 18
    sput-object p0, Lcom/dp/sgp/database/DatabaseManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    .line 43
    :try_start_0
    iget v0, p0, Lcom/dp/sgp/database/DatabaseManager;->mOpenCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dp/sgp/database/DatabaseManager;->mOpenCounter:I

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/dp/sgp/database/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    iget v0, p0, Lcom/dp/sgp/database/DatabaseManager;->mOpenCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dp/sgp/database/DatabaseManager;->mOpenCounter:I

    if-ne v0, v1, :cond_0

    .line 37
    sget-object v0, Lcom/dp/sgp/database/DatabaseManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/database/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/database/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
