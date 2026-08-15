.class public Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;
.super Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
.source "LovelyInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dp/sgp/lovelydialog/AbsLovelyDialog<",
        "Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_DONT_SHOW_AGAIN:Ljava/lang/String; = "key_dont_show_again"

.field private static final STORAGE:Ljava/lang/String; = "ld_dont_show"


# instance fields
.field private cbDontShowAgain:Landroid/widget/CheckBox;

.field private confirmButton:Landroid/widget/Button;

.field private infoDialogId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 29
    invoke-direct {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0a00d8

    .line 37
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->cbDontShowAgain:Landroid/widget/CheckBox;

    const p1, 0x7f0a00d3

    .line 38
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->confirmButton:Landroid/widget/Button;

    .line 39
    new-instance v0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;-><init>(Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;Landroid/view/View$OnClickListener;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->infoDialogId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0a00d8

    .line 37
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->cbDontShowAgain:Landroid/widget/CheckBox;

    const p1, 0x7f0a00d3

    .line 38
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->confirmButton:Landroid/widget/Button;

    .line 39
    new-instance p2, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p2, p0, v0, v1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;-><init>(Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;Landroid/view/View$OnClickListener;Z)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->infoDialogId:I

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;)Landroid/widget/CheckBox;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->cbDontShowAgain:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->infoDialogId:I

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->storage(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static reset(Landroid/content/Context;I)V
    .locals 1

    .line 108
    invoke-static {p0}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->storage(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static storage(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "ld_dont_show"

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    const v0, 0x7f0d0063

    return v0
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->cbDontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "key_dont_show_again"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->restoreState(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->cbDontShowAgain:Landroid/widget/CheckBox;

    const-string v1, "key_dont_show_again"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setConfirmButtonColor(I)Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->confirmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-object p0
.end method

.method public setConfirmButtonText(I)Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->setConfirmButtonText(Ljava/lang/String;)Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;

    move-result-object p1

    return-object p1
.end method

.method public setConfirmButtonText(Ljava/lang/String;)Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->confirmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setNotShowAgainOptionChecked(Z)Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->cbDontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p0
.end method

.method public setNotShowAgainOptionEnabled(I)Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;
    .locals 1

    .line 44
    iput p1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->infoDialogId:I

    .line 45
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->cbDontShowAgain:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->confirmButton:Landroid/widget/Button;

    new-instance v0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog$1;-><init>(Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public show()Landroid/app/Dialog;
    .locals 3

    .line 78
    iget v0, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->infoDialogId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 79
    invoke-super {p0}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->show()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->storage(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget v1, p0, Lcom/dp/sgp/lovelydialog/LovelyInfoDialog;->infoDialogId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 84
    invoke-super {p0}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->show()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 86
    :cond_1
    invoke-super {p0}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->create()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
