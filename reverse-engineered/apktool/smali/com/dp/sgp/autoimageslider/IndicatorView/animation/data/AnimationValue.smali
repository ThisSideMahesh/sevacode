.class public Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;
.super Ljava/lang/Object;
.source "AnimationValue.java"


# instance fields
.field private colorAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;

.field private dropAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;

.field private fillAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

.field private scaleAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;

.field private swapAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SwapAnimationValue;

.field private thinWormAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

.field private wormAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/WormAnimationValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorAnimationValue()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->colorAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;

    invoke-direct {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->colorAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->colorAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;

    return-object v0
.end method

.method public getDropAnimationValue()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->dropAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;

    invoke-direct {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->dropAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->dropAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/DropAnimationValue;

    return-object v0
.end method

.method public getFillAnimationValue()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->fillAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

    invoke-direct {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->fillAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->fillAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;

    return-object v0
.end method

.method public getScaleAnimationValue()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->scaleAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;

    invoke-direct {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->scaleAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->scaleAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;

    return-object v0
.end method

.method public getSwapAnimationValue()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SwapAnimationValue;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->swapAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SwapAnimationValue;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SwapAnimationValue;

    invoke-direct {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SwapAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->swapAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SwapAnimationValue;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->swapAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/SwapAnimationValue;

    return-object v0
.end method

.method public getThinWormAnimationValue()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->thinWormAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    invoke-direct {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->thinWormAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->thinWormAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    return-object v0
.end method

.method public getWormAnimationValue()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/WormAnimationValue;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->wormAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/WormAnimationValue;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/WormAnimationValue;

    invoke-direct {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/WormAnimationValue;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->wormAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/WormAnimationValue;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/AnimationValue;->wormAnimationValue:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/WormAnimationValue;

    return-object v0
.end method
