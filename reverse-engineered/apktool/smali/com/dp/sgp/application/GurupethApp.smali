.class public Lcom/dp/sgp/application/GurupethApp;
.super Landroid/app/Application;
.source "GurupethApp.java"


# static fields
.field public static mContext:Lcom/dp/sgp/application/GurupethApp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Lcom/dp/sgp/application/GurupethApp;
    .locals 1

    .line 22
    sget-object v0, Lcom/dp/sgp/application/GurupethApp;->mContext:Lcom/dp/sgp/application/GurupethApp;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 15
    sput-object p0, Lcom/dp/sgp/application/GurupethApp;->mContext:Lcom/dp/sgp/application/GurupethApp;

    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 18
    new-instance v0, Lcom/dp/sgp/database/SQLiteHelper;

    invoke-direct {v0, p0}, Lcom/dp/sgp/database/SQLiteHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/dp/sgp/database/DatabaseManager;->initializeInstance(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method
