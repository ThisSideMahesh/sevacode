.class public Lcom/dp/sgp/lovelydialog/LovelyDialogCompat;
.super Ljava/lang/Object;
.source "LovelyDialogCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/lovelydialog/LovelyDialogCompat$DialogOnClickListenerAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Landroid/content/DialogInterface$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 18
    new-instance v0, Lcom/dp/sgp/lovelydialog/LovelyDialogCompat$DialogOnClickListenerAdapter;

    invoke-direct {v0, p0}, Lcom/dp/sgp/lovelydialog/LovelyDialogCompat$DialogOnClickListenerAdapter;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method
