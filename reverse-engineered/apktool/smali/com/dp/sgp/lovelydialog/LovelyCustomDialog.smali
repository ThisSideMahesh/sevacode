.class public Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;
.super Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
.source "LovelyCustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/lovelydialog/LovelyCustomDialog$InstanceStateManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dp/sgp/lovelydialog/AbsLovelyDialog<",
        "Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;",
        ">;"
    }
.end annotation


# instance fields
.field private addedView:Landroid/view/View;

.field private instanceStateManager:Lcom/dp/sgp/lovelydialog/LovelyCustomDialog$InstanceStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic configureView(Lcom/dp/sgp/lovelydialog/ViewConfigurator;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->configureView(Lcom/dp/sgp/lovelydialog/ViewConfigurator;)Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;

    move-result-object p1

    return-object p1
.end method

.method public configureView(Lcom/dp/sgp/lovelydialog/ViewConfigurator;)Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/lovelydialog/ViewConfigurator<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->addedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {p1, v0}, Lcom/dp/sgp/lovelydialog/ViewConfigurator;->configureView(Landroid/view/View;)V

    return-object p0

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, 0x7f11007b

    invoke-virtual {p0, v0}, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->string(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getLayout()I
    .locals 1

    const v0, 0x7f0d0062

    return v0
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->instanceStateManager:Lcom/dp/sgp/lovelydialog/LovelyCustomDialog$InstanceStateManager;

    invoke-interface {v0, p1}, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog$InstanceStateManager;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->restoreState(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->instanceStateManager:Lcom/dp/sgp/lovelydialog/LovelyCustomDialog$InstanceStateManager;

    invoke-interface {v0, p1}, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog$InstanceStateManager;->restoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setInstanceStateManager(Lcom/dp/sgp/lovelydialog/LovelyCustomDialog$InstanceStateManager;)Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->instanceStateManager:Lcom/dp/sgp/lovelydialog/LovelyCustomDialog$InstanceStateManager;

    return-object p0
.end method

.method public setListener(ILandroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0, p2}, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->setListener(IZLandroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;

    move-result-object p1

    return-object p1
.end method

.method public setListener(IZLandroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->addedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;

    invoke-direct {v0, p0, p3, p2}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;-><init>(Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;Landroid/view/View$OnClickListener;Z)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const p2, 0x7f11007b

    invoke-virtual {p0, p2}, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->string(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setView(I)Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;
    .locals 3

    .line 30
    invoke-virtual {p0}, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00db

    .line 31
    invoke-virtual {p0, v1}, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->addedView:Landroid/view/View;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;
    .locals 1

    const v0, 0x7f0a00db

    .line 37
    invoke-virtual {p0, v0}, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyCustomDialog;->addedView:Landroid/view/View;

    return-object p0
.end method
