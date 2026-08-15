.class public Lcom/dp/sgp/util/ShowCaseManager;
.super Ljava/lang/Object;
.source "ShowCaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/util/ShowCaseManager$ShowCaseManagerListener;
    }
.end annotation


# static fields
.field public static final HELP_ADD:Ljava/lang/String; = "help_add"

.field public static final HELP_AMCYAVISHAYI:Ljava/lang/String; = "help_amchyvishayi"

.field public static final HELP_BOOKMARK:Ljava/lang/String; = "help_booking"

.field public static final HELP_BOOKMARK_CHANTING:Ljava/lang/String; = "help_chanting_booking"

.field public static final HELP_BROADCAST:Ljava/lang/String; = "help_broadcast"

.field public static final HELP_HISTORY:Ljava/lang/String; = "help_history"

.field public static final HELP_NITYASEVA:Ljava/lang/String; = "help_nityaseva"

.field public static final HELP_SANDESH:Ljava/lang/String; = "help_sandes"

.field public static final HELP_SCROLL:Ljava/lang/String; = "help_scroll"

.field public static final HELP_SETTINGS:Ljava/lang/String; = "help_settings"

.field public static final HELP_UPAKRAM:Ljava/lang/String; = "help_upkram"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetHelp(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "help_add"

    const/4 v1, 0x0

    .line 89
    invoke-static {p0, v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "help_amchyvishayi"

    .line 90
    invoke-static {p0, v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "help_booking"

    .line 91
    invoke-static {p0, v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "help_chanting_booking"

    .line 92
    invoke-static {p0, v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "help_history"

    .line 93
    invoke-static {p0, v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "help_nityaseva"

    .line 94
    invoke-static {p0, v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "help_sandes"

    .line 95
    invoke-static {p0, v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "help_upkram"

    .line 96
    invoke-static {p0, v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "help_scroll"

    .line 97
    invoke-static {p0, v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "help_settings"

    .line 98
    invoke-static {p0, v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "swami_charitra_bookmark"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "help_broadcast"

    const/4 v2, 0x1

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static showHelp(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dp/sgp/util/ShowCaseManager$ShowCaseManagerListener;)V
    .locals 0

    .line 35
    invoke-static {p0, p4}, Lcom/dp/sgp/Constants/PreferenceHelper;->getBooleanPreferenceValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0a002c

    .line 38
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    new-instance p2, Lcom/dp/sgp/util/ShowCaseManager$1;

    invoke-direct {p2}, Lcom/dp/sgp/util/ShowCaseManager$1;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/dp/sgp/util/ShowCaseManager$2;

    invoke-direct {p2, p0, p4}, Lcom/dp/sgp/util/ShowCaseManager$2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-wide/16 p3, 0x190

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
