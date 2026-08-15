.class public Lcom/dp/sgp/lovelydialog/LovelyProgressDialog;
.super Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
.source "LovelyProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dp/sgp/lovelydialog/AbsLovelyDialog<",
        "Lcom/dp/sgp/lovelydialog/LovelyProgressDialog;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyProgressDialog;->setCancelable(Z)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyProgressDialog;->setCancelable(Z)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;

    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    const v0, 0x7f0d0064

    return v0
.end method
