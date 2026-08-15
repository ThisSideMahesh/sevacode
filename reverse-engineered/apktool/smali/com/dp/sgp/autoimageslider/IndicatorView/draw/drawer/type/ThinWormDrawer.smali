.class public Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;
.super Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;
.source "ThinWormDrawer.java"


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;II)V
    .locals 7

    .line 25
    instance-of v0, p2, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    check-cast p2, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;

    .line 30
    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;->getRectStart()I

    move-result v0

    .line 31
    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;->getRectEnd()I

    move-result v1

    .line 32
    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ThinWormAnimationValue;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 34
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRadius()I

    move-result v2

    .line 35
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getUnselectedColor()I

    move-result v3

    .line 36
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedColor()I

    move-result v4

    .line 38
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getOrientation()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    move-result-object v5

    sget-object v6, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;->HORIZONTAL:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    if-ne v5, v6, :cond_1

    .line 39
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 40
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 41
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    sub-int v1, p4, p2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 42
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    add-int/2addr p2, p4

    int-to-float p2, p2

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 45
    :cond_1
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    sub-int v6, p3, p2

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 46
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    add-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, v5, Landroid/graphics/RectF;->right:F

    .line 47
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 48
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 51
    :goto_0
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p3

    int-to-float p3, p4

    int-to-float p4, v2

    .line 52
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 54
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->rect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
