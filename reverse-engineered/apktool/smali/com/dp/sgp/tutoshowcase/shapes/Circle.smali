.class public Lcom/dp/sgp/tutoshowcase/shapes/Circle;
.super Lcom/dp/sgp/tutoshowcase/shapes/Shape;
.source "Circle.java"


# instance fields
.field private radius:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/dp/sgp/tutoshowcase/shapes/Shape;-><init>()V

    .line 19
    iput p1, p0, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->x:I

    .line 20
    iput p2, p0, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->y:I

    .line 21
    iput p3, p0, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->radius:I

    return-void
.end method


# virtual methods
.method public drawOn(Landroid/graphics/Canvas;)V
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->isDisplayBorder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->getRadius()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f99999a    # 1.2f

    mul-float v2, v2, v3

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->getRadius()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getRadius()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->radius:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->y:I

    return v0
.end method

.method public setRadius(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->radius:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->y:I

    return-void
.end method
