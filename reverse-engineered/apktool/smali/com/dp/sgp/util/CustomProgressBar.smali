.class public Lcom/dp/sgp/util/CustomProgressBar;
.super Landroid/widget/SeekBar;
.source "CustomProgressBar.java"


# instance fields
.field private mProgressItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/util/ProgressItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/util/CustomProgressBar;->mProgressItemsList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public initData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/util/ProgressItem;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/dp/sgp/util/CustomProgressBar;->mProgressItemsList:Ljava/util/ArrayList;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 41
    iget-object v0, p0, Lcom/dp/sgp/util/CustomProgressBar;->mProgressItemsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/dp/sgp/util/CustomProgressBar;->getWidth()I

    move-result v0

    .line 43
    invoke-virtual {p0}, Lcom/dp/sgp/util/CustomProgressBar;->getHeight()I

    move-result v1

    .line 44
    invoke-virtual {p0}, Lcom/dp/sgp/util/CustomProgressBar;->getThumbOffset()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 47
    :goto_0
    iget-object v5, p0, Lcom/dp/sgp/util/CustomProgressBar;->mProgressItemsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 48
    iget-object v5, p0, Lcom/dp/sgp/util/CustomProgressBar;->mProgressItemsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/util/ProgressItem;

    .line 49
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/dp/sgp/util/CustomProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, v5, Lcom/dp/sgp/util/ProgressItem;->color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget v5, v5, Lcom/dp/sgp/util/ProgressItem;->progressItemPercentage:F

    int-to-float v7, v0

    mul-float v5, v5, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v5, v7

    float-to-int v5, v5

    add-int/2addr v5, v4

    .line 59
    iget-object v7, p0, Lcom/dp/sgp/util/CustomProgressBar;->mProgressItemsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_0

    if-eq v5, v0, :cond_0

    move v5, v0

    .line 63
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 64
    div-int/lit8 v8, v2, 0x2

    sub-int v9, v1, v8

    invoke-virtual {v7, v4, v8, v5, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 66
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 69
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onMeasure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
