.class public Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;
.super Ljava/lang/Object;
.source "IndicatorManager.java"

# interfaces
.implements Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager$Listener;
    }
.end annotation


# instance fields
.field private animationManager:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;

.field private drawManager:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;

.field private listener:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager$Listener;


# direct methods
.method constructor <init>(Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager$Listener;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager$Listener;

    .line 24
    new-instance p1, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;

    invoke-direct {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->drawManager:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;

    .line 25
    new-instance p1, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->drawManager:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;-><init>(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;Lcom/dp/sgp/autoimageslider/IndicatorView/animation/controller/ValueController$UpdateListener;)V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->animationManager:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;

    return-void
.end method


# virtual methods
.method public animate()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->animationManager:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/AnimationManager;

    return-object v0
.end method

.method public drawer()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->drawManager:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;

    return-object v0
.end method

.method public indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->drawManager:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;->indicator()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;

    move-result-object v0

    return-object v0
.end method

.method public onValueUpdated(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->drawManager:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/DrawManager;->updateValue(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;)V

    .line 43
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager;->listener:Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager$Listener;

    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/IndicatorManager$Listener;->onIndicatorUpdated()V

    :cond_0
    return-void
.end method
