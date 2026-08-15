.class final Lcom/dp/sgp/util/TextJustification$1;
.super Ljava/lang/Object;
.source "TextJustification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/util/TextJustification;->justify(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Landroid/text/Spannable;

.field final synthetic val$isJustify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$textPaint:Landroid/text/TextPaint;

.field final synthetic val$textString:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/TextView;Ljava/lang/String;Landroid/text/TextPaint;Landroid/text/Spannable;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/dp/sgp/util/TextJustification$1;->val$isJustify:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/dp/sgp/util/TextJustification$1;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/dp/sgp/util/TextJustification$1;->val$textString:Ljava/lang/String;

    iput-object p4, p0, Lcom/dp/sgp/util/TextJustification$1;->val$textPaint:Landroid/text/TextPaint;

    iput-object p5, p0, Lcom/dp/sgp/util/TextJustification$1;->val$builder:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 43
    iget-object v0, p0, Lcom/dp/sgp/util/TextJustification$1;->val$isJustify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    .line 46
    iget-object v0, p0, Lcom/dp/sgp/util/TextJustification$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/dp/sgp/util/TextJustification$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 53
    iget-object v4, p0, Lcom/dp/sgp/util/TextJustification$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 54
    iget-object v5, p0, Lcom/dp/sgp/util/TextJustification$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 56
    iget-object v6, p0, Lcom/dp/sgp/util/TextJustification$1;->val$textString:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v0, -0x1

    if-ne v3, v6, :cond_0

    goto :goto_3

    .line 64
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    .line 65
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 67
    iget-object v8, p0, Lcom/dp/sgp/util/TextJustification$1;->val$textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 68
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v1

    sub-float/2addr v7, v8

    div-float/2addr v7, v6

    .line 74
    invoke-static {v5}, Lcom/dp/sgp/util/TextJustification;->access$000(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    const/4 v8, 0x0

    .line 75
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 76
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 79
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    const v11, 0xffffff

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v11, 0x20

    if-ne v9, v11, :cond_2

    .line 82
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 84
    invoke-virtual {v10, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_1
    float-to-int v9, v7

    .line 86
    invoke-virtual {v10, v2, v2, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    :goto_2
    new-instance v9, Landroid/text/style/ImageSpan;

    invoke-direct {v9, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v10, p0, Lcom/dp/sgp/util/TextJustification$1;->val$builder:Landroid/text/Spannable;

    add-int v11, v4, v8

    add-int/lit8 v12, v11, 0x1

    const/16 v13, 0x21

    invoke-interface {v10, v9, v11, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 94
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/dp/sgp/util/TextJustification$1;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dp/sgp/util/TextJustification$1;->val$builder:Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/dp/sgp/util/TextJustification$1;->val$isJustify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    return-void
.end method
