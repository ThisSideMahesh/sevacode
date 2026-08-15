.class public Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;
.super Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;
.source "ScaleDownAnimation.java"


# direct methods
.method public constructor <init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    return-void
.end method


# virtual methods
.method protected createScalePropertyHolder(Z)Landroid/animation/PropertyValuesHolder;
    .locals 4

    if-eqz p1, :cond_0

    .line 24
    iget p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;->radius:I

    int-to-float p1, p1

    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;->scaleFactor:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 25
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;->radius:I

    const-string v1, "ANIMATION_SCALE_REVERSE"

    goto :goto_0

    .line 28
    :cond_0
    iget p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;->radius:I

    .line 29
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;->radius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;->scaleFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const-string v1, "ANIMATION_SCALE"

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput v0, v2, p1

    .line 32
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 33
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object p1
.end method
