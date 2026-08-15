.class public abstract Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
.super Ljava/lang/Object;
.source "AbsLovelyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final KEY_SAVED_STATE_TOKEN:Ljava/lang/String; = "key_saved_state_token"


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private dialogView:Landroid/view/View;

.field private iconView:Landroid/widget/ImageView;

.field private messageView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;

.field private topTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->getLayout()I

    move-result p3

    :cond_0
    if-nez p2, :cond_1

    .line 53
    new-instance p2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->init(Landroid/support/v7/app/AlertDialog$Builder;I)V

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p3}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->init(Landroid/support/v7/app/AlertDialog$Builder;I)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;)Landroid/app/Dialog;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private init(Landroid/support/v7/app/AlertDialog$Builder;I)V
    .locals 2

    .line 60
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dialogView:Landroid/view/View;

    .line 61
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dialog:Landroid/app/Dialog;

    const p1, 0x7f0a00dd

    .line 63
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->iconView:Landroid/widget/ImageView;

    const p1, 0x7f0a00e0

    .line 64
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->titleView:Landroid/widget/TextView;

    const p1, 0x7f0a00de

    .line 65
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->messageView:Landroid/widget/TextView;

    const p1, 0x7f0a00e1

    .line 66
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->topTitleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected color(I)I
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public configureMessageView(Lcom/dp/sgp/lovelydialog/ViewConfigurator;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/lovelydialog/ViewConfigurator<",
            "Landroid/widget/TextView;",
            ">;)TT;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->messageView:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Lcom/dp/sgp/lovelydialog/ViewConfigurator;->configureView(Landroid/view/View;)V

    return-object p0
.end method

.method public configureTitleView(Lcom/dp/sgp/lovelydialog/ViewConfigurator;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/lovelydialog/ViewConfigurator<",
            "Landroid/widget/TextView;",
            ">;)TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->titleView:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Lcom/dp/sgp/lovelydialog/ViewConfigurator;->configureView(Landroid/view/View;)V

    return-object p0
.end method

.method public configureView(Lcom/dp/sgp/lovelydialog/ViewConfigurator;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/lovelydialog/ViewConfigurator<",
            "Landroid/view/View;",
            ">;)TT;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dialogView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/dp/sgp/lovelydialog/ViewConfigurator;->configureView(Landroid/view/View;)V

    return-object p0
.end method

.method public create()Landroid/app/Dialog;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected findView(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ViewClass:",
            "Landroid/view/View;",
            ">(I)TViewClass;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dialogView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getLayout()I
.end method

.method isShowing()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "key_saved_state_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setCancelable(Z)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public setIcon(I)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TT;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setIconTintColor(I)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-object p0
.end method

.method public setInstanceStateHandler(ILcom/dp/sgp/lovelydialog/LovelySaveStateHandler;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dp/sgp/lovelydialog/LovelySaveStateHandler;",
            ")TT;"
        }
    .end annotation

    .line 170
    invoke-virtual {p2, p1, p0}, Lcom/dp/sgp/lovelydialog/LovelySaveStateHandler;->handleDialogStateSave(ILcom/dp/sgp/lovelydialog/AbsLovelyDialog;)V

    return-object p0
.end method

.method public setMessage(I)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->messageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setMessageGravity(I)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object p0
.end method

.method public setSavedInstanceState(Landroid/os/Bundle;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "key_saved_state_token"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->restoreState(Landroid/os/Bundle;)V

    :cond_1
    return-object p0
.end method

.method public setTitle(I)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->titleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTitleGravity(I)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object p0
.end method

.method public setTopColor(I)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const v0, 0x7f0a00da

    .line 156
    invoke-virtual {p0, v0}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->findView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public setTopColorRes(I)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->color(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->setTopColor(I)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;

    move-result-object p1

    return-object p1
.end method

.method public setTopTitle(I)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->setTopTitle(Ljava/lang/CharSequence;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;

    move-result-object p1

    return-object p1
.end method

.method public setTopTitle(Ljava/lang/CharSequence;)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->topTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->topTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTopTitleColor(I)Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->topTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public show()Landroid/app/Dialog;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 193
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method protected string(I)Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->dialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
