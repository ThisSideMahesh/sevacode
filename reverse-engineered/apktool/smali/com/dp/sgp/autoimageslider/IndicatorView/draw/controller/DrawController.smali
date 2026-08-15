.class public Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;
.super Ljava/lang/Object;
.source "DrawController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;
    }
.end annotation


# instance fields
.field private drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

.field private indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

.field private listener:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;

.field private value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    .line 29
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    invoke-direct {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;III)V
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 80
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getSelectingPosition()I

    move-result v2

    .line 81
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    if-eq p2, v1, :cond_0

    if-ne p2, v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eq p2, v1, :cond_3

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    or-int v0, v3, v4

    .line 86
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    invoke-virtual {v1, p2, p3, p4}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->setup(III)V

    .line 88
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 89
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawWithAnimation(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 91
    :cond_4
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    invoke-virtual {p2, p1, v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->drawBasic(Landroid/graphics/Canvas;Z)V

    :goto_2
    return-void
.end method

.method private drawWithAnimation(Landroid/graphics/Canvas;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getAnimationType()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$1;->$SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$IndicatorAnimationType:[I

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->drawScaleDown(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->drawSwap(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->drawDrop(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->drawThinWorm(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    goto :goto_0

    .line 119
    :pswitch_4
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->drawFill(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    goto :goto_0

    .line 115
    :pswitch_5
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->drawSlide(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    goto :goto_0

    .line 111
    :pswitch_6
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->drawWorm(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    goto :goto_0

    .line 107
    :pswitch_7
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->drawScale(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    goto :goto_0

    .line 103
    :pswitch_8
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->drawColor(Landroid/graphics/Canvas;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    goto :goto_0

    .line 99
    :pswitch_9
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawer:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/drawer/Drawer;->drawBasic(Landroid/graphics/Canvas;Z)V

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

.method private onIndicatorTouched(FF)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-static {v0, p1, p2}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getPosition(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;FF)I

    move-result p1

    if-ltz p1, :cond_0

    .line 57
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;

    invoke-interface {p2, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;->onIndicatorClicked(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 66
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-static {v2, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getXCoordinate(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;I)I

    move-result v2

    .line 67
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->indicator:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    invoke-static {v3, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/utils/CoordinatesUtils;->getYCoordinate(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;I)I

    move-result v3

    .line 68
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->drawIndicator(Landroid/graphics/Canvas;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClickListener(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;

    return-void
.end method

.method public touch(Landroid/view/MotionEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->onIndicatorTouched(FF)V

    :goto_0
    return-void
.end method

.method public updateValue(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController;->value:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;

    return-void
.end method
