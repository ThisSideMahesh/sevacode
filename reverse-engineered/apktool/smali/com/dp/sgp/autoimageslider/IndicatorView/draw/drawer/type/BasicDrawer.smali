.class public Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;
.super Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BaseDrawer;
.source "BasicDrawer.java"


# instance fields
.field private strokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BaseDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;->strokePaint:Landroid/graphics/Paint;

    .line 19
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;->strokePaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getStroke()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IZII)V
    .locals 8

    .line 31
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getRadius()I

    move-result v0

    int-to-float v0, v0

    .line 32
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getStroke()I

    move-result v1

    .line 33
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getScaleFactor()F

    move-result v2

    .line 35
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedColor()I

    move-result v3

    .line 36
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getUnselectedColor()I

    move-result v4

    .line 37
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v5

    .line 38
    iget-object v6, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v6}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationType()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    move-result-object v6

    .line 40
    sget-object v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->SCALE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    if-ne v6, v7, :cond_0

    if-nez p3, :cond_0

    :goto_0
    mul-float v0, v0, v2

    goto :goto_1

    .line 43
    :cond_0
    sget-object v7, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->SCALE_DOWN:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    if-ne v6, v7, :cond_1

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p2, v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 53
    :goto_2
    sget-object p3, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->FILL:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    if-ne v6, p3, :cond_3

    if-eq p2, v5, :cond_3

    .line 54
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;->strokePaint:Landroid/graphics/Paint;

    int-to-float p3, v1

    .line 55
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 57
    :cond_3
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;->paint:Landroid/graphics/Paint;

    .line 60
    :goto_3
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p4

    int-to-float p4, p5

    .line 61
    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
