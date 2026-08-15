.class public Lcom/dp/sgp/Constants/PreferenceHelper;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# static fields
.field public static final CHANTING_COUNT_BOOKMARK:Ljava/lang/String; = "chanting_count_bookmark"

.field public static final CHANTING_ROUND_BOOKMARK:Ljava/lang/String; = "chanting_round_bookmark"

.field public static final EXTRA_PARAMS_LIST_TYPE:Ljava/lang/String; = "EXTRA_PARAMS_LIST_TYPE"

.field public static final EXTRA_PARAMS_POSITION:Ljava/lang/String; = "EXTRA_PARAMS_POSITION"

.field public static final EXTRA_PARAMS_RESULT_KEY:Ljava/lang/String; = "EXTRA_PARAMS_RESULT_KEY"

.field public static final E_NITYASEVA_PKG:Ljava/lang/String; = "com.enityaseva.adi.shreeatharvashirsh"

.field public static final IS_FIRST_NOTIFICATION_RECEIVED:Ljava/lang/String; = "is_first_notification"

.field public static final IS_REGISTERED:Ljava/lang/String; = "is_registred"

.field public static final LIST_AARTI:Ljava/lang/String; = "LIST_AARTI"

.field public static final LIST_AYURVED:Ljava/lang/String; = "LIST_AYURVED"

.field public static final LIST_MUDRAN:Ljava/lang/String; = "LIST_MUDRAN"

.field public static final LIST_STOTRA:Ljava/lang/String; = "LIST_STOTRA"

.field public static final LIST_SWAMI_CHARITRA:Ljava/lang/String; = "LIST_SWAMI_CHARITRA"

.field public static final LIST_SWAMI_CHARITRA_700:Ljava/lang/String; = "LIST_SWAMI_CHARITRA_700"

.field public static final NAVIGATE_TO_NOTIFICATION:Ljava/lang/String; = "navigate_to_notification"

.field public static final NOTIFICATION_COUNT:Ljava/lang/String; = "notification_count"

.field public static final PREFERENCESNAME:Ljava/lang/String; = "gurupeeth"

.field public static final SWAMI_CHARITRA_700_BOOKMARK:Ljava/lang/String; = "swami_charitra_700_bookmark"

.field public static final SWAMI_CHARITRA_BOOKMARK:Ljava/lang/String; = "swami_charitra_bookmark"

.field public static context:Landroid/content/Context; = null

.field public static final emailPattern:Ljava/lang/String; = "[a-zA-Z0-9._-]+@[a-z]+\\.+[a-z]+"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanPreferenceValue(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "gurupeeth"

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 106
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const-string v0, "gurupeeth"

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 99
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStringPreferenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "gurupeeth"

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    .line 92
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setPreferenceValue(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "gurupeeth"

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 70
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "gurupeeth"

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 52
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 53
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setPreferenceValue(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "gurupeeth"

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 78
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 79
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
