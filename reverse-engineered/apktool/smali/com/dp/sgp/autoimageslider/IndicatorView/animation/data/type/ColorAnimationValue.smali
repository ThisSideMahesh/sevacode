.class public Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;
.super Ljava/lang/Object;
.source "ColorAnimationValue.java"

# interfaces
.implements Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;


# instance fields
.field private color:I

.field private colorReverse:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;->color:I

    return v0
.end method

.method public getColorReverse()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;->colorReverse:I

    return v0
.end method

.method public setColor(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;->color:I

    return-void
.end method

.method public setColorReverse(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;->colorReverse:I

    return-void
.end method
