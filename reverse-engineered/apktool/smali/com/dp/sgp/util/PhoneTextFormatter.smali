.class public Lcom/dp/sgp/util/PhoneTextFormatter;
.super Ljava/lang/Object;
.source "PhoneTextFormatter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/util/PhoneTextFormatter;->TAG:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/dp/sgp/util/PhoneTextFormatter;->mEditText:Landroid/widget/EditText;

    .line 22
    iput-object p2, p0, Lcom/dp/sgp/util/PhoneTextFormatter;->mPattern:Ljava/lang/String;

    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    .line 25
    iget-object p2, p0, Lcom/dp/sgp/util/PhoneTextFormatter;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/dp/sgp/util/PhoneTextFormatter;->mPattern:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/dp/sgp/util/PhoneTextFormatter;->TAG:Ljava/lang/String;

    const-string p3, "join"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p4, :cond_2

    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dp/sgp/util/PhoneTextFormatter;->isValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 40
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 41
    iget-object p4, p0, Lcom/dp/sgp/util/PhoneTextFormatter;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, p1

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p4, p0, Lcom/dp/sgp/util/PhoneTextFormatter;->mPattern:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result p4

    const/16 v0, 0x23

    if-eq p4, v0, :cond_0

    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq p4, v0, :cond_0

    .line 45
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/util/PhoneTextFormatter;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p1, p0, Lcom/dp/sgp/util/PhoneTextFormatter;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void
.end method
