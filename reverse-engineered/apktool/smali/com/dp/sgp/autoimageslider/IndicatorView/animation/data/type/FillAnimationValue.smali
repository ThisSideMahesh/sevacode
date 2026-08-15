.class public Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;
.super Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;
.source "FillAnimationValue.java"

# interfaces
.implements Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/Value;


# instance fields
.field private radius:I

.field private radiusReverse:I

.field private stroke:I

.field private strokeReverse:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/ColorAnimationValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getRadius()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->radius:I

    return v0
.end method

.method public getRadiusReverse()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->radiusReverse:I

    return v0
.end method

.method public getStroke()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->stroke:I

    return v0
.end method

.method public getStrokeReverse()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->strokeReverse:I

    return v0
.end method

.method public setRadius(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->radius:I

    return-void
.end method

.method public setRadiusReverse(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->radiusReverse:I

    return-void
.end method

.method public setStroke(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->stroke:I

    return-void
.end method

.method public setStrokeReverse(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/data/type/FillAnimationValue;->strokeReverse:I

    return-void
.end method
