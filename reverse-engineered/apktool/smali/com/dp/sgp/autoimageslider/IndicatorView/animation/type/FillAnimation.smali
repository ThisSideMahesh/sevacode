.class public Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;
.super Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ColorAnimation;
.source "FillAnimation.java"


# static fields
.field private static final ANIMATION_RADIUS:Ljava/lang/String; = "ANIMATION_RADIUS"

.field private static final ANIMATION_RADIUS_REVERSE:Ljava/lang/String; = "ANIMATION_RADIUS_REVERSE"

.field private static final ANIMATION_STROKE:Ljava/lang/String; = "ANIMATION_STROKE"

.field private static final ANIMATION_STROKE_REVERSE:Ljava/lang/String; = "ANIMATION_STROKE_REVERSE"

.field public static final DEFAULT_STROKE_DP:I = 0x1


# instance fields
.field private radius:I

.field private stroke:I

.field private value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ColorAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    .line 28
    new-instance p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

    invoke-direct {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->onAnimateUpdated(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private createRadiusPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;
    .locals 4

    if-eqz p1, :cond_0

    .line 88
    iget p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->radius:I

    div-int/lit8 v0, p1, 0x2

    const-string v1, "ANIMATION_RADIUS_REVERSE"

    goto :goto_0

    .line 92
    :cond_0
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->radius:I

    .line 93
    div-int/lit8 p1, v0, 0x2

    const-string v1, "ANIMATION_RADIUS"

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p1, v2, v0

    .line 96
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 97
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object p1
.end method

.method private createStrokePropertyHolder(Z)Landroid/animation/PropertyValuesHolder;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 110
    iget p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->radius:I

    const-string v1, "ANIMATION_STROKE_REVERSE"

    move-object v2, v1

    const/4 v1, 0x0

    goto :goto_0

    .line 115
    :cond_0
    iget p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->radius:I

    const-string v1, "ANIMATION_STROKE"

    move-object v2, v1

    move v1, p1

    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v0

    const/4 p1, 0x1

    aput v1, v3, p1

    .line 118
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 119
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object p1
.end method

.method private hasChanges(IIII)Z
    .locals 2

    .line 150
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->colorStart:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 154
    :cond_0
    iget p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->colorEnd:I

    if-eq p1, p2, :cond_1

    return v1

    .line 158
    :cond_1
    iget p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->radius:I

    if-eq p1, p3, :cond_2

    return v1

    .line 162
    :cond_2
    iget p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->stroke:I

    if-eq p1, p4, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private onAnimateUpdated(Landroid/animation/ValueAnimator;)V
    .locals 6

    const-string v0, "ANIMATION_COLOR"

    .line 125
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "ANIMATION_COLOR_REVERSE"

    .line 126
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "ANIMATION_RADIUS"

    .line 128
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "ANIMATION_RADIUS_REVERSE"

    .line 129
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "ANIMATION_STROKE"

    .line 131
    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "ANIMATION_STROKE_REVERSE"

    .line 132
    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 134
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

    invoke-virtual {v5, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->setColor(I)V

    .line 135
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->setColorReverse(I)V

    .line 137
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

    invoke-virtual {v0, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->setRadius(I)V

    .line 138
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

    invoke-virtual {v0, v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->setRadiusReverse(I)V

    .line 140
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

    invoke-virtual {v0, v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->setStroke(I)V

    .line 141
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->setStrokeReverse(I)V

    .line 143
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

    invoke-interface {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimator()Landroid/animation/Animator;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    .line 34
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v1, 0x15e

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation$1;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public with(IIII)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->hasChanges(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->colorStart:I

    .line 52
    iput p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->colorEnd:I

    .line 54
    iput p3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->radius:I

    .line 55
    iput p4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->stroke:I

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->createColorPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 p3, 0x1

    .line 58
    invoke-virtual {p0, p3}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->createColorPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 60
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->createRadiusPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 61
    invoke-direct {p0, p3}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->createRadiusPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 63
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->createStrokePropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 64
    invoke-direct {p0, p3}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->createStrokePropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 66
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->animator:Landroid/animation/Animator;

    check-cast v4, Landroid/animation/ValueAnimator;

    const/4 v5, 0x6

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, v5, p1

    aput-object p4, v5, p3

    const/4 p1, 0x2

    aput-object v0, v5, p1

    const/4 p1, 0x3

    aput-object v1, v5, p1

    const/4 p1, 0x4

    aput-object v2, v5, p1

    const/4 p1, 0x5

    aput-object v3, v5, p1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_0
    return-object p0
.end method
