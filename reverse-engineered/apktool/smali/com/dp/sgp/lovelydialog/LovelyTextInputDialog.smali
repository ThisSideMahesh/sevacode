.class public Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
.super Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
.source "LovelyTextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextFilter;,
        Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$OnTextInputConfirmListener;,
        Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$HideErrorOnTextChanged;,
        Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextInputListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dp/sgp/lovelydialog/AbsLovelyDialog<",
        "Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_HAS_ERROR:Ljava/lang/String; = "key_has_error"

.field private static final KEY_TYPED_TEXT:Ljava/lang/String; = "key_typed_text"


# instance fields
.field private confirmButton:Landroid/widget/TextView;

.field private errorMessage:Landroid/widget/TextView;

.field private filter:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextFilter;

.field private inputField:Landroid/widget/EditText;

.field private negativeButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0a00d3

    .line 39
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->confirmButton:Landroid/widget/TextView;

    const p1, 0x7f0a00d4

    .line 40
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->negativeButton:Landroid/widget/TextView;

    const p1, 0x7f0a00df

    .line 41
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->inputField:Landroid/widget/EditText;

    const p1, 0x7f0a00dc

    .line 42
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->errorMessage:Landroid/widget/TextView;

    .line 43
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->inputField:Landroid/widget/EditText;

    new-instance v0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$HideErrorOnTextChanged;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$HideErrorOnTextChanged;-><init>(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0a00d3

    .line 39
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->confirmButton:Landroid/widget/TextView;

    const p1, 0x7f0a00d4

    .line 40
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->negativeButton:Landroid/widget/TextView;

    const p1, 0x7f0a00df

    .line 41
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->inputField:Landroid/widget/EditText;

    const p1, 0x7f0a00dc

    .line 42
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->errorMessage:Landroid/widget/TextView;

    .line 43
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->inputField:Landroid/widget/EditText;

    new-instance p2, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$HideErrorOnTextChanged;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$HideErrorOnTextChanged;-><init>(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;)Landroid/widget/EditText;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->inputField:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextFilter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->filter:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextFilter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->setError()V

    return-void
.end method

.method static synthetic access$500(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->hideError()V

    return-void
.end method

.method private hideError()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->errorMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setError()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->errorMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addTextWatcher(Landroid/text/TextWatcher;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object p0
.end method

.method public configureEditText(Lcom/dp/sgp/lovelydialog/ViewConfigurator;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/lovelydialog/ViewConfigurator<",
            "Landroid/widget/EditText;",
            ">;)",
            "Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-interface {p1, v0}, Lcom/dp/sgp/lovelydialog/ViewConfigurator;->configureView(Landroid/view/View;)V

    return-object p0
.end method

.method protected getLayout()I
    .locals 1

    const v0, 0x7f0d0067

    return v0
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "key_has_error"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_typed_text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 2

    .line 142
    invoke-super {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->restoreState(Landroid/os/Bundle;)V

    const-string v0, "key_has_error"

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->setError()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->inputField:Landroid/widget/EditText;

    const-string v1, "key_typed_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setConfirmButton(ILcom/dp/sgp/lovelydialog/LovelyTextInputDialog$OnTextInputConfirmListener;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->setConfirmButton(Ljava/lang/String;Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$OnTextInputConfirmListener;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

    move-result-object p1

    return-object p1
.end method

.method public setConfirmButton(Ljava/lang/String;Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$OnTextInputConfirmListener;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->confirmButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->confirmButton:Landroid/widget/TextView;

    new-instance v0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextInputListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextInputListener;-><init>(Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$OnTextInputConfirmListener;Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setConfirmButtonColor(I)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->confirmButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setErrorMessageColor(I)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setHint(I)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->setHint(Ljava/lang/String;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

    move-result-object p1

    return-object p1
.end method

.method public setHint(Ljava/lang/String;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setInitialInput(I)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->setInitialInput(Ljava/lang/String;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

    move-result-object p1

    return-object p1
.end method

.method public setInitialInput(Ljava/lang/String;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setInputFilter(ILcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextFilter;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->setInputFilter(Ljava/lang/String;Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextFilter;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

    move-result-object p1

    return-object p1
.end method

.method public setInputFilter(Ljava/lang/String;Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextFilter;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 0

    .line 87
    iput-object p2, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->filter:Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog$TextFilter;

    .line 88
    iget-object p2, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setInputType(I)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->negativeButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->negativeButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->negativeButton:Landroid/widget/TextView;

    new-instance v0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;-><init>(Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;Landroid/view/View$OnClickListener;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setNegativeButtonColor(I)Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyTextInputDialog;->negativeButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method
