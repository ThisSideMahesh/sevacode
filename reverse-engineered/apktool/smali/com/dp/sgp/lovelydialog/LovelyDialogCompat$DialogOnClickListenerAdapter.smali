.class Lcom/dp/sgp/lovelydialog/LovelyDialogCompat$DialogOnClickListenerAdapter;
.super Ljava/lang/Object;
.source "LovelyDialogCompat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/lovelydialog/LovelyDialogCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DialogOnClickListenerAdapter"
.end annotation


# instance fields
.field private adapted:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyDialogCompat$DialogOnClickListenerAdapter;->adapted:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyDialogCompat$DialogOnClickListenerAdapter;->adapted:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
