.class public Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;
.super Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;
.source "ThinWormAnimation.java"


# instance fields
.field private value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    .line 16
    new-instance p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    invoke-direct {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->onAnimateUpdated(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private createHeightAnimator(IIJ)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 65
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 66
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 68
    new-instance p2, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation$1;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private onAnimateUpdated(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;->setHeight(I)V

    .line 81
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    invoke-interface {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;

    move-result-object p1

    return-object p1
.end method

.method public duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;
    .locals 0

    .line 21
    invoke-super {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;

    return-object p0
.end method

.method public bridge synthetic duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;

    move-result-object p1

    return-object p1
.end method

.method public progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;
    .locals 11

    .line 88
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    .line 89
    iget-wide v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->animationDuration:J

    long-to-float v0, v0

    mul-float p1, p1, v0

    float-to-long v0, p1

    .line 90
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->animator:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_4

    .line 93
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->animator:Landroid/animation/Animator;

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    .line 95
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 96
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_0

    move-wide v4, v6

    goto :goto_1

    :cond_0
    cmp-long v6, v4, v8

    if-gez v6, :cond_1

    move-wide v4, v8

    :cond_1
    :goto_1
    add-int/lit8 v6, p1, -0x1

    if-ne v2, v6, :cond_2

    cmp-long v6, v4, v8

    if-gtz v6, :cond_2

    goto :goto_2

    .line 109
    :cond_2
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_3

    .line 110
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public bridge synthetic progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;

    move-result-object p1

    return-object p1
.end method

.method public with(IIIZ)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;
    .locals 19

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v8, p3

    move/from16 v1, p4

    .line 27
    invoke-virtual/range {p0 .. p4}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->hasChanges(IIIZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->createAnimator()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->animator:Landroid/animation/Animator;

    .line 30
    iput v0, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->coordinateStart:I

    move/from16 v2, p2

    .line 31
    iput v2, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->coordinateEnd:I

    .line 33
    iput v8, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->radius:I

    .line 34
    iput-boolean v1, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->isRightSide:Z

    mul-int/lit8 v9, v8, 0x2

    sub-int v2, v0, v8

    .line 37
    iput v2, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->rectLeftEdge:I

    add-int/2addr v0, v8

    .line 38
    iput v0, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->rectRightEdge:I

    .line 40
    iget-object v0, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    iget v2, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->rectLeftEdge:I

    invoke-virtual {v0, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;->setRectStart(I)V

    .line 41
    iget-object v0, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    iget v2, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->rectRightEdge:I

    invoke-virtual {v0, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;->setRectEnd(I)V

    .line 42
    iget-object v0, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    invoke-virtual {v0, v9}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;->setHeight(I)V

    .line 44
    invoke-virtual {v7, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->createRectValues(Z)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation$RectValues;

    move-result-object v10

    .line 45
    iget-wide v0, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->animationDuration:J

    long-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v11, v0

    .line 46
    iget-wide v0, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->animationDuration:J

    long-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v13, v0

    .line 48
    iget-wide v0, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->animationDuration:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v5, v0

    .line 49
    iget-wide v0, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->animationDuration:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v3, v0

    .line 51
    iget v1, v10, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation$RectValues;->fromX:I

    iget v2, v10, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation$RectValues;->toX:I

    const/4 v15, 0x0

    iget-object v0, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v17, v3

    move-wide v3, v11

    move/from16 p2, v9

    move-wide v8, v5

    move v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->createWormAnimator(IIJZLcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/WormAnimationValue;)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 52
    iget v1, v10, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation$RectValues;->reverseFromX:I

    iget v2, v10, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation$RectValues;->reverseToX:I

    const/4 v5, 0x1

    iget-object v6, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    invoke-virtual/range {v0 .. v6}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->createWormAnimator(IIJZLcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/WormAnimationValue;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    move/from16 v2, p2

    move/from16 v1, p3

    move-wide v3, v8

    .line 55
    invoke-direct {v7, v2, v1, v3, v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->createHeightAnimator(IIJ)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 56
    invoke-direct {v7, v1, v2, v3, v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->createHeightAnimator(IIJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    move-wide/from16 v2, v17

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 59
    iget-object v2, v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/AnimatorSet;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v5, v3, v0

    const/4 v0, 0x3

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-object v7
.end method
