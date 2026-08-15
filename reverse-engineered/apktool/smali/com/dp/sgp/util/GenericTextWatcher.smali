.class public Lcom/dp/sgp/util/GenericTextWatcher;
.super Ljava/lang/Object;
.source "GenericTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final editText:[Landroid/widget/EditText;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;[Landroid/widget/EditText;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/dp/sgp/util/GenericTextWatcher;->editText:[Landroid/widget/EditText;

    .line 17
    iput-object p1, p0, Lcom/dp/sgp/util/GenericTextWatcher;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/dp/sgp/util/GenericTextWatcher;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 43
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/dp/sgp/util/GenericTextWatcher;->editText:[Landroid/widget/EditText;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 37
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 38
    iget-object p1, p0, Lcom/dp/sgp/util/GenericTextWatcher;->editText:[Landroid/widget/EditText;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 40
    iget-object p1, p0, Lcom/dp/sgp/util/GenericTextWatcher;->editText:[Landroid/widget/EditText;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 31
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 32
    iget-object p1, p0, Lcom/dp/sgp/util/GenericTextWatcher;->editText:[Landroid/widget/EditText;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 34
    iget-object p1, p0, Lcom/dp/sgp/util/GenericTextWatcher;->editText:[Landroid/widget/EditText;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 26
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 27
    iget-object p1, p0, Lcom/dp/sgp/util/GenericTextWatcher;->editText:[Landroid/widget/EditText;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a013e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
