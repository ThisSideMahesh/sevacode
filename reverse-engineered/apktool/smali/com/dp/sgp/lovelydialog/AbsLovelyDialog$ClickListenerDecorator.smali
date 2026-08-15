.class public Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;
.super Ljava/lang/Object;
.source "AbsLovelyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClickListenerDecorator"
.end annotation


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private closeOnClick:Z

.field final synthetic this$0:Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;


# direct methods
.method protected constructor <init>(Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;Landroid/view/View$OnClickListener;Z)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;->this$0:Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;->clickListener:Landroid/view/View$OnClickListener;

    .line 238
    iput-boolean p3, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;->closeOnClick:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 244
    instance-of v1, v0, Lcom/dp/sgp/lovelydialog/LovelyDialogCompat$DialogOnClickListenerAdapter;

    if-eqz v1, :cond_0

    .line 245
    check-cast v0, Lcom/dp/sgp/lovelydialog/LovelyDialogCompat$DialogOnClickListenerAdapter;

    .line 247
    iget-object v1, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;->this$0:Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;

    invoke-static {v1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->access$000(Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/dp/sgp/lovelydialog/LovelyDialogCompat$DialogOnClickListenerAdapter;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 252
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;->closeOnClick:Z

    if-eqz p1, :cond_2

    .line 253
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;->this$0:Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;

    invoke-virtual {p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dismiss()V

    :cond_2
    return-void
.end method
