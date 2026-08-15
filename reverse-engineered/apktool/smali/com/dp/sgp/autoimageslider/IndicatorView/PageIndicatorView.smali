.class public Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;
.super Landroid/view/View;
.source "PageIndicatorView.java"

# interfaces
.implements Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;
.implements Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager$Listener;
.implements Lcom/dp/sgp/autoimageslider/SliderPager$OnAdapterChangeListener;


# instance fields
.field private isInteractionEnabled:Z

.field private manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

.field private setObserver:Landroid/database/DataSetObserver;

.field private viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    invoke-direct {p0, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->updateState()V

    return-void
.end method

.method private adjustPosition(I)I
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private findViewPager(Landroid/view/ViewGroup;I)Lcom/dp/sgp/autoimageslider/SliderPager;
    .locals 2

    .line 644
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 648
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 649
    instance-of p2, p1, Lcom/dp/sgp/autoimageslider/SliderPager;

    if-eqz p2, :cond_1

    .line 650
    check-cast p1, Lcom/dp/sgp/autoimageslider/SliderPager;

    return-object p1

    :cond_1
    return-object v1
.end method

.method private findViewPager(Landroid/view/ViewParent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 624
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 626
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getViewPagerId()I

    move-result v0

    .line 633
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->findViewPager(Landroid/view/ViewGroup;I)Lcom/dp/sgp/autoimageslider/SliderPager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 636
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setViewPager(Lcom/dp/sgp/autoimageslider/SliderPager;)V

    goto :goto_1

    .line 638
    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->findViewPager(Landroid/view/ViewParent;)V

    :goto_1
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 0

    .line 475
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setupId()V

    .line 476
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->initIndicatorManager(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initIndicatorManager(Landroid/util/AttributeSet;)V
    .locals 2

    .line 486
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-direct {v0, p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager$Listener;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    .line 487
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->drawer()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 489
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object p1

    .line 490
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setPaddingLeft(I)V

    .line 491
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setPaddingTop(I)V

    .line 492
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setPaddingRight(I)V

    .line 493
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setPaddingBottom(I)V

    .line 494
    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->isInteractionEnabled:Z

    return-void
.end method

.method private isRtl()Z
    .locals 4

    .line 605
    sget-object v0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView$2;->$SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$draw$data$RtlMode:[I

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRtlMode()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private isViewMeasured()Z
    .locals 1

    .line 620
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onPageScroll(IF)V
    .locals 4

    .line 589
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationType()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    move-result-object v1

    .line 591
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v2

    .line 592
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->isViewMeasured()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->NONE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 598
    :cond_1
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->isRtl()Z

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getProgress(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;IFZ)Landroid/util/Pair;

    move-result-object p1

    .line 599
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 600
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 601
    invoke-virtual {p0, p2, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setProgress(IF)V

    return-void
.end method

.method private onPageSelect(I)V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    .line 576
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->isViewMeasured()Z

    move-result v1

    .line 577
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getCount()I

    move-result v0

    if-eqz v1, :cond_1

    .line 580
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 584
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setSelection(I)V

    :cond_1
    return-void
.end method

.method private registerSetObserver()V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView$1;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupId()V
    .locals 2

    .line 480
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 481
    invoke-static {}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/IdUtils;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setId(I)V

    :cond_0
    return-void
.end method

.method private unRegisterSetObserver()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    .line 523
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 525
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateState()V
    .locals 3

    .line 530
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 538
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->getCurrentItem()I

    move-result v1

    rem-int/2addr v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 544
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->getCurrentItem()I

    move-result v1

    .line 547
    :goto_0
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    sub-int v1, v2, v1

    .line 548
    :cond_3
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectedPosition(I)V

    .line 549
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectingPosition(I)V

    .line 550
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 551
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setCount(I)V

    .line 552
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->animate()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;->end()V

    .line 554
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->updateVisibility()V

    .line 555
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->requestLayout()V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateVisibility()V
    .locals 4

    .line 559
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isAutoVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getCount()I

    move-result v0

    .line 564
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    .line 567
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    if-gt v0, v2, :cond_2

    .line 570
    invoke-virtual {p0, v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    const/4 v1, 0x0

    .line 432
    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setInteractiveAnimation(Z)V

    const/4 v1, -0x1

    .line 433
    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 434
    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectingPosition(I)V

    .line 435
    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectedPosition(I)V

    .line 436
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->animate()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;->basic()V

    return-void
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getCount()I

    move-result v0

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getPadding()I

    move-result v0

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRadius()I

    move-result v0

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getScaleFactor()F

    move-result v0

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    return v0
.end method

.method public getSelection()I
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getStroke()I

    move-result v0

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getUnselectedColor()I

    move-result v0

    return v0
.end method

.method public onAdapterChanged(Lcom/dp/sgp/autoimageslider/SliderPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->updateState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 68
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->findViewPager(Landroid/view/ViewParent;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->unRegisterSetObserver()V

    .line 74
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->drawer()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onIndicatorUpdated()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->drawer()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;->measureViewSize(II)Landroid/util/Pair;

    move-result-object p1

    .line 106
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object p1

    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->isInteractionEnabled:Z

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setInteractiveAnimation(Z)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->onPageScroll(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->onPageSelect(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 90
    instance-of v0, p1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/PositionSavedState;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    .line 92
    check-cast p1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/PositionSavedState;

    .line 93
    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/PositionSavedState;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectedPosition(I)V

    .line 94
    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/PositionSavedState;->getSelectingPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectingPosition(I)V

    .line 95
    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/PositionSavedState;->getLastSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 96
    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/PositionSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/PositionSavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/PositionSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 81
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/PositionSavedState;->setSelectedPosition(I)V

    .line 82
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectingPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/PositionSavedState;->setSelectingPosition(I)V

    .line 83
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/PositionSavedState;->setLastSelectedPosition(I)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->drawer()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;->touch(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public releaseViewPager()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->removeOnPageChangeListener(Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;)V

    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    :cond_0
    return-void
.end method

.method public setAnimationDuration(J)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setAnimationDuration(J)V

    return-void
.end method

.method public setAnimationType(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->onValueUpdated(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setAnimationType(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object p1

    sget-object v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->NONE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setAnimationType(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;)V

    .line 337
    :goto_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setAutoVisibility(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setVisibility(I)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setAutoVisibility(Z)V

    .line 307
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->updateVisibility()V

    return-void
.end method

.method public setClickListener(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->drawer()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;->setClickListener(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;)V

    return-void
.end method

.method public setCount(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getCount()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setCount(I)V

    .line 152
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->updateVisibility()V

    .line 153
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDynamicCount(Z)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setDynamicCount(Z)V

    if-eqz p1, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->registerSetObserver()V

    goto :goto_0

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->unRegisterSetObserver()V

    :goto_0
    return-void
.end method

.method public setInteractiveAnimation(Z)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 343
    iput-boolean p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->isInteractionEnabled:Z

    return-void
.end method

.method public setOrientation(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setOrientation(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;)V

    .line 314
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setPadding(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setPadding(I)V

    .line 217
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setPadding(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 205
    :cond_0
    invoke-static {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/DensityUtils;->dpToPx(I)I

    move-result p1

    .line 206
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setPadding(I)V

    .line 207
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setProgress(IF)V
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 446
    :cond_0
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :cond_3
    :goto_1
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p2, v1

    if-gez v3, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    cmpl-float v1, p2, v2

    if-lez v1, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_5
    :goto_2
    cmpl-float v1, p2, v2

    if-nez v1, :cond_6

    .line 462
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 463
    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectedPosition(I)V

    .line 466
    :cond_6
    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectingPosition(I)V

    .line 467
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->animate()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;->interactive(F)V

    return-void
.end method

.method public setRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setRadius(I)V

    .line 191
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 179
    :cond_0
    invoke-static {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/DensityUtils;->dpToPx(I)I

    move-result p1

    .line 180
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setRadius(I)V

    .line 181
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setRtlMode(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    if-nez p1, :cond_0

    .line 374
    sget-object p1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;->Off:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setRtlMode(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;)V

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setRtlMode(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;)V

    .line 379
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    if-nez p1, :cond_1

    return-void

    .line 383
    :cond_1
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result p1

    .line 386
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    goto :goto_1

    .line 389
    :cond_2
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    if-eqz v1, :cond_3

    .line 390
    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->getCurrentItem()I

    move-result p1

    .line 393
    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 394
    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectingPosition(I)V

    .line 395
    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectedPosition(I)V

    .line 396
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 3

    const v0, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const p1, 0x3e99999a    # 0.3f

    .line 234
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setScaleFactor(F)V

    return-void
.end method

.method public setSelected(I)V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationType()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    move-result-object v1

    .line 423
    sget-object v2, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->NONE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    invoke-virtual {v0, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setAnimationType(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;)V

    .line 425
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setSelection(I)V

    .line 426
    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setAnimationType(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;)V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectedColor(I)V

    .line 281
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    .line 407
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->adjustPosition(I)I

    move-result p1

    .line 409
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    if-eq p1, v1, :cond_1

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 413
    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 414
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 415
    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectingPosition(I)V

    .line 416
    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectedPosition(I)V

    .line 417
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->animate()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;->basic()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRadius()I

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    .line 253
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setStroke(I)V

    .line 254
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .line 259
    invoke-static {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/DensityUtils;->dpToPx(I)I

    move-result p1

    .line 260
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRadius()I

    move-result v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 269
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setStroke(I)V

    .line 270
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setUnselectedColor(I)V

    .line 292
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setViewPager(Lcom/dp/sgp/autoimageslider/SliderPager;)V
    .locals 1

    .line 348
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->releaseViewPager()V

    if-nez p1, :cond_0

    return-void

    .line 353
    :cond_0
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    .line 354
    invoke-virtual {p1, p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->addOnPageChangeListener(Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;)V

    .line 355
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {p1, p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->addOnAdapterChangeListener(Lcom/dp/sgp/autoimageslider/SliderPager$OnAdapterChangeListener;)V

    .line 356
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->viewPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setViewPagerId(I)V

    .line 358
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->manager:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isDynamicCount()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setDynamicCount(Z)V

    .line 359
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->updateState()V

    return-void
.end method
