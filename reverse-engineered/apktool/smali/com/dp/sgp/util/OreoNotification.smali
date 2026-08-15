.class public Lcom/dp/sgp/util/OreoNotification;
.super Landroid/content/ContextWrapper;
.source "OreoNotification.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "Default"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "Gurupeeth"


# instance fields
.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 27
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/dp/sgp/util/OreoNotification;->createChannel()V

    :cond_0
    return-void
.end method

.method private createChannel()V
    .locals 4

    .line 34
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Default"

    const-string v2, "Gurupeeth"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "Fcm Test channel for app test FCM"

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/16 v1, 0x9

    new-array v1, v1, [J

    .line 39
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 42
    invoke-virtual {p0}, Lcom/dp/sgp/util/OreoNotification;->getManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
        0x190
        0x12c
        0xc8
        0x190
    .end array-data
.end method


# virtual methods
.method public getManager()Landroid/app/NotificationManager;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/dp/sgp/util/OreoNotification;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 47
    invoke-virtual {p0, v0}, Lcom/dp/sgp/util/OreoNotification;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/dp/sgp/util/OreoNotification;->notificationManager:Landroid/app/NotificationManager;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/util/OreoNotification;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public getOreoNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2

    .line 56
    new-instance p4, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/dp/sgp/util/OreoNotification;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    const-string v0, "Default"

    invoke-direct {p4, p5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p5, 0x1

    .line 57
    invoke-virtual {p4, p5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p4

    .line 58
    invoke-virtual {p4, p5}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object p4

    const/4 p5, -0x1

    .line 59
    invoke-virtual {p4, p5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p4

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p4

    const/high16 p5, 0x7f0f0000

    .line 61
    invoke-virtual {p4, p5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p4

    const-string p5, "Fcm Test"

    .line 62
    invoke-virtual {p4, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p4

    const/16 p5, 0xa

    .line 63
    invoke-virtual {p4, p5}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object p4

    .line 64
    invoke-virtual {p4, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p2, "Info"

    .line 67
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method
