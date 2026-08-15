.class public Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;
.super Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BaseDrawer;
.source "ScaleDownDrawer.java"


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BaseDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;III)V
    .locals 6

    .line 25
    instance-of v0, p2, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    check-cast p2, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;

    .line 30
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRadius()I

    move-result v0

    int-to-float v0, v0

    .line 31
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedColor()I

    move-result v1

    .line 33
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v2

    .line 34
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectingPosition()I

    move-result v3

    .line 35
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v4

    .line 37
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne p3, v3, :cond_1

    .line 39
    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;->getRadius()I

    move-result p3

    int-to-float v0, p3

    .line 40
    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;->getColor()I

    move-result v1

    goto :goto_0

    :cond_1
    if-ne p3, v2, :cond_4

    .line 43
    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;->getRadiusReverse()I

    move-result p3

    int-to-float v0, p3

    .line 44
    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;->getColorReverse()I

    move-result v1

    goto :goto_0

    :cond_2
    if-ne p3, v2, :cond_3

    .line 49
    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;->getRadius()I

    move-result p3

    int-to-float v0, p3

    .line 50
    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;->getColor()I

    move-result v1

    goto :goto_0

    :cond_3
    if-ne p3, v4, :cond_4

    .line 53
    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;->getRadiusReverse()I

    move-result p3

    int-to-float v0, p3

    .line 54
    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ScaleAnimationValue;->getColorReverse()I

    move-result v1

    .line 58
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p4

    int-to-float p3, p5

    .line 59
    iget-object p4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
