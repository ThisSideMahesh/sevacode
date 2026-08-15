.class public Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;
.super Ljava/lang/Object;
.source "AttributeController.java"


# instance fields
.field private indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    return-void
.end method

.method private getAnimationType(I)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 163
    sget-object p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->NONE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object p1

    .line 160
    :pswitch_0
    sget-object p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->SCALE_DOWN:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object p1

    .line 158
    :pswitch_1
    sget-object p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->SWAP:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object p1

    .line 156
    :pswitch_2
    sget-object p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->DROP:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object p1

    .line 154
    :pswitch_3
    sget-object p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->THIN_WORM:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object p1

    .line 152
    :pswitch_4
    sget-object p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->FILL:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object p1

    .line 150
    :pswitch_5
    sget-object p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->SLIDE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object p1

    .line 148
    :pswitch_6
    sget-object p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->WORM:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object p1

    .line 146
    :pswitch_7
    sget-object p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->SCALE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object p1

    .line 144
    :pswitch_8
    sget-object p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->COLOR:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object p1

    .line 142
    :pswitch_9
    sget-object p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->NONE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static getRtlMode(I)Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 176
    sget-object p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;->Auto:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    return-object p0

    .line 173
    :cond_0
    sget-object p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;->Auto:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    return-object p0

    .line 171
    :cond_1
    sget-object p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;->Off:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    return-object p0

    .line 169
    :cond_2
    sget-object p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;->On:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    return-object p0
.end method

.method private initAnimationAttribute(Landroid/content/res/TypedArray;)V
    .locals 6

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/16 v2, 0x15e

    .line 78
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v2, 0x1

    .line 83
    sget-object v3, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->NONE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    invoke-virtual {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 84
    invoke-direct {p0, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->getAnimationType(I)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    move-result-object v2

    const/16 v3, 0x9

    .line 86
    sget-object v4, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;->Off:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    invoke-virtual {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;->ordinal()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 87
    invoke-static {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->getRtlMode(I)Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    move-result-object p1

    .line 89
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setAnimationDuration(J)V

    .line 90
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 91
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setAnimationType(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;)V

    .line 92
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setRtlMode(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;)V

    return-void
.end method

.method private initColorAttribute(Landroid/content/res/TypedArray;)V
    .locals 3

    const-string v0, "#33ffffff"

    .line 69
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    const-string v1, "#ffffff"

    .line 70
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 72
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setUnselectedColor(I)V

    .line 73
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectedColor(I)V

    return-void
.end method

.method private initCountAttribute(Landroid/content/res/TypedArray;)V
    .locals 7

    const/16 v0, 0xf

    const/4 v1, -0x1

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 42
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 43
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v5, 0x3

    .line 44
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const/16 v1, 0xb

    .line 50
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    if-lez v5, :cond_2

    add-int/lit8 v4, v5, -0x1

    if-le p1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, p1

    .line 57
    :goto_1
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setViewPagerId(I)V

    .line 58
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {p1, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setAutoVisibility(Z)V

    .line 59
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {p1, v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setDynamicCount(Z)V

    .line 60
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {p1, v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setCount(I)V

    .line 62
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {p1, v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectedPosition(I)V

    .line 63
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {p1, v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setSelectingPosition(I)V

    .line 64
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {p1, v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setLastSelectedPosition(I)V

    return-void
.end method

.method private initSizeAttribute(Landroid/content/res/TypedArray;)V
    .locals 8

    .line 96
    sget-object v0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;->HORIZONTAL:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;->ordinal()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;->HORIZONTAL:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    goto :goto_0

    .line 102
    :cond_0
    sget-object v0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;->VERTICAL:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    .line 105
    :goto_0
    invoke-static {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/DensityUtils;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x0

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    const/4 v4, 0x7

    .line 110
    invoke-static {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/DensityUtils;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    const/16 v4, 0xa

    const v5, 0x3f333333    # 0.7f

    .line 115
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    cmpg-float v7, v4, v6

    if-gez v7, :cond_3

    const v4, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_3
    cmpl-float v6, v4, v5

    if-lez v6, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_4
    :goto_1
    const/16 v5, 0xd

    const/4 v6, 0x1

    .line 123
    invoke-static {v6}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/DensityUtils;->dpToPx(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    if-le p1, v1, :cond_5

    move p1, v1

    .line 128
    :cond_5
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationType()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    move-result-object v5

    sget-object v6, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->FILL:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    if-eq v5, v6, :cond_6

    goto :goto_2

    :cond_6
    move v3, p1

    .line 132
    :goto_2
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {p1, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setRadius(I)V

    .line 133
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setOrientation(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;)V

    .line 134
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {p1, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setPadding(I)V

    .line 135
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {p1, v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setScaleFactor(F)V

    .line 136
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {p1, v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->setStroke(I)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 32
    sget-object v0, Lcom/dp/sgp/R$styleable;->PageIndicatorView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->initCountAttribute(Landroid/content/res/TypedArray;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->initColorAttribute(Landroid/content/res/TypedArray;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->initAnimationAttribute(Landroid/content/res/TypedArray;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/AttributeController;->initSizeAttribute(Landroid/content/res/TypedArray;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
