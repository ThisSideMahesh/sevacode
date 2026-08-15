.class public Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;
.super Ljava/lang/Object;
.source "Drawer.java"


# instance fields
.field private basicDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;

.field private colorDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ColorDrawer;

.field private coordinateX:I

.field private coordinateY:I

.field private dropDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/DropDrawer;

.field private fillDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/FillDrawer;

.field private position:I

.field private scaleDownDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;

.field private scaleDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDrawer;

.field private slideDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/SlideDrawer;

.field private swapDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/SwapDrawer;

.field private thinWormDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;

.field private wormDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 40
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;

    invoke-direct {v1, v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->basicDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;

    .line 44
    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ColorDrawer;

    invoke-direct {v1, v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ColorDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->colorDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ColorDrawer;

    .line 45
    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDrawer;

    invoke-direct {v1, v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->scaleDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDrawer;

    .line 46
    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;

    invoke-direct {v1, v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->wormDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;

    .line 47
    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/SlideDrawer;

    invoke-direct {v1, v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/SlideDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->slideDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/SlideDrawer;

    .line 48
    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/FillDrawer;

    invoke-direct {v1, v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/FillDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->fillDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/FillDrawer;

    .line 49
    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;

    invoke-direct {v1, v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->thinWormDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;

    .line 50
    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/DropDrawer;

    invoke-direct {v1, v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/DropDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->dropDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/DropDrawer;

    .line 51
    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/SwapDrawer;

    invoke-direct {v1, v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/SwapDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->swapDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/SwapDrawer;

    .line 52
    new-instance v1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;

    invoke-direct {v1, v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;-><init>(Landroid/graphics/Paint;Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->scaleDownDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;

    return-void
.end method


# virtual methods
.method public drawBasic(Landroid/graphics/Canvas;Z)V
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->colorDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ColorDrawer;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->basicDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;

    iget v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->position:I

    iget v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateX:I

    iget v6, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateY:I

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/BasicDrawer;->draw(Landroid/graphics/Canvas;IZII)V

    :cond_0
    return-void
.end method

.method public drawColor(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->colorDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ColorDrawer;

    if-eqz v0, :cond_0

    .line 69
    iget v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->position:I

    iget v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateX:I

    iget v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateY:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ColorDrawer;->draw(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;III)V

    :cond_0
    return-void
.end method

.method public drawDrop(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->dropDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/DropDrawer;

    if-eqz v0, :cond_0

    .line 105
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateX:I

    iget v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateY:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/DropDrawer;->draw(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;II)V

    :cond_0
    return-void
.end method

.method public drawFill(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V
    .locals 6

    .line 92
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->fillDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/FillDrawer;

    if-eqz v0, :cond_0

    .line 93
    iget v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->position:I

    iget v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateX:I

    iget v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateY:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/FillDrawer;->draw(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;III)V

    :cond_0
    return-void
.end method

.method public drawScale(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->scaleDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDrawer;

    if-eqz v0, :cond_0

    .line 75
    iget v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->position:I

    iget v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateX:I

    iget v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateY:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDrawer;->draw(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;III)V

    :cond_0
    return-void
.end method

.method public drawScaleDown(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->scaleDownDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;

    if-eqz v0, :cond_0

    .line 117
    iget v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->position:I

    iget v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateX:I

    iget v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateY:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ScaleDownDrawer;->draw(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;III)V

    :cond_0
    return-void
.end method

.method public drawSlide(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->slideDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/SlideDrawer;

    if-eqz v0, :cond_0

    .line 87
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateX:I

    iget v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateY:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/SlideDrawer;->draw(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;II)V

    :cond_0
    return-void
.end method

.method public drawSwap(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->swapDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/SwapDrawer;

    if-eqz v0, :cond_0

    .line 111
    iget v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->position:I

    iget v4, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateX:I

    iget v5, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateY:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/SwapDrawer;->draw(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;III)V

    :cond_0
    return-void
.end method

.method public drawThinWorm(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->thinWormDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;

    if-eqz v0, :cond_0

    .line 99
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateX:I

    iget v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateY:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/ThinWormDrawer;->draw(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;II)V

    :cond_0
    return-void
.end method

.method public drawWorm(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->wormDrawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;

    if-eqz v0, :cond_0

    .line 81
    iget v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateX:I

    iget v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateY:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/type/WormDrawer;->draw(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;II)V

    :cond_0
    return-void
.end method

.method public setup(III)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->position:I

    .line 57
    iput p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateX:I

    .line 58
    iput p3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->coordinateY:I

    return-void
.end method
