.class public Lcom/dp/sgp/Base/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# instance fields
.field private mNetworkStateListener:Lcom/dp/sgp/Base/NetworkStateReceiverListener;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Base/NetworkStateReceiverListener;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/dp/sgp/Base/NetworkStateReceiver;->mNetworkStateListener:Lcom/dp/sgp/Base/NetworkStateReceiverListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1}, Lcom/dp/sgp/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/dp/sgp/Base/NetworkStateReceiver;->mNetworkStateListener:Lcom/dp/sgp/Base/NetworkStateReceiverListener;

    invoke-interface {p1}, Lcom/dp/sgp/Base/NetworkStateReceiverListener;->onNetworkAvailable()V

    :cond_1
    :goto_0
    return-void
.end method
