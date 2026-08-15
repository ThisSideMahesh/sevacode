.class public Lcom/dp/sgp/DataHolder/DataHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"


# static fields
.field public static final DELETEALEARTBOX:Ljava/lang/String; = "DELETE_ALERT_BOX"

.field public static final Swip:Ljava/lang/String; = "SWIP"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private preference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ILIA_Session"

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/DataHolder/DataHandler;->preference:Landroid/content/SharedPreferences;

    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/DataHolder/DataHandler;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/dp/sgp/DataHolder/DataHandler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    iget-object p1, p0, Lcom/dp/sgp/DataHolder/DataHandler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/dp/sgp/DataHolder/DataHandler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public getAleartDelete()Z
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/dp/sgp/DataHolder/DataHandler;->preference:Landroid/content/SharedPreferences;

    const-string v1, "DELETE_ALERT_BOX"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dp/sgp/DataHolder/DataHandler;->preference:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSwip()Z
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/dp/sgp/DataHolder/DataHandler;->preference:Landroid/content/SharedPreferences;

    const-string v1, "SWIP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getcheckingflagsession(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/dp/sgp/DataHolder/DataHandler;->preference:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeData(Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/dp/sgp/DataHolder/DataHandler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object p1, p0, Lcom/dp/sgp/DataHolder/DataHandler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setAleartDelete(Z)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/dp/sgp/DataHolder/DataHandler;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DELETE_ALERT_BOX"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    iget-object p1, p0, Lcom/dp/sgp/DataHolder/DataHandler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSwip(Z)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/dp/sgp/DataHolder/DataHandler;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SWIP"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    iget-object p1, p0, Lcom/dp/sgp/DataHolder/DataHandler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setcheckingflagsession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/dp/sgp/DataHolder/DataHandler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    iget-object p1, p0, Lcom/dp/sgp/DataHolder/DataHandler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
