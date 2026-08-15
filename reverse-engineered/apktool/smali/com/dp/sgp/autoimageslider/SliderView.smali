.class public Lcom/dp/sgp/autoimageslider/SliderView;
.super Landroid/widget/FrameLayout;
.source "SliderView.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/dp/sgp/autoimageslider/SliderViewAdapter$DataSetListener;
.implements Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/autoimageslider/SliderView$OnSliderPageListener;
    }
.end annotation


# static fields
.field public static final AUTO_CYCLE_DIRECTION_BACK_AND_FORTH:I = 0x2

.field public static final AUTO_CYCLE_DIRECTION_LEFT:I = 0x1

.field public static final AUTO_CYCLE_DIRECTION_RIGHT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Slider View : "


# instance fields
.field private mAutoCycleDirection:I

.field private mFlagBackAndForth:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInfinitePagerAdapter:Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;

.field private mIsAutoCycle:Z

.field private mIsIndicatorEnabled:Z

.field private mIsInfiniteAdapter:Z

.field private mPageListener:Lcom/dp/sgp/autoimageslider/SliderView$OnSliderPageListener;

.field private mPagerAdapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

.field private mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

.field private mPreviousPosition:I

.field private mScrollTimeInMillis:I

.field private mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsInfiniteAdapter:Z

    .line 75
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsIndicatorEnabled:Z

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPreviousPosition:I

    .line 81
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderView;->setupSlideView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsInfiniteAdapter:Z

    .line 75
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsIndicatorEnabled:Z

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPreviousPosition:I

    .line 86
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderView;->setupSlideView(Landroid/content/Context;)V

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setUpAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x1

    .line 74
    iput-boolean p3, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsInfiniteAdapter:Z

    .line 75
    iput-boolean p3, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsIndicatorEnabled:Z

    const/4 p3, -0x1

    .line 76
    iput p3, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPreviousPosition:I

    .line 92
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderView;->setupSlideView(Landroid/content/Context;)V

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setUpAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getAdapterItemsCount()I
    .locals 2

    .line 529
    :try_start_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->getSliderAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "Slider View : "

    const-string v1, "getAdapterItemsCount: Slider Adapter is null so, it can\'t get count of items"

    .line 531
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private initIndicator()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    .line 168
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x51

    .line 172
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x14

    .line 173
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 174
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {p0, v2, v1, v0}, Lcom/dp/sgp/autoimageslider/SliderView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v0, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setViewPager(Lcom/dp/sgp/autoimageslider/SliderPager;)V

    .line 177
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setDynamicCount(Z)V

    return-void
.end method

