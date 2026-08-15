.class public Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;
.super Ljava/lang/Object;
.source "AnimationController.java"


# instance fields
.field private indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

.field private isInteractive:Z

.field private listener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

.field private progress:F

.field private runningAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

.field private valueController:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;

    invoke-direct {v0, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->valueController:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;

    .line 25
    iput-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    .line 26
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    return-void
.end method

.method private animate()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationType()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController$1;->$SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType:[I

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->scaleDownAnimation()V

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->swapAnimation()V

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->dropAnimation()V

    goto :goto_0

    .line 75
    :pswitch_3
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->thinWormAnimation()V

    goto :goto_0

    .line 71
    :pswitch_4
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->slideAnimation()V

    goto :goto_0

    .line 67
    :pswitch_5
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->fillAnimation()V

    goto :goto_0

    .line 63
    :pswitch_6
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->wormAnimation()V

    goto :goto_0

    .line 59
    :pswitch_7
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->scaleAnimation()V

    goto :goto_0

    .line 55
    :pswitch_8
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->colorAnimation()V

    goto :goto_0

    .line 51
    :pswitch_9
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private colorAnimation()V
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getUnselectedColor()I

    move-result v1

    .line 95
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v2

    .line 97
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->valueController:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;

    .line 98
    invoke-virtual {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->color()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ColorAnimation;

    move-result-object v4

    .line 99
    invoke-virtual {v4, v1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ColorAnimation;->with(II)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ColorAnimation;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v2, v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ColorAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    move-result-object v0

    .line 102
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_0

    .line 103
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->start()V

    .line 108
    :goto_0
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->runningAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    return-void
.end method

.method private dropAnimation()V
    .locals 9

    .line 226
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v0

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 229
    :goto_1
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-static {v2, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getCoordinate(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;I)I

    move-result v4

    .line 230
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-static {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getCoordinate(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;I)I

    move-result v5

    .line 232
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getPaddingTop()I

    move-result v0

    .line 233
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getPaddingLeft()I

    move-result v1

    .line 234
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getOrientation()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    move-result-object v2

    sget-object v3, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;->HORIZONTAL:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 236
    :goto_2
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRadius()I

    move-result v8

    mul-int/lit8 v1, v8, 0x3

    add-int v6, v1, v0

    add-int v7, v8, v0

    .line 240
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v0

    .line 242
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->valueController:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;

    .line 243
    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->drop()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;

    move-result-object v2

    .line 244
    invoke-virtual {v2, v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;

    move-result-object v3

    .line 245
    invoke-virtual/range {v3 .. v8}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;->with(IIIII)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;

    move-result-object v0

    .line 247
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_3

    .line 248
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    goto :goto_3

    .line 250
    :cond_3
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->start()V

    .line 253
    :goto_3
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->runningAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    return-void
.end method

.method private fillAnimation()V
    .locals 7

    .line 180
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getUnselectedColor()I

    move-result v1

    .line 182
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRadius()I

    move-result v2

    .line 183
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getStroke()I

    move-result v3

    .line 184
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v4

    .line 186
    iget-object v6, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->valueController:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;

    .line 187
    invoke-virtual {v6}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->fill()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;

    move-result-object v6

    .line 188
    invoke-virtual {v6, v1, v0, v2, v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->with(IIII)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v4, v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    move-result-object v0

    .line 191
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_0

    .line 192
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->start()V

    .line 197
    :goto_0
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->runningAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    return-void
.end method

.method private scaleAnimation()V
    .locals 7

    .line 112
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getUnselectedColor()I

    move-result v1

    .line 114
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRadius()I

    move-result v2

    .line 115
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getScaleFactor()F

    move-result v3

    .line 116
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v4

    .line 118
    iget-object v6, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->valueController:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;

    .line 119
    invoke-virtual {v6}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->scale()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;

    move-result-object v6

    .line 120
    invoke-virtual {v6, v1, v0, v2, v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;->with(IIIF)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v4, v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    move-result-object v0

    .line 123
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_0

    .line 124
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->start()V

    .line 129
    :goto_0
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->runningAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    return-void
.end method

.method private scaleDownAnimation()V
    .locals 7

    .line 279
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getUnselectedColor()I

    move-result v1

    .line 281
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRadius()I

    move-result v2

    .line 282
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getScaleFactor()F

    move-result v3

    .line 283
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v4

    .line 285
    iget-object v6, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->valueController:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;

    .line 286
    invoke-virtual {v6}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->scaleDown()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;

    move-result-object v6

    .line 287
    invoke-virtual {v6, v1, v0, v2, v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;->with(IIIF)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;

    move-result-object v0

    .line 288
    invoke-virtual {v0, v4, v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    move-result-object v0

    .line 290
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_0

    .line 291
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->start()V

    .line 296
    :goto_0
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->runningAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    return-void
.end method

.method private slideAnimation()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v0

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 161
    :goto_1
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-static {v2, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getCoordinate(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;I)I

    move-result v0

    .line 162
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-static {v2, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getCoordinate(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;I)I

    move-result v1

    .line 163
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v2

    .line 165
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->valueController:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;

    .line 166
    invoke-virtual {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->slide()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;

    move-result-object v4

    .line 167
    invoke-virtual {v4, v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->with(II)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v2, v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    move-result-object v0

    .line 170
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_2

    .line 171
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    goto :goto_2

    .line 173
    :cond_2
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->start()V

    .line 176
    :goto_2
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->runningAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    return-void
.end method

.method private swapAnimation()V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 260
    :goto_1
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-static {v2, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getCoordinate(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;I)I

    move-result v0

    .line 261
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-static {v2, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getCoordinate(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;I)I

    move-result v1

    .line 262
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v2

    .line 264
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->valueController:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;

    .line 265
    invoke-virtual {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->swap()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SwapAnimation;

    move-result-object v4

    .line 266
    invoke-virtual {v4, v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SwapAnimation;->with(II)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SwapAnimation;

    move-result-object v0

    .line 267
    invoke-virtual {v0, v2, v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SwapAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    move-result-object v0

    .line 269
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_2

    .line 270
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    goto :goto_2

    .line 272
    :cond_2
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->start()V

    .line 275
    :goto_2
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->runningAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    return-void
.end method

.method private thinWormAnimation()V
    .locals 7

    .line 201
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v0

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 204
    :goto_1
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-static {v2, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getCoordinate(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;I)I

    move-result v2

    .line 205
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-static {v3, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getCoordinate(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;I)I

    move-result v3

    if-le v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 208
    :goto_2
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRadius()I

    move-result v1

    .line 209
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v4

    .line 211
    iget-object v6, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->valueController:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;

    .line 212
    invoke-virtual {v6}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->thinWorm()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;

    move-result-object v6

    .line 213
    invoke-virtual {v6, v2, v3, v1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;->with(IIIZ)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v4, v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;

    move-result-object v0

    .line 216
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_3

    .line 217
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    goto :goto_3

    .line 219
    :cond_3
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->start()V

    .line 222
    :goto_3
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->runningAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    return-void
.end method

.method private wormAnimation()V
    .locals 7

    .line 133
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v0

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 136
    :goto_1
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-static {v2, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getCoordinate(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;I)I

    move-result v2

    .line 137
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-static {v3, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getCoordinate(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;I)I

    move-result v3

    if-le v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 140
    :goto_2
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRadius()I

    move-result v1

    .line 141
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v4

    .line 143
    iget-object v6, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->valueController:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;

    .line 144
    invoke-virtual {v6}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->worm()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;

    move-result-object v6

    .line 145
    invoke-virtual {v6, v2, v3, v1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;->with(IIIZ)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v4, v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;->duration(J)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;

    move-result-object v0

    .line 148
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_3

    .line 149
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->progress(F)Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    goto :goto_3

    .line 151
    :cond_3
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->start()V

    .line 154
    :goto_3
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->runningAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    return-void
.end method


# virtual methods
.method public basic()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->isInteractive:Z

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->progress:F

    .line 38
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->animate()V

    return-void
.end method

.method public end()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->runningAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/BaseAnimation;->end()V

    :cond_0
    return-void
.end method

.method public interactive(F)V
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->isInteractive:Z

    .line 31
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->progress:F

    .line 32
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/AnimationController;->animate()V

    return-void
.end method
