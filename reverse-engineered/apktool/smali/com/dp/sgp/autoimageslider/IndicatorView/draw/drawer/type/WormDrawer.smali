.class public Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;
.super Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BaseDrawer;
.source "WormDrawer.java"


# instance fields
.field public rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BaseDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    .line 20
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;II)V
    .locals 6

    .line 29
    instance-of v0, p2, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/WormAnimationValue;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    check-cast p2, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/WormAnimationValue;

    .line 34
    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/WormAnimationValue;->getRectStart()I

    move-result v0

    .line 35
    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/WormAnimationValue;->getRectEnd()I

    move-result p2

    .line 37
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRadius()I

    move-result v1

    .line 38
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getUnselectedColor()I

    move-result v2

    .line 39
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedColor()I

    move-result v3

    .line 41
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getOrientation()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    move-result-object v4

    sget-object v5, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;->HORIZONTAL:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    if-ne v4, v5, :cond_1

    .line 42
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 43
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float p2, p2

    iput p2, v0, Landroid/graphics/RectF;->right:F

    .line 44
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    sub-int v0, p4, v1

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 45
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    add-int v0, p4, v1

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 48
    :cond_1
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    sub-int v5, p3, v1

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 49
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    add-int v5, p3, v1

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 50
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v4, Landroid/graphics/RectF;->top:F

    .line 51
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float p2, p2

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    .line 54
    :goto_0
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p3

    int-to-float p3, p4

    int-to-float p4, v1

    .line 55
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 57
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
