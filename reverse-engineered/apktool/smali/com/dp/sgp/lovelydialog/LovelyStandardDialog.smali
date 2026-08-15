.class public Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
.super Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
.source "LovelyStandardDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dp/sgp/lovelydialog/AbsLovelyDialog<",
        "Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;",
        ">;"
    }
.end annotation


# static fields
.field public static final NEGATIVE_BUTTON:I = 0x7f0a00d6

.field public static final NEUTRAL_BUTTON:I = 0x7f0a00d5

.field public static final POSITIVE_BUTTON:I = 0x7f0a00d7


# instance fields
.field private negativeButton:Landroid/widget/Button;

.field private neutralButton:Landroid/widget/Button;

.field private positiveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0a00d7

    .line 49
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->positiveButton:Landroid/widget/Button;

    const p1, 0x7f0a00d6

    .line 50
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->negativeButton:Landroid/widget/Button;

    const p1, 0x7f0a00d5

    .line 51
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->neutralButton:Landroid/widget/Button;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0a00d7

    .line 49
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->positiveButton:Landroid/widget/Button;

    const p1, 0x7f0a00d6

    .line 50
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->negativeButton:Landroid/widget/Button;

    const p1, 0x7f0a00d5

    .line 51
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->neutralButton:Landroid/widget/Button;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;)V
    .locals 0

    .line 44
    iget p3, p3, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;->layoutRes:I

    invoke-direct {p0, p1, p2, p3}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;II)V

    const p1, 0x7f0a00d7

    .line 49
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->positiveButton:Landroid/widget/Button;

    const p1, 0x7f0a00d6

    .line 50
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->negativeButton:Landroid/widget/Button;

    const p1, 0x7f0a00d5

    .line 51
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->neutralButton:Landroid/widget/Button;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;)V
    .locals 1

    .line 40
    iget p2, p2, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;->layoutRes:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;II)V

    const p1, 0x7f0a00d7

    .line 49
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->positiveButton:Landroid/widget/Button;

    const p1, 0x7f0a00d6

    .line 50
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->negativeButton:Landroid/widget/Button;

    const p1, 0x7f0a00d5

    .line 51
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->neutralButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    .line 163
    sget-object v0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;->HORIZONTAL:Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;

    iget v0, v0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog$ButtonLayout;->layoutRes:I

    return v0
.end method

.method public setButtonsColor(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->negativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 106
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->neutralButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-object p0
.end method

.method public setButtonsColorRes(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->color(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setButtonsColor(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->negativeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->negativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->negativeButton:Landroid/widget/Button;

    new-instance v0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;-><init>(Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;Landroid/view/View$OnClickListener;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setNegativeButtonColor(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->negativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-object p0
.end method

.method public setNegativeButtonColorRes(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->color(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setNegativeButtonColor(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButtonText(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 1

    .line 66
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButtonText(Ljava/lang/String;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButton(ILandroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setNeutralButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->neutralButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->neutralButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->neutralButton:Landroid/widget/Button;

    new-instance v0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;-><init>(Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;Landroid/view/View$OnClickListener;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setNeutralButtonColor(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->neutralButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-object p0
.end method

.method public setNeutralButtonColorRes(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->color(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setNeutralButtonColor(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButtonText(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 1

    .line 85
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setNeutralButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButtonText(Ljava/lang/String;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setNeutralButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 1

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p0, v0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setOnButtonClickListener(ZLandroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method

.method public setOnButtonClickListener(ZLandroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 1

    .line 119
    new-instance v0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;

    invoke-direct {v0, p0, p2, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;-><init>(Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;Landroid/view/View$OnClickListener;Z)V

    .line 120
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->positiveButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->neutralButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->negativeButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->positiveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->positiveButton:Landroid/widget/Button;

    new-instance v0, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog$ClickListenerDecorator;-><init>(Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;Landroid/view/View$OnClickListener;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setPositiveButtonColor(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-object p0
.end method

.method public setPositiveButtonColorRes(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->color(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setPositiveButtonColor(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButtonText(I)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 1

    .line 127
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButtonText(Ljava/lang/String;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dp/sgp/lovelydialog/LovelyStandardDialog;

    move-result-object p1

    return-object p1
.end method
