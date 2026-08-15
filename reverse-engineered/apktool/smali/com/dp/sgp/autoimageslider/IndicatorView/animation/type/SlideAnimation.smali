.class public Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;
.super Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;
.source "SlideAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation<",
        "Landroid/animation/ValueAnimator;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATION_COORDINATE:Ljava/lang/String; = "ANIMATION_COORDINATE"

.field private static final COORDINATE_NONE:I = -0x1


# instance fields
.field private coordinateEnd:I

.field private coordinateStart:I

.field private value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SlideAnimationValue;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->coordinateStart:I

    .line 19
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->coordinateEnd:I

    .line 23
    new-instance p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SlideAnimationValue;

    invoke-direct {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SlideAnimationValue;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SlideAnimationValue;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->onAnimateUpdated(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private createSlidePropertyHolder()Landroid/animation/PropertyValuesHolder;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 70
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->coordinateStart:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->coordinateEnd:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "ANIMATION_COORDINATE"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/animation/IntEvaluator;

    invoke-direct {v1}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method private hasChanges(II)Z
    .locals 2

    .line 87
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->coordinateStart:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 91
    :cond_0
    iget p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->coordinateEnd:I

    if-eq p1, p2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onAnimateUpdated(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "ANIMATION_COORDINATE"

    .line 77
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 78
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SlideAnimationValue;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SlideAnimationValue;->setCoordinate(I)V

    .line 80
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SlideAnimationValue;

    invoke-interface {p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimator()Landroid/animation/Animator;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    .line 29
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v1, 0x15e

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 31
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 32
    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation$1;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public bridge synthetic progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;

    move-result-object p1

    return-object p1
.end method

.method public progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 45
    iget-wide v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->animationDuration:J

    long-to-float v0, v0

    mul-float p1, p1, v0

    float-to-long v0, p1

    .line 47
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->animator:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->animator:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->animator:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-object p0
.end method

.method public with(II)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->hasChanges(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->coordinateStart:I

    .line 60
    iput p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->coordinateEnd:I

    .line 62
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->createSlidePropertyHolder()Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->animator:Landroid/animation/Animator;

    check-cast p2, Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_0
    return-object p0
.end method
