.class public Lcom/dp/sgp/util/JustifiedTextView;
.super Landroid/widget/TextView;
.source "JustifiedTextView.java"


# static fields
.field private static final HAIR_SPACE:Ljava/lang/String; = "\u200a"

.field private static final NORMAL_SPACE:Ljava/lang/String; = " "


# instance fields
.field private currentSentence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private justifiedText:Ljava/lang/String;

.field private random:Ljava/util/Random;

.field private sentenceWithSpaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sentences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentences:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->currentSentence:Ljava/util/List;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentenceWithSpaces:Ljava/util/List;

    const-string p1, ""

    .line 35
    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->justifiedText:Ljava/lang/String;

    .line 38
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentences:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->currentSentence:Ljava/util/List;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentenceWithSpaces:Ljava/util/List;

    const-string p1, ""

    .line 35
    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->justifiedText:Ljava/lang/String;

    .line 38
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentences:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->currentSentence:Ljava/util/List;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentenceWithSpaces:Ljava/util/List;

    const-string p1, ""

    .line 35
    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->justifiedText:Ljava/lang/String;

    .line 38
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->random:Ljava/util/Random;

    return-void
.end method

.method private addWord(Ljava/lang/String;Z)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/dp/sgp/util/JustifiedTextView;->currentSentence:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 121
    iget-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentences:Ljava/util/List;

    iget-object p2, p0, Lcom/dp/sgp/util/JustifiedTextView;->currentSentence:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/dp/sgp/util/JustifiedTextView;->getSentenceFromListCheckingNewLines(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->currentSentence:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private fillSentenceWithSpaces(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentenceWithSpaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentenceWithSpaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentenceWithSpaces:Ljava/util/List;

    const-string v2, " "

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentenceWithSpaces:Ljava/util/List;

    const-string v0, "\u200a"

    invoke-direct {p0, v0, p1, v1}, Lcom/dp/sgp/util/JustifiedTextView;->fitsInSentence(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentenceWithSpaces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-direct {p0, v2}, Lcom/dp/sgp/util/JustifiedTextView;->getRandomNumber(I)I

    move-result v2

    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentenceWithSpaces:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/dp/sgp/util/JustifiedTextView;->getSentenceFromList(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fitsInSentence(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p2, p3}, Lcom/dp/sgp/util/JustifiedTextView;->getSentenceFromList(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p2

    .line 208
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p0}, Lcom/dp/sgp/util/JustifiedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 212
    iget p2, p0, Lcom/dp/sgp/util/JustifiedTextView;->viewWidth:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getJustifiedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, " "

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 91
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    aget-object v4, p1, v2

    const-string v5, "\n"

    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "\r"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    .line 94
    :goto_2
    iget-object v6, p0, Lcom/dp/sgp/util/JustifiedTextView;->currentSentence:Ljava/util/List;

    invoke-direct {p0, v4, v6, v3}, Lcom/dp/sgp/util/JustifiedTextView;->fitsInSentence(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    invoke-direct {p0, v4, v5}, Lcom/dp/sgp/util/JustifiedTextView;->addWord(Ljava/lang/String;Z)V

    goto :goto_3

    .line 97
    :cond_2
    iget-object v3, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentences:Ljava/util/List;

    iget-object v6, p0, Lcom/dp/sgp/util/JustifiedTextView;->currentSentence:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/dp/sgp/util/JustifiedTextView;->fillSentenceWithSpaces(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v3, p0, Lcom/dp/sgp/util/JustifiedTextView;->currentSentence:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 99
    invoke-direct {p0, v4, v5}, Lcom/dp/sgp/util/JustifiedTextView;->addWord(Ljava/lang/String;Z)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->currentSentence:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 105
    iget-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentences:Ljava/util/List;

    iget-object v0, p0, Lcom/dp/sgp/util/JustifiedTextView;->currentSentence:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/dp/sgp/util/JustifiedTextView;->getSentenceFromList(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_4
    iget-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentences:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/dp/sgp/util/JustifiedTextView;->getSentenceFromList(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRandomNumber(I)I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/dp/sgp/util/JustifiedTextView;->random:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private getSentenceFromList(Ljava/util/List;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, " "

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSentenceFromListCheckingNewLines(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\r"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/dp/sgp/util/JustifiedTextView;->justifiedText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/dp/sgp/util/JustifiedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/dp/sgp/util/JustifiedTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/dp/sgp/util/JustifiedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/dp/sgp/util/JustifiedTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dp/sgp/util/JustifiedTextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/dp/sgp/util/JustifiedTextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/dp/sgp/util/JustifiedTextView;->viewWidth:I

    .line 66
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/dp/sgp/util/JustifiedTextView;->viewWidth:I

    if-lez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-direct {p0, v1}, Lcom/dp/sgp/util/JustifiedTextView;->getJustifiedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->justifiedText:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 70
    iget-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->justifiedText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/JustifiedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->sentences:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 72
    iget-object p1, p0, Lcom/dp/sgp/util/JustifiedTextView;->currentSentence:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method
