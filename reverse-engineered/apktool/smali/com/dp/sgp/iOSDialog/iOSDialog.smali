.class public Lcom/dp/sgp/iOSDialog/iOSDialog;
.super Ljava/lang/Object;
.source "iOSDialog.java"


# static fields
.field private static final LOG_ERROR:Ljava/lang/String; = "iOSDialog_ERROR"


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private dialogButtonNo:Landroid/widget/TextView;

.field private dialogButtonOk:Landroid/widget/TextView;

.field private negativeExist:Z

.field private negativeListener:Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

.field private positiveListener:Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

.field private separator:Landroid/view/View;

.field private subtitle_lbl:Landroid/widget/TextView;

.field private title_lbl:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Typeface;Z)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->negativeExist:Z

    .line 26
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialog:Landroid/app/Dialog;

    const p1, 0x7f0d0043

    .line 27
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 28
    iget-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/dp/sgp/iOSDialog/iOSDialog;->initViews()V

    .line 33
    iget-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, p6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/dp/sgp/iOSDialog/iOSDialog;->setTitle(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p3}, Lcom/dp/sgp/iOSDialog/iOSDialog;->setSubtitle(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p4}, Lcom/dp/sgp/iOSDialog/iOSDialog;->setBoldPositiveLabel(Z)V

    .line 37
    invoke-direct {p0, p5}, Lcom/dp/sgp/iOSDialog/iOSDialog;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 39
    invoke-direct {p0}, Lcom/dp/sgp/iOSDialog/iOSDialog;->initEvents()V

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/iOSDialog/iOSDialog;)Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->positiveListener:Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/iOSDialog/iOSDialog;)Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->negativeListener:Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

    return-object p0
.end method

.method private initEvents()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialogButtonOk:Landroid/widget/TextView;

    new-instance v1, Lcom/dp/sgp/iOSDialog/iOSDialog$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/iOSDialog/iOSDialog$1;-><init>(Lcom/dp/sgp/iOSDialog/iOSDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialogButtonNo:Landroid/widget/TextView;

    new-instance v1, Lcom/dp/sgp/iOSDialog/iOSDialog$2;

    invoke-direct {v1, p0}, Lcom/dp/sgp/iOSDialog/iOSDialog$2;-><init>(Lcom/dp/sgp/iOSDialog/iOSDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViews()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a01db

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->title_lbl:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a01b6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->subtitle_lbl:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0068

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialogButtonOk:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0067

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialogButtonNo:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0194

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->separator:Landroid/view/View;

    return-void
.end method

.method private setBoldPositiveLabel(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialogButtonOk:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialogButtonOk:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void
.end method

.method private setNegativeLabel(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialogButtonNo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPositiveLabel(Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialogButtonOk:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTypefaces(Landroid/graphics/Typeface;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->title_lbl:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->subtitle_lbl:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialogButtonOk:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialogButtonNo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public setNegative(Ljava/lang/String;Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 49
    iput-object p2, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->negativeListener:Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

    .line 50
    invoke-virtual {p0}, Lcom/dp/sgp/iOSDialog/iOSDialog;->dismiss()V

    const/4 p2, 0x1

    .line 51
    iput-boolean p2, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->negativeExist:Z

    .line 52
    invoke-direct {p0, p1}, Lcom/dp/sgp/iOSDialog/iOSDialog;->setNegativeLabel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPositive(Ljava/lang/String;Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;)V
    .locals 0

    .line 43
    iput-object p2, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->positiveListener:Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

    .line 44
    invoke-virtual {p0}, Lcom/dp/sgp/iOSDialog/iOSDialog;->dismiss()V

    .line 45
    invoke-direct {p0, p1}, Lcom/dp/sgp/iOSDialog/iOSDialog;->setPositiveLabel(Ljava/lang/String;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->subtitle_lbl:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->title_lbl:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->negativeExist:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialogButtonNo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->separator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
