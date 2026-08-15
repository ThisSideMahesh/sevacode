.class public Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;
.super Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;
.source "DropAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation<",
        "Landroid/animation/AnimatorSet;",
        ">;"
    }
.end annotation


# instance fields
.field private heightEnd:I

.field private heightStart:I

.field private radius:I

.field private value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;

.field private widthEnd:I

.field private widthStart:I


# direct methods
.method public constructor <init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    .line 26
    new-instance p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;

    invoke-direct {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;Landroid/animation/ValueAnimator;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->onAnimatorUpdate(Landroid/animation/ValueAnimator;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;)V

    return-void
.end method

.method private createValueAnimation(IIJLcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 112
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 113
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 115
    new-instance p2, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$1;

    invoke-direct {p2, p0, p5}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$1;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private hasChanges(IIIII)Z
    .locals 2

    .line 149
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->widthStart:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 153
    :cond_0
    iget p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->widthEnd:I

    if-eq p1, p2, :cond_1

    return v1

    .line 157
    :cond_1
    iget p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->heightStart:I

    if-eq p1, p3, :cond_2

    return v1

    .line 161
    :cond_2
    iget p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->heightEnd:I

    if-eq p1, p4, :cond_3

    return v1

    .line 165
    :cond_3
    iget p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->radius:I

    if-eq p1, p5, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private onAnimatorUpdate(Landroid/animation/ValueAnimator;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;)V
    .locals 1

    .line 126
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 128
    sget-object v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$2;->$SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$DropAnimation$AnimationType:[I

    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;

    invoke-virtual {p2, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;->setRadius(I)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;

    invoke-virtual {p2, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;->setHeight(I)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;

    invoke-virtual {p2, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;->setWidth(I)V

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    if-eqz p1, :cond_3

    .line 143
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;

    invoke-interface {p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimator()Landroid/animation/Animator;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->createAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator()Landroid/animation/AnimatorSet;
    .locals 2

    .line 32
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 33
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public bridge synthetic duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;

    move-result-object p1

    return-object p1
.end method

.method public duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    return-object p0
.end method

.method public bridge synthetic progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;

    move-result-object p1

    return-object p1
.end method

.method public progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;
    .locals 11

    .line 40
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    .line 41
    iget-wide v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->animationDuration:J

    long-to-float v0, v0

    mul-float p1, p1, v0

    float-to-long v0, p1

    const/4 p1, 0x0

    .line 44
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 45
    check-cast v3, Landroid/animation/ValueAnimator;

    .line 46
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    if-eqz p1, :cond_1

    sub-long v6, v0, v4

    goto :goto_1

    :cond_1
    move-wide v6, v0

    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_2

    goto :goto_0

    :cond_2
    cmp-long v8, v6, v4

    if-ltz v8, :cond_3

    move-wide v6, v4

    .line 60
    :cond_3
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_4

    .line 61
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_4
    if-nez p1, :cond_0

    .line 64
    iget-wide v6, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->animationDuration:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public with(IIIII)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p5

    .line 81
    invoke-direct/range {p0 .. p5}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->hasChanges(IIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->createAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, v6, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->animator:Landroid/animation/Animator;

    move/from16 v1, p1

    .line 84
    iput v1, v6, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->widthStart:I

    move/from16 v2, p2

    .line 85
    iput v2, v6, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->widthEnd:I

    move/from16 v8, p3

    .line 86
    iput v8, v6, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->heightStart:I

    move/from16 v9, p4

    .line 87
    iput v9, v6, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->heightEnd:I

    .line 88
    iput v7, v6, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->radius:I

    int-to-double v3, v7

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    .line 91
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v10

    double-to-int v10, v3

    .line 92
    iget-wide v3, v6, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->animationDuration:J

    const-wide/16 v11, 0x2

    div-long v11, v3, v11

    .line 94
    iget-wide v3, v6, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->animationDuration:J

    sget-object v5, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;->Width:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->createValueAnimation(IIJLcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 95
    sget-object v5, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;->Height:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;

    move/from16 v1, p3

    move/from16 v2, p4

    move-wide v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->createValueAnimation(IIJLcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v14

    .line 96
    sget-object v5, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;->Radius:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;

    move/from16 v1, p5

    move v2, v10

    invoke-direct/range {v0 .. v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->createValueAnimation(IIJLcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 98
    sget-object v5, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;->Height:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;

    move/from16 v1, p4

    move/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->createValueAnimation(IIJLcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 99
    sget-object v5, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;->Radius:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;

    move v1, v10

    move/from16 v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->createValueAnimation(IIJLcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 101
    iget-object v1, v6, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->animator:Landroid/animation/Animator;

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-object v6
.end method
