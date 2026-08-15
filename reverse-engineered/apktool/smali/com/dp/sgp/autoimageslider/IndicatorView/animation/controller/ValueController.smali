.class public Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;
.super Ljava/lang/Object;
.source "ValueController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;
    }
.end annotation


# instance fields
.field private colorAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ColorAnimation;

.field private dropAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;

.field private fillAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;

.field private scaleAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;

.field private scaleDownAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;

.field private slideAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;

.field private swapAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SwapAnimation;

.field private thinWormAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;

.field private updateListener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

.field private wormAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->updateListener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    return-void
.end method


# virtual methods
.method public color()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ColorAnimation;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->colorAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ColorAnimation;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ColorAnimation;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->updateListener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ColorAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->colorAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ColorAnimation;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->colorAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ColorAnimation;

    return-object v0
.end method

.method public drop()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->dropAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->updateListener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->dropAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->dropAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/DropAnimation;

    return-object v0
.end method

.method public fill()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->fillAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->updateListener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->fillAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->fillAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/FillAnimation;

    return-object v0
.end method

.method public scale()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->scaleAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->updateListener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->scaleAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->scaleAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleAnimation;

    return-object v0
.end method

.method public scaleDown()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->scaleDownAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->updateListener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->scaleDownAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->scaleDownAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ScaleDownAnimation;

    return-object v0
.end method

.method public slide()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->slideAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->updateListener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->slideAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->slideAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;

    return-object v0
.end method

.method public swap()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SwapAnimation;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->swapAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SwapAnimation;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SwapAnimation;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->updateListener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SwapAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->swapAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SwapAnimation;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->swapAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SwapAnimation;

    return-object v0
.end method

.method public thinWorm()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->thinWormAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->updateListener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->thinWormAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->thinWormAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/ThinWormAnimation;

    return-object v0
.end method

.method public worm()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->wormAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->updateListener:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->wormAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController;->wormAnimation:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/WormAnimation;

    return-object v0
.end method