.method private setUpAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .line 104
    sget-object v0, Lcom/dp/sgp/R$styleable;->SliderView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/16 v2, 0xfa

    .line 107
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v3, 0x11

    const/4 v4, 0x2

    .line 108
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 109
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v6, 0x12

    .line 110
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 113
    invoke-virtual {p0, v2}, Lcom/dp/sgp/autoimageslider/SliderView;->setSliderAnimationDuration(I)V

    .line 114
    invoke-virtual {p0, v3}, Lcom/dp/sgp/autoimageslider/SliderView;->setScrollTimeInSec(I)V

    .line 115
    invoke-virtual {p0, v5}, Lcom/dp/sgp/autoimageslider/SliderView;->setAutoCycle(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderView;->setAutoCycleDirection(I)V

    .line 117
    invoke-virtual {p0, v6}, Lcom/dp/sgp/autoimageslider/SliderView;->setAutoCycle(Z)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorEnabled(Z)V

    .line 121
    iget-boolean p2, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsIndicatorEnabled:Z

    if-eqz p2, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->initIndicator()V

    const/16 p2, 0xb

    .line 123
    sget-object v0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;->HORIZONTAL:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;->ordinal()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-nez p2, :cond_0

    .line 126
    sget-object p2, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;->HORIZONTAL:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    goto :goto_0

    .line 128
    :cond_0
    sget-object p2, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;->VERTICAL:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    :goto_0
    const/16 v0, 0xd

    .line 130
    invoke-static {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/DensityUtils;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x3

    .line 131
    invoke-static {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/DensityUtils;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0xc

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    const/4 v4, 0x6

    .line 132
    invoke-static {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/DensityUtils;->dpToPx(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    const/16 v5, 0x8

    .line 133
    invoke-static {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/DensityUtils;->dpToPx(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    const/16 v6, 0xa

    .line 134
    invoke-static {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/DensityUtils;->dpToPx(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    const/16 v7, 0x9

    .line 135
    invoke-static {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/DensityUtils;->dpToPx(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x7

    .line 136
    invoke-static {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/DensityUtils;->dpToPx(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    const/4 v8, 0x5

    const/16 v9, 0x51

    .line 137
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/16 v9, 0x10

    const-string v10, "#33ffffff"

    .line 138
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    const/16 v10, 0xf

    const-string v11, "#ffffff"

    .line 139
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    const/16 v11, 0x15e

    .line 140
    invoke-virtual {p1, v1, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/16 v11, 0xe

    .line 141
    sget-object v12, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;->Off:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    invoke-virtual {v12}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;->ordinal()I

    move-result v12

    invoke-virtual {p1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 142
    invoke-static {v11}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->getRtlMode(I)Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    move-result-object v11

    .line 144
    invoke-virtual {p0, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorOrientation(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorRadius(I)V

    .line 146
    invoke-virtual {p0, v2}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorPadding(I)V

    .line 147
    invoke-virtual {p0, v4}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorMargin(I)V

    .line 148
    invoke-virtual {p0, v5, v6, v7, v3}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorMarginCustom(IIII)V

    .line 149
    invoke-virtual {p0, v8}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorGravity(I)V

    .line 150
    invoke-virtual {p0, v5, v6, v7, v3}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorMargins(IIII)V

    .line 151
    invoke-virtual {p0, v9}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorUnselectedColor(I)V

    .line 152
    invoke-virtual {p0, v10}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorSelectedColor(I)V

    int-to-long v0, v1

    .line 153
    invoke-virtual {p0, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorAnimationDuration(J)V

    .line 154
    invoke-virtual {p0, v11}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorRtlMode(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;)V

    .line 158
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setupSlideView(Landroid/content/Context;)V
    .locals 2

    .line 188
    new-instance v0, Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-direct {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    const/4 p1, 0x1

    .line 189
    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setOverScrollMode(I)V

    .line 190
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-static {}, Landroid/support/v4/view/ViewCompat;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setId(I)V

    .line 191
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 195
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/dp/sgp/autoimageslider/SliderView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {p1, p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {p1, p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->addOnPageChangeListener(Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public dataSetChanged()V
    .locals 2

    .line 711
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsInfiniteAdapter:Z

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mInfinitePagerAdapter:Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->notifyDataSetChanged()V

    .line 713
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public getAutoCycleDirection()I
    .locals 1

    .line 574
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mAutoCycleDirection:I

    return v0
.end method

.method public getCurrentPagePosition()I
    .locals 2

    .line 439
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->getSliderAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    const-string v1, "Adapter not set"

    .line 442
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->getSliderPager()Lcom/dp/sgp/autoimageslider/SliderPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getIndicatorRadius()I
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getRadius()I

    move-result v0

    return v0
.end method

.method public getIndicatorSelectedColor()I
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getSelectedColor()I

    move-result v0

    return v0
.end method

.method public getIndicatorUnselectedColor()I
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getUnselectedColor()I

    move-result v0

    return v0
.end method

.method public getPagerIndicator()Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    return-object v0
.end method

.method public getScrollTimeInMillis()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mScrollTimeInMillis:I

    return v0
.end method

.method public getScrollTimeInSec()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mScrollTimeInMillis:I

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getSliderAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerAdapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    return-object v0
.end method

.method public getSliderPager()Lcom/dp/sgp/autoimageslider/SliderPager;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    return-object v0
.end method

.method public isAutoCycle()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsAutoCycle:Z

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPageListener:Lcom/dp/sgp/autoimageslider/SliderView$OnSliderPageListener;

    if-eqz v0, :cond_0

    .line 725
    invoke-interface {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderView$OnSliderPageListener;->onSliderPageChanged(I)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 384
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->isAutoCycle()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 385
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->stopAutoCycle()V

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 389
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/dp/sgp/autoimageslider/SliderView$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/autoimageslider/SliderView$1;-><init>(Lcom/dp/sgp/autoimageslider/SliderView;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 4

    .line 647
    :try_start_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->slideToNextPosition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsAutoCycle:Z

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mScrollTimeInMillis:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 649
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsAutoCycle:Z

    if-eqz v1, :cond_1

    .line 651
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mScrollTimeInMillis:I

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 653
    :cond_1
    throw v0
.end method

.method public setAutoCycle(Z)V
    .locals 0

    .line 272
    iput-boolean p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsAutoCycle:Z

    return-void
.end method

.method public setAutoCycleDirection(I)V
    .locals 0

    .line 564
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mAutoCycleDirection:I

    return-void
.end method

.method public setCurrentPageListener(Lcom/dp/sgp/autoimageslider/SliderView$OnSliderPageListener;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPageListener:Lcom/dp/sgp/autoimageslider/SliderView$OnSliderPageListener;

    return-void
.end method

.method public setCurrentPagePosition(I)V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCustomSliderTransformAnimation(Lcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    return-void
.end method

.method public setIndicatorAnimation(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;)V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setAnimationType(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;)V

    return-void
.end method

.method public setIndicatorAnimationDuration(J)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setAnimationDuration(J)V

    return-void
.end method

.method public setIndicatorEnabled(Z)V
    .locals 1

    .line 456
    iput-boolean p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsIndicatorEnabled:Z

    .line 457
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->initIndicator()V

    :cond_0
    return-void
.end method

.method public setIndicatorGravity(I)V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 474
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 475
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIndicatorMargin(I)V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 603
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 604
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIndicatorMarginCustom(IIII)V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 609
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 610
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIndicatorMargins(IIII)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 495
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 496
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIndicatorOrientation(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setOrientation(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;)V

    return-void
.end method

.method public setIndicatorPadding(I)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setPadding(I)V

    return-void
.end method

.method public setIndicatorRadius(I)V
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setRadius(I)V

    return-void
.end method

.method public setIndicatorRtlMode(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;)V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setRtlMode(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;)V

    return-void
.end method

.method public setIndicatorSelectedColor(I)V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setSelectedColor(I)V

    return-void
.end method

.method public setIndicatorUnselectedColor(I)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setUnselectedColor(I)V

    return-void
.end method

.method public setIndicatorVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 518
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setVisibility(I)V

    goto :goto_0

    .line 520
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setInfiniteAdapterEnabled(Z)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerAdapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0, v0, p1}, Lcom/dp/sgp/autoimageslider/SliderView;->setSliderAdapter(Lcom/dp/sgp/autoimageslider/SliderViewAdapter;Z)V

    :cond_0
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public setOnIndicatorClickListener(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;->setClickListener(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;)V

    return-void
.end method

.method public setPageIndicatorView(Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerIndicator:Lcom/dp/sgp/autoimageslider/IndicatorView/PageIndicatorView;

    .line 452
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->initIndicator()V

    return-void
.end method

.method public setScrollTimeInMillis(I)V
    .locals 0

    .line 303
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mScrollTimeInMillis:I

    return-void
.end method

.method public setScrollTimeInSec(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x3e8

    .line 295
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mScrollTimeInMillis:I

    return-void
.end method

.method public setSliderAdapter(Lcom/dp/sgp/autoimageslider/SliderViewAdapter;)V
    .locals 1

    .line 219
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerAdapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    .line 221
    new-instance v0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;

    invoke-direct {v0, p1}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;-><init>(Lcom/dp/sgp/autoimageslider/SliderViewAdapter;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mInfinitePagerAdapter:Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;

    .line 223
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 224
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerAdapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    invoke-virtual {p1, p0}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->dataSetChangedListener(Lcom/dp/sgp/autoimageslider/SliderViewAdapter$DataSetListener;)V

    const/4 p1, 0x0

    .line 226
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderView;->setCurrentPagePosition(I)V

    return-void
.end method

.method public setSliderAdapter(Lcom/dp/sgp/autoimageslider/SliderViewAdapter;Z)V
    .locals 0

    .line 234
    iput-boolean p2, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mIsInfiniteAdapter:Z

    if-nez p2, :cond_0

    .line 236
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPagerAdapter:Lcom/dp/sgp/autoimageslider/SliderViewAdapter;

    .line 237
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {p2, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderView;->setSliderAdapter(Lcom/dp/sgp/autoimageslider/SliderViewAdapter;)V

    :goto_0
    return-void
.end method

.method public setSliderAnimationDuration(I)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollDuration(I)V

    return-void
.end method

.method public setSliderAnimationDuration(ILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollDuration(ILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setSliderTransformAnimation(Lcom/dp/sgp/autoimageslider/SliderAnimations;)V
    .locals 2

    .line 311
    sget-object v0, Lcom/dp/sgp/autoimageslider/SliderView$2;->$SwitchMap$com$dp$sgp$autoimageslider$SliderAnimations:[I

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/SliderAnimations;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 376
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/SimpleTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/SimpleTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto/16 :goto_0

    .line 373
    :pswitch_0
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/ZoomOutTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/ZoomOutTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto/16 :goto_0

    .line 370
    :pswitch_1
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/VerticalShutTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/VerticalShutTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto/16 :goto_0

    .line 367
    :pswitch_2
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/VerticalFlipTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/VerticalFlipTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto/16 :goto_0

    .line 364
    :pswitch_3
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/TossTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/TossTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto/16 :goto_0

    .line 361
    :pswitch_4
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/SpinnerTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/SpinnerTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto/16 :goto_0

    .line 358
    :pswitch_5
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/PopTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/PopTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto/16 :goto_0

    .line 355
    :pswitch_6
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/HorizontalFlipTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/HorizontalFlipTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto/16 :goto_0

    .line 352
    :pswitch_7
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/HingeTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/HingeTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto/16 :goto_0

    .line 349
    :pswitch_8
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/GateTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/GateTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto/16 :goto_0

    .line 346
    :pswitch_9
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/FidgetSpinTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/FidgetSpinTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto/16 :goto_0

    .line 343
    :pswitch_a
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/FanTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/FanTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto/16 :goto_0

    .line 340
    :pswitch_b
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/FadeTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/FadeTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto :goto_0

    .line 337
    :pswitch_c
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/DepthTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/DepthTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto :goto_0

    .line 334
    :pswitch_d
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/CubeOutScalingTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/CubeOutScalingTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto :goto_0

    .line 331
    :pswitch_e
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/CubeOutRotationTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/CubeOutRotationTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto :goto_0

    .line 328
    :pswitch_f
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/CubeOutDepthTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/CubeOutDepthTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto :goto_0

    .line 325
    :pswitch_10
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/CubeInScalingTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/CubeInScalingTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto :goto_0

    .line 322
    :pswitch_11
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/CubeInRotationTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/CubeInRotationTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto :goto_0

    .line 319
    :pswitch_12
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/CubeInDepthTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/CubeInDepthTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto :goto_0

    .line 316
    :pswitch_13
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/Clock_SpinTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/Clock_SpinTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    goto :goto_0

    .line 313
    :pswitch_14
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    new-instance v1, Lcom/dp/sgp/autoimageslider/Transformations/AntiClockSpinTransformation;

    invoke-direct {v1}, Lcom/dp/sgp/autoimageslider/Transformations/AntiClockSpinTransformation;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public slideToNextPosition()V
    .locals 5

    .line 658
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getCurrentItem()I

    move-result v0

    .line 659
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->getAdapterItemsCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 661
    iget v3, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mAutoCycleDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sub-int/2addr v1, v2

    .line 662
    rem-int v1, v0, v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPreviousPosition:I

    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->getAdapterItemsCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPreviousPosition:I

    if-eqz v1, :cond_0

    .line 663
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mFlagBackAndForth:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mFlagBackAndForth:Z

    .line 665
    :cond_0
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mFlagBackAndForth:Z

    if-eqz v1, :cond_1

    .line 666
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 668
    :cond_1
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(IZ)V

    .line 671
    :cond_2
    :goto_0
    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mAutoCycleDirection:I

    if-ne v1, v2, :cond_3

    .line 672
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(IZ)V

    .line 674
    :cond_3
    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mAutoCycleDirection:I

    if-nez v1, :cond_4

    .line 675
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(IZ)V

    .line 678
    :cond_4
    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPreviousPosition:I

    return-void
.end method

.method public slideToPreviousPosition()V
    .locals 5

    .line 684
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getCurrentItem()I

    move-result v0

    .line 685
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->getAdapterItemsCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 688
    iget v3, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mAutoCycleDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sub-int/2addr v1, v2

    .line 689
    rem-int v1, v0, v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPreviousPosition:I

    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderView;->getAdapterItemsCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPreviousPosition:I

    if-eqz v1, :cond_0

    .line 690
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mFlagBackAndForth:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mFlagBackAndForth:Z

    .line 692
    :cond_0
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mFlagBackAndForth:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPreviousPosition:I

    if-ge v0, v1, :cond_1

    .line 693
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(IZ)V

    .line 698
    :cond_2
    :goto_0
    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mAutoCycleDirection:I

    if-ne v1, v2, :cond_3

    .line 699
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(IZ)V

    .line 701
    :cond_3
    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mAutoCycleDirection:I

    if-nez v1, :cond_4

    .line 702
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mSliderPager:Lcom/dp/sgp/autoimageslider/SliderPager;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(IZ)V

    .line 705
    :cond_4
    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mPreviousPosition:I

    return-void
.end method

.method public startAutoCycle()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 545
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mScrollTimeInMillis:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopAutoCycle()V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
